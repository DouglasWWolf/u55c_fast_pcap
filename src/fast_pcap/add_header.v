//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 09-Jul-26  DWW     1  Initial creation
//=============================================================================

/*
    This reads an input stream containing packet meta-data and an input
    stream containing packet-data, and combines them into a single output
    stream consisting of packet header followed by packet data

*/

module add_header
(
    input   clk,
    input   resetn,
    input   enable,

    // The total number of packets captured
    output reg[31:0] packets_captured,

    // The packet-data input stream
    input[511:0]   axis_pd_tdata,
    input          axis_pd_tvalid,
    output         axis_pd_tready,

    // The meta-data input stream
    input[63:0]    axis_md_tdata,
    input[15:0]    axis_md_tuser,
    input          axis_md_tvalid,
    output         axis_md_tready,

    // The output stream
    output[511:0]  axis_out_tdata,
    output         axis_out_tvalid,
    input          axis_out_tready

);

`include "settings.vh"

// If we see no input for 400 clock-cycles when we're disabled,
// we assume no more packets will be arriving
localparam ACTIVITY_TIMEOUT = 400;

// Fetch the packet length and timestamp
wire[15:0] packet_length = axis_md_tuser;
wire[63:0] timestamp     = axis_md_tdata;

// Is there a partially filled data-cycle?
wire partial_cycle = ((packet_length & 16'h003F) != 0);

// The number of data-cycles in the packet
reg [7:0] data_cycles;
wire[7:0] imm_data_cycles = (packet_length / 64) + partial_cycle;

// This is the header that we write out prior to the packet data
wire[511:0] header = {packet_length, timestamp, 64'h00666c6f57202e44};

// The input side of the FIFO
reg [511:0] fifo_in_tdata;
reg         fifo_in_tvalid;
wire        fifo_in_tready;

// The output side of the FIFO
wire[511:0] fifo_out_tdata;
wire        fifo_out_tvalid;
wire        fifo_out_tready;

// Tie the output side of the FIFO to our output stream
assign axis_out_tdata  = fifo_out_tdata;
assign axis_out_tvalid = fifo_out_tvalid; 
assign fifo_out_tready = axis_out_tready;


//=============================================================================
// Detect and latch a falling edge on "enable"
//=============================================================================
reg previous_enable;
reg disabled;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0) begin
        previous_enable <= 0;
        disabled        <= 0;
    end else begin
        previous_enable <= enable;
        if (previous_enable == 1 && enable == 0)
            disabled <= 1;
    end
end
//=============================================================================



//=============================================================================
// Keep track of the number of free entries in the FIFO
//=============================================================================
reg[31:0] fifo_free;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0)
        fifo_free <= STAGE2_FIFO_DEPTH;
    else 
        fifo_free <= fifo_free
                   - (fifo_in_tvalid  & fifo_in_tready )
                   + (fifo_out_tvalid & fifo_out_tready);
end
//=============================================================================


//=============================================================================
// Here, for every packet that comes in, we write (to the FIFO) the packet-
// header follow by the packet-data
//=============================================================================
localparam FSM_EMIT_HEADER = 0;
localparam FSM_EMIT_PACKET = 1;
localparam FSM_EMIT_FILLER = 2;

reg[ 1:0] fsm_state;
reg       drop_packet;
reg[ 7:0] current_cycle;
reg[15:0] activity_timer;
reg[63:0] cycles_captured;
reg       sentinel_emitted;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    
    // This strobes high for a single cycle at a time
    fifo_in_tvalid <= 0;

    // The activity timer continuously counts down to zero
    if (activity_timer) activity_timer <= activity_timer - 1;

    if (resetn == 0) begin
        fsm_state        <= FSM_EMIT_HEADER;
        packets_captured <= 0;
        cycles_captured  <= 0;
        sentinel_emitted <= 0;
    end

    else case(fsm_state)

        // Wait for input on the meta-data stream, then write the header
        // to the FIFO only if the entire packet (plus header) will fit
        // into the FIFO
        FSM_EMIT_HEADER:
            if (axis_md_tvalid & axis_md_tready) begin
                activity_timer <= ACTIVITY_TIMEOUT;
                data_cycles    <= imm_data_cycles;
                if (fifo_free <= imm_data_cycles)
                    drop_packet      <= 1;
                else begin
                    drop_packet      <= 0;
                    fifo_in_tvalid   <= 1;
                    packets_captured <= packets_captured + 1;
                    cycles_captured  <= cycles_captured  + 1;
                end
                current_cycle <= 1;
                fsm_state     <= FSM_EMIT_PACKET;
            end

            // If no more packets will be coming, make sure
            // we've captured a multiple of 64 data-cycles
            else if (disabled && activity_timer == 0) begin
                fsm_state <= FSM_EMIT_FILLER;
            end

        //----------------------------------------------------------------------
        // Either write the incoming packet data into the FIFO, or throw it
        // away.
        //
        // When we get to this state:
        //   current_cycle = 1
        //   data_cycles   = The # of cycles to read from the input stream   
        //   drop_packet   = Should these data-cycles be thrown away?
        //----------------------------------------------------------------------
        FSM_EMIT_PACKET:
            if (axis_pd_tvalid & axis_pd_tready) begin
                activity_timer  <= ACTIVITY_TIMEOUT;
                fifo_in_tvalid  <= !drop_packet;
                cycles_captured <= cycles_captured + !drop_packet;
                if (current_cycle < data_cycles)
                    current_cycle <= current_cycle + 1;
                else
                    fsm_state <= FSM_EMIT_HEADER;
            end

        // Here we emit filler data until we've emitted enough
        // cycles to ensure we've emitted, in total, a multiple
        // of 4KB.  (4KB is 64 data-cycles).
        //
        // After we have padded our last block to exactly 64
        // cycles, we will emit *one more* block to serve as
        // a "sentinel" block so that software can know that
        // it has reached the end of the capture
        FSM_EMIT_FILLER:
            if (cycles_captured[5:0]) begin
                fifo_in_tvalid   <= 1;
                cycles_captured  <= cycles_captured + 1;
            end else if (!sentinel_emitted) begin
                fifo_in_tvalid   <= 1;
                cycles_captured  <= cycles_captured + 1;
                sentinel_emitted <= 1;                
            end

    endcase

end

// We read from the meta-data input stream while waiting to emit a header
assign axis_md_tready = (fsm_state == FSM_EMIT_HEADER);

// We read from the packet-data input stream while emitting the packet data
assign axis_pd_tready = (fsm_state == FSM_EMIT_PACKET);
//=============================================================================



//=============================================================================
// We're always driving "fifo_in_tdata" with a value.   We save some fanout
// by not conditioning this on the state of "resetn"
//=============================================================================
always @(posedge clk) begin
    if (fsm_state == FSM_EMIT_HEADER)
        fifo_in_tdata <= header;
    else if (fsm_state == FSM_EMIT_PACKET)
        fifo_in_tdata <= axis_pd_tdata;
    else
        fifo_in_tdata <= {16{32'hDEAD_BEEF}};
end
//=============================================================================


//=============================================================================
// This FIFO contains packet headers and packet data
//=============================================================================
xpm_fifo_axis #
(
   .TDATA_WIDTH     (512),
   .FIFO_DEPTH      (STAGE2_FIFO_DEPTH),
   .FIFO_MEMORY_TYPE(STAGE2_FIFO_TYPE),
   .PACKET_FIFO     ("false"),
   .USE_ADV_FEATURES("0000"),
   .CLOCKING_MODE   ("common_clock")
)
i_fifo
(
    // Clock and reset
    .s_aclk   (clk   ),
    .m_aclk   (clk   ),
    .s_aresetn(resetn),

    // The input bus of the FIFO
    .s_axis_tdata (fifo_in_tdata ),
    .s_axis_tvalid(fifo_in_tvalid),
    .s_axis_tready(fifo_in_tready),

    // The output bus of the FIFO
    .m_axis_tdata (fifo_out_tdata ),
    .m_axis_tvalid(fifo_out_tvalid),
    .m_axis_tready(fifo_out_tready),

    // Unused input stream signals
    .s_axis_tuser(),
    .s_axis_tkeep(),
    .s_axis_tlast(),
    .s_axis_tdest(),
    .s_axis_tid  (),
    .s_axis_tstrb(),

    // Unused output stream signals
    .m_axis_tuser(),
    .m_axis_tdest(),
    .m_axis_tid  (),
    .m_axis_tstrb(),
    .m_axis_tkeep(),
    .m_axis_tlast(),

    // Other unused signals
    .almost_empty_axis (),
    .almost_full_axis  (),
    .dbiterr_axis      (),
    .prog_empty_axis   (),
    .prog_full_axis    (),
    .rd_data_count_axis(),
    .sbiterr_axis      (),
    .wr_data_count_axis(),
    .injectdbiterr_axis(),
    .injectsbiterr_axis()
);
//=============================================================================


endmodule

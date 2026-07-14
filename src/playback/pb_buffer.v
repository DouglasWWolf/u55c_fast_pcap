//=============================================================================
//                   ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 11-Jul-26  DWW     1  Initial creation
//=============================================================================

/*
    This buffers incoming packets until its either the buffer is full or
    until all data-cycles have been received.   Once one of those conditions
    are fulfilled, the output spigot opens, and data flows out
*/

module pb_buffer
(
    input   clk,
    input   resetn,

    // Report the number of data-cycles in and out for debugging
    output[31:0] dbg_cycles_in, dbg_cycles_out,
    output reg[31:0] dbg_packets_in,

    // This is asserted when we're busy accepting packet data
    output busy,

    // The number of packets sent 
    output reg[31:0] packets_out,

    // The number of clock cycles between outgoing packets
    input[31:0] async_ipg,  

    // Input control stream
    input[31:0]     axis_ctl_tdata,
    input           axis_ctl_tvalid,
    output          axis_ctl_tready,

    // Input data stream
    input[511:0]    axis_in_tdata,
    input[ 63:0]    axis_in_tkeep,
    input           axis_in_tlast,
    input           axis_in_tvalid,
    output reg      axis_in_tready,

    // Output data stream
    output reg[511:0] axis_out_tdata,
    output reg[ 63:0] axis_out_tkeep,
    output reg        axis_out_tlast,
    output reg        axis_out_tvalid,
    input             axis_out_tready

);
`include "settings.vh"

// The number of data-cycles we expect to receive
reg[31:0] expected_cycles;

// The number of data-cycles in and out
reg[31:0] cycles_in, cycles_out;

// The number of clock cycles between outgoing packets
wire[31:0] ipg;

// Input bus to the FIFO
reg[511:0] fifo_in_tdata;
reg[ 63:0] fifo_in_tkeep;
reg        fifo_in_tlast;
reg        fifo_in_tvalid;
wire       fifo_in_tready;

// Output bus from the FIFO
wire[511:0] fifo_out_tdata;
wire[ 63:0] fifo_out_tkeep;
wire        fifo_out_tlast;
wire        fifo_out_tvalid;
reg         fifo_out_tready;


//=============================================================================
// Keep track of how many data-cycles we've received
//=============================================================================
always @(posedge clk) begin
    if (resetn == 0) begin
        cycles_in      <= 0;
        dbg_packets_in <= 0;
    end
    
    else if (axis_ctl_tvalid & axis_ctl_tready) begin
        cycles_in      <= 0;
        dbg_packets_in <= 0;
    end
    
    else if (axis_in_tvalid & axis_in_tready) begin
        cycles_in      <= cycles_in + 1;
        dbg_packets_in <= dbg_packets_in + axis_in_tlast;
    end
end

assign dbg_cycles_in = cycles_in;
//=============================================================================



//=============================================================================
// Keep track of how many cycles and packets have been emitted
//=============================================================================
always @(posedge clk) begin

    if (resetn == 0) begin
        cycles_out  <= 0;
        packets_out <= 0;
    end

    else if (axis_ctl_tvalid & axis_ctl_tready) begin
        cycles_out  <= 0;
        packets_out <= 0;
    end
    
    else if (axis_out_tvalid & axis_out_tready) begin
        cycles_out  <= cycles_out + 1;
        packets_out <= packets_out + axis_out_tlast;
    end
end
assign dbg_cycles_out = cycles_out;
//=============================================================================


//=============================================================================
// Here we determine when the "oe" (output enable) signal is asserted in order
// to create a time-gap between outgoing packets
//=============================================================================
reg [31:0] ipg_counter = 0;
//-----------------------------------------------------------------------------
always @(posedge clk) begin

    // Countdown the counter
    if (ipg_counter)
        ipg_counter <= ipg_counter - 1;

    if (resetn == 0)
        ipg_counter <= 0;
    else if (axis_out_tvalid & axis_out_tready & axis_out_tlast)
        ipg_counter <= ipg;
end

// Output is enabled when the counter is zero
wire oe = (ipg_counter == 0);
//=============================================================================


//=============================================================================
// This state machine reads in the number of packet-data cycles we should
// expect, buffers up date until the FIFO is full or until we've received all
// expected cycles, then allows data to begin flowing on the output stream
//=============================================================================
localparam FSM_WAIT_START    = 0;
localparam FSM_BUFFER_CYCLES = 1;
localparam FSM_FLOW          = 2;
reg[1:0] fsm_state;
//-----------------------------------------------------------------------------
always @(posedge clk) begin

    if (resetn == 0) begin
        fsm_state <= FSM_WAIT_START;
    end

    else case(fsm_state) 

        FSM_WAIT_START:
            if (axis_ctl_tvalid && axis_ctl_tready && axis_ctl_tdata) begin
                expected_cycles <= axis_ctl_tdata;
                fsm_state <= FSM_BUFFER_CYCLES;
            end

        FSM_BUFFER_CYCLES:
            if (cycles_in == PB_FIFO_DEPTH || cycles_in == expected_cycles)
                fsm_state <= FSM_FLOW;

        FSM_FLOW:
            if (cycles_out == expected_cycles)
                fsm_state <= FSM_WAIT_START;

    endcase

end
//=============================================================================


//=============================================================================
// This state machine determines what values are output on the "fifo_in"
// bus and the "axis_out" bus.
//=============================================================================
always @* begin
    case (fsm_state)
        FSM_WAIT_START:
            begin
                fifo_in_tdata  = 0;
                fifo_in_tkeep  = 0;
                fifo_in_tlast  = 0;
                fifo_in_tvalid = 0;
                axis_in_tready = 0;

                axis_out_tdata  = 0;
                axis_out_tkeep  = 0;
                axis_out_tlast  = 0;
                axis_out_tvalid = 0;
                fifo_out_tready = 0;
            end

        FSM_BUFFER_CYCLES:
            begin
                fifo_in_tdata  = axis_in_tdata;
                fifo_in_tkeep  = axis_in_tkeep;
                fifo_in_tlast  = axis_in_tlast;
                fifo_in_tvalid = axis_in_tvalid;
                axis_in_tready = fifo_in_tready;

                axis_out_tdata  = 0;
                axis_out_tkeep  = 0;
                axis_out_tlast  = 0;
                axis_out_tvalid = 0;
                fifo_out_tready = 0;
            end

        FSM_FLOW:
            begin
                fifo_in_tdata  = axis_in_tdata;
                fifo_in_tkeep  = axis_in_tkeep;
                fifo_in_tlast  = axis_in_tlast;
                fifo_in_tvalid = axis_in_tvalid;
                axis_in_tready = fifo_in_tready;

                axis_out_tdata  = fifo_out_tdata;
                axis_out_tkeep  = fifo_out_tkeep;
                axis_out_tlast  = fifo_out_tlast;
                axis_out_tvalid = fifo_out_tvalid & oe;
                fifo_out_tready = axis_out_tready & oe;
            end

    endcase
end
//=============================================================================


// Determine which each of the two input streams is ready to accept data
assign axis_ctl_tready = (fsm_state == FSM_WAIT_START);

// We're busy when we're processing packet data
assign busy = (fsm_state > FSM_WAIT_START);

//==========================================================================
// Synchronize "ipg"
//==========================================================================
xpm_cdc_array_single #
(
    .DEST_SYNC_FF   (4),
    .SRC_INPUT_REG  (0),
    .WIDTH          (32)
)
i_sync_ipg
(
    .src_clk    (),
    .src_in     (async_ipg),
    .dest_clk   (clk),
    .dest_out   (ipg)
);
//==========================================================================



//=============================================================================
// This queues of packet-data for output.  This is a packetizing FIFO, so 
// "fifo_out_tvalid" won't assert unless there is an entire packet queued and
// read to emit
//=============================================================================
xpm_fifo_axis #
(
   .TDATA_WIDTH     (512),
   .FIFO_DEPTH      (PB_FIFO_DEPTH),
   .FIFO_MEMORY_TYPE(PB_FIFO_TYPE),
   .PACKET_FIFO     ("true"),
   .USE_ADV_FEATURES("0000"),
   .CLOCKING_MODE   ("common_clock")
)
i_fifo
(
    // Clock and reset
    .s_aclk   (clk),
    .m_aclk   (clk),
    .s_aresetn(resetn),

    // The input bus of the FIFO
    .s_axis_tdata (fifo_in_tdata ),
    .s_axis_tkeep (fifo_in_tkeep ),
    .s_axis_tlast (fifo_in_tlast ),
    .s_axis_tvalid(fifo_in_tvalid),
    .s_axis_tready(fifo_in_tready),

    // The output bus of the FIFO
    .m_axis_tdata (fifo_out_tdata ),
    .m_axis_tkeep (fifo_out_tkeep ),
    .m_axis_tlast (fifo_out_tlast ),
    .m_axis_tvalid(fifo_out_tvalid),
    .m_axis_tready(fifo_out_tready),

    // Unused input stream signals
    .s_axis_tuser(),
    .s_axis_tdest(),
    .s_axis_tid  (),
    .s_axis_tstrb(),

    // Unused output stream signals
    .m_axis_tuser(),
    .m_axis_tdest(),
    .m_axis_tid  (),
    .m_axis_tstrb(),

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
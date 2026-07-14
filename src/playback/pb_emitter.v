//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 11-Jul-26  DWW     1  Initial creation
//=============================================================================

/*
    This reads in a data-stream that originatd as a pcap file, and 
    emits packets
*/

module pb_emitter
(
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axis_in, ASSOCIATED_RESET resetn" *)
    input clk,
    input resetn,

    // This is synchronous with "clk"
    output reg[31:0] dbg_cycles_in,

    // Input stream
    input[511:0] axis_in_tdata,
    input[ 63:0] axis_in_tvalid,
    output reg   axis_in_tready,

    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cmac_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axis_out, ASSOCIATED_RESET cmac_resetn" *)
    input  cmac_clk,
    input  cmac_resetn,

    // This is synchronous with "cmac_clk"
    output reg[31:0] dbg_cycles_out,
    output reg[31:0] dbg_packets_out,

    // Output stream
    output[511:0] axis_out_tdata,
    output[ 63:0] axis_out_tkeep,
    output        axis_out_tlast,
    output        axis_out_tvalid,
    input         axis_out_tready
);

// Input bus to the FIFO
reg[511:0] fifo_in_tdata;
reg[ 63:0] fifo_in_tkeep;
reg        fifo_in_tlast;
reg        fifo_in_tvalid;
wire       fifo_in_tready;

// Connects the FIFO output to the axi-stream slice
wire[511:0] fifo_out_tdata;
wire[ 63:0] fifo_out_tkeep;
wire        fifo_out_tlast;
wire        fifo_out_tvalid;
wire        fifo_out_tready;


//=============================================================================
// For debugging purposes, count the number of data-cycles in
//=============================================================================
reg[15:0] dbg_timer1;
//-----------------------------------------------------------------------------
always @(posedge clk) begin

    // Countdown the debug timer
    if (dbg_timer1) dbg_timer1 <= dbg_timer1 - 1;

    if (resetn == 0)
        dbg_cycles_in <= 0;
    else  if (axis_in_tvalid & axis_in_tready) begin
        if (dbg_timer1 == 0)
            dbg_cycles_in <= 1;
        else
            dbg_cycles_in <= dbg_cycles_in + 1;
        dbg_timer1 <= -1;
    end
end
//=============================================================================


//=============================================================================
// For debugging purposes, count the number of data-cycles out
//=============================================================================
reg[15:0] dbg_timer2;
//-----------------------------------------------------------------------------
always @(posedge cmac_clk) begin
    
    // Countdown the debug timer
    if (dbg_timer2) dbg_timer2 <= dbg_timer2 - 1;

    if (cmac_resetn == 0) begin
        dbg_cycles_out  <= 0;
        dbg_packets_out <= 0;
    end
        
    else if (axis_out_tvalid & axis_out_tready) begin
        if (dbg_timer2 == 0) begin
            dbg_packets_out <= axis_out_tlast;
            dbg_cycles_out  <= 1;
        end else begin
            dbg_cycles_out  <= dbg_cycles_out  + 1;
            dbg_packets_out <= dbg_packets_out + axis_out_tlast;
        end
        dbg_timer2 <= -1;
    end
end
//=============================================================================



//=============================================================================
// These are the fields of a packet header
//=============================================================================
wire[63:0] signature;
wire[15:0] packet_length;
assign {packet_length, signature} = axis_in_tdata;
//=============================================================================


//=============================================================================
// Compute information about the length of the packet
//=============================================================================
reg[7:0] whole_data_cycles, final_bytes;
//-----------------------------------------------------------------------------
always @* begin

    // How many 'packed full' data cycles will there be?
    whole_data_cycles = (packet_length / 64);

    // If there's a "partial" cycle in the packet, how many
    // bytes will it contain?
    final_bytes = (packet_length & 63);
end
//=============================================================================


//=============================================================================
// Here we read the input stream, and emit packets into the output FIFO
//=============================================================================
reg       fsm_state;
reg[ 7:0] packet_cycles;
reg[ 7:0] cycle;
reg[63:0] final_tkeep;
//-----------------------------------------------------------------------------
always @(posedge clk) begin

    if (resetn == 0) begin
        fsm_state <= 0;
    end

    else case(fsm_state)

        0:  if (axis_in_tvalid & axis_in_tready) begin
                packet_cycles <= whole_data_cycles + (|final_bytes);
                final_tkeep   <= (final_bytes) ? (1 << final_bytes) - 1 : -1;
                cycle         <= 1;
                fsm_state     <= 1;
            end

        1:  if (axis_in_tvalid & axis_in_tready) begin
                if (cycle == packet_cycles)
                    fsm_state <= 0;
                else
                    cycle <= cycle + 1;
            end
    endcase

end
//=============================================================================


//=============================================================================
// The input to the FIFO depends on what state we're in
//=============================================================================
always @* begin
    if (resetn == 0) begin
        fifo_in_tdata  = 0;
        fifo_in_tkeep  = 0;
        fifo_in_tlast  = 0;
        fifo_in_tvalid = 0;
        axis_in_tready = 0;
    end

    // If we're accepting a header cycle...
    else if (fsm_state == 0) begin
        fifo_in_tdata  = 0;
        fifo_in_tkeep  = 0;
        fifo_in_tlast  = 0;
        fifo_in_tvalid = 0;
        axis_in_tready = 1;
    end
    
    // Otherwise, we're accepting a packet-data cycle...
    else begin
        fifo_in_tdata  = axis_in_tdata;
        fifo_in_tkeep  = (cycle == packet_cycles) ? final_tkeep : -1;
        fifo_in_tlast  = (cycle == packet_cycles);
        fifo_in_tvalid = axis_in_tvalid;
        axis_in_tready = fifo_in_tready;
    end
end
//=============================================================================




//=============================================================================
// This is the data FIFO
//=============================================================================
xpm_fifo_axis #
(
   .TDATA_WIDTH     (512),
   .FIFO_DEPTH      (512),
   .FIFO_MEMORY_TYPE("auto"),
   .PACKET_FIFO     ("false"),
   .USE_ADV_FEATURES("0000"),
   .CLOCKING_MODE   ("independent_clock")
)
i_fifo
(
    // Clock and reset
    .s_aclk   (clk     ),
    .m_aclk   (cmac_clk),
    .s_aresetn(resetn  ),

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

//=============================================================================
// There's an axi-stream slice at the output of the FIFO to ease timing closure
//=============================================================================
axis_slice #
(
    .DATA_WIDTH     (512),
    .LAST_ENABLE    (1),
    .USER_ENABLE    (0),
    .USER_WIDTH     (1)
)
i_slice
(
    .clk          (cmac_clk),
    .rst          (~cmac_resetn),

    .s_axis_tdata (fifo_out_tdata ),
    .s_axis_tkeep (fifo_out_tkeep ),
    .s_axis_tlast (fifo_out_tlast ),
    .s_axis_tvalid(fifo_out_tvalid),
    .s_axis_tready(fifo_out_tready),
    .s_axis_tuser (0),
    .s_axis_tid   (0),
    .s_axis_tdest (0),

    .m_axis_tdata (axis_out_tdata),
    .m_axis_tkeep (axis_out_tkeep ),
    .m_axis_tlast (axis_out_tlast ),
    .m_axis_tvalid(axis_out_tvalid),
    .m_axis_tready(axis_out_tready),
    .m_axis_tuser (0),
    .m_axis_tid   (0),
    .m_axis_tdest (0)
);
//=============================================================================

endmodule
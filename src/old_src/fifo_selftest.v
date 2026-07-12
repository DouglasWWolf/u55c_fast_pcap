
//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 19-Jun-26  DWW     1  Initial creation
//=============================================================================

/*
    This module performs self-test on the data coming out of a FIFO
*/


module fifo_selftest #
(
    parameter       CHANNEL   = 0,
    parameter       DW        = 512,
    parameter       PKT_DW    = 512,
    parameter[11:0] SEQ_MASK  = 12'hFFF,
    parameter[11:0] SEQ_CHECK = 12'hFC0
)
(
    input   clk,
    input   resetn,

    // The size of the frame-data buffer in host-RAM.  We need this
    // to accurately compute the simulation-data that we expect
    // to see.
    input[63:0]     fd_host_size,

    // Error bits
    output reg[7:0] error,

    (* X_INTERFACE_MODE = "monitor" *)
    input[DW-1:0]       raw_in_tdata,
    input               raw_in_tvalid,
    input               raw_in_tready,

    (* X_INTERFACE_MODE = "monitor" *)
    input[PKT_DW-1:0]   pkt_in_tdata,
    input               pkt_in_tlast,
    input               pkt_in_tvalid,
    input               pkt_in_tready

);

// The size of a burst that was read from host-RAM
localparam BURST_SIZE = 4096;

// The number of data-cycles in a burst
localparam BURST_CYCLES = BURST_SIZE / 64;

// The offset in RAM where we expect our first incoming burst to come from
localparam FIRST_RAM_OFFSET = (CHANNEL == 0) ? 32'h0000 : 32'h1000;

// This is the simulation data that we expect to see on the input stream
reg[63:0] sim_data, next_sim_data;

// This is the handshake on "raw_in"
wire raw_in_hsk = raw_in_tvalid & raw_in_tready;

//=============================================================================
// Here we count incoming data-cycles and assert "raw_in_tlast" on the last
// cycle of a burst of data.  We're effectively emulating the missing "tlast"
// signal on the "raw" input stream
//=============================================================================
reg[7:0] cycle;
wire     raw_in_tlast = (cycle == BURST_CYCLES);
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0)
        cycle <= 1;
    else if (raw_in_hsk) begin
        if (cycle == BURST_CYCLES)
            cycle <= 1;
        else
            cycle <= cycle + 1;
    end
end
//=============================================================================


//=============================================================================
// This computes the *next* value for "sim_data"
//=============================================================================
reg[63:0] maybe_sim_data;
//-----------------------------------------------------------------------------
always @* begin
    maybe_sim_data = sim_data + 64 + (raw_in_tlast ? BURST_SIZE : 0);
    if (maybe_sim_data < fd_host_size)
        next_sim_data = maybe_sim_data;
    else
        next_sim_data = FIRST_RAM_OFFSET;
end
//=============================================================================


//=============================================================================
// sim_data always holds the RAM offset of the next data-cycle to be returned
// from host-RAM. 
//=============================================================================
always @(posedge clk) begin
    if (resetn == 0)
        sim_data <= FIRST_RAM_OFFSET;
    else if (raw_in_hsk)
        sim_data <= next_sim_data;
end
//=============================================================================


// The sequence number is the lower bits of "tdata"
wire[11:0] raw_in_seq = raw_in_tdata[11:0] & SEQ_MASK;
wire[11:0] pkt_in_seq = pkt_in_tdata[11:0] & SEQ_MASK;

// These assert on the last data-cycle of a packet
wire raw_in_eop = raw_in_tvalid & raw_in_tready & raw_in_tlast;
wire pkt_in_eop = pkt_in_tvalid & pkt_in_tready & pkt_in_tlast; 

//=============================================================================
// Here we monitor the error conditions:
//
// (0) On a "raw_in" data-transfer, tdata must contain the expected value
// (1) At "end of packet", the last 12 bits on "raw_in" must be SEQ_CHECK
// (2) At "end of packet", the last 12 bits on "pkt_in" must be SEQ_CHECK
//=============================================================================
always @(posedge clk) begin
    if (resetn == 0) begin
        error <= 0;
    end

    else begin

        if (raw_in_hsk && raw_in_tdata[63:0] != sim_data)
            error[0] <= 1;

        if (raw_in_eop && raw_in_seq != SEQ_CHECK)
            error[1] <= 1;

        if (pkt_in_eop && pkt_in_seq != SEQ_CHECK)
            error[2] <= 1;
    end
end
//=============================================================================


endmodule




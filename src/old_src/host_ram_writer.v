
//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 19-Jun-26  DWW     1  Initial creation
//=============================================================================

/*
    This reads packets from the input stream, stores them in a FIFO, 
    and writes them to host-RAM
*/


module host_ram_writer # (parameter DW=512, AW=64, IW=2)
(
    input   clk, resetn,

    // When this is asserted, the logic is granted access
    // to the M_AXI interface
    input   enable,

    // When enable is low, "halted" is asserted when this module is idle
    output reg halted,

    // The input stream
    input[DW-1:0]   axis_in_tdata,
    input           axis_in_tlast,
    input           axis_in_tvalid,

    // We write userwave data-blocks to host RAM
    input     [63:0] uw_host_size,
    input     [63:0] uw_host_addr,
    output    [63:0] uw_written,

    // A count of packets dropped because they wouldn't fit in the FIFO
    output reg[63:0] uw_dropped,

    //==================  This is an AXI4-master interface  ===================

    // "Specify write address"              -- Master --    -- Slave --
    output     [AW-1:0]                     M_AXI_AWADDR,
    output                                  M_AXI_AWVALID,
    output     [7:0]                        M_AXI_AWLEN,
    output     [2:0]                        M_AXI_AWSIZE,
    output     [IW-1:0]                     M_AXI_AWID,
    output     [1:0]                        M_AXI_AWBURST,
    output                                  M_AXI_AWLOCK,
    output     [3:0]                        M_AXI_AWCACHE,
    output     [3:0]                        M_AXI_AWQOS,
    output     [2:0]                        M_AXI_AWPROT,
    input                                                   M_AXI_AWREADY,

    // "Write Data"                         -- Master --    -- Slave --
    output     [DW-1:0]                     M_AXI_WDATA,
    output     [(DW/8)-1:0]                 M_AXI_WSTRB,
    output                                  M_AXI_WVALID,
    output                                  M_AXI_WLAST,
    input                                                   M_AXI_WREADY,

    // "Send Write Response"                -- Master --    -- Slave --
    input[1:0]                                              M_AXI_BRESP,
    input[IW-1:0]                                           M_AXI_BID,
    input                                                   M_AXI_BVALID,
    output                                  M_AXI_BREADY,

    // "Specify read address"               -- Master --    -- Slave --
    output     [AW-1:0]                     M_AXI_ARADDR,
    output                                  M_AXI_ARVALID,
    output     [2:0]                        M_AXI_ARPROT,
    output                                  M_AXI_ARLOCK,
    output     [IW-1:0]                     M_AXI_ARID,
    output     [2:0]                        M_AXI_ARSIZE,
    output     [7:0]                        M_AXI_ARLEN,
    output     [1:0]                        M_AXI_ARBURST,
    output     [3:0]                        M_AXI_ARCACHE,
    output     [3:0]                        M_AXI_ARQOS,
    input                                                   M_AXI_ARREADY,

    // "Read data back to master"           -- Master --    -- Slave --
    input[DW-1:0]                                           M_AXI_RDATA,
    input[IW-1:0]                                           M_AXI_RID,
    input                                                   M_AXI_RVALID,
    input[1:0]                                              M_AXI_RRESP,
    input                                                   M_AXI_RLAST,
    output                                  M_AXI_RREADY
    //==========================================================================
);

// Bring in some localparams we need
`include "global.vh"

// The size (in bytes) and length (in cycles) of a packet payload
localparam PACKET_SIZE = 4096;
localparam PACKET_CYCLES = PACKET_SIZE / (DW/8);

// AXI burst size and cycle-count is the same as an incoming packet
localparam BURST_SIZE = PACKET_SIZE;
localparam BURST_CYCLES = BURST_SIZE / (DW/8);

//=============================================================================
// We won't be using the read-size of M_AXI
//=============================================================================
assign M_AXI_ARADDR  = 0; 
assign M_AXI_ARVALID = 0;  
assign M_AXI_ARPROT  = 0;  
assign M_AXI_ARLOCK  = 0;  
assign M_AXI_ARID    = 0; 
assign M_AXI_ARSIZE  = 0;  
assign M_AXI_ARLEN   = 0; 
assign M_AXI_ARBURST = 0;   
assign M_AXI_ARCACHE = 0;   
assign M_AXI_ARQOS   = 0;
assign M_AXI_RREADY  = 0;
//=============================================================================

//=============================================================================
// These are fixed values for the AW-channel, W-channel, and B-channel
//=============================================================================
assign M_AXI_AWSIZE  = $clog2(DW/8);  
assign M_AXI_AWLEN   = BURST_CYCLES - 1;  
assign M_AXI_AWBURST = 1;    
assign M_AXI_AWPROT  = 0; 
assign M_AXI_AWLOCK  = 0;  
assign M_AXI_AWID    = 0; 
assign M_AXI_AWCACHE = 0;   
assign M_AXI_AWQOS   = 0;

assign M_AXI_WSTRB   = -1;
assign M_AXI_BREADY  = (resetn == 1);
//=============================================================================



// Input interface to the FIFO
reg[DW-1:0] fifo_in_tdata;
reg         fifo_in_tvalid;

// Output interface from the FIFO
wire[DW-1:0] fifo_out_tdata;
wire         fifo_out_tvalid;
wire         fifo_out_tready;

// This is the address of the last 4KB block in our host-RAM buffer
wire[63:0] last_ram_offset = uw_host_size - BURST_SIZE;

// This is the amount of free-space in the FIFO
reg[31:0] fifo_free;
wire      fifo_full = (fifo_free < PACKET_CYCLES);

// Number of packets received
reg[63:0] packets_rcvd;

// Number of PCI write-requests issued
reg[63:0] aw_blocks;

// The number of AXI bursts writen
reg[63:0] w_blocks;

// Number of PCI writes ackowledged
reg[63:0] b_blocks;

// Tell the outside world how many blocks have been written to host RAM
assign uw_written = b_blocks;

// "halted" is asserted when "enable" is low, and all bursts have been ack'd
always @(posedge clk) begin
    if (resetn == 0)
        halted <= 1;
    else
        halted <= !enable & (aw_blocks == w_blocks) & (aw_blocks == b_blocks);
end

// The offset in host RAM where we will write our burst
reg[63:0] awaddr, next_awaddr;


//=============================================================================
// Here we track the number of transactions completed on each channel since
// the last reset
//=============================================================================
always @(posedge clk) begin
    if (resetn == 0) begin
        aw_blocks <= 0;
         w_blocks <= 0;
         b_blocks <= 0;
    end

    else begin
        if (M_AXI_AWVALID & M_AXI_AWREADY)
            aw_blocks <= aw_blocks + 1;

        if (M_AXI_WVALID & M_AXI_WREADY & M_AXI_WLAST)
            w_blocks <= w_blocks + 1;

        if (M_AXI_BVALID & M_AXI_BREADY)
            b_blocks <= b_blocks + 1;
    end
end
//=============================================================================




//=============================================================================
// This block ensure that "sop" is asserted on the first cycle of every packet.
// In a properly functioning system, the first cycle of every packet should be
// an RDMX header
//=============================================================================
reg waiting_for_sop;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0) begin
        waiting_for_sop <= 1;
    end else if (axis_in_tvalid)
        waiting_for_sop <= axis_in_tlast;
end

// This is asserted on the start (i.e., the first cycle) of a packet
wire sop = (axis_in_tvalid & waiting_for_sop);
//=============================================================================


//=============================================================================
// Here we read incoming packets, strip off the RDMX header, and write the
// packet to the FIFO.
//
// If "enable" is low, packets are always dropped
//=============================================================================
reg drop_packet;
//-----------------------------------------------------------------------------
always @(posedge clk) begin

    // This strobes high for a single cycle at a time
    fifo_in_tvalid <= 0;

    if (resetn == 0) begin
        packets_rcvd   <= 0;
        uw_dropped     <= 0;
    end

    // If this is the RDMX header...
    else if (sop) begin
        if (enable) begin
            drop_packet  <= fifo_full;
            uw_dropped   <= uw_dropped   + fifo_full;
            packets_rcvd <= packets_rcvd + !fifo_full;
        end else
            drop_packet  <= 1;
    end

    // Otherwise, write data-cycles to the FIFO for 
    // packets that aren't being dropped
    else begin
        fifo_in_tdata  <= axis_in_tdata;
        fifo_in_tvalid <= axis_in_tvalid & !drop_packet;
    end

end
//=============================================================================


//=============================================================================
// Keep track of how much room is in the FIFO.  
//=============================================================================
wire cycles_in  = fifo_in_tvalid;
wire cycles_out = fifo_out_tvalid & fifo_out_tready;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0)
        fifo_free <= UW_FIFO_DEPTH;
    else
        fifo_free <= fifo_free - cycles_in + cycles_out;
end
//=============================================================================

//=============================================================================
// awaddr holds the offset in the host RAM buffer where we will write our
// next burst of data.  This block computes the *next* offset in host RAM
// that we will write to
//=============================================================================
always @* begin
    if (awaddr == last_ram_offset)
        next_awaddr = 0;
    else
        next_awaddr = awaddr + BURST_SIZE;
end
//=============================================================================



//=============================================================================
// This block sends an AXI burst-write request whenever it it senses that
// we have received packets for which we have not issued write-requests
//=============================================================================
reg  awsm_state;
//-----------------------------------------------------------------------------
always @(posedge clk) begin

    if (resetn == 0) begin
        awaddr     <= 0;
        awsm_state <= 0;
    end

    else case(awsm_state) 

        // If we're need to issue a write-request and we're sure it won't stall...
        0:  if ((packets_rcvd > aw_blocks) & M_AXI_AWREADY)
                awsm_state <= 1;

        // Here we issue the write request and wait for it to be accepted
        1:  if (M_AXI_AWVALID & M_AXI_AWREADY) begin
                awaddr     <= next_awaddr;
                awsm_state <= 0;
            end
    endcase
end
assign M_AXI_AWVALID = (awsm_state == 1) & (resetn == 1);
assign M_AXI_AWADDR  = uw_host_addr + awaddr;
//=============================================================================



//=============================================================================
// Keep track of the cycle-number within each burst, and tie the output of
// the FIFO to the W-channel of M_AXI
//=============================================================================
reg[7:0] w_cycle;
//=============================================================================
always @(posedge clk) begin
    if (resetn == 0) begin
        w_cycle <= 1;
    end
    
    else if (M_AXI_WVALID & M_AXI_WREADY) begin
        if (M_AXI_WLAST)
            w_cycle <= 1;
        else
            w_cycle <= w_cycle + 1;
    end
end

assign M_AXI_WDATA     = fifo_out_tdata;
assign M_AXI_WLAST     = (w_cycle == BURST_CYCLES);
assign M_AXI_WVALID    = fifo_out_tvalid & (w_blocks < aw_blocks);
assign fifo_out_tready = M_AXI_WREADY    & (w_blocks < aw_blocks);
//=============================================================================

//=============================================================================
// This FIFO holds incoming packet data (but not the packet headers)
//=============================================================================
xpm_fifo_axis #
(
   .TDATA_WIDTH     (DW),
   .FIFO_DEPTH      (UW_FIFO_DEPTH),
   .FIFO_MEMORY_TYPE(UW_FIFO_TYPE),
   .PACKET_FIFO     ("false"),
   .USE_ADV_FEATURES("0000"),
   .CLOCKING_MODE   ("common_clock")
)
i_fd_fifo
(
    // Clock and reset
    .s_aclk   (clk   ),
    .m_aclk   (clk   ),
    .s_aresetn(resetn),

    // The input bus of the FIFO
    .s_axis_tdata (fifo_in_tdata),
    .s_axis_tvalid(fifo_in_tvalid),
    .s_axis_tready(              ),

    // The output bus of the FIFO
    .m_axis_tdata (fifo_out_tdata),
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
    .almost_empty_axis(),
    .almost_full_axis(),
    .dbiterr_axis(),
    .prog_empty_axis(),
    .prog_full_axis(),
    .rd_data_count_axis(),
    .sbiterr_axis(),
    .wr_data_count_axis(),
    .injectdbiterr_axis(),
    .injectsbiterr_axis()
);
//=============================================================================


endmodule
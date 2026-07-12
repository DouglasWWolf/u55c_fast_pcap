//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 19-Jun-26  DWW     1  Initial creation
//=============================================================================

/*
    This module is resonsible for reading data from host RAM and stuffing
    it into a FIFO

    We never send a PCIe read-request unless we know for a fact we have room
    for the resulting data in the FIFO.   
*/


module host_ram_reader #
(
    parameter CHANNEL=0,
    parameter DW=512,
    parameter AW=64,
    parameter IW=2
)
(
    input   clk,
    input   resetn,  

    // The size of a data-frame in host-RAM
    input[31:0] i_host_frame_size,

    // Address of the frame-data ring-buffer in host RAM
    input[63:0] i_fd_host_addr,
    
    // Size of the frame-data ring-buffer in host RAM
    input[63:0] i_fd_host_size,

    // When this is asserted, the system will issue PCIe read-requests
    input   i_enable,
    
    // If this is asserted, we will subsitute simulation data for the
    // data being read from the PCI bus.   
    input   i_use_sim_data,

    // When this is asserted, the PCIe bus is quiescent
    output  halted,

    // The number of frames consumed from host-RAM
    output reg[63:0] half_frames_consumed,

    // This is the output stream of data read from host-RAM
    output[DW-1:0] axis_out_tdata,
    output         axis_out_tvalid,
    input          axis_out_tready,

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

// Bring in global localparams
`include "global.vh"

// Channel 0 handles even numbered packets, channel 1 handles odd
localparam FIRST_RAM_OFFSET = (CHANNEL == 0) ? 32'h0000 : 32'h1000;

// A single AXI burst will fetch data from host RAM in 4 KB blocks
localparam BURST_SIZE = 4096;

// The number of data-cycles in a single AXI burst
localparam BURST_CYCLES = BURST_SIZE / 64;

//=============================================================================
// Register these inputs to make timing-closure easier
//=============================================================================
reg[31:0] host_frame_size;
reg[63:0] fd_host_addr;
reg[63:0] fd_host_size;
reg       enable;
reg       use_sim_data;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0) begin
        enable <= 0;
    end

    else begin
        host_frame_size <= i_host_frame_size;
        fd_host_addr    <= i_fd_host_addr;
        fd_host_size    <= i_fd_host_size;
        enable          <= i_enable;
        use_sim_data    <= i_use_sim_data;
    end
end
//=============================================================================

// The number of AXI bursts in a host-frame
wire[31:0] bursts_per_half_frame = (host_frame_size / 2) / BURST_SIZE;

// This is the burst number within a single half-frame
reg[31:0] burst_within_frame;

// The number of reads requested, and the number of reads completed
reg[63:0] ar_req_count, ar_rsp_count;

// Tell the outside world when the PCIe bus is quiescent
assign halted = !enable && (ar_rsp_count == ar_req_count);

// This is the amount of room remaining in the FIFO
reg[$clog2(HRR_FIFO_DEPTH):0] fifo_free;

// This is the next offset (from fd_host_araddr) we're going to read from RAM
reg[63:0] araddr, next_araddr;

// This will hold simulated values for M_AXI_RDATA.  When use_sim_data is 1, this
// is the data that will actually be written into the FIFO
reg [63:0] sim_data, next_sim_data;

// The input interface to the FIFO.  We only issue a read-request from host-RAM
// when we know we have room to store the result in the FIFO.
reg [DW-1:0] fifo_in_tdata;
reg          fifo_in_tvalid;
wire         fifo_in_tready;

//=============================================================================
// These are fixed values for the AR-channel and R-channel
//=============================================================================
assign M_AXI_ARSIZE  = $clog2(DW/8);  
assign M_AXI_ARLEN   = BURST_CYCLES - 1;  
assign M_AXI_ARBURST = 1;    
assign M_AXI_ARPROT  = 0; 
assign M_AXI_ARLOCK  = 0;  
assign M_AXI_ARID    = 0; 
assign M_AXI_ARCACHE = 0;   
assign M_AXI_ARQOS   = 0;

assign M_AXI_RREADY  = (resetn == 1);
//=============================================================================


//=============================================================================
// araddr holds the offset in the host RAM buffer where we will read our
// next burst of data from.  This block computes the *next* offset in host RAM
// that we will read from
//=============================================================================
reg[63:0] maybe_araddr;
//-----------------------------------------------------------------------------
always @* begin
    maybe_araddr = araddr + BURST_SIZE * 2;
    if (maybe_araddr < fd_host_size)
        next_araddr = maybe_araddr;
    else
        next_araddr = FIRST_RAM_OFFSET;
end
//=============================================================================



//=============================================================================
// This block continuously sends an AXI burst-read request whenever it 
// is allowed.
//=============================================================================
reg arsm_state;
//----------------------------------------------------------------------------
always @(posedge clk) begin

    if (resetn == 0) begin
        araddr     <= FIRST_RAM_OFFSET;
        arsm_state <= 0;
    end

    else case(arsm_state) 

        // If we're enabled and the PCI bridge is ready for a read-request...
        0:  if (enable & (fifo_free >= BURST_CYCLES) & M_AXI_ARREADY) begin
                arsm_state <= 1;
            end

        // Here we issue the read request and wait for
        // it to be accepted
        1:  if (M_AXI_ARVALID & M_AXI_ARREADY) begin
                araddr     <= next_araddr;
                arsm_state <= 0;
            end
    endcase
end
assign M_AXI_ARVALID = (arsm_state == 1) & (resetn == 1);
assign M_AXI_ARADDR  = fd_host_addr + araddr;
//=============================================================================


//=============================================================================
// This keeps track of the total number of read-requests issued
//=============================================================================
always @(posedge clk) begin
    if (resetn == 0)
        ar_req_count <= 0;
    else if (M_AXI_ARVALID & M_AXI_ARREADY)
        ar_req_count <= ar_req_count + 1;
end
//=============================================================================

//=============================================================================
// This keeps track of the total number of read-requests fulfilled
//=============================================================================
always @(posedge clk) begin
    if (resetn == 0)
        ar_rsp_count <= 0;
    else if (M_AXI_RVALID & M_AXI_RREADY & M_AXI_RLAST)
        ar_rsp_count <= ar_rsp_count + 1;
end
//=============================================================================


//=============================================================================
// This writes data arriving from host-RAM to the FIFO
//=============================================================================
always @(posedge clk) begin
    fifo_in_tdata  <= (use_sim_data) ? sim_data : M_AXI_RDATA;
    fifo_in_tvalid <= (M_AXI_RVALID & M_AXI_RREADY);
end
//=============================================================================

//=============================================================================
// Here we keep track of:
//   How many bursts of data have been received for the current frame?
//   How many half-frames of data have been consumed?
//=============================================================================
always @(posedge clk) begin
    
    if (resetn == 0) begin
        half_frames_consumed <= 0;
        burst_within_frame   <= 1;
    end 
    
    // On the last cycle of each arriving burst of data, do some accounting
    else if (M_AXI_RVALID & M_AXI_RREADY & M_AXI_RLAST) begin
        if (burst_within_frame < bursts_per_half_frame)
            burst_within_frame <= burst_within_frame + 1;
        else begin
            burst_within_frame    <= 1;
            half_frames_consumed  <= half_frames_consumed + 1;
        end
    end
end
//=============================================================================



//=============================================================================
// Here we keep track of how much room is left in the FIFO.  When a
// read-request is made to host RAM, we count that as data coming into the
// FIFO.   
//=============================================================================
wire[6:0] cycles_in =  (M_AXI_ARVALID & M_AXI_ARREADY) ? BURST_CYCLES : 0;
wire      cycles_out = (axis_out_tvalid & axis_out_tready);
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0)
        fifo_free <= HRR_FIFO_DEPTH;
    else
        fifo_free <= fifo_free - cycles_in + cycles_out;
end
//=============================================================================



//=============================================================================
// This computes the *next* value for "sim_data"
//=============================================================================
reg[63:0] maybe_sim_data;
//-----------------------------------------------------------------------------
always @* begin
    maybe_sim_data = sim_data + 64 + ((M_AXI_RLAST) ? BURST_SIZE : 0);
    if (maybe_sim_data < fd_host_size)
        next_sim_data = maybe_sim_data;
    else
        next_sim_data = FIRST_RAM_OFFSET;
end
//=============================================================================


//=============================================================================
// sim_data always holds the RAM offset of the next data-cycle to be returned
// from host-RAM.  When "use_sim_data" is 1, this data is stuffed into the FIFO
// in place of M_AXI_RDATA
//=============================================================================
always @(posedge clk) begin
    if (resetn == 0)
        sim_data <= FIRST_RAM_OFFSET;
    else if (M_AXI_RREADY & M_AXI_RVALID) begin
        sim_data <= next_sim_data;
    end
end
//=============================================================================


//=============================================================================
// This is the frame-data FIFO
//=============================================================================
xpm_fifo_axis #
(
   .TDATA_WIDTH     (DW),
   .FIFO_DEPTH      (HRR_FIFO_DEPTH),
   .FIFO_MEMORY_TYPE(HRR_FIFO_TYPE),
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
    .s_axis_tdata (fifo_in_tdata ),
    .s_axis_tvalid(fifo_in_tvalid),
    .s_axis_tready(fifo_in_tready),

    // The output bus of the FIFO
    .m_axis_tdata (axis_out_tdata ),
    .m_axis_tvalid(axis_out_tvalid),
    .m_axis_tready(axis_out_tready),

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

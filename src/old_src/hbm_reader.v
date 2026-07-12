
//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 30-Jun-26  DWW     1  Initial creation
//=============================================================================

/*
    This module reads data from HBM in 4KB chunks and writes it to a FIFO
*/


module hbm_reader #
(
    parameter DW=512,
    parameter AW=64,
    parameter IW=2
)
(
    input   clk,
    input   resetn,  

    // When this strobes high, we begin reading data from HBM
    input           start_stb,
    
    // This is the HBM bank we're reading from
    input           bank_select,
    
    // This is asserted when we're completely idle
    output          idle,

    // This is the number of blocks of data we should read from HBM
    input[31:0]    blocks_to_read,

    // This is asserted when our output FIFO is full
    output         fifo_full,

    // The output stream where our data flows out to
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
    output reg [AW-1:0]                     M_AXI_ARADDR,
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

// A single block of data is 4KB
localparam HBM_BLOCK_SIZE = 64 * (DW/8);

// The number of data-cycles in a block of data
localparam CYCLES_PER_BLOCK = HBM_BLOCK_SIZE / (DW/8);

// Determine the HBM base address where we will write blocks
wire[63:0] base_address = (bank_select) ? HBM_BANK_SIZE : 0;

// We're not using the write-side of M_AXI
assign M_AXI_AWADDR  = 0;  
assign M_AXI_AWVALID = 0;   
assign M_AXI_AWLEN   = 0;  
assign M_AXI_AWSIZE  = 0;   
assign M_AXI_AWID    = 0;  
assign M_AXI_AWBURST = 0;    
assign M_AXI_AWLOCK  = 0;   
assign M_AXI_AWCACHE = 0;    
assign M_AXI_AWQOS   = 0;  
assign M_AXI_AWPROT  = 0;   
assign M_AXI_WDATA   = 0;  
assign M_AXI_WSTRB   = 0;  
assign M_AXI_WVALID  = 0;   
assign M_AXI_WLAST   = 0; 
assign M_AXI_BREADY  = 0;  


// Constant values for the AR channel of M_AXI
assign M_AXI_ARLEN   = CYCLES_PER_BLOCK - 1;  
assign M_AXI_ARSIZE  = $clog2(DW/8);   
assign M_AXI_ARBURST = 1;    
assign M_AXI_ARID    = 0;   
assign M_AXI_ARLOCK  = 0;
assign M_AXI_ARCACHE = 0;
assign M_AXI_ARQOS   = 0;
assign M_AXI_ARPROT  = 0;

// The number of transactions completed on the AR and R channels of M_AXI
reg[31:0] ar_blocks, r_blocks;

//=============================================================================
// Here we track the number of transactions completed on each channel since
// the last "start_stb" signal
//=============================================================================
always @(posedge clk) begin

    if (resetn == 0) begin
        ar_blocks <= 0;
         r_blocks <= 0;
    end

    else begin
        if (M_AXI_ARVALID & M_AXI_ARREADY)
            ar_blocks <= ar_blocks + 1;
    
        if (M_AXI_RVALID & M_AXI_RREADY & M_AXI_RLAST)
            r_blocks <= r_blocks + 1;
    end

    if (start_stb) begin
        ar_blocks <= 0;
         r_blocks <= 0;
    end

end
//=============================================================================


//=============================================================================
// Here we keep track of how much free space is in the FIFO.   We count
// a data-block as "occupying space in the FIFO" as soon as its requested,
// without waiting until the data actually arrives in the FIFO
//=============================================================================
wire[6:0] data_in  = (M_AXI_ARVALID & M_AXI_ARREADY) ? CYCLES_PER_BLOCK : 0;
wire      data_out = (axis_out_tvalid & axis_out_tready);
reg[31:0] fifo_free;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0)
        fifo_free <= HBM_FIFO_DEPTH;
    else
        fifo_free <= fifo_free - data_in + data_out;
end
//=============================================================================


//=============================================================================
// When we're told to start, we will begin issuing read-requests until we
// have requested "blocks_to_read" blocks of data from HBM
//=============================================================================
reg[1:0] arsm_state;
//-----------------------------------------------------------------------------
always @(posedge clk) begin

    if (resetn == 0) begin
        arsm_state <= 0;
    end

    else case(arsm_state)

        // Wait to be told to start
        0:  if (start_stb) begin
                M_AXI_ARADDR <= base_address;                
                arsm_state   <= 1;
            end

        // Have we requested all the blocks we need to and that will fit
        // into the FIFO?
        1:  if (ar_blocks == blocks_to_read)
                arsm_state <= 0;
            else if (fifo_free >= CYCLES_PER_BLOCK)
                arsm_state <= 2;


        // Request a block, them bump the address for next time
        2:  if (M_AXI_ARVALID & M_AXI_ARREADY) begin
                M_AXI_ARADDR <= M_AXI_ARADDR + HBM_BLOCK_SIZE;
                arsm_state   <= 1;
            end
    endcase

end
//-----------------------------------------------------------------------------
assign M_AXI_ARVALID = (arsm_state == 2);
//=============================================================================



//=============================================================================
// This is the frame-data FIFO
//=============================================================================
xpm_fifo_axis #
(
   .TDATA_WIDTH     (DW),
   .FIFO_DEPTH      (HBM_FIFO_DEPTH),
   .FIFO_MEMORY_TYPE(HBM_FIFO_TYPE),
   .PACKET_FIFO     ("false"),
   .USE_ADV_FEATURES("0000"),
   .CLOCKING_MODE   ("common_clock")
)
i_hbm_fifo
(
    // Clock and reset
    .s_aclk   (clk   ),
    .m_aclk   (clk   ),
    .s_aresetn(resetn),

    // The input bus of the FIFO
    .s_axis_tdata (M_AXI_RDATA),
    .s_axis_tvalid(M_AXI_RVALID),
    .s_axis_tready(M_AXI_RREADY),

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


// We're idle when we've received every data-block we asked for
assign idle = (arsm_state == 0) & (start_stb == 0) & (r_blocks == ar_blocks);

// Tell the outside world when our FIFO is full
assign fifo_full = (fifo_free == 0);


endmodule
//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 30-Jun-26  DWW     1  Initial creation
//=============================================================================

/*
    This module reads data from an input stream and writes it to RAM in
    4 KB blocks.
*/


module hbm_writer #
(
    parameter DW=512,
    parameter AW=64,
    parameter IW=2
)
(
    input   clk,
    input   resetn,  

    // When this strobes high, we begin writing data to HBM
    input           start_stb,
    
    // This is the RAM bank we're writing to
    input           bank_select,
    
    // When this strobes high, we go idle as soon as we can
    input           halt_req_stb,
    
    // This is asserted when we're completely idle
    output          idle,
   

    // This tracks the number of blocks that we've stored in HBM since
    // the last time "start_stb" was asserted
    output[31:0]    blocks_stored_in_hbm,

    // The input stream where our data comes from
    input[DW-1:0] axis_in_tdata,
    input         axis_in_tvalid,
    output        axis_in_tready,

    //==================  This is an AXI4-master interface  ===================

    // "Specify write address"              -- Master --    -- Slave --
    output reg [AW-1:0]                     M_AXI_AWADDR,
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

// Our input stream gets fed directly to a FIFO
localparam FIFO_DEPTH = 512;

// A single block of data is 4KB
localparam HBM_BLOCK_SIZE = 64 * (DW/8);

// The number of data-cycles in a block of data
localparam CYCLES_PER_BLOCK = HBM_BLOCK_SIZE / (DW/8);

// The number of blocks that will fit in a bank of RAM
localparam MAX_BLOCKS_PER_BANK = HBM_BANK_SIZE / HBM_BLOCK_SIZE;

// We're not using the AR or R channels of M_AXI
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

// Constant values for the AW, W, and B channels of M_AXI
assign M_AXI_AWLEN   = CYCLES_PER_BLOCK - 1;  
assign M_AXI_AWSIZE  = $clog2(DW/8);   
assign M_AXI_AWBURST = 1;    
assign M_AXI_AWID    = 0;   
assign M_AXI_AWLOCK  = 0;
assign M_AXI_AWCACHE = 0;
assign M_AXI_AWQOS   = 0;
assign M_AXI_AWPROT  = 0;
assign M_AXI_WSTRB   = -1;
assign M_AXI_BREADY  = (resetn == 1);


// Determine the HBM base address where we will write blocks
wire[63:0] base_address = (bank_select) ? HBM_BANK_SIZE : 0;

// The total number of blocks completed on each M_AXI channel since "start_stb"
reg[31:0] aw_blocks, w_blocks, b_blocks;

// Same as "aw_blocks", but cleared only by reset
reg[63:0] total_aw_blocks;

// Output bus of the FIFO
wire[DW-1:0] fifo_out_tdata;
wire         fifo_out_tvalid;
wire         fifo_out_tready;

//=============================================================================
// Keep track of how many complete blocks of data we've received on the
// input stream
//=============================================================================
reg[63:0] total_blocks_rcvd;
reg[ 6:0] input_cycle;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0) begin
        total_blocks_rcvd <= 0;
        input_cycle       <= 1;
    end

    else if (axis_in_tvalid & axis_in_tready) begin
        if (input_cycle < CYCLES_PER_BLOCK)
            input_cycle <= input_cycle + 1;
        else begin
            total_blocks_rcvd <= total_blocks_rcvd + 1;
            input_cycle       <= 1;
        end
    end
end
//=============================================================================


//=============================================================================
// "halt_req" is turned on via "halt_req_stb" and turned off by "start_stb"
//=============================================================================
reg halt_req;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0)
        halt_req <= 0;
    else if (halt_req_stb)
        halt_req <= 1;
    else if (start_stb)
        halt_req <= 0;
end
//=============================================================================


//=============================================================================
// Here we track the number of AW transactions since reset
//=============================================================================
always @(posedge clk) begin

    if (resetn == 0)
        total_aw_blocks <= 0;

    else if (M_AXI_AWVALID & M_AXI_AWREADY)
        total_aw_blocks <= total_aw_blocks + 1;

end
//=============================================================================



//=============================================================================
// Here we track the number of transactions completed on each channel since
// the last "start_stb" signal
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

    if (start_stb) begin
        aw_blocks <= 0;
         w_blocks <= 0;
         b_blocks <= 0;
    end

end
//=============================================================================






//=============================================================================
// Every time we sense that the "host-ram-reader" module has stuffed
// a new block into our FIFO, we will issue a write-request on the AW channel
// of M_AXI
//=============================================================================
reg[1:0] awsm_state;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0) begin
        awsm_state <= 0;
    end

    else case (awsm_state)

        // If we're told to start, go wait for data to be available
        // in the FIFO
        0:  if (start_stb) begin
                M_AXI_AWADDR <= base_address;
                awsm_state   <= 1;
            end

        // If we're halting, go idle, otherwise if there is a block
        // of data waiting for us in the FIFO, go issue a write-request
        1:  if (halt_req_stb | halt_req)
                awsm_state <= 0;
            else if (total_blocks_rcvd > total_aw_blocks) begin
                awsm_state <= 2;
            end

        // Wait for the write-request to be accepted and if we haven't
        // filled up this HBM bank, go wait for another block of data
        // to arrive in the FIFO
        2:  if (M_AXI_AWVALID & M_AXI_AWREADY) begin
                if (aw_blocks == MAX_BLOCKS_PER_BANK - 1)
                    awsm_state <= 0;
                else begin
                    M_AXI_AWADDR <= M_AXI_AWADDR + HBM_BLOCK_SIZE;
                    awsm_state   <= 1;
                end
            end

    endcase

end

assign M_AXI_AWVALID = (awsm_state == 2);
//=============================================================================


//=============================================================================
// Here we write data from the input stream into the W-channel of M_AXI
//=============================================================================
reg wsm_state;
reg[6:0] cycle;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0)
        wsm_state <= 0;
    
    else case(wsm_state)

        // If we need to output a block of data...
        0:  if (w_blocks < aw_blocks) begin
                cycle     <= 1;
                wsm_state <= 1;
            end


        // Count cycles so we know when to assert M_AXI_WLAST
        1:  if (M_AXI_WVALID & M_AXI_WREADY) begin
                if (M_AXI_WLAST)
                    wsm_state <= 0;
                else
                    cycle <= cycle + 1;
            end

    endcase

end

// Connect the M_AXI W-channel to the input stream
assign M_AXI_WDATA     = fifo_out_tdata;
assign M_AXI_WLAST     = (cycle == CYCLES_PER_BLOCK);
assign M_AXI_WVALID    = fifo_out_tvalid & (wsm_state == 1);
assign fifo_out_tready = M_AXI_WREADY    & (wsm_state == 1);
//=============================================================================


// We're idle when every request on M_AXI_AW<x> has been answered with an 
// acknowledgement on M_AXI_B<x>
assign idle = (start_stb == 0) & (awsm_state == 0) & (b_blocks == aw_blocks);

// Keep track of the number of blocks we've stored in HBM since "start_stb"
assign blocks_stored_in_hbm = b_blocks;


//=============================================================================
// This is the frame-data FIFO
//=============================================================================
xpm_fifo_axis #
(
   .TDATA_WIDTH     (DW),
   .FIFO_DEPTH      (FIFO_DEPTH),
   .FIFO_MEMORY_TYPE("auto"),
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
    .s_axis_tdata (axis_in_tdata ),
    .s_axis_tvalid(axis_in_tvalid),
    .s_axis_tready(axis_in_tready),

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
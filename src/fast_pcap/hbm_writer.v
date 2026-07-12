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

    As data arrives on axis_in, it is poured into a FIFO.  The output of that
    FIFO drives the W-channel of M_AXI
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
    input   enable,

    // This will assert after the last block has been written and
    // acknowledged
    output reg  done,

    // The number of blocks of data written to RAM
    output[31:0] blocks_rcvd,

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

// Bring in system-geometry definitions
`include "settings.vh"

// We write to HBM in 4KB blocks
localparam BLOCK_SIZE = 4096;

// There are 64 data-cycles in a 4KB block
localparam CYCLES_PER_BLOCK = BLOCK_SIZE / (DW/8);

// Which how cycle of a 64-cycle burst are we on?
reg[7:0] cycle;

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
assign M_AXI_WLAST   = (cycle == CYCLES_PER_BLOCK);
assign M_AXI_BREADY  = (resetn == 1);


// The number of 4KB blocks sent/ack'd on each AXI channel
reg[31:0] aw_blocks, w_blocks, b_blocks;

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
// Count data-cycles on the incoming stream
//=============================================================================
reg[63:0] cycles_rcvd;
assign blocks_rcvd = cycles_rcvd / CYCLES_PER_BLOCK;
//----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0)
        cycles_rcvd <= 0;
    else if (axis_in_tvalid & axis_in_tready)
        cycles_rcvd <= cycles_rcvd + 1;
end
//=============================================================================


//=============================================================================
// Here we count cycles on the W-channel of M_AXI
//=============================================================================
always @(posedge clk) begin
    if (resetn == 0)
        cycle <= 1;
    else if (M_AXI_WVALID & M_AXI_WREADY) begin
        if (cycle == CYCLES_PER_BLOCK)
            cycle <= 1;
        else
            cycle <= cycle + 1;
    end
end
//=============================================================================



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
// This activity timer keeps track of how long it has been since we've 
// seen a new incoming block *while enable is low*
//=============================================================================
reg[15:0] activity_timer;
always @(posedge clk) begin
    
    if (resetn == 0) begin
        done           <= 0;
        activity_timer <= 0;
    end

    if (activity_timer && enable == 0)
        activity_timer <= activity_timer - 1;

    if (M_AXI_AWVALID & M_AXI_AWREADY)
        activity_timer <= 1000;

    if (disabled && activity_timer == 0 && b_blocks == blocks_rcvd)
        done <= 1;
end
//=============================================================================


//=============================================================================
// Every time we realize that there are incoming blocks for which we have
// not issued a write-request, issue a write-request
//=============================================================================
reg awsm_state;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0) begin
        awsm_state   <= 0;
        M_AXI_AWADDR <= 0;
    end

    else case (awsm_state)
        0:  if (blocks_rcvd > aw_blocks) begin
                awsm_state <= 1;
            end

        1:  if (M_AXI_AWVALID & M_AXI_AWREADY) begin
                M_AXI_AWADDR <= M_AXI_AWADDR + BLOCK_SIZE;
                awsm_state   <= 0;
            end
    endcase

end

assign M_AXI_AWVALID = (awsm_state == 1);
//=============================================================================


//=============================================================================
// This FIFO contains data to be written to RAM
//=============================================================================
xpm_fifo_axis #
(
   .TDATA_WIDTH     (512),
   .FIFO_DEPTH      (STAGE3_FIFO_DEPTH),
   .FIFO_MEMORY_TYPE(STAGE3_FIFO_TYPE),
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
    .m_axis_tdata (M_AXI_WDATA ),
    .m_axis_tvalid(M_AXI_WVALID),
    .m_axis_tready(M_AXI_WREADY),

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
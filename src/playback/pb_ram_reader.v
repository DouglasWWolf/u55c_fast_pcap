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
    it into a FIFO. 
*/


module pb_ram_reader #
(
    parameter CHANNEL=0,
    parameter DW=512,  
    parameter AW=64,
    parameter IW=2
)
(
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF M_AXI:axis_out, ASSOCIATED_RESET resetn" *)
    input   clk,
    input   resetn,  

    // The number of cycles of data in and out of this module
    output reg[31:0] dbg_cycles_in, dbg_cycles_out,

    // When this strobes high, we begin reading ram
    input           start_stb,

    // After "start_stb", this will stay asserted until the last cycle of
    // the last packet has been transmitted
    output          busy,

    // Asserted by "pb_buffer.v"
    input           async_buffer_busy,

    // Address of the frame-data ring-buffer in host RAM
    input[63:0]     host_addr,

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
    output reg [AW-1:0]                     M_AXI_ARADDR,
    output                                  M_AXI_ARVALID,
    output     [2:0]                        M_AXI_ARPROT,
    output                                  M_AXI_ARLOCK,
    output     [IW-1:0]                     M_AXI_ARID,
    output     [2:0]                        M_AXI_ARSIZE,
    output reg [7:0]                        M_AXI_ARLEN,
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
    output                                  M_AXI_RREADY,
    //==========================================================================

    //==========================================================================
    // This stream carries a signal to the downstream buffer module to tell 
    // it to expect 'n' data-cycles of packet data
    //==========================================================================
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cmac_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axis_ctl" *)
    input         cmac_clk,
    output [31:0] axis_ctl_tdata,
    output        axis_ctl_tvalid,
    input         axis_ctl_tready
);

localparam BLOCK_SIZE = 4096;
localparam CYCLES_PER_BLOCK = 4096 / (DW/8);
localparam FIFO_DEPTH = 1024;

//=============================================================================
// We're not going to use the write-channels of M_AXI
//=============================================================================
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


//=============================================================================
// These are fixed values for the AR-channel and R-channel
//=============================================================================
assign M_AXI_ARSIZE  = $clog2(DW/8);  
assign M_AXI_ARBURST = 1;    
assign M_AXI_ARPROT  = 0; 
assign M_AXI_ARLOCK  = 0;  
assign M_AXI_ARID    = 0; 
assign M_AXI_ARCACHE = 0;   
assign M_AXI_ARQOS   = 0;
//=============================================================================



//=============================================================================
// The very first cycle of incoming data that we read from host RAM should 
// contain a header that looks like this
//=============================================================================
wire[63:0] hdr_signature;
wire[31:0] hdr_ram_cycles;
wire[31:0] hdr_packet_cycles;
assign {hdr_packet_cycles, hdr_ram_cycles, hdr_signature} = M_AXI_RDATA;
//=============================================================================


//=============================================================================
// For debugging purposes, we count the number of data-cycles in
//=============================================================================
always @(posedge clk) begin 
    if (start_stb)
        dbg_cycles_in <= 0;
    else if (M_AXI_RVALID & M_AXI_RREADY & cts)
        dbg_cycles_in <= dbg_cycles_in + 1;
end
//=============================================================================


//=============================================================================
// For debugging purposes, we count the number of data-cycles out
//=============================================================================
always @(posedge clk) begin
    if (start_stb)
        dbg_cycles_out <= 0;
    else if (axis_out_tvalid & axis_out_tready)
        dbg_cycles_out <= dbg_cycles_out + 1;
end
//=============================================================================

//=============================================================================
// Here we track the number of free entries in the main data FIFO
//=============================================================================
reg[31:0] fifo_free;
wire[7:0] fifo_in  = (M_AXI_ARVALID & M_AXI_ARREADY & cts) ? M_AXI_ARLEN + 1 : 0;
wire      fifo_out = axis_out_tvalid & axis_out_tready;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0)
        fifo_free <= FIFO_DEPTH;
    else
        fifo_free <= fifo_free - fifo_in + fifo_out;
end
//=============================================================================



//=============================================================================
// This block sends AXI read-requests.  We only send a read-request when we
// know we have room to store the resulting data in our FIFO
//=============================================================================
localparam ARSM_WAIT_FOR_START  = 0;
localparam ARSM_WAIT_FIRST_ACK  = 1;
localparam ARSM_WAIT_FIRST_DATA = 2;
localparam ARSM_REQUEST_BLOCK   = 3;
localparam ARSM_WAIT_ACK        = 4;
localparam ARSM_WAIT_DONE       = 5;
reg [ 2:0] arsm_state;
reg [31:0] remaining;
reg        ctl_fifo_in_tvalid;
reg [31:0] ctl_fifo_in_tdata;
reg        cts;
reg [ 5:0] timer;
wire       buffer_busy;
localparam[63:0] SIGNATURE = 64'h3141592653589793;
//----------------------------------------------------------------------------
always @(posedge clk) begin

    // When this strobes high, a record is written to the control FIFO
    ctl_fifo_in_tvalid <= 0;

    // We want to make sure we don't check the pb_buffer's "busy" flag
    // until after it's had a chance to set it!
    if (timer) timer <= timer - 1;

    if (resetn == 0) begin
        cts        <= 0;
        arsm_state <= ARSM_WAIT_FOR_START;
    end

    else case(arsm_state)  

        // When we're told to start, request the 1-data-cycle header
        ARSM_WAIT_FOR_START:
            if (start_stb) begin
                M_AXI_ARADDR <= host_addr;
                M_AXI_ARLEN  <= 0;
                cts          <= 0;
                arsm_state   <= ARSM_WAIT_FIRST_ACK;
            end

        // Wait for the request to be acknowledged
        ARSM_WAIT_FIRST_ACK:
            if (M_AXI_ARVALID & M_AXI_ARREADY) begin
                arsm_state <= ARSM_WAIT_FIRST_DATA;
            end

        // Wait for our header to arrive
        ARSM_WAIT_FIRST_DATA:
            if (M_AXI_RVALID) begin
                if (hdr_signature != SIGNATURE)
                    arsm_state         <= ARSM_WAIT_FOR_START;
                else begin
                    ctl_fifo_in_tdata  <= hdr_packet_cycles;
                    ctl_fifo_in_tvalid <= 1;
                    timer              <= -1;
                    remaining          <= hdr_ram_cycles;
                    M_AXI_ARADDR       <= M_AXI_ARADDR + BLOCK_SIZE;
                    cts                <= 1;
                    arsm_state         <= ARSM_REQUEST_BLOCK;
                end
            end

        // If there are blocks remaining to request and we have room
        // to store the resulting data in the FIFO, request them!
        ARSM_REQUEST_BLOCK:
            if (remaining == 0)
                arsm_state <= ARSM_WAIT_DONE;
            
            else if (fifo_free < CYCLES_PER_BLOCK)
                arsm_state <= ARSM_REQUEST_BLOCK;
            
            else if (remaining > CYCLES_PER_BLOCK) begin
                M_AXI_ARLEN <= CYCLES_PER_BLOCK -1;
                arsm_state  <= ARSM_WAIT_ACK;
            end
            
            else begin
                M_AXI_ARLEN <= remaining - 1;
                arsm_state  <= ARSM_WAIT_ACK;
            end


        // Here we wait for read requests to be acknowledged
        ARSM_WAIT_ACK:
            if (M_AXI_ARVALID & M_AXI_ARREADY) begin
                M_AXI_ARADDR <= M_AXI_ARADDR + BLOCK_SIZE;
                remaining    <= remaining - (M_AXI_ARLEN + 1);
                arsm_state   <= ARSM_REQUEST_BLOCK;
            end

        ARSM_WAIT_DONE:
            if (timer == 0 && !buffer_busy)
                arsm_state <= ARSM_WAIT_FOR_START;

    endcase
end

// M_AXI_ARVALID is asserted only when when issuing read-requests
assign M_AXI_ARVALID = (arsm_state == ARSM_WAIT_FIRST_ACK) 
                     | (arsm_state == ARSM_WAIT_ACK      );

// Tell the outside world when we're busy
assign busy = (start_stb | arsm_state != ARSM_WAIT_FOR_START);
//=============================================================================


//=============================================================================
// Here we write arriving data into the FIFO (only if cts is asserted)
//=============================================================================
reg[DW-1:0] fifo_in_tdata;
reg         fifo_in_tvalid;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    fifo_in_tdata  <= M_AXI_RDATA;
    fifo_in_tvalid <= M_AXI_RVALID & M_AXI_RREADY & cts;
end
assign M_AXI_RREADY = (resetn == 1);
//=============================================================================



//==========================================================================
// Synchronize "buffer_busy"
//
// We use a long chain of flip-flops here because we want this signal to
// transition *well after* other synchronizations. 
//==========================================================================
xpm_cdc_single #
(
    .DEST_SYNC_FF   (8),
    .SRC_INPUT_REG  (0)
)
i_sync_buffer_busy
(
    .src_clk  (),
    .src_in   (async_buffer_busy),
    .dest_clk (clk),
    .dest_out (buffer_busy)
);
//==========================================================================




//=============================================================================
// This is the data FIFO
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
i_pd_fifo
(
    // Clock and reset
    .s_aclk   (clk   ),
    .m_aclk   (clk   ),
    .s_aresetn(resetn),

    // The input bus of the FIFO
    .s_axis_tdata (fifo_in_tdata ),
    .s_axis_tvalid(fifo_in_tvalid),
    .s_axis_tready(              ),

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


//=============================================================================
// This is a clock-conversion FIFO to carry control data to a downstream
// module that runs synchronous to the CMAC's clock
//=============================================================================
xpm_fifo_axis #
(
   .TDATA_WIDTH     (DW),
   .FIFO_DEPTH      (32),
   .FIFO_MEMORY_TYPE("auto"),
   .PACKET_FIFO     ("false"),
   .USE_ADV_FEATURES("0000"),
   .CLOCKING_MODE   ("independent_clock")
)
i_ctl_fifo
(
    // Clock and reset
    .s_aclk   (clk     ),
    .m_aclk   (cmac_clk),
    .s_aresetn(resetn  ),

    // The input bus of the FIFO
    .s_axis_tdata (ctl_fifo_in_tdata ),
    .s_axis_tvalid(ctl_fifo_in_tvalid),
    .s_axis_tready(                   ),

    // The output bus of the FIFO
    .m_axis_tdata (axis_ctl_tdata ),
    .m_axis_tvalid(axis_ctl_tvalid),
    .m_axis_tready(axis_ctl_tready),

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

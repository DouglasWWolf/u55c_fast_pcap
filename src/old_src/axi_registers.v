//====================================================================================
//                        ------->  Revision History  <------
//====================================================================================
//
//   Date     Who   Ver  Changes
//====================================================================================
// 03-Jul-26  DWW     1  Initial creation
//====================================================================================

/*
    Extra registers for the ecd-feeder design
*/


module axi_registers # (parameter AW=8)
(
    input clk, resetn,

    // The address and size of the userwave-data buffer in host-RAM
    output reg [63:0] uw_host_addr, uw_host_size, 

    // The number of Userwave-data packets dropped and the number written
    // to host-RAM.  Arriving packets are dropped when they won't fit into
    // the arrival FIFO
    input[63:0] uw_dropped, uw_written,

    // Number of malformed packets detected on each QSFP port
    input[31:0] qsfp0_malformed, qsfp1_malformed,

    // Asynchronous ethernet-link status for each QSFP
    input async_rx0_aligned, async_rx1_aligned,    

    // If this is asserted, the QSFP cables are swapped!  This asserts when
    // we receive a command-packet on QSFP_1 instead of QSFP_0
    input swapped_cables,

    //================== This is an AXI4-Lite slave interface ==================
        
    // "Specify write address"              -- Master --    -- Slave --
    input[AW-1:0]                           S_AXI_AWADDR,   
    input                                   S_AXI_AWVALID,  
    input[   2:0]                           S_AXI_AWPROT,
    output                                                  S_AXI_AWREADY,


    // "Write Data"                         -- Master --    -- Slave --
    input[31:0]                             S_AXI_WDATA,      
    input                                   S_AXI_WVALID,
    input[ 3:0]                             S_AXI_WSTRB,
    output                                                  S_AXI_WREADY,

    // "Send Write Response"                -- Master --    -- Slave --
    output[1:0]                                             S_AXI_BRESP,
    output                                                  S_AXI_BVALID,
    input                                   S_AXI_BREADY,

    // "Specify read address"               -- Master --    -- Slave --
    input[AW-1:0]                           S_AXI_ARADDR,     
    input[   2:0]                           S_AXI_ARPROT,     
    input                                   S_AXI_ARVALID,
    output                                                  S_AXI_ARREADY,

    // "Read data back to master"           -- Master --    -- Slave --
    output[31:0]                                            S_AXI_RDATA,
    output                                                  S_AXI_RVALID,
    output[ 1:0]                                            S_AXI_RRESP,
    input                                   S_AXI_RREADY
    //==========================================================================
);  

//=========================  AXI Register Map  =============================
/*
    @register The base address where userwave-data will be stored in host-RAM
    @rdesc    Must be on a 4KB boundary
    @rname REG_UW_HOST_ADDR
    @rsize 64
*/
localparam REG_UW_HOST_ADDR_H = 0;
localparam REG_UW_HOST_ADDR_L = 1;

/*
    @register The size of the ring-buffer where userwave-data will be stored
    @rdesc    in host-RAM.   Must be a multiple of 4KB
    @rname REG_UW_HOST_SIZE
    @rsize 64
*/
localparam REG_UW_HOST_SIZE_H = 2;
localparam REG_UW_HOST_SIZE_L = 3;


/*
    @register The number of 4KB blocks of userwave-data written to host RAM
    @rname REG_UW_WRITTEN
    @rsize 64
    @rtype r/o
*/
localparam REG_UW_WRITTEN_H = 4;
localparam REG_UW_WRITTEN_L = 5;

/*
    @register The number of 4KB blocks of userwave-data that were dropped
    @rname REG_UW_DROPPED
    @rsize 64
    @rtype r/o
*/
localparam REG_UW_DROPPED_H = 6;
localparam REG_UW_DROPPED_L = 7;

/*
    @register If this is non-zero, the QSFP cables are swapped!
    @rtype    r/o
*/
localparam REG_QSFP_SWAPPED = 8;

/*
    @register Ethernet link status
    @rdesc    Bit 0 = Link status of QSFP_0
    @rdesc    Bit 1 = Link status of QSFP_1
    @rtype    r/o
*/
localparam REG_LINK_STATUS = 9;


/*
    @register The number of malformed packed received on QSFP_0
    @rtype r/o
*/
localparam REG_CH0_MALFORMED = 10;

/*
    @register The number of malformed packed received on QSFP_1
    @rtype r/o
*/
localparam REG_CH1_MALFORMED = 11;

//==========================================================================


//==========================================================================
// We'll communicate with the AXI4-Lite Slave core with these signals.
//==========================================================================
// AXI Slave Handler Interface for write requests
wire[  31:0]  ashi_windx;     // Input   Write register-index
wire[AW-1:0]  ashi_waddr;     // Input:  Write-address
wire[  31:0]  ashi_wdata;     // Input:  Write-data
wire          ashi_write;     // Input:  1 = Handle a write request
reg [   1:0]  ashi_wresp;     // Output: Write-response (OKAY, DECERR, SLVERR)
wire          ashi_widle;     // Output: 1 = Write state machine is idle

// AXI Slave Handler Interface for read requests
wire[  31:0]  ashi_rindx;     // Input   Read register-index
wire[AW-1:0]  ashi_raddr;     // Input:  Read-address
wire          ashi_read;      // Input:  1 = Handle a read request
reg [  31:0]  ashi_rdata;     // Output: Read data
reg [   1:0]  ashi_rresp;     // Output: Read-response (OKAY, DECERR, SLVERR);
wire          ashi_ridle;     // Output: 1 = Read state machine is idle
//==========================================================================

// The state of the state-machines that handle AXI4-Lite read and AXI4-Lite write
reg ashi_write_state, ashi_read_state;

// The AXI4 slave state machines are idle when in state 0 and their "start" signals are low
assign ashi_widle = (ashi_write == 0) && (ashi_write_state == 0);
assign ashi_ridle = (ashi_read  == 0) && (ashi_read_state  == 0);
   
// These are the valid values for ashi_rresp and ashi_wresp
localparam OKAY   = 0;
localparam SLVERR = 2;
localparam DECERR = 3;

// Ethernet link-status for each QSFP port
wire[1:0] link_status;

//==========================================================================
// This state machine handles AXI4-Lite write requests
//==========================================================================
always @(posedge clk) begin

    // If we're in reset, initialize important registers
    if (resetn == 0) begin
        ashi_write_state  <= 0;
        uw_host_addr      <= 64'h5_0000_0000;
        uw_host_size      <= 64'h1_0000_0000;
    end

    // Otherwise, we're not in reset...
    else case (ashi_write_state)
        
        // If an AXI write-request has occured...
        0:  if (ashi_write) begin
       
                // Assume for the moment that the result will be OKAY
                ashi_wresp <= OKAY;              
            
                // ashi_windex = index of register to be written
                case (ashi_windx)
                    REG_UW_HOST_ADDR_H:  uw_host_addr[63:32] <= ashi_wdata;
                    REG_UW_HOST_ADDR_L:  uw_host_addr[31:00] <= ashi_wdata;
                    REG_UW_HOST_SIZE_H:  uw_host_size[63:32] <= ashi_wdata;
                    REG_UW_HOST_SIZE_L:  uw_host_size[31:00] <= ashi_wdata;

                    // Writes to any other register are a decode-error
                    default: ashi_wresp <= DECERR;
                endcase
            end

        // Dummy state, doesn't do anything
        1: ashi_write_state <= 0;

    endcase
end
//==========================================================================



//==========================================================================
// World's simplest state machine for handling AXI4-Lite read requests
//==========================================================================
reg[31:0] uw_written_l;
reg[31:0] uw_dropped_l;
//--------------------------------------------------------------------------
always @(posedge clk) begin

    // If we're in reset, initialize important registers
    if (resetn == 0) begin
        ashi_read_state <= 0;
        uw_written_l    <= 0;
        uw_dropped_l    <= 0;
    end
    
    // If we're not in reset, and a read-request has occured...        
    else if (ashi_read) begin
   
        // Assume for the moment that the result will be OKAY
        ashi_rresp <= OKAY;              
        
        // ashi_rindex = index of register to be read
        case (ashi_rindx)
            
            // Allow a read from any valid register                
            REG_LINK_STATUS:    ashi_rdata <= link_status;
            REG_CH0_MALFORMED:  ashi_rdata <= qsfp0_malformed;
            REG_CH1_MALFORMED:  ashi_rdata <= qsfp1_malformed;
            REG_QSFP_SWAPPED:   ashi_rdata <= swapped_cables;
            REG_UW_HOST_ADDR_H: ashi_rdata <= uw_host_addr[63:32];
            REG_UW_HOST_ADDR_L: ashi_rdata <= uw_host_addr[31:00];            
            REG_UW_HOST_SIZE_H: ashi_rdata <= uw_host_size[63:32];
            REG_UW_HOST_SIZE_L: ashi_rdata <= uw_host_size[31:00];    
            
            REG_UW_WRITTEN_H:
                begin
                    ashi_rdata   <= uw_written[63:32];
                    uw_written_l <= uw_written[31:00];
                end

            REG_UW_DROPPED_H:
                begin
                    ashi_rdata   <= uw_dropped[63:32];
                    uw_dropped_l <= uw_dropped[31:00];
                end

            REG_UW_WRITTEN_L: ashi_rdata <= uw_written_l;
            REG_UW_DROPPED_L: ashi_rdata <= uw_dropped_l;


            // Reads of any other register are a decode-error
            default: ashi_rresp <= DECERR;

        endcase
    end
end
//=============================================================================




//=============================================================================
// Synchronize async_rx0_aligned into link_status[0]
//=============================================================================
xpm_cdc_single #
(
    .DEST_SYNC_FF  (4),
    .INIT_SYNC_FF  (0),
    .SIM_ASSERT_CHK(0),
    .SRC_INPUT_REG (0)
)
i_cdc_rx0_aligned
(
    .src_clk (                 ),
    .src_in  (async_rx0_aligned),
    .dest_clk(clk              ),
    .dest_out(link_status[0]   )
);
//=============================================================================


//=============================================================================
// Synchronize async_rx1_aligned into link_status[1]
//=============================================================================
xpm_cdc_single #
(
    .DEST_SYNC_FF  (4),
    .INIT_SYNC_FF  (0),
    .SIM_ASSERT_CHK(0),
    .SRC_INPUT_REG (0)
)
i_cdc_rx1_aligned
(
    .src_clk (                 ),
    .src_in  (async_rx1_aligned),
    .dest_clk(clk              ),
    .dest_out(link_status[1]   )
);
//=============================================================================




//==========================================================================
// This connects us to an AXI4-Lite slave core
//==========================================================================
axi4_lite_slave#(.AW(AW)) i_axi4lite_slave
(
    .clk            (clk),
    .resetn         (resetn),
    
    // AXI AW channel
    .AXI_AWADDR     (S_AXI_AWADDR),
    .AXI_AWPROT     (S_AXI_AWPROT),
    .AXI_AWVALID    (S_AXI_AWVALID),   
    .AXI_AWREADY    (S_AXI_AWREADY),
    
    // AXI W channel
    .AXI_WDATA      (S_AXI_WDATA),
    .AXI_WVALID     (S_AXI_WVALID),
    .AXI_WSTRB      (S_AXI_WSTRB),
    .AXI_WREADY     (S_AXI_WREADY),

    // AXI B channel
    .AXI_BRESP      (S_AXI_BRESP),
    .AXI_BVALID     (S_AXI_BVALID),
    .AXI_BREADY     (S_AXI_BREADY),

    // AXI AR channel
    .AXI_ARADDR     (S_AXI_ARADDR), 
    .AXI_ARPROT     (S_AXI_ARPROT),
    .AXI_ARVALID    (S_AXI_ARVALID),
    .AXI_ARREADY    (S_AXI_ARREADY),

    // AXI R channel
    .AXI_RDATA      (S_AXI_RDATA),
    .AXI_RVALID     (S_AXI_RVALID),
    .AXI_RRESP      (S_AXI_RRESP),
    .AXI_RREADY     (S_AXI_RREADY),

    // ASHI write-request registers
    .ASHI_WADDR     (ashi_waddr),
    .ASHI_WINDX     (ashi_windx),
    .ASHI_WDATA     (ashi_wdata),
    .ASHI_WRITE     (ashi_write),
    .ASHI_WRESP     (ashi_wresp),
    .ASHI_WIDLE     (ashi_widle),

    // ASHI read registers
    .ASHI_RADDR     (ashi_raddr),
    .ASHI_RINDX     (ashi_rindx),
    .ASHI_RDATA     (ashi_rdata),
    .ASHI_READ      (ashi_read ),
    .ASHI_RRESP     (ashi_rresp),
    .ASHI_RIDLE     (ashi_ridle)
);
//==========================================================================



endmodule

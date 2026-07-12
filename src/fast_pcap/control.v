//====================================================================================
//                        ------->  Revision History  <------
//====================================================================================
//
//   Date     Who   Ver  Changes
//====================================================================================
// 09-Jul-26  DWW     1  Initial creation
//====================================================================================

/*
    Implements control and status registers / signals for packet capture
*/


module control # (parameter AW=8)
(
    input clk, resetn,

    // The number of packets captured
    input[31:0] async_packet_count,
    
    // The captured packets require this many data-blocks
    input[31:0] async_block_count,

    // The temperatures of the HBM bank
    input[6:0] async_hbm_temp,

    // Asserted when the last captured packet has been 
    // written to HBM
    input async_capture_complete,

    // We reset everything just priot to asserting "enable"
    output resetn_out,

    // We use this to start and stop captures
    output reg enable,

    // These are used for copying packet data to host-RAM
    output reg[63:0] host_addr,
    output reg[31:0] copy_blocks,
    output reg       copy_to_host_stb,
    input            copy_complete,

    // These are used by the packet generator during testing
    output reg[15:0] send_size,
    output reg[31:0] send_count,
    output reg       send_stb,
    input            send_busy,

    // The Ethernet link-status of the two QSFP ports
    input[1:0] async_link_status,

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
`include "settings.vh"

//=========================  AXI Register Map  =============================
localparam REG_ENABLE       = 0;
localparam REG_CAP_COMPLETE = 1;
localparam REG_PACKET_COUNT = 2;
localparam REG_BLOCK_COUNT  = 3;
localparam REG_HOST_ADDR_H  = 4;
localparam REG_HOST_ADDR_L  = 5;
localparam REG_COPY_TO_HOST = 6;
localparam REG_TS_FREQUENCY = 7;
localparam REG_LINK_STATUS  = 8;
localparam REG_HBM_TEMP     = 9;

localparam REG_SEND         = 16;
localparam REG_SEND_SIZE    = 17;
localparam REG_SEND_COUNT   = 18;
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

// The number of packets captured
wire[31:0] packet_count;

// The number of 4KB blocks required to store our captured packets
wire[31:0] block_count;

// Are we de-assert "enable", this will go high to tell us that the last
// block of captured packet-data has been written to HBM
wire capture_complete;

// The ethernet link-state of the two QSFP ports
wire[1:0] link_status;

// The temperatures (in degrees C) of the two banks of HBM
wire[6:0] hbm0_temp, hbm1_temp;

//=============================================================================
// Manage a reset counter, and if the user turns enable on, turn it on only
// after the reset is complete.
//
// "enable" is never on while resetn_out is asserted
//=============================================================================
reg[7:0] resetn_counter   = 100;
reg      new_enable_state = 0;
reg      change_enable_stb;
reg      internal_resetn_out;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn_counter)
        resetn_counter <= resetn_counter - 1;
    if (change_enable_stb & new_enable_state)
        resetn_counter <= 60;
end

always @(posedge clk) begin
    internal_resetn_out <= (resetn_counter < 20);
    enable              <= (resetn_counter) ? 0 : new_enable_state;
end
//=============================================================================



//==========================================================================
// This state machine handles AXI4-Lite write requests
//==========================================================================
always @(posedge clk) begin

    // These strobe high for a single cycle at a time
    send_stb          <= 0;
    change_enable_stb <= 0;
    copy_to_host_stb  <= 0;

    // If we're in reset, initialize important registers
    if (resetn == 0) begin
        ashi_write_state <= 0;
        send_count       <= 1;
        send_size        <= 256;
        host_addr        <= 64'h1_0000_0000;
    end

    // Otherwise, we're not in reset...
    else case (ashi_write_state)
        
        // If an AXI write-request has occured...
        0:  if (ashi_write) begin
       
                // Assume for the moment that the result will be OKAY
                ashi_wresp <= OKAY;              
            
                // ashi_windex = index of register to be written
                case (ashi_windx)
               
                    REG_ENABLE:
                        begin
                            new_enable_state  <= (ashi_wdata != 0);
                            change_enable_stb <= 1;
                        end

                    REG_COPY_TO_HOST:
                        if (ashi_wdata) begin
                            copy_blocks      <= block_count;
                            copy_to_host_stb <= 1;
                        end

                    REG_HOST_ADDR_H:  host_addr[63:32] <= ashi_wdata;
                    REG_HOST_ADDR_L:  host_addr[31:00] <= ashi_wdata;
                    REG_SEND_SIZE:    if (ashi_wdata > 63) send_size  <= ashi_wdata;
                    REG_SEND_COUNT:   if (ashi_wdata > 0 ) send_count <= ashi_wdata;
                    REG_SEND:         send_stb <= (ashi_wdata != 0);

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
always @(posedge clk) begin

    // If we're in reset, initialize important registers
    if (resetn == 0) begin
        ashi_read_state <= 0;
    
    // If we're not in reset, and a read-request has occured...        
    end else if (ashi_read) begin
   
        // Assume for the moment that the result will be OKAY
        ashi_rresp <= OKAY;              
        
        // ashi_rindex = index of register to be read
        case (ashi_rindx)
            
            // Allow a read from any valid register                
            REG_ENABLE:         ashi_rdata <= enable;
            REG_CAP_COMPLETE:   ashi_rdata <= capture_complete;
            REG_PACKET_COUNT:   ashi_rdata <= packet_count;
            REG_BLOCK_COUNT:    ashi_rdata <= block_count;
            REG_HOST_ADDR_H:    ashi_rdata <= host_addr[63:32];
            REG_HOST_ADDR_L:    ashi_rdata <= host_addr[31:00];
            REG_COPY_TO_HOST:   ashi_rdata <= !copy_complete;
            REG_TS_FREQUENCY:   ashi_rdata <= TS_FREQUENCY;
            REG_LINK_STATUS:    ashi_rdata <= link_status;
            REG_HBM_TEMP:       ashi_rdata <= hbm_temp;

            REG_SEND_SIZE:      ashi_rdata <= send_size;
            REG_SEND_COUNT:     ashi_rdata <= send_count;
            REG_SEND:           ashi_rdata <= send_busy;
            
            // Reads of any other register are a decode-error
            default: ashi_rresp <= DECERR;

        endcase
    end
end
//==========================================================================


//==========================================================================
// Route the "resetn_out" signal through a buffer for high-fanout routing
//==========================================================================
BUFG i_bufg
(
   .I(internal_resetn_out),
   .O(resetn_out)
);
//==========================================================================



//==========================================================================
// Synchronize "packet_count"
//==========================================================================
xpm_cdc_array_single #
(
    .DEST_SYNC_FF   (4),  
    .SRC_INPUT_REG  (0),  
    .WIDTH          (32)  
)
i_sync_packet_count
(
    .src_clk    (),
    .src_in     (async_packet_count), 
    .dest_clk   (clk),
    .dest_out   (packet_count)
);
//==========================================================================


//==========================================================================
// Synchronize "link_status"
//==========================================================================
xpm_cdc_array_single #
(
    .DEST_SYNC_FF   (4),  
    .SRC_INPUT_REG  (0),  
    .WIDTH          (2)  
)
i_sync_link_status
(
    .src_clk    (),
    .src_in     (async_link_status), 
    .dest_clk   (clk),
    .dest_out   (link_status)
);
//==========================================================================



//==========================================================================
// Synchronize "block_count"
//==========================================================================
xpm_cdc_array_single #
(
    .DEST_SYNC_FF   (4),  
    .SRC_INPUT_REG  (0),  
    .WIDTH          (32)  
)
i_sync_block_count
(
    .src_clk    (),
    .src_in     (async_block_count), 
    .dest_clk   (clk),
    .dest_out   (block_count)
);
//==========================================================================


//==========================================================================
// Synchronize "hbm_temp"
//==========================================================================
xpm_cdc_array_single #
(
    .DEST_SYNC_FF   (4),  
    .SRC_INPUT_REG  (0),  
    .WIDTH          (7)  
)
i_sync_hbm_temp
(
    .src_clk    (),
    .src_in     (async_hbm_temp), 
    .dest_clk   (clk),
    .dest_out   (hbm_temp)
);
//==========================================================================



//==========================================================================
// Synchronize "capture_complete"
//==========================================================================
xpm_cdc_single #
(
    .DEST_SYNC_FF   (4), 
    .SRC_INPUT_REG  (0) 
)
i_sync_capture_complete
(
    .src_clk  (),  
    .src_in   (async_capture_complete),
    .dest_clk (clk),
    .dest_out (capture_complete)
);
//==========================================================================



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

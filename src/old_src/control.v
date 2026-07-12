//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 17-Jun-26  DWW     1  Initial creation
//=============================================================================

/*
    Provides user-accessible registers for the ecd-feeder
*/


module control # (parameter AW=8)  
(
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET resetn" *)
    input clk,
    input resetn,

    // This goes low when we want to halt the system
    output reg enable,

    // The size of a data-frame in host RAM
    output reg[31:0] host_frame_size,

    // The address and size of the frame-data buffer in host-RAM
    output reg [63:0] fd_host_addr, fd_host_size,

    // The number of frames consumed from host-RAM
    input [63:0] half_frames_consumed_0, half_frames_consumed_1,

    // Temperature readings from the HBM banks
    input [6:0] hbm_temp_0, hbm_temp_1,

    // These are the "catastrophic overtemp" signals from the HBM banks
    input cattrip_0, cattrip_1,

    // This goes to the "hbm_cattrip" pin on the FPGA
    output cattrip,

    // These indicate when the output FIFO is full
    input fifo_full_0, fifo_full_1,

    // These are asserted when a FIFO self-test fails
    input[7:0] selftest_err_0, selftest_err_1,

    // These are asserted when the "ram_reader" modules are halted
    input reader_halted_0, reader_halted_1,

    // We use these to tell "fd_emitter" to start sending packets
    output reg        send_stb,
    output reg [31:0] send_cnt,

    // When this is asserted, the ram-reader will use simulated data
    // instead of the data that is returned by fetching host RAM
    output reg use_sim_data,

    // We generate reset to the rest of the system
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn_out RST" *)
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    output reg resetn_out,

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
    @register Set this to 1 to use simulated host-RAM data
    @rdesc    Set this to 0 to use real data from host-RAM
*/
localparam REG_USE_SIM_DATA = 0;


/*
    @register The size of a frame in host-RAM. 
*/
localparam REG_HOST_FRAME_SIZE = 1;

/*
    @register The base address of frame data in host-RAM.
    @rdesc    Must be on a 4KB boundary
    @rname REG_FD_HOST_ADDR
    @rsize 64
*/
localparam REG_FD_HOST_ADDR_H = 2;
localparam REG_FD_HOST_ADDR_L = 3;

/*
    @register The size of the frame-data ring-buffer in host-RAM.
    @rdesc    Must be a multiple of 8KB
    @rname REG_FD_HOST_SIZE
    @rsize 64
*/
localparam REG_FD_HOST_SIZE_H = 4;
localparam REG_FD_HOST_SIZE_L = 5;


/*
    @register The number of frames of data consumed so far
    @rname REG_FRM_CONSUMED
    @rsize 64
*/
localparam REG_FRM_CONSUMED_H = 10;
localparam REG_FRM_CONSUMED_L = 11;



/*
    @register Write a 1 to this register to pre-fill the outgoing
    @rdesc    FIFOs with data from host-RAM
    @rdesc    This is cleared to zero by a reset
*/
localparam REG_START = 14;

/*
    @register When this is non-zero, the system is ready to receive packet requests
    @rdesc    After writing a 1 to REG_START, wait for REG_READY to be non-zero 
    @rtype r/o
*/
localparam REG_READY = 15;

/*
    @register Write a 1 to this register to reset the system
    @rdesc    Auto-clears to 0 when the reset operation is complete
*/
localparam REG_RESET = 16;


/*
    @register  Write a value to this register to send that
    @rdesc     number of packet-pairs
    @rdesc     >>>>  FOR DEBUGGING ONLY <<<<
   
*/
localparam REG_SEND = 17;

/*
    @register The temperature in degrees C of HBM Bank 0
    @rtype r/o
*/
localparam REG_HBM0_TEMP = 18;

/*
    @register The temperature in degrees C of HBM Bank 1
    @rtype r/o
*/
localparam REG_HBM1_TEMP = 19;

/*
    @register Indicates a FIFO self-test failed
    @rdesc    Bit  0 = Channel 0: Sequence check #0 failed
    @rdesc    Bit  1 = Channel 0: Sequence check #1 failed
    @rdesc    Bit  2 = Channel 0: Sequence check #2 failed
    @rdesc    Bit  8 = Channel 1: Sequence check #0 failed
    @rdesc    Bit  9 = Channel 1: Sequence check #1 failed
    @rdesc    Bit 10 = Channel 1: Sequence check #2 failed
    @rtype r/o
*/
localparam REG_SELFTEST_ERR = 20;


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

// This is the state of the reset-state-machine that controls resetn_out
reg[1:0] rsm_state;

// system_halted is asserted when all components of the system are idle
wire system_halted = reader_halted_0
                   & reader_halted_1;


// When this strobes high, we start fetching data from host RAM
reg start_stb;

// When this is asserted, the system is fetching data over PCIe
reg running;

// The lower 32-bits of "frames_consumed" at the moment that the 
// uppper 32-bits were last read
reg[31:0] frames_consumed_l;
reg       frames_consumed_l_saved;
 
// If either HBM bank shows a catastrophic temperature, shut down the FPGA!
assign cattrip = cattrip_0 | cattrip_1;

//=============================================================================
// Compute the number of whole frames consumed by doubling the 
// number of half-frames consumed from the channel with the fewest
// half-frames consumed
//=============================================================================
reg[63:0] frames_consumed;
//-----------------------------------------------------------------------------
always @* begin
    if (half_frames_consumed_0 < half_frames_consumed_1)
        frames_consumed = half_frames_consumed_0;
    else
        frames_consumed = half_frames_consumed_1;
end
//=============================================================================



//==========================================================================
// Manage the "halt-request" signal
//==========================================================================
reg halt_req_stb;
//--------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0)
        enable <= 0;
    else if (halt_req_stb)
        enable <= 0;
    else if (start_stb)
        enable <= 1;
end
//==========================================================================


//==========================================================================
// This state machine handles AXI4-Lite write requests
//==========================================================================
always @(posedge clk) begin

    start_stb    <= 0;
    halt_req_stb <= 0;
    send_stb     <= 0;

    // If we're in reset, initialize important registers
    if (resetn == 0) begin
        ashi_write_state  <= 0;
        host_frame_size   <= 32'h40_0000;
        fd_host_addr      <= 64'h1_0000_0000;
        fd_host_size      <= 64'h4_0000_0000;
        use_sim_data      <= 0;
    end

    // Otherwise, we're not in reset...
    else case (ashi_write_state)
        
        // If an AXI write-request has occured...
        0:  if (ashi_write) begin
       
                // Assume for the moment that the result will be OKAY
                ashi_wresp <= OKAY;              
            
                // ashi_windex = index of register to be written
                case (ashi_windx)

                    REG_SEND:
                        begin
                            send_cnt <= ashi_wdata;
                            send_stb <= 1;
                        end

                    REG_RESET: halt_req_stb <= ashi_wdata[0];

                    REG_START:
                        if (ashi_wdata[0] & !enable) begin
                            start_stb <= 1;
                        end
                    REG_USE_SIM_DATA:    if (!enable) use_sim_data        <= ashi_wdata;
                    REG_HOST_FRAME_SIZE: if (!enable) host_frame_size     <= ashi_wdata;
                    REG_FD_HOST_ADDR_H:  if (!enable) fd_host_addr[63:32] <= ashi_wdata;
                    REG_FD_HOST_ADDR_L:  if (!enable) fd_host_addr[31:00] <= ashi_wdata;
                    REG_FD_HOST_SIZE_H:  if (!enable) fd_host_size[63:32] <= ashi_wdata;
                    REG_FD_HOST_SIZE_L:  if (!enable) fd_host_size[31:00] <= ashi_wdata;


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
        ashi_read_state         <= 0;
        frames_consumed_l       <= 0;
        frames_consumed_l_saved <= 0;
    end

    // If we're not in reset, and a read-request has occured...        
    else if (ashi_read) begin
   
        // Assume for the moment that the result will be OKAY
        ashi_rresp <= OKAY;              
        
        // ashi_rindex = index of register to be read
        case (ashi_rindx)
            
            // Allow a read from any valid register                
            REG_START:              ashi_rdata <= enable;
            REG_READY:              ashi_rdata <= enable & fifo_full_0 & fifo_full_1;
            REG_RESET:              ashi_rdata <= (rsm_state != 0) | halt_req_stb;
            REG_USE_SIM_DATA:       ashi_rdata <= use_sim_data;
            REG_HOST_FRAME_SIZE:    ashi_rdata <= host_frame_size;

            REG_FD_HOST_ADDR_H:     ashi_rdata <= fd_host_addr[63:32];
            REG_FD_HOST_ADDR_L:     ashi_rdata <= fd_host_addr[31:00];            
            REG_FD_HOST_SIZE_H:     ashi_rdata <= fd_host_size[63:32];
            REG_FD_HOST_SIZE_L:     ashi_rdata <= fd_host_size[31:00];            

            REG_HBM0_TEMP:          ashi_rdata <= hbm_temp_0;
            REG_HBM1_TEMP:          ashi_rdata <= hbm_temp_1;

            REG_SELFTEST_ERR:
                if (use_sim_data)
                    ashi_rdata <= {selftest_err_1, selftest_err_0};
                else
                    ashi_rdata <= 0;

            REG_FRM_CONSUMED_H:
                begin
                    ashi_rdata              <= frames_consumed[63:32];
                    frames_consumed_l       <= frames_consumed[31:00];
                    frames_consumed_l_saved <= 1;
                end

            REG_FRM_CONSUMED_L:
                begin
                    if (frames_consumed_l_saved)
                        ashi_rdata <= frames_consumed_l;
                    else
                        ashi_rdata <= frames_consumed[31:0];
                    frames_consumed_l <= 0;
                end


            // Reads of any other register are a decode-error
            default: ashi_rresp <= DECERR;

        endcase
    end
end
//==========================================================================


//==========================================================================
// This state machine controls the resetn_out pin.
//
// When the user writes to REG_RESET, a different state machine requests
// a system halt.
//==========================================================================
reg[31:0] reset_counter;
//--------------------------------------------------------------------------
always @(posedge clk) begin

    if (reset_counter) reset_counter <= reset_counter - 1;

    if (resetn == 0) begin
        rsm_state  <= 0;
        resetn_out <= 0;
    end

    else case(rsm_state)
        0:  begin
                resetn_out <= 1;
                if (halt_req_stb) begin
                    reset_counter <= 1000000;
                    rsm_state     <= 1;
                end
            end

        1:  if (system_halted || (reset_counter == 0)) begin
                reset_counter <= 256;
                resetn_out    <= 0;
                rsm_state     <= 2;
            end

        2:  if (reset_counter < 32) begin
                resetn_out <= 1;
                rsm_state  <= 3;
            end

        3:  if (reset_counter == 0)
                rsm_state <= 0;

    endcase
end
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

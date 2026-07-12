//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 11-Jul-26  DWW     1  Initial creation
//=============================================================================

/*
    This turns on the CMAC transmitters and receivers 
*/

module cmac_config # (parameter DW=32, AW=32)
(
    input   clk,
    input   resetn,

    //====================  An AXI-Lite Master Interface  =====================
    // "Specify write address"          -- Master --    -- Slave --
    output [AW-1:0]                     M_AXI_AWADDR,
    output                              M_AXI_AWVALID,
    output    [2:0]                     M_AXI_AWPROT,
    input                                               M_AXI_AWREADY,

    // "Write Data"                     -- Master --    -- Slave --
    output [DW-1:0]                     M_AXI_WDATA,
    output [DW/8-1:0]                   M_AXI_WSTRB,
    output                              M_AXI_WVALID,
    input                                               M_AXI_WREADY,

    // "Send Write Response"            -- Master --    -- Slave --
    input  [1:0]                                        M_AXI_BRESP,
    input                                               M_AXI_BVALID,
    output                              M_AXI_BREADY,

    // "Specify read address"           -- Master --    -- Slave --
    output [AW-1:0]                     M_AXI_ARADDR,
    output [   2:0]                     M_AXI_ARPROT,
    output                              M_AXI_ARVALID,
    input                                               M_AXI_ARREADY,

    // "Read data back to master"       -- Master --    -- Slave --
    input [DW-1:0]                                      M_AXI_RDATA,
    input                                               M_AXI_RVALID,
    input [1:0]                                         M_AXI_RRESP,
    output                              M_AXI_RREADY
    //=========================================================================
);



//==================  The AXI Master Control Interface  =======================
// AMCI signals for performing AXI writes
reg [AW-1:0]  AMCI_WADDR;
reg [DW-1:0]  AMCI_WDATA;
reg           AMCI_WRITE;
wire[   1:0]  AMCI_WRESP;
wire          AMCI_WIDLE;

// AMCI signals for performing AXI reads
reg [AW-1:0]  AMCI_RADDR;
reg           AMCI_READ ;
wire[DW-1:0]  AMCI_RDATA;
wire[   1:0]  AMCI_RRESP;
wire          AMCI_RIDLE;
//=============================================================================



//=============================================================================
// The addresses of the CMAC registers we care about
//=============================================================================
localparam CONFIG_TX0 = 32'h1_000C;
localparam CONFIG_RX0 = 32'h1_0014;
localparam CONFIG_TX1 = 32'h2_000C;
localparam CONFIG_RX1 = 32'h2_0014;
//=============================================================================


//=============================================================================
// After waiting for a startup delay, this state machine sends AX4-Lite
// transactions that will turn on the CMAC transmitters and receivers
//=============================================================================
reg[ 2:0] fsm_state;
reg[31:0] init_delay;
//-----------------------------------------------------------------------------
always @(posedge clk) begin

    // This strobes high for a single cycle at a time
    AMCI_WRITE <= 0;

    if (resetn == 0) begin
        fsm_state  <= 0;
        init_delay <= 25000000;
    end

    else case (fsm_state)
        
        0:  if (init_delay)
                init_delay <= init_delay - 1;
            else
                fsm_state <= 1;

        1:  if (AMCI_WIDLE) begin
                AMCI_WADDR <= CONFIG_TX0;
                AMCI_WDATA <= 1;
                AMCI_WRITE <= 1;
                fsm_state  <= 2;
            end

        2:  if (AMCI_WIDLE) begin
                AMCI_WADDR <= CONFIG_RX0;
                AMCI_WDATA <= 1;
                AMCI_WRITE <= 1;
                fsm_state  <= 3;
            end

        3:  if (AMCI_WIDLE) begin
                AMCI_WADDR <= CONFIG_TX1;
                AMCI_WDATA <= 1;
                AMCI_WRITE <= 1;
                fsm_state  <= 4;
            end

        4:  if (AMCI_WIDLE) begin
                AMCI_WADDR <= CONFIG_RX1;
                AMCI_WDATA <= 1;
                AMCI_WRITE <= 1;
                fsm_state  <= 5;
            end

        5:  fsm_state <= 5;

    endcase

end
//=============================================================================


//=============================================================================
// This instantiates an AXI4-Lite master
//=============================================================================
axi4_lite_master # (.DW(DW), .AW(AW)) axi4_master
(
    // Clock and reset
    .clk            (clk),
    .resetn         (resetn),

    // AXI Master Control Interface for performing writes
    .AMCI_WADDR     (AMCI_WADDR),
    .AMCI_WDATA     (AMCI_WDATA),
    .AMCI_WRITE     (AMCI_WRITE),
    .AMCI_WRESP     (AMCI_WRESP),
    .AMCI_WIDLE     (AMCI_WIDLE),

    // AXI Master Control Interface for performing reads
    .AMCI_RADDR     (AMCI_RADDR),
    .AMCI_READ      (AMCI_READ ),
    .AMCI_RDATA     (AMCI_RDATA),
    .AMCI_RRESP     (AMCI_RRESP),
    .AMCI_RIDLE     (AMCI_RIDLE),

    // AXI4-Lite AW channel
    .AXI_AWADDR     (M_AXI_AWADDR ),
    .AXI_AWVALID    (M_AXI_AWVALID),
    .AXI_AWPROT     (M_AXI_AWPROT ),
    .AXI_AWREADY    (M_AXI_AWREADY),

    // AXI4-Lite W channel
    .AXI_WDATA      (M_AXI_WDATA  ),
    .AXI_WSTRB      (M_AXI_WSTRB  ),
    .AXI_WVALID     (M_AXI_WVALID ),
    .AXI_WREADY     (M_AXI_WREADY ),

    // AXI4-Lite B channel
    .AXI_BRESP      (M_AXI_BRESP  ),
    .AXI_BVALID     (M_AXI_BVALID ),
    .AXI_BREADY     (M_AXI_BREADY ),

    // AXI4-Lite AR channel
    .AXI_ARADDR     (M_AXI_ARADDR ),
    .AXI_ARPROT     (M_AXI_ARPROT ),
    .AXI_ARVALID    (M_AXI_ARVALID),
    .AXI_ARREADY    (M_AXI_ARREADY),

    // AXI4-Lite R channel
    .AXI_RDATA      (M_AXI_RDATA  ),
    .AXI_RVALID     (M_AXI_RVALID ),
    .AXI_RRESP      (M_AXI_RRESP  ),
    .AXI_RREADY     (M_AXI_RREADY )
);
//=============================================================================

endmodule
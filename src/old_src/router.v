//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 19-Jun-26  DWW     1  Initial creation
//=============================================================================

/*
    This is a packet router.  It examines the packet header and determines
    which output stream it should be routed to

*/

module router 
(
    input   clk,
    input   resetn,  

    // When this is low, we stop processing packets
    input   enable,

    // This is the stream of incoming packets
    input[511:0]    axis_in_tdata,
    input           axis_in_tlast,
    input           axis_in_tvalid,

    // This is a stream of userwave-data packets
    output[511:0]   axis_uwd_tdata,
    output          axis_uwd_tlast,
    output          axis_uwd_tvalid,

    // This is a stream of command packets
    output[511:0]   axis_cmd_tdata,
    output          axis_cmd_tlast,
    output          axis_cmd_tvalid

);

// Bring in global definitions for packet types
`include "global.vh"

// Fields from the RDMX header
wire       is_rdmx;
wire[31:0] rdmx_user_field;
wire[ 7:0] pkt_type = rdmx_user_field[7:0];
wire[15:0] payload_bytes;


// These are bit-numbers in "route" and "tvalid"
localparam UWD_BIT = 0;
localparam CMD_BIT = 1;
reg[1:0] route, tvalid;

// One bit per output bus
localparam ROUTE_DROP = 0;
localparam ROUTE_UWD  = (1 << UWD_BIT);
localparam ROUTE_CMD  = (1 << CMD_BIT);

// Incoming data will be written into these registers
reg[511:0] tdata;
reg        tlast;

// Drive the userwave-data output stream
assign axis_uwd_tvalid = tvalid[UWD_BIT];
assign axis_uwd_tdata  = tdata;
assign axis_uwd_tlast  = tlast;

// Drive the command output stream
assign axis_cmd_tvalid = tvalid[CMD_BIT];
assign axis_cmd_tdata  = tdata;
assign axis_cmd_tlast  = tlast;


//=============================================================================
// "tdata" and "tlast" are always fed from the input stream
//=============================================================================
always @(posedge clk) begin
    tdata <= axis_in_tdata;
    tlast <= axis_in_tlast;
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

wire sop = (axis_in_tvalid & waiting_for_sop);
//=============================================================================

//=============================================================================
// Here we read in data-cycles from an incoming packet and either drop them
// or route them out the appropriate output stream
//=============================================================================
always @(posedge clk) begin

    tvalid <= 0;

    if (resetn == 0) begin
        route <= ROUTE_DROP;
    end

    // If this is the RDMX header, determine whether or not we
    // want to keep the packet
    else if (sop) begin

        // If we're not enabled or this is not an RDMX packet...
        if (!(enable & is_rdmx))
            route <= ROUTE_DROP;
   
        // If this is a userwave-data packet...
        else if (pkt_type == PT_UW_DATA) begin
            tvalid <= ROUTE_UWD;
            route  <= ROUTE_UWD;
        end

        // If this is a command-packet...
        else if (pkt_type == PT_COMMAND) begin
            tvalid <= ROUTE_CMD;
            route  <= ROUTE_CMD;
        end

        // Any other kind of packet gets dropped
        else route <= ROUTE_DROP;
    end
    
    // Here we deal with payload data-cycles
    else if (axis_in_tvalid) begin
        tvalid <= route;
    end

end
//=============================================================================



//=============================================================================
// This decode an RDMX header in individual fields
//=============================================================================
rdmx_decoder u_rdmx_decoder
(
    .le_rdmx_header     (axis_in_tdata),
    .is_rdmx            (is_rdmx),        
    .rdmx_address       (),
    .rdmx_flags         (),
    .rdmx_user_field    (rdmx_user_field),
    .payload_bytes      (payload_bytes),
    .payload_cycles     ()
);
//=============================================================================


endmodule

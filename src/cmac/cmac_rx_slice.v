//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 09-Jul-26  DWW     1  Initial creation
//=============================================================================

/*
    This adds a register slice to an AXI stream to ease timing closure
*/

module cmac_rx_slice
(
    input clk,

    // This is the stream of incoming packets
    input      [511:0] axis_in_tdata,
    input      [ 63:0] axis_in_tkeep,
    input              axis_in_tuser,
    input              axis_in_tlast,
    input              axis_in_tvalid,

    // This is the stream of outgoing packets
    output reg [511:0] axis_out_tdata,
    output reg [ 63:0] axis_out_tkeep,
    output reg         axis_out_tuser,
    output reg         axis_out_tlast,
    output reg         axis_out_tvalid
);

always @(posedge clk) begin
    axis_out_tdata  <= axis_in_tdata;
    axis_out_tkeep  <= axis_in_tkeep;
    axis_out_tuser  <= axis_in_tuser;
    axis_out_tlast  <= axis_in_tlast;
    axis_out_tvalid <= axis_in_tvalid;
end

endmodule
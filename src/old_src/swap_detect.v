//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 19-Jun-26  DWW     1  Initial creation
//=============================================================================

/*
    If any packet arrives on the input, "swapped" is asserted
*/

module swap_detect
(
    input   clk,
    input   resetn,  

    output reg      swapped,

    input[511:0]    axis_in_tdata,
    input           axis_in_tlast,
    input           axis_in_tvalid
);


always @(posedge clk) begin
    if (resetn == 0)
        swapped <= 0;
    else if (axis_in_tvalid)
        swapped <= 1;
end


endmodule

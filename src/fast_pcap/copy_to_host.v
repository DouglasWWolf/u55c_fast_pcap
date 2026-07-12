//====================================================================================
//                        ------->  Revision History  <------
//====================================================================================
//
//   Date     Who   Ver  Changes
//====================================================================================
// 09-Jul-26  DWW     1  Initial creation
//====================================================================================

/*
    Provides a simple front-end to "data_mover"
*/


module copy_to_host 
(
    input clk,

    input[63:0] host_addr,
    input[31:0] block_count,

    output reg [63:0] src_address, dst_address, byte_count,
    output reg [12:0] burst_size
);

localparam BLOCK_SIZE = 4096;

always @(posedge clk) begin
    src_address <= 0;
    dst_address <= host_addr;
    byte_count  <= block_count * BLOCK_SIZE;
    burst_size  <= BLOCK_SIZE;
end

endmodule;

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

    input       i_start_copy_stb,
    input[63:0] host_addr,
    input[31:0] block_count,

    output reg [63:0] src_address, dst_address, byte_count,
    output reg [12:0] burst_size,
    output reg        start_copy_stb

);

localparam BLOCK_SIZE = 4096;

reg [63:0] r_src_address, r_dst_address, r_byte_count;
reg [12:0] r_burst_size;
reg        r_start_copy_stb;

always @(posedge clk) begin

    r_src_address    <= 0;
    r_dst_address    <= host_addr;
    r_byte_count     <= block_count * BLOCK_SIZE;
    r_burst_size     <= BLOCK_SIZE;
    r_start_copy_stb <= i_start_copy_stb;

    src_address    <= r_src_address;
    dst_address    <= r_dst_address;
    byte_count     <= r_byte_count;
    burst_size     <= r_burst_size;
    start_copy_stb <= r_start_copy_stb;
end

endmodule;

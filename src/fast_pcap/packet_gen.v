module packet_gen # (parameter DW = 512)
(
    input   clk,
    input   resetn,

    input[15:0] packet_length,
    input[31:0] packet_count, 
    input       start_stb,
    output      busy,

    output[DW-1:0  ] axis_out_tdata,
    output[DW/8-1:0] axis_out_tkeep,
    output           axis_out_tlast,
    output           axis_out_tvalid,
    input            axis_out_tready
);

reg[7:0] whole_data_cycles, partial_bytes, total_data_cycles;
reg[DW/8-1:0] final_tkeep;

always @* begin

    // How many 'packed full' data cycles will there be?
    whole_data_cycles = (packet_length / (DW/8));

    // If there's a "partial" cycle in the packet, how many bytes will it contain?
    partial_bytes = (packet_length & ((DW/8)-1));

    // This is the total number of data-cycle required for this packet
    total_data_cycles = whole_data_cycles + (partial_bytes != 0);

    // Fill in 'final_tkeep' with either "all bits set" or the final partial value
    if (partial_bytes)
        final_tkeep = (1 << partial_bytes) - 1;
    else
        final_tkeep = -1;
end


reg       fsm_state;
reg[ 7:0] cycle;
reg[15:0] data;
reg[31:0] packet_number;

always @(posedge clk) begin
    if (resetn == 0) begin
        fsm_state <= 0;
        data      <= 0;
    end

    else case(fsm_state)

        0:  if (start_stb) begin
                packet_number <= 1;
                cycle         <= 1;
                fsm_state     <= 1;                
            end

        1:  if (axis_out_tvalid & axis_out_tready) begin
                data <= data + 1;
                if (cycle < total_data_cycles)
                    cycle <= cycle + 1;
                else begin
                    cycle <= 1;
                    if (packet_number < packet_count)
                        packet_number <= packet_number + 1;
                    else
                        fsm_state <= 0;
                end

            end

    endcase
    
end

assign axis_out_tdata  = {(DW/16){data}};
assign axis_out_tkeep  = (cycle == total_data_cycles) ? final_tkeep : -1;
assign axis_out_tlast  = (cycle == total_data_cycles);
assign axis_out_tvalid = (fsm_state == 1);

assign busy = (start_stb || fsm_state != 0);

endmodule

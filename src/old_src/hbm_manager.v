//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 30-Jun-26  DWW     1  Initial creation
//=============================================================================

/*
    This module manages the "hbm_writer" and "hbm_reader" modules to coordinate
    them into a double buffer, with each bank of the buffer being a 4GB block of
    HBM.
*/


module hbm_manager
(
    input   clk,
    input   resetn,

    // Which bank of HBM should the reader read from?
    output reg read_bank_select,
    
    // Which bank of HBM should the writer write to?
    output     write_bank_select,

    // These tell us when the reader and writer are idle
    input      reader_idle, writer_idle,

    // This is the number of blocks of data that the writer stored
    // has stored in HBM
    input[31:0] blocks_stored_in_hbm,

    // The number of blocks to read from the current HBM bank
    output reg[31:0] blocks_to_read,

    // When these strobe high, the reader or writer starts reading/writing
    // a single bank
    output reg  start_reader_stb, start_writer_stb,

    // When this strobes high, the writer stops as soon as it has 
    // finished satisfying all currently outstanding write-requests
    output reg  halt_req_stb
);


//=============================================================================
// (1) Prefill bank 0 with data
// (2) Start reading bank 0 and writing to bank 1
// (3) When the reader has exhausted bank 0, swap banks and repeat
//
// Since it is possible for the reader to exaust the data available in a bank
// before the writer has finished filling the other bank, this state-machine
// automatically asks the writer to halt as soon as the reader has finished
// the task of reading the entire bank
//=============================================================================
reg[1:0] fsm_state;
//-----------------------------------------------------------------------------
always @(posedge clk) begin

    start_reader_stb <= 0;
    start_writer_stb <= 0;
    halt_req_stb     <= 0;

    if (resetn == 0) begin
        fsm_state <= 0;
    end

    else case(fsm_state)
        
        // Fill bank 0
        0:  begin
                read_bank_select <= 1; /* write_bank_select <= 0 */
                start_writer_stb <= 1;
                fsm_state        <= 1;
            end

        // When the writer is idle, swap banks and start
        // both the reader and the writer
        1:  if (writer_idle) begin
                read_bank_select <= ~read_bank_select;
                blocks_to_read   <= blocks_stored_in_hbm;
                start_writer_stb <= 1;
                start_reader_stb <= 1;
                fsm_state        <= 2;
            end

        // Wait for reader to complete, then request that 
        // the writer halt, just in case it's still running
        2:  if (reader_idle) begin
                halt_req_stb <= !writer_idle;
                fsm_state    <= 1;
            end

    endcase

end
//=============================================================================


// We're always writing the opposite bank from what we're reading
assign write_bank_select = !read_bank_select;

endmodule


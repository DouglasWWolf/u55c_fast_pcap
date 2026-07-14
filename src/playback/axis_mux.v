//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 11-Jul-26  DWW     1  Initial creation
//=============================================================================

/*
    This muxes two input AXI streams into a single output
*/

module axis_mux
(
    input   clk,
    input   async_source_select,

    // Input stream #1
    input[511:0] axis_in0_tdata,
    input[ 63:0] axis_in0_tkeep,
    input        axis_in0_tlast,
    input        axis_in0_tvalid,
    output reg   axis_in0_tready,

    // Input stream #2
    input[511:0] axis_in1_tdata,
    input[ 63:0] axis_in1_tkeep,
    input        axis_in1_tlast,
    input        axis_in1_tvalid,
    output reg   axis_in1_tready,

    // Input stream #2
    output reg[511:0] axis_out_tdata,
    output reg[ 63:0] axis_out_tkeep,
    output reg        axis_out_tlast,
    output reg        axis_out_tvalid,
    input             axis_out_tready
);
genvar i;

wire source_select;

// Input bus to the slices
wire[511:0] slice_in_tdata [0:1];
wire[ 63:0] slice_in_tkeep [0:1];
wire        slice_in_tlast [0:1];
wire        slice_in_tvalid[0:1];
wire        slice_in_tready[0:1];

// Output bus from the slices
wire[511:0] slice_out_tdata [0:1];
wire[ 63:0] slice_out_tkeep [0:1];
wire        slice_out_tlast [0:1];
wire        slice_out_tvalid[0:1];
reg         slice_out_tready[0:1];

// Connect input stream #0 to its slice
assign slice_in_tdata [0] = axis_in0_tdata ;
assign slice_in_tkeep [0] = axis_in0_tkeep ;
assign slice_in_tlast [0] = axis_in0_tlast ;
assign slice_in_tvalid[0] = axis_in0_tvalid;

// Connect input stream #1 to its slice
assign slice_in_tdata [1] = axis_in1_tdata ;
assign slice_in_tkeep [1] = axis_in1_tkeep ;
assign slice_in_tlast [1] = axis_in1_tlast ;
assign slice_in_tvalid[1] = axis_in1_tvalid;

// Connect the output of one of the slices to the output stream
always @* begin
    axis_out_tdata  = slice_out_tdata [source_select];
    axis_out_tkeep  = slice_out_tkeep [source_select];
    axis_out_tlast  = slice_out_tlast [source_select];
    axis_out_tvalid = slice_out_tvalid[source_select];
    
    // The input stream "tready" signals are driven by the slices
    axis_in0_tready = (source_select == 0) ? slice_in_tready[0] : 0;
    axis_in1_tready = (source_select == 1) ? slice_in_tready[1] : 0;

    // The output stream "tready" signals drive the slices
    slice_out_tready[0] = (source_select == 0) ? axis_out_tready : 0;
    slice_out_tready[1] = (source_select == 1) ? axis_out_tready : 0;    
end

//=============================================================================
// AXI stream register slice on the input
//=============================================================================
for (i=0; i<2; i=i+1) begin
    axis_slice #
    (
        .DATA_WIDTH     (512),
        .LAST_ENABLE    (1),
        .USER_ENABLE    (0),
        .USER_WIDTH     (1)
    )
    i_slice
    (
        .clk          (clk),
        .rst          (0),

        .s_axis_tdata (slice_in_tdata [i]),
        .s_axis_tkeep (slice_in_tkeep [i]),
        .s_axis_tlast (slice_in_tlast [i]),
        .s_axis_tvalid(slice_in_tvalid[i]),
        .s_axis_tready(slice_in_tready[i]),
        .s_axis_tuser (0),
        .s_axis_tid   (0),
        .s_axis_tdest (0),

        .m_axis_tdata (slice_out_tdata [i]),
        .m_axis_tkeep (slice_out_tkeep [i]),
        .m_axis_tlast (slice_out_tlast [i]),
        .m_axis_tvalid(slice_out_tvalid[i]),
        .m_axis_tready(slice_out_tready[i]),
        .m_axis_tuser (0),
        .m_axis_tid   (0),
        .m_axis_tdest (0)
);
end
//=============================================================================



//=============================================================================
// Synchronize "source_select"
//=============================================================================
xpm_cdc_single #
(
    .DEST_SYNC_FF   (4),
    .SRC_INPUT_REG  (0)
)
i_sync_source_select
(
    .src_clk  (),
    .src_in   (async_source_select),
    .dest_clk (clk),
    .dest_out (source_select)
);
//=============================================================================


endmodule
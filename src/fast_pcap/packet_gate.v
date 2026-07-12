//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 09-Jul-26  DWW     1  Initial creation
//=============================================================================

/*
    This serves as a packet-gate, allowing packets to pass through only
    when "enable" is asserted.   It will never allow a partial-packet to 
    be emitted, even if "enable" becomes asserted in the middle of an
    incoming packet

    The incoming packets are stuffed into two FIFOs:
      (1) A FIFO that carries the packet data
      (2) A FIFO that carries a time-stamp and packet-size

*/

module packet_gate # (parameter DW=512)
(
    input   clk,
    input   resetn,

    // When this is low, we stop processing packets
    input   enable,

    // This is the stream of incoming packets
    input [511:0]       axis_in_tdata,
    input [ 63:0]       axis_in_tkeep,
    input               axis_in_tlast,
    input               axis_in_tvalid,

    // This is a stream of outgoing packets
    output [511:0]      axis_out_tdata,
    output              axis_out_tlast,
    output              axis_out_tvalid,
    input               axis_out_tready,

    // This is a stream of outgoing timestamps and packet lengths
    output [63:0]       axis_hdr_tdata,
    output [15:0]       axis_hdr_tuser,
    output              axis_hdr_tvalid,
    input               axis_hdr_tready
);
`include "settings.vh"

// This is the largest packet size the Xilinx CMAC supports
localparam LARGEST_PACKET_SIZE = 9600;

// This is the number of data-cycles in the largest possible packet
localparam LARGEST_PACKET_CYCLES = LARGEST_PACKET_SIZE / 64;

// This is the maximum number of data-cycles we're willing to emit
// We leave room in the buffeer to account for the sentinel block 
// that will be appended at the end of our last block of real data.
localparam CYCLE_LIMIT = (MAX_RAM / 64) - LARGEST_PACKET_SIZE * 2;

// A sentinal value to say "The timestamp timer hasn't been zeroed yet"
localparam[63:0] NO_TIMESTAMP = 64'hFFFF_FFFF_FFFF_FFFF;

// The input side of the packet-data FIFO
reg [DW-1:0] pd_fifo_in_tdata;
reg          pd_fifo_in_tvalid;
reg          pd_fifo_in_tlast;
wire         pd_fifo_in_tready;

// The output side of the packet-data FIFO
wire[DW-1:0] pd_fifo_out_tdata;
wire         pd_fifo_out_tvalid;
wire         pd_fifo_out_tready;

// Tie the output side of the packet-data FIFO to the "axis_out" stream
assign axis_out_tdata  = pd_fifo_out_tdata;
assign axis_out_tvalid = pd_fifo_out_tvalid;
assign pd_fifo_out_tready = axis_out_tready;

// The input side of the meta-data FIFO
wire [63:0] md_fifo_in_tdata;
reg  [15:0] md_fifo_in_tuser;
wire        md_fifo_in_tvalid;
wire        md_fifo_in_tready;

// The output side of the meta-data FIFO
wire [63:0] md_fifo_out_tdata;
wire [15:0] md_fifo_out_tuser;
wire        md_fifo_out_tvalid;
wire        md_fifo_out_tready;

// Tie the output side of the meta-data FIFO to the "axis_hdr" stream
assign axis_hdr_tdata  = md_fifo_out_tdata;
assign axis_hdr_tuser  = md_fifo_out_tuser;
assign axis_hdr_tvalid = md_fifo_out_tvalid;
assign md_fifo_out_tready = axis_hdr_tready;

// The total number of data-cycles written to the FIFO, plus 1 for each
// packet (to account for the header that will be added later)
reg[31:0] cycles_emitted;

//=============================================================================
// Keep track of the number of free entries in the FIFO
//=============================================================================
reg[31:0] fifo_free;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0)
        fifo_free <= STAGE1_FIFO_DEPTH;
    else 
        fifo_free <= fifo_free
                   - (pd_fifo_in_tvalid  & pd_fifo_in_tready)
                   + (pd_fifo_out_tvalid & pd_fifo_out_tready);
end
//=============================================================================



//=============================================================================
// This block counts the number of one bits in axis_in_tkeep, thereby
// determining the number of data-bytes in the axis_in_tdata field.
//=============================================================================
reg[7:0] data_byte_count;
//-----------------------------------------------------------------------------
integer n;
always @* begin
    data_byte_count = 0;
    for (n=0;n<(DW/8);n=n+1) begin
        data_byte_count = data_byte_count + axis_in_tkeep[n];
    end
end
//=============================================================================


//=============================================================================
// Data from the input stream flows into the packet-data FIFO
//=============================================================================
always @(posedge clk) begin
    pd_fifo_in_tdata <= axis_in_tdata;
    pd_fifo_in_tlast <= axis_in_tlast;
end
//=============================================================================


//=============================================================================
// Here we ensure that "sop" is asserted on the first cycle of every packet.
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
// Here we compute the packet length of incoming packets
//=============================================================================
reg [15:0] partial_length;
wire[15:0] packet_length = partial_length + data_byte_count;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (resetn == 0) begin
        partial_length <= 0;
    end else if (axis_in_tvalid) begin
        if (axis_in_tlast)
            partial_length <= 0;
        else
            partial_length <= partial_length + data_byte_count;
    end
end
//=============================================================================



//=============================================================================
// Here we read in data-cycles from an incoming packet and either drop them or
// pass them to the output.
//
// We're counting the total cycles emitted, and we are adding 1 cycle per 
// packet to account for the packet-header that a downstream module will add
//=============================================================================
reg       drop;
reg[63:0] ts_counter, timestamp;
//-----------------------------------------------------------------------------
always @(posedge clk) begin

    // This strobes high for a single cycle at a time
    pd_fifo_in_tvalid <= 0;

    // Count clock-cycles
    ts_counter <= ts_counter + 1;

    // If we're in reset...
    if (resetn == 0) begin
        drop           <= 1;
        timestamp      <= NO_TIMESTAMP;
        cycles_emitted <= 0;
    end

    // If this is the first data-cycle of a packet...
    else if (sop) begin

        // If packet capture isn't enabled, drop the packet
        if (enable == 0)
            drop <= 1;

        // If we're not sure the packet will fit in the fifo, drop it
        else if (fifo_free < LARGEST_PACKET_CYCLES)
            drop <= 1;

        // If we've already captured enough data to fill RAM, drop it
        else if (cycles_emitted > CYCLE_LIMIT)
            drop <= 1;

        // Otherwise, record the packet
        else begin
            if (timestamp == NO_TIMESTAMP) begin
                timestamp  <= 0;
                ts_counter <= 1;
            end else begin
                timestamp  <= ts_counter;
            end
            drop              <= 0;
            md_fifo_in_tuser  <= packet_length;
            pd_fifo_in_tvalid <= 1;   
            cycles_emitted    <= cycles_emitted + 1 + axis_in_tlast;
        end
    end
    
    // Here we deal with payload data-cycles
    else if (axis_in_tvalid & !drop) begin
        md_fifo_in_tuser  <= packet_length;
        pd_fifo_in_tvalid <= 1;
        cycles_emitted    <= cycles_emitted + 1 + pd_fifo_in_tlast;
    end

end

// The metadata consists of a timestamp and a data-cycle count.  We write it
// to the metadata FIFO at the same time we write the last data-cycle of the
// packet-data to the packet-data FIFO
assign md_fifo_in_tdata  = timestamp;
assign md_fifo_in_tvalid = pd_fifo_in_tvalid & pd_fifo_in_tlast;
//=============================================================================


//=============================================================================
// This is the packet-data FIFO
//=============================================================================
xpm_fifo_axis #
(
   .TDATA_WIDTH     (DW),
   .FIFO_DEPTH      (STAGE1_FIFO_DEPTH),
   .FIFO_MEMORY_TYPE(STAGE1_FIFO_TYPE),
   .PACKET_FIFO     ("false"),
   .USE_ADV_FEATURES("0000"),
   .CLOCKING_MODE   ("common_clock")
)
i_pd_fifo
(
    // Clock and reset
    .s_aclk   (clk   ),
    .m_aclk   (clk   ),
    .s_aresetn(resetn),

    // The input bus of the FIFO
    .s_axis_tdata (pd_fifo_in_tdata ),
    .s_axis_tvalid(pd_fifo_in_tvalid),
    .s_axis_tready(pd_fifo_in_tready),

    // The output bus of the FIFO
    .m_axis_tdata (pd_fifo_out_tdata ),
    .m_axis_tvalid(pd_fifo_out_tvalid),
    .m_axis_tready(pd_fifo_out_tready),

    // Unused input stream signals
    .s_axis_tuser(),
    .s_axis_tkeep(),
    .s_axis_tlast(),
    .s_axis_tdest(),
    .s_axis_tid  (),
    .s_axis_tstrb(),

    // Unused output stream signals
    .m_axis_tuser(),
    .m_axis_tdest(),
    .m_axis_tid  (),
    .m_axis_tstrb(),
    .m_axis_tkeep(),
    .m_axis_tlast(),

    // Other unused signals
    .almost_empty_axis (),
    .almost_full_axis  (),
    .dbiterr_axis      (),
    .prog_empty_axis   (),
    .prog_full_axis    (),
    .rd_data_count_axis(),
    .sbiterr_axis      (),
    .wr_data_count_axis(),
    .injectdbiterr_axis(),
    .injectsbiterr_axis()
);
//=============================================================================


//=============================================================================
// This is the meta-data FIFO.  Meta-data consists of a time-stamp and a 
// packet length.
//=============================================================================
xpm_fifo_axis #
(
   .TDATA_WIDTH     (64),
   .TUSER_WIDTH     (16),
   .FIFO_DEPTH      (STAGE1_FIFO_DEPTH),
   .FIFO_MEMORY_TYPE(STAGE1_FIFO_TYPE),
   .PACKET_FIFO     ("false"),
   .USE_ADV_FEATURES("0000"),
   .CLOCKING_MODE   ("common_clock")
)
i_md_fifo
(
    // Clock and reset
    .s_aclk   (clk   ),
    .m_aclk   (clk   ),
    .s_aresetn(resetn),

    // The input bus of the FIFO
    .s_axis_tdata (md_fifo_in_tdata ),
    .s_axis_tuser (md_fifo_in_tuser ),
    .s_axis_tvalid(md_fifo_in_tvalid),
    .s_axis_tready(md_fifo_in_tready),

    // The output bus of the FIFO
    .m_axis_tdata (md_fifo_out_tdata ),
    .m_axis_tuser (md_fifo_out_tuser ),
    .m_axis_tvalid(md_fifo_out_tvalid),
    .m_axis_tready(md_fifo_out_tready),

    // Unused input stream signals
    .s_axis_tkeep(),
    .s_axis_tlast(),
    .s_axis_tdest(),
    .s_axis_tid  (),
    .s_axis_tstrb(),

    // Unused output stream signals
    .m_axis_tdest(),
    .m_axis_tid  (),
    .m_axis_tstrb(),
    .m_axis_tkeep(),
    .m_axis_tlast(),

    // Other unused signals
    .almost_empty_axis (),
    .almost_full_axis  (),
    .dbiterr_axis      (),
    .prog_empty_axis   (),
    .prog_full_axis    (),
    .rd_data_count_axis(),
    .sbiterr_axis      (),
    .wr_data_count_axis(),
    .injectdbiterr_axis(),
    .injectsbiterr_axis()
);
//=============================================================================


endmodule

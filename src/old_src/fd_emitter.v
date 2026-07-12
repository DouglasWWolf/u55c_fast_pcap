//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 19-Jun-26  DWW     1  Initial creation
//=============================================================================

/*
    This module emits RDMX packets with a 4KB payload whenever the number of 
    packets requested is greater than the number of packets sent thus far.
*/


module fd_emitter # (parameter IN_DW = 512, parameter DW = 512, parameter CHANNEL = 0)
(
    input   clk,
    input   resetn,

    // When "send_stb" strobes high, we record the number of packets to send
    input               local_send_stb, remote_send_stb,
    input[31:0]         local_send_cnt, remote_send_cnt,

    input[IN_DW-1:0]    axis_in_tdata,
    input               axis_in_tvalid,
    output reg          axis_in_tready,

    output reg [DW-1:0] axis_out_tdata,
    output reg          axis_out_tvalid,
    output reg          axis_out_tlast,
    input               axis_out_tready
);

// Bring in the project-wide settings
`include "global.vh"

// The number of bytes of frame-data in an outgoing packet 
localparam PAYLOAD_SIZE = 4096;

// The number of payload data-cycles in a packet
localparam PAYLOAD_CYCLES = PAYLOAD_SIZE / (DW/8);

// The RDMX header, in little-endian
wire[511:0] le_rdmx_header;

// The number of packets requested and actually sent
reg[63:0] packets_req, packets_sent;

//=============================================================================
// Here we accumulate the total number of packets we need to send
//=============================================================================
always @(posedge clk) begin
    if (resetn == 0)
        packets_req <= 0;
    else if (local_send_stb)
        packets_req <= packets_req + local_send_cnt;
    else if (remote_send_stb)
        packets_req <= packets_req + remote_send_cnt;
end
//=============================================================================


//=============================================================================
// Here we send the requested number of packet.  Each packet has an RDMX
// header prefixed to it
//=============================================================================
reg       fsm_state;
reg [6:0] cycle;
//-----------------------------------------------------------------------------
always @(posedge clk) begin

    if (resetn == 0) begin
        packets_sent <= 0;
        fsm_state    <= 0;
    end

    else case(fsm_state)

        // Send the RDMX header
        0:  if (axis_out_tvalid & axis_out_tready) begin
                cycle     <= 1;
                fsm_state <= 1;
            end

        // Send the packet payload
        1:  if (axis_out_tvalid & axis_out_tready) begin
                if (axis_out_tlast) begin
                    packets_sent <= packets_sent + 1;
                    fsm_state    <= 0;
                end else
                    cycle <= cycle + 1;
            end
    endcase
end
//=============================================================================


//=============================================================================
// Here we determine the state of the output stream depending on the state
// of both the state machine and the input stream
//=============================================================================
always @* begin

    if (resetn == 0) begin
        axis_out_tdata  = 0;
        axis_out_tvalid = 0;
        axis_out_tlast  = 0;
        axis_in_tready  = 0;
    end

    else case(fsm_state)

        0:  begin
                axis_out_tdata  = le_rdmx_header;
                axis_out_tvalid = axis_in_tvalid & (packets_req > packets_sent);
                axis_out_tlast  = 0;
                axis_in_tready  = 0;
            end

        1:  begin
                axis_out_tdata  = axis_in_tdata;
                axis_out_tvalid = axis_in_tvalid;
                axis_out_tlast  = (cycle == PAYLOAD_CYCLES);
                axis_in_tready  = axis_out_tready;
            end

    endcase

end
//=============================================================================

//=============================================================================
// This creates an RDMX header in little-endian order
//=============================================================================
rdmx_encoder # (.SRC_MAC(CHANNEL)) u_rdmx_encoder
(
    .rdmx_target_addr   (0),
    .rdmx_flags         (0),
    .rdmx_seq_num       (0),
    .rdmx_user_field    (PT_FRAME_DATA),
    .rdmx_reserved      (0),
    .payload_length     (PAYLOAD_SIZE),
    .le_rdmx_header     (le_rdmx_header)
);
//=============================================================================


endmodule




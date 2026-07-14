//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Tue Jul 14 02:37:32 2026
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level.bd
//Design      : top_level
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module channel_0_imp_3EIWA1
   (M_AXI_PB_araddr,
    M_AXI_PB_arburst,
    M_AXI_PB_arcache,
    M_AXI_PB_arid,
    M_AXI_PB_arlen,
    M_AXI_PB_arlock,
    M_AXI_PB_arprot,
    M_AXI_PB_arqos,
    M_AXI_PB_arready,
    M_AXI_PB_arsize,
    M_AXI_PB_arvalid,
    M_AXI_PB_awaddr,
    M_AXI_PB_awburst,
    M_AXI_PB_awcache,
    M_AXI_PB_awid,
    M_AXI_PB_awlen,
    M_AXI_PB_awlock,
    M_AXI_PB_awprot,
    M_AXI_PB_awqos,
    M_AXI_PB_awready,
    M_AXI_PB_awsize,
    M_AXI_PB_awvalid,
    M_AXI_PB_bid,
    M_AXI_PB_bready,
    M_AXI_PB_bresp,
    M_AXI_PB_bvalid,
    M_AXI_PB_rdata,
    M_AXI_PB_rid,
    M_AXI_PB_rlast,
    M_AXI_PB_rready,
    M_AXI_PB_rresp,
    M_AXI_PB_rvalid,
    M_AXI_PB_wdata,
    M_AXI_PB_wlast,
    M_AXI_PB_wready,
    M_AXI_PB_wstrb,
    M_AXI_PB_wvalid,
    PCI_AXI_araddr,
    PCI_AXI_arburst,
    PCI_AXI_arcache,
    PCI_AXI_arid,
    PCI_AXI_arlen,
    PCI_AXI_arlock,
    PCI_AXI_arprot,
    PCI_AXI_arqos,
    PCI_AXI_arready,
    PCI_AXI_arsize,
    PCI_AXI_arvalid,
    PCI_AXI_awaddr,
    PCI_AXI_awburst,
    PCI_AXI_awcache,
    PCI_AXI_awid,
    PCI_AXI_awlen,
    PCI_AXI_awlock,
    PCI_AXI_awprot,
    PCI_AXI_awqos,
    PCI_AXI_awready,
    PCI_AXI_awsize,
    PCI_AXI_awvalid,
    PCI_AXI_bready,
    PCI_AXI_bresp,
    PCI_AXI_bvalid,
    PCI_AXI_rdata,
    PCI_AXI_rlast,
    PCI_AXI_rready,
    PCI_AXI_rresp,
    PCI_AXI_rvalid,
    PCI_AXI_wdata,
    PCI_AXI_wlast,
    PCI_AXI_wready,
    PCI_AXI_wstrb,
    PCI_AXI_wvalid,
    S_AXI_CTL_araddr,
    S_AXI_CTL_arprot,
    S_AXI_CTL_arready,
    S_AXI_CTL_arvalid,
    S_AXI_CTL_awaddr,
    S_AXI_CTL_awprot,
    S_AXI_CTL_awready,
    S_AXI_CTL_awvalid,
    S_AXI_CTL_bready,
    S_AXI_CTL_bresp,
    S_AXI_CTL_bvalid,
    S_AXI_CTL_rdata,
    S_AXI_CTL_rready,
    S_AXI_CTL_rresp,
    S_AXI_CTL_rvalid,
    S_AXI_CTL_wdata,
    S_AXI_CTL_wready,
    S_AXI_CTL_wstrb,
    S_AXI_CTL_wvalid,
    S_AXI_PB_araddr,
    S_AXI_PB_arprot,
    S_AXI_PB_arready,
    S_AXI_PB_arvalid,
    S_AXI_PB_awaddr,
    S_AXI_PB_awprot,
    S_AXI_PB_awready,
    S_AXI_PB_awvalid,
    S_AXI_PB_bready,
    S_AXI_PB_bresp,
    S_AXI_PB_bvalid,
    S_AXI_PB_rdata,
    S_AXI_PB_rready,
    S_AXI_PB_rresp,
    S_AXI_PB_rvalid,
    S_AXI_PB_wdata,
    S_AXI_PB_wready,
    S_AXI_PB_wstrb,
    S_AXI_PB_wvalid,
    async_link_status,
    axis_in_tdata,
    axis_in_tkeep,
    axis_in_tlast,
    axis_in_tvalid,
    axis_pb_out_tdata,
    axis_pb_out_tkeep,
    axis_pb_out_tlast,
    axis_pb_out_tready,
    axis_pb_out_tvalid,
    axis_pg_out_tdata,
    axis_pg_out_tkeep,
    axis_pg_out_tlast,
    axis_pg_out_tready,
    axis_pg_out_tvalid,
    cmac_clk,
    hbm_cattrip,
    hbm_refclk_clk_n,
    hbm_refclk_clk_p,
    pb_mux_sel,
    resetn,
    sys_clk);
  output [63:0]M_AXI_PB_araddr;
  output [1:0]M_AXI_PB_arburst;
  output [3:0]M_AXI_PB_arcache;
  output [1:0]M_AXI_PB_arid;
  output [7:0]M_AXI_PB_arlen;
  output M_AXI_PB_arlock;
  output [2:0]M_AXI_PB_arprot;
  output [3:0]M_AXI_PB_arqos;
  input M_AXI_PB_arready;
  output [2:0]M_AXI_PB_arsize;
  output M_AXI_PB_arvalid;
  output [63:0]M_AXI_PB_awaddr;
  output [1:0]M_AXI_PB_awburst;
  output [3:0]M_AXI_PB_awcache;
  output [1:0]M_AXI_PB_awid;
  output [7:0]M_AXI_PB_awlen;
  output M_AXI_PB_awlock;
  output [2:0]M_AXI_PB_awprot;
  output [3:0]M_AXI_PB_awqos;
  input M_AXI_PB_awready;
  output [2:0]M_AXI_PB_awsize;
  output M_AXI_PB_awvalid;
  input [1:0]M_AXI_PB_bid;
  output M_AXI_PB_bready;
  input [1:0]M_AXI_PB_bresp;
  input M_AXI_PB_bvalid;
  input [511:0]M_AXI_PB_rdata;
  input [1:0]M_AXI_PB_rid;
  input M_AXI_PB_rlast;
  output M_AXI_PB_rready;
  input [1:0]M_AXI_PB_rresp;
  input M_AXI_PB_rvalid;
  output [511:0]M_AXI_PB_wdata;
  output M_AXI_PB_wlast;
  input M_AXI_PB_wready;
  output [63:0]M_AXI_PB_wstrb;
  output M_AXI_PB_wvalid;
  output [63:0]PCI_AXI_araddr;
  output [1:0]PCI_AXI_arburst;
  output [3:0]PCI_AXI_arcache;
  output [3:0]PCI_AXI_arid;
  output [7:0]PCI_AXI_arlen;
  output PCI_AXI_arlock;
  output [2:0]PCI_AXI_arprot;
  output [3:0]PCI_AXI_arqos;
  input PCI_AXI_arready;
  output [2:0]PCI_AXI_arsize;
  output PCI_AXI_arvalid;
  output [63:0]PCI_AXI_awaddr;
  output [1:0]PCI_AXI_awburst;
  output [3:0]PCI_AXI_awcache;
  output [3:0]PCI_AXI_awid;
  output [7:0]PCI_AXI_awlen;
  output PCI_AXI_awlock;
  output [2:0]PCI_AXI_awprot;
  output [3:0]PCI_AXI_awqos;
  input PCI_AXI_awready;
  output [2:0]PCI_AXI_awsize;
  output PCI_AXI_awvalid;
  output PCI_AXI_bready;
  input [1:0]PCI_AXI_bresp;
  input PCI_AXI_bvalid;
  input [511:0]PCI_AXI_rdata;
  input PCI_AXI_rlast;
  output PCI_AXI_rready;
  input [1:0]PCI_AXI_rresp;
  input PCI_AXI_rvalid;
  output [511:0]PCI_AXI_wdata;
  output PCI_AXI_wlast;
  input PCI_AXI_wready;
  output [63:0]PCI_AXI_wstrb;
  output PCI_AXI_wvalid;
  input [7:0]S_AXI_CTL_araddr;
  input [2:0]S_AXI_CTL_arprot;
  output S_AXI_CTL_arready;
  input S_AXI_CTL_arvalid;
  input [7:0]S_AXI_CTL_awaddr;
  input [2:0]S_AXI_CTL_awprot;
  output S_AXI_CTL_awready;
  input S_AXI_CTL_awvalid;
  input S_AXI_CTL_bready;
  output [1:0]S_AXI_CTL_bresp;
  output S_AXI_CTL_bvalid;
  output [31:0]S_AXI_CTL_rdata;
  input S_AXI_CTL_rready;
  output [1:0]S_AXI_CTL_rresp;
  output S_AXI_CTL_rvalid;
  input [31:0]S_AXI_CTL_wdata;
  output S_AXI_CTL_wready;
  input [3:0]S_AXI_CTL_wstrb;
  input S_AXI_CTL_wvalid;
  input [7:0]S_AXI_PB_araddr;
  input [2:0]S_AXI_PB_arprot;
  output S_AXI_PB_arready;
  input S_AXI_PB_arvalid;
  input [7:0]S_AXI_PB_awaddr;
  input [2:0]S_AXI_PB_awprot;
  output S_AXI_PB_awready;
  input S_AXI_PB_awvalid;
  input S_AXI_PB_bready;
  output [1:0]S_AXI_PB_bresp;
  output S_AXI_PB_bvalid;
  output [31:0]S_AXI_PB_rdata;
  input S_AXI_PB_rready;
  output [1:0]S_AXI_PB_rresp;
  output S_AXI_PB_rvalid;
  input [31:0]S_AXI_PB_wdata;
  output S_AXI_PB_wready;
  input [3:0]S_AXI_PB_wstrb;
  input S_AXI_PB_wvalid;
  input [1:0]async_link_status;
  input [511:0]axis_in_tdata;
  input [63:0]axis_in_tkeep;
  input axis_in_tlast;
  input axis_in_tvalid;
  output [511:0]axis_pb_out_tdata;
  output [63:0]axis_pb_out_tkeep;
  output axis_pb_out_tlast;
  input axis_pb_out_tready;
  output axis_pb_out_tvalid;
  output [511:0]axis_pg_out_tdata;
  output [63:0]axis_pg_out_tkeep;
  output axis_pg_out_tlast;
  input axis_pg_out_tready;
  output axis_pg_out_tvalid;
  input cmac_clk;
  output hbm_cattrip;
  input [0:0]hbm_refclk_clk_n;
  input [0:0]hbm_refclk_clk_p;
  output pb_mux_sel;
  input resetn;
  input sys_clk;

  wire [63:0]M_AXI_PB_araddr;
  wire [1:0]M_AXI_PB_arburst;
  wire [3:0]M_AXI_PB_arcache;
  wire [1:0]M_AXI_PB_arid;
  wire [7:0]M_AXI_PB_arlen;
  wire M_AXI_PB_arlock;
  wire [2:0]M_AXI_PB_arprot;
  wire [3:0]M_AXI_PB_arqos;
  wire M_AXI_PB_arready;
  wire [2:0]M_AXI_PB_arsize;
  wire M_AXI_PB_arvalid;
  wire [63:0]M_AXI_PB_awaddr;
  wire [1:0]M_AXI_PB_awburst;
  wire [3:0]M_AXI_PB_awcache;
  wire [1:0]M_AXI_PB_awid;
  wire [7:0]M_AXI_PB_awlen;
  wire M_AXI_PB_awlock;
  wire [2:0]M_AXI_PB_awprot;
  wire [3:0]M_AXI_PB_awqos;
  wire M_AXI_PB_awready;
  wire [2:0]M_AXI_PB_awsize;
  wire M_AXI_PB_awvalid;
  wire [1:0]M_AXI_PB_bid;
  wire M_AXI_PB_bready;
  wire [1:0]M_AXI_PB_bresp;
  wire M_AXI_PB_bvalid;
  wire [511:0]M_AXI_PB_rdata;
  wire [1:0]M_AXI_PB_rid;
  wire M_AXI_PB_rlast;
  wire M_AXI_PB_rready;
  wire [1:0]M_AXI_PB_rresp;
  wire M_AXI_PB_rvalid;
  wire [511:0]M_AXI_PB_wdata;
  wire M_AXI_PB_wlast;
  wire M_AXI_PB_wready;
  wire [63:0]M_AXI_PB_wstrb;
  wire M_AXI_PB_wvalid;
  wire [63:0]PCI_AXI_araddr;
  wire [1:0]PCI_AXI_arburst;
  wire [3:0]PCI_AXI_arcache;
  wire [3:0]PCI_AXI_arid;
  wire [7:0]PCI_AXI_arlen;
  wire PCI_AXI_arlock;
  wire [2:0]PCI_AXI_arprot;
  wire [3:0]PCI_AXI_arqos;
  wire PCI_AXI_arready;
  wire [2:0]PCI_AXI_arsize;
  wire PCI_AXI_arvalid;
  wire [63:0]PCI_AXI_awaddr;
  wire [1:0]PCI_AXI_awburst;
  wire [3:0]PCI_AXI_awcache;
  wire [3:0]PCI_AXI_awid;
  wire [7:0]PCI_AXI_awlen;
  wire PCI_AXI_awlock;
  wire [2:0]PCI_AXI_awprot;
  wire [3:0]PCI_AXI_awqos;
  wire PCI_AXI_awready;
  wire [2:0]PCI_AXI_awsize;
  wire PCI_AXI_awvalid;
  wire PCI_AXI_bready;
  wire [1:0]PCI_AXI_bresp;
  wire PCI_AXI_bvalid;
  wire [511:0]PCI_AXI_rdata;
  wire PCI_AXI_rlast;
  wire PCI_AXI_rready;
  wire [1:0]PCI_AXI_rresp;
  wire PCI_AXI_rvalid;
  wire [511:0]PCI_AXI_wdata;
  wire PCI_AXI_wlast;
  wire PCI_AXI_wready;
  wire [63:0]PCI_AXI_wstrb;
  wire PCI_AXI_wvalid;
  wire [7:0]S_AXI_CTL_araddr;
  wire [2:0]S_AXI_CTL_arprot;
  wire S_AXI_CTL_arready;
  wire S_AXI_CTL_arvalid;
  wire [7:0]S_AXI_CTL_awaddr;
  wire [2:0]S_AXI_CTL_awprot;
  wire S_AXI_CTL_awready;
  wire S_AXI_CTL_awvalid;
  wire S_AXI_CTL_bready;
  wire [1:0]S_AXI_CTL_bresp;
  wire S_AXI_CTL_bvalid;
  wire [31:0]S_AXI_CTL_rdata;
  wire S_AXI_CTL_rready;
  wire [1:0]S_AXI_CTL_rresp;
  wire S_AXI_CTL_rvalid;
  wire [31:0]S_AXI_CTL_wdata;
  wire S_AXI_CTL_wready;
  wire [3:0]S_AXI_CTL_wstrb;
  wire S_AXI_CTL_wvalid;
  wire [7:0]S_AXI_PB_araddr;
  wire [2:0]S_AXI_PB_arprot;
  wire S_AXI_PB_arready;
  wire S_AXI_PB_arvalid;
  wire [7:0]S_AXI_PB_awaddr;
  wire [2:0]S_AXI_PB_awprot;
  wire S_AXI_PB_awready;
  wire S_AXI_PB_awvalid;
  wire S_AXI_PB_bready;
  wire [1:0]S_AXI_PB_bresp;
  wire S_AXI_PB_bvalid;
  wire [31:0]S_AXI_PB_rdata;
  wire S_AXI_PB_rready;
  wire [1:0]S_AXI_PB_rresp;
  wire S_AXI_PB_rvalid;
  wire [31:0]S_AXI_PB_wdata;
  wire S_AXI_PB_wready;
  wire [3:0]S_AXI_PB_wstrb;
  wire S_AXI_PB_wvalid;
  wire [1:0]async_link_status;
  wire [511:0]axis_in_tdata;
  wire [63:0]axis_in_tkeep;
  wire axis_in_tlast;
  wire axis_in_tvalid;
  wire [511:0]axis_pb_out_tdata;
  wire [63:0]axis_pb_out_tkeep;
  wire axis_pb_out_tlast;
  wire axis_pb_out_tready;
  wire axis_pb_out_tvalid;
  wire [511:0]axis_pg_out_tdata;
  wire [63:0]axis_pg_out_tkeep;
  wire axis_pg_out_tlast;
  wire axis_pg_out_tready;
  wire axis_pg_out_tvalid;
  wire cmac_clk;
  wire [31:0]control_copy_blocks;
  wire control_copy_to_host_stb;
  wire control_enable;
  wire [63:0]control_host_addr;
  wire control_resetn_out;
  wire [31:0]control_send_count;
  wire [15:0]control_send_size;
  wire control_send_stb;
  wire [31:0]datapath_blocks_captured;
  wire datapath_copy_idle;
  wire datapath_done;
  wire [6:0]datapath_hbm_temp;
  wire [31:0]datapath_packets_captured;
  wire hbm_cattrip;
  wire [0:0]hbm_refclk_clk_n;
  wire [0:0]hbm_refclk_clk_p;
  wire packet_gen_0_busy;
  wire pb_mux_sel;
  wire resetn;
  wire sys_clk;

  top_level_control_0_1 control
       (.S_AXI_ARADDR(S_AXI_CTL_araddr),
        .S_AXI_ARPROT(S_AXI_CTL_arprot),
        .S_AXI_ARREADY(S_AXI_CTL_arready),
        .S_AXI_ARVALID(S_AXI_CTL_arvalid),
        .S_AXI_AWADDR(S_AXI_CTL_awaddr),
        .S_AXI_AWPROT(S_AXI_CTL_awprot),
        .S_AXI_AWREADY(S_AXI_CTL_awready),
        .S_AXI_AWVALID(S_AXI_CTL_awvalid),
        .S_AXI_BREADY(S_AXI_CTL_bready),
        .S_AXI_BRESP(S_AXI_CTL_bresp),
        .S_AXI_BVALID(S_AXI_CTL_bvalid),
        .S_AXI_RDATA(S_AXI_CTL_rdata),
        .S_AXI_RREADY(S_AXI_CTL_rready),
        .S_AXI_RRESP(S_AXI_CTL_rresp),
        .S_AXI_RVALID(S_AXI_CTL_rvalid),
        .S_AXI_WDATA(S_AXI_CTL_wdata),
        .S_AXI_WREADY(S_AXI_CTL_wready),
        .S_AXI_WSTRB(S_AXI_CTL_wstrb),
        .S_AXI_WVALID(S_AXI_CTL_wvalid),
        .async_block_count(datapath_blocks_captured),
        .async_capture_complete(datapath_done),
        .async_hbm_temp(datapath_hbm_temp),
        .async_link_status(async_link_status),
        .async_packet_count(datapath_packets_captured),
        .clk(sys_clk),
        .copy_blocks(control_copy_blocks),
        .copy_complete(datapath_copy_idle),
        .copy_to_host_stb(control_copy_to_host_stb),
        .enable(control_enable),
        .host_addr(control_host_addr),
        .resetn(resetn),
        .resetn_out(control_resetn_out),
        .send_busy(packet_gen_0_busy),
        .send_count(control_send_count),
        .send_size(control_send_size),
        .send_stb(control_send_stb));
  datapath_imp_1YKLZG2 datapath
       (.PCI_AXI_araddr(PCI_AXI_araddr),
        .PCI_AXI_arburst(PCI_AXI_arburst),
        .PCI_AXI_arcache(PCI_AXI_arcache),
        .PCI_AXI_arid(PCI_AXI_arid),
        .PCI_AXI_arlen(PCI_AXI_arlen),
        .PCI_AXI_arlock(PCI_AXI_arlock),
        .PCI_AXI_arprot(PCI_AXI_arprot),
        .PCI_AXI_arqos(PCI_AXI_arqos),
        .PCI_AXI_arready(PCI_AXI_arready),
        .PCI_AXI_arsize(PCI_AXI_arsize),
        .PCI_AXI_arvalid(PCI_AXI_arvalid),
        .PCI_AXI_awaddr(PCI_AXI_awaddr),
        .PCI_AXI_awburst(PCI_AXI_awburst),
        .PCI_AXI_awcache(PCI_AXI_awcache),
        .PCI_AXI_awid(PCI_AXI_awid),
        .PCI_AXI_awlen(PCI_AXI_awlen),
        .PCI_AXI_awlock(PCI_AXI_awlock),
        .PCI_AXI_awprot(PCI_AXI_awprot),
        .PCI_AXI_awqos(PCI_AXI_awqos),
        .PCI_AXI_awready(PCI_AXI_awready),
        .PCI_AXI_awsize(PCI_AXI_awsize),
        .PCI_AXI_awvalid(PCI_AXI_awvalid),
        .PCI_AXI_bready(PCI_AXI_bready),
        .PCI_AXI_bresp(PCI_AXI_bresp),
        .PCI_AXI_bvalid(PCI_AXI_bvalid),
        .PCI_AXI_rdata(PCI_AXI_rdata),
        .PCI_AXI_rlast(PCI_AXI_rlast),
        .PCI_AXI_rready(PCI_AXI_rready),
        .PCI_AXI_rresp(PCI_AXI_rresp),
        .PCI_AXI_rvalid(PCI_AXI_rvalid),
        .PCI_AXI_wdata(PCI_AXI_wdata),
        .PCI_AXI_wlast(PCI_AXI_wlast),
        .PCI_AXI_wready(PCI_AXI_wready),
        .PCI_AXI_wstrb(PCI_AXI_wstrb),
        .PCI_AXI_wvalid(PCI_AXI_wvalid),
        .axis_in_tdata(axis_in_tdata),
        .axis_in_tkeep(axis_in_tkeep),
        .axis_in_tlast(axis_in_tlast),
        .axis_in_tvalid(axis_in_tvalid),
        .block_count(control_copy_blocks),
        .blocks_captured(datapath_blocks_captured),
        .cmac_clk(cmac_clk),
        .copy_idle(datapath_copy_idle),
        .done(datapath_done),
        .enable(control_enable),
        .hbm_cattrip(hbm_cattrip),
        .hbm_refclk_clk_n(hbm_refclk_clk_n),
        .hbm_refclk_clk_p(hbm_refclk_clk_p),
        .hbm_temp(datapath_hbm_temp),
        .host_addr(control_host_addr),
        .packets_captured(datapath_packets_captured),
        .start_copy_stb(control_copy_to_host_stb),
        .sys_clk(sys_clk),
        .sys_resetn(control_resetn_out));
  top_level_packet_gen_0_0 packet_gen
       (.axis_out_tdata(axis_pg_out_tdata),
        .axis_out_tkeep(axis_pg_out_tkeep),
        .axis_out_tlast(axis_pg_out_tlast),
        .axis_out_tready(axis_pg_out_tready),
        .axis_out_tvalid(axis_pg_out_tvalid),
        .busy(packet_gen_0_busy),
        .clk(sys_clk),
        .packet_count(control_send_count),
        .packet_length(control_send_size),
        .resetn(resetn),
        .start_stb(control_send_stb));
  playback_imp_2QUTR1 playback
       (.M_AXI_PCI_araddr(M_AXI_PB_araddr),
        .M_AXI_PCI_arburst(M_AXI_PB_arburst),
        .M_AXI_PCI_arcache(M_AXI_PB_arcache),
        .M_AXI_PCI_arid(M_AXI_PB_arid),
        .M_AXI_PCI_arlen(M_AXI_PB_arlen),
        .M_AXI_PCI_arlock(M_AXI_PB_arlock),
        .M_AXI_PCI_arprot(M_AXI_PB_arprot),
        .M_AXI_PCI_arqos(M_AXI_PB_arqos),
        .M_AXI_PCI_arready(M_AXI_PB_arready),
        .M_AXI_PCI_arsize(M_AXI_PB_arsize),
        .M_AXI_PCI_arvalid(M_AXI_PB_arvalid),
        .M_AXI_PCI_awaddr(M_AXI_PB_awaddr),
        .M_AXI_PCI_awburst(M_AXI_PB_awburst),
        .M_AXI_PCI_awcache(M_AXI_PB_awcache),
        .M_AXI_PCI_awid(M_AXI_PB_awid),
        .M_AXI_PCI_awlen(M_AXI_PB_awlen),
        .M_AXI_PCI_awlock(M_AXI_PB_awlock),
        .M_AXI_PCI_awprot(M_AXI_PB_awprot),
        .M_AXI_PCI_awqos(M_AXI_PB_awqos),
        .M_AXI_PCI_awready(M_AXI_PB_awready),
        .M_AXI_PCI_awsize(M_AXI_PB_awsize),
        .M_AXI_PCI_awvalid(M_AXI_PB_awvalid),
        .M_AXI_PCI_bid(M_AXI_PB_bid),
        .M_AXI_PCI_bready(M_AXI_PB_bready),
        .M_AXI_PCI_bresp(M_AXI_PB_bresp),
        .M_AXI_PCI_bvalid(M_AXI_PB_bvalid),
        .M_AXI_PCI_rdata(M_AXI_PB_rdata),
        .M_AXI_PCI_rid(M_AXI_PB_rid),
        .M_AXI_PCI_rlast(M_AXI_PB_rlast),
        .M_AXI_PCI_rready(M_AXI_PB_rready),
        .M_AXI_PCI_rresp(M_AXI_PB_rresp),
        .M_AXI_PCI_rvalid(M_AXI_PB_rvalid),
        .M_AXI_PCI_wdata(M_AXI_PB_wdata),
        .M_AXI_PCI_wlast(M_AXI_PB_wlast),
        .M_AXI_PCI_wready(M_AXI_PB_wready),
        .M_AXI_PCI_wstrb(M_AXI_PB_wstrb),
        .M_AXI_PCI_wvalid(M_AXI_PB_wvalid),
        .S_AXI_PB_araddr(S_AXI_PB_araddr),
        .S_AXI_PB_arprot(S_AXI_PB_arprot),
        .S_AXI_PB_arready(S_AXI_PB_arready),
        .S_AXI_PB_arvalid(S_AXI_PB_arvalid),
        .S_AXI_PB_awaddr(S_AXI_PB_awaddr),
        .S_AXI_PB_awprot(S_AXI_PB_awprot),
        .S_AXI_PB_awready(S_AXI_PB_awready),
        .S_AXI_PB_awvalid(S_AXI_PB_awvalid),
        .S_AXI_PB_bready(S_AXI_PB_bready),
        .S_AXI_PB_bresp(S_AXI_PB_bresp),
        .S_AXI_PB_bvalid(S_AXI_PB_bvalid),
        .S_AXI_PB_rdata(S_AXI_PB_rdata),
        .S_AXI_PB_rready(S_AXI_PB_rready),
        .S_AXI_PB_rresp(S_AXI_PB_rresp),
        .S_AXI_PB_rvalid(S_AXI_PB_rvalid),
        .S_AXI_PB_wdata(S_AXI_PB_wdata),
        .S_AXI_PB_wready(S_AXI_PB_wready),
        .S_AXI_PB_wstrb(S_AXI_PB_wstrb),
        .S_AXI_PB_wvalid(S_AXI_PB_wvalid),
        .axis_out_tdata(axis_pb_out_tdata),
        .axis_out_tkeep(axis_pb_out_tkeep),
        .axis_out_tlast(axis_pb_out_tlast),
        .axis_out_tready(axis_pb_out_tready),
        .axis_out_tvalid(axis_pb_out_tvalid),
        .cmac_clk(cmac_clk),
        .pb_mux_sel(pb_mux_sel),
        .sys_clk(sys_clk),
        .sys_resetn(resetn));
endmodule

module channel_1_imp_1R4OFYV
   (M_AXI_PCI_araddr,
    M_AXI_PCI_arburst,
    M_AXI_PCI_arcache,
    M_AXI_PCI_arid,
    M_AXI_PCI_arlen,
    M_AXI_PCI_arlock,
    M_AXI_PCI_arprot,
    M_AXI_PCI_arqos,
    M_AXI_PCI_arready,
    M_AXI_PCI_arsize,
    M_AXI_PCI_arvalid,
    M_AXI_PCI_awaddr,
    M_AXI_PCI_awburst,
    M_AXI_PCI_awcache,
    M_AXI_PCI_awid,
    M_AXI_PCI_awlen,
    M_AXI_PCI_awlock,
    M_AXI_PCI_awprot,
    M_AXI_PCI_awqos,
    M_AXI_PCI_awready,
    M_AXI_PCI_awsize,
    M_AXI_PCI_awvalid,
    M_AXI_PCI_bid,
    M_AXI_PCI_bready,
    M_AXI_PCI_bresp,
    M_AXI_PCI_bvalid,
    M_AXI_PCI_rdata,
    M_AXI_PCI_rid,
    M_AXI_PCI_rlast,
    M_AXI_PCI_rready,
    M_AXI_PCI_rresp,
    M_AXI_PCI_rvalid,
    M_AXI_PCI_wdata,
    M_AXI_PCI_wlast,
    M_AXI_PCI_wready,
    M_AXI_PCI_wstrb,
    M_AXI_PCI_wvalid,
    PCI_AXI_araddr,
    PCI_AXI_arburst,
    PCI_AXI_arcache,
    PCI_AXI_arid,
    PCI_AXI_arlen,
    PCI_AXI_arlock,
    PCI_AXI_arprot,
    PCI_AXI_arqos,
    PCI_AXI_arready,
    PCI_AXI_arsize,
    PCI_AXI_arvalid,
    PCI_AXI_awaddr,
    PCI_AXI_awburst,
    PCI_AXI_awcache,
    PCI_AXI_awid,
    PCI_AXI_awlen,
    PCI_AXI_awlock,
    PCI_AXI_awprot,
    PCI_AXI_awqos,
    PCI_AXI_awready,
    PCI_AXI_awsize,
    PCI_AXI_awvalid,
    PCI_AXI_bready,
    PCI_AXI_bresp,
    PCI_AXI_bvalid,
    PCI_AXI_rdata,
    PCI_AXI_rlast,
    PCI_AXI_rready,
    PCI_AXI_rresp,
    PCI_AXI_rvalid,
    PCI_AXI_wdata,
    PCI_AXI_wlast,
    PCI_AXI_wready,
    PCI_AXI_wstrb,
    PCI_AXI_wvalid,
    S_AXI_CTL_araddr,
    S_AXI_CTL_arprot,
    S_AXI_CTL_arready,
    S_AXI_CTL_arvalid,
    S_AXI_CTL_awaddr,
    S_AXI_CTL_awprot,
    S_AXI_CTL_awready,
    S_AXI_CTL_awvalid,
    S_AXI_CTL_bready,
    S_AXI_CTL_bresp,
    S_AXI_CTL_bvalid,
    S_AXI_CTL_rdata,
    S_AXI_CTL_rready,
    S_AXI_CTL_rresp,
    S_AXI_CTL_rvalid,
    S_AXI_CTL_wdata,
    S_AXI_CTL_wready,
    S_AXI_CTL_wstrb,
    S_AXI_CTL_wvalid,
    S_AXI_PB_araddr,
    S_AXI_PB_arprot,
    S_AXI_PB_arready,
    S_AXI_PB_arvalid,
    S_AXI_PB_awaddr,
    S_AXI_PB_awprot,
    S_AXI_PB_awready,
    S_AXI_PB_awvalid,
    S_AXI_PB_bready,
    S_AXI_PB_bresp,
    S_AXI_PB_bvalid,
    S_AXI_PB_rdata,
    S_AXI_PB_rready,
    S_AXI_PB_rresp,
    S_AXI_PB_rvalid,
    S_AXI_PB_wdata,
    S_AXI_PB_wready,
    S_AXI_PB_wstrb,
    S_AXI_PB_wvalid,
    async_link_status,
    axis_in_tdata,
    axis_in_tkeep,
    axis_in_tlast,
    axis_in_tvalid,
    axis_pb_out_tdata,
    axis_pb_out_tkeep,
    axis_pb_out_tlast,
    axis_pb_out_tready,
    axis_pb_out_tvalid,
    axis_pg_out_tdata,
    axis_pg_out_tkeep,
    axis_pg_out_tlast,
    axis_pg_out_tready,
    axis_pg_out_tvalid,
    cmac_clk,
    hbm_cattrip,
    hbm_refclk_clk_n,
    hbm_refclk_clk_p,
    pb_mux_sel,
    resetn,
    sys_clk);
  output [63:0]M_AXI_PCI_araddr;
  output [1:0]M_AXI_PCI_arburst;
  output [3:0]M_AXI_PCI_arcache;
  output [1:0]M_AXI_PCI_arid;
  output [7:0]M_AXI_PCI_arlen;
  output M_AXI_PCI_arlock;
  output [2:0]M_AXI_PCI_arprot;
  output [3:0]M_AXI_PCI_arqos;
  input M_AXI_PCI_arready;
  output [2:0]M_AXI_PCI_arsize;
  output M_AXI_PCI_arvalid;
  output [63:0]M_AXI_PCI_awaddr;
  output [1:0]M_AXI_PCI_awburst;
  output [3:0]M_AXI_PCI_awcache;
  output [1:0]M_AXI_PCI_awid;
  output [7:0]M_AXI_PCI_awlen;
  output M_AXI_PCI_awlock;
  output [2:0]M_AXI_PCI_awprot;
  output [3:0]M_AXI_PCI_awqos;
  input M_AXI_PCI_awready;
  output [2:0]M_AXI_PCI_awsize;
  output M_AXI_PCI_awvalid;
  input [1:0]M_AXI_PCI_bid;
  output M_AXI_PCI_bready;
  input [1:0]M_AXI_PCI_bresp;
  input M_AXI_PCI_bvalid;
  input [511:0]M_AXI_PCI_rdata;
  input [1:0]M_AXI_PCI_rid;
  input M_AXI_PCI_rlast;
  output M_AXI_PCI_rready;
  input [1:0]M_AXI_PCI_rresp;
  input M_AXI_PCI_rvalid;
  output [511:0]M_AXI_PCI_wdata;
  output M_AXI_PCI_wlast;
  input M_AXI_PCI_wready;
  output [63:0]M_AXI_PCI_wstrb;
  output M_AXI_PCI_wvalid;
  output [63:0]PCI_AXI_araddr;
  output [1:0]PCI_AXI_arburst;
  output [3:0]PCI_AXI_arcache;
  output [3:0]PCI_AXI_arid;
  output [7:0]PCI_AXI_arlen;
  output PCI_AXI_arlock;
  output [2:0]PCI_AXI_arprot;
  output [3:0]PCI_AXI_arqos;
  input PCI_AXI_arready;
  output [2:0]PCI_AXI_arsize;
  output PCI_AXI_arvalid;
  output [63:0]PCI_AXI_awaddr;
  output [1:0]PCI_AXI_awburst;
  output [3:0]PCI_AXI_awcache;
  output [3:0]PCI_AXI_awid;
  output [7:0]PCI_AXI_awlen;
  output PCI_AXI_awlock;
  output [2:0]PCI_AXI_awprot;
  output [3:0]PCI_AXI_awqos;
  input PCI_AXI_awready;
  output [2:0]PCI_AXI_awsize;
  output PCI_AXI_awvalid;
  output PCI_AXI_bready;
  input [1:0]PCI_AXI_bresp;
  input PCI_AXI_bvalid;
  input [511:0]PCI_AXI_rdata;
  input PCI_AXI_rlast;
  output PCI_AXI_rready;
  input [1:0]PCI_AXI_rresp;
  input PCI_AXI_rvalid;
  output [511:0]PCI_AXI_wdata;
  output PCI_AXI_wlast;
  input PCI_AXI_wready;
  output [63:0]PCI_AXI_wstrb;
  output PCI_AXI_wvalid;
  input [7:0]S_AXI_CTL_araddr;
  input [2:0]S_AXI_CTL_arprot;
  output S_AXI_CTL_arready;
  input S_AXI_CTL_arvalid;
  input [7:0]S_AXI_CTL_awaddr;
  input [2:0]S_AXI_CTL_awprot;
  output S_AXI_CTL_awready;
  input S_AXI_CTL_awvalid;
  input S_AXI_CTL_bready;
  output [1:0]S_AXI_CTL_bresp;
  output S_AXI_CTL_bvalid;
  output [31:0]S_AXI_CTL_rdata;
  input S_AXI_CTL_rready;
  output [1:0]S_AXI_CTL_rresp;
  output S_AXI_CTL_rvalid;
  input [31:0]S_AXI_CTL_wdata;
  output S_AXI_CTL_wready;
  input [3:0]S_AXI_CTL_wstrb;
  input S_AXI_CTL_wvalid;
  input [7:0]S_AXI_PB_araddr;
  input [2:0]S_AXI_PB_arprot;
  output S_AXI_PB_arready;
  input S_AXI_PB_arvalid;
  input [7:0]S_AXI_PB_awaddr;
  input [2:0]S_AXI_PB_awprot;
  output S_AXI_PB_awready;
  input S_AXI_PB_awvalid;
  input S_AXI_PB_bready;
  output [1:0]S_AXI_PB_bresp;
  output S_AXI_PB_bvalid;
  output [31:0]S_AXI_PB_rdata;
  input S_AXI_PB_rready;
  output [1:0]S_AXI_PB_rresp;
  output S_AXI_PB_rvalid;
  input [31:0]S_AXI_PB_wdata;
  output S_AXI_PB_wready;
  input [3:0]S_AXI_PB_wstrb;
  input S_AXI_PB_wvalid;
  input [1:0]async_link_status;
  input [511:0]axis_in_tdata;
  input [63:0]axis_in_tkeep;
  input axis_in_tlast;
  input axis_in_tvalid;
  output [511:0]axis_pb_out_tdata;
  output [63:0]axis_pb_out_tkeep;
  output axis_pb_out_tlast;
  input axis_pb_out_tready;
  output axis_pb_out_tvalid;
  output [511:0]axis_pg_out_tdata;
  output [63:0]axis_pg_out_tkeep;
  output axis_pg_out_tlast;
  input axis_pg_out_tready;
  output axis_pg_out_tvalid;
  input cmac_clk;
  output hbm_cattrip;
  input [0:0]hbm_refclk_clk_n;
  input [0:0]hbm_refclk_clk_p;
  output pb_mux_sel;
  input resetn;
  input sys_clk;

  wire [63:0]M_AXI_PCI_araddr;
  wire [1:0]M_AXI_PCI_arburst;
  wire [3:0]M_AXI_PCI_arcache;
  wire [1:0]M_AXI_PCI_arid;
  wire [7:0]M_AXI_PCI_arlen;
  wire M_AXI_PCI_arlock;
  wire [2:0]M_AXI_PCI_arprot;
  wire [3:0]M_AXI_PCI_arqos;
  wire M_AXI_PCI_arready;
  wire [2:0]M_AXI_PCI_arsize;
  wire M_AXI_PCI_arvalid;
  wire [63:0]M_AXI_PCI_awaddr;
  wire [1:0]M_AXI_PCI_awburst;
  wire [3:0]M_AXI_PCI_awcache;
  wire [1:0]M_AXI_PCI_awid;
  wire [7:0]M_AXI_PCI_awlen;
  wire M_AXI_PCI_awlock;
  wire [2:0]M_AXI_PCI_awprot;
  wire [3:0]M_AXI_PCI_awqos;
  wire M_AXI_PCI_awready;
  wire [2:0]M_AXI_PCI_awsize;
  wire M_AXI_PCI_awvalid;
  wire [1:0]M_AXI_PCI_bid;
  wire M_AXI_PCI_bready;
  wire [1:0]M_AXI_PCI_bresp;
  wire M_AXI_PCI_bvalid;
  wire [511:0]M_AXI_PCI_rdata;
  wire [1:0]M_AXI_PCI_rid;
  wire M_AXI_PCI_rlast;
  wire M_AXI_PCI_rready;
  wire [1:0]M_AXI_PCI_rresp;
  wire M_AXI_PCI_rvalid;
  wire [511:0]M_AXI_PCI_wdata;
  wire M_AXI_PCI_wlast;
  wire M_AXI_PCI_wready;
  wire [63:0]M_AXI_PCI_wstrb;
  wire M_AXI_PCI_wvalid;
  wire [63:0]PCI_AXI_araddr;
  wire [1:0]PCI_AXI_arburst;
  wire [3:0]PCI_AXI_arcache;
  wire [3:0]PCI_AXI_arid;
  wire [7:0]PCI_AXI_arlen;
  wire PCI_AXI_arlock;
  wire [2:0]PCI_AXI_arprot;
  wire [3:0]PCI_AXI_arqos;
  wire PCI_AXI_arready;
  wire [2:0]PCI_AXI_arsize;
  wire PCI_AXI_arvalid;
  wire [63:0]PCI_AXI_awaddr;
  wire [1:0]PCI_AXI_awburst;
  wire [3:0]PCI_AXI_awcache;
  wire [3:0]PCI_AXI_awid;
  wire [7:0]PCI_AXI_awlen;
  wire PCI_AXI_awlock;
  wire [2:0]PCI_AXI_awprot;
  wire [3:0]PCI_AXI_awqos;
  wire PCI_AXI_awready;
  wire [2:0]PCI_AXI_awsize;
  wire PCI_AXI_awvalid;
  wire PCI_AXI_bready;
  wire [1:0]PCI_AXI_bresp;
  wire PCI_AXI_bvalid;
  wire [511:0]PCI_AXI_rdata;
  wire PCI_AXI_rlast;
  wire PCI_AXI_rready;
  wire [1:0]PCI_AXI_rresp;
  wire PCI_AXI_rvalid;
  wire [511:0]PCI_AXI_wdata;
  wire PCI_AXI_wlast;
  wire PCI_AXI_wready;
  wire [63:0]PCI_AXI_wstrb;
  wire PCI_AXI_wvalid;
  wire [7:0]S_AXI_CTL_araddr;
  wire [2:0]S_AXI_CTL_arprot;
  wire S_AXI_CTL_arready;
  wire S_AXI_CTL_arvalid;
  wire [7:0]S_AXI_CTL_awaddr;
  wire [2:0]S_AXI_CTL_awprot;
  wire S_AXI_CTL_awready;
  wire S_AXI_CTL_awvalid;
  wire S_AXI_CTL_bready;
  wire [1:0]S_AXI_CTL_bresp;
  wire S_AXI_CTL_bvalid;
  wire [31:0]S_AXI_CTL_rdata;
  wire S_AXI_CTL_rready;
  wire [1:0]S_AXI_CTL_rresp;
  wire S_AXI_CTL_rvalid;
  wire [31:0]S_AXI_CTL_wdata;
  wire S_AXI_CTL_wready;
  wire [3:0]S_AXI_CTL_wstrb;
  wire S_AXI_CTL_wvalid;
  wire [7:0]S_AXI_PB_araddr;
  wire [2:0]S_AXI_PB_arprot;
  wire S_AXI_PB_arready;
  wire S_AXI_PB_arvalid;
  wire [7:0]S_AXI_PB_awaddr;
  wire [2:0]S_AXI_PB_awprot;
  wire S_AXI_PB_awready;
  wire S_AXI_PB_awvalid;
  wire S_AXI_PB_bready;
  wire [1:0]S_AXI_PB_bresp;
  wire S_AXI_PB_bvalid;
  wire [31:0]S_AXI_PB_rdata;
  wire S_AXI_PB_rready;
  wire [1:0]S_AXI_PB_rresp;
  wire S_AXI_PB_rvalid;
  wire [31:0]S_AXI_PB_wdata;
  wire S_AXI_PB_wready;
  wire [3:0]S_AXI_PB_wstrb;
  wire S_AXI_PB_wvalid;
  wire [1:0]async_link_status;
  wire [511:0]axis_in_tdata;
  wire [63:0]axis_in_tkeep;
  wire axis_in_tlast;
  wire axis_in_tvalid;
  wire [511:0]axis_pb_out_tdata;
  wire [63:0]axis_pb_out_tkeep;
  wire axis_pb_out_tlast;
  wire axis_pb_out_tready;
  wire axis_pb_out_tvalid;
  wire [511:0]axis_pg_out_tdata;
  wire [63:0]axis_pg_out_tkeep;
  wire axis_pg_out_tlast;
  wire axis_pg_out_tready;
  wire axis_pg_out_tvalid;
  wire cmac_clk;
  wire [31:0]control_copy_blocks;
  wire control_copy_to_host_stb;
  wire control_enable;
  wire [63:0]control_host_addr;
  wire control_resetn_out;
  wire [31:0]control_send_count;
  wire [15:0]control_send_size;
  wire control_send_stb;
  wire [31:0]datapath_blocks_captured;
  wire datapath_copy_idle;
  wire datapath_done;
  wire [6:0]datapath_hbm_temp;
  wire [31:0]datapath_packets_captured;
  wire hbm_cattrip;
  wire [0:0]hbm_refclk_clk_n;
  wire [0:0]hbm_refclk_clk_p;
  wire packet_gen_0_busy;
  wire pb_mux_sel;
  wire resetn;
  wire sys_clk;

  top_level_control_1 control
       (.S_AXI_ARADDR(S_AXI_CTL_araddr),
        .S_AXI_ARPROT(S_AXI_CTL_arprot),
        .S_AXI_ARREADY(S_AXI_CTL_arready),
        .S_AXI_ARVALID(S_AXI_CTL_arvalid),
        .S_AXI_AWADDR(S_AXI_CTL_awaddr),
        .S_AXI_AWPROT(S_AXI_CTL_awprot),
        .S_AXI_AWREADY(S_AXI_CTL_awready),
        .S_AXI_AWVALID(S_AXI_CTL_awvalid),
        .S_AXI_BREADY(S_AXI_CTL_bready),
        .S_AXI_BRESP(S_AXI_CTL_bresp),
        .S_AXI_BVALID(S_AXI_CTL_bvalid),
        .S_AXI_RDATA(S_AXI_CTL_rdata),
        .S_AXI_RREADY(S_AXI_CTL_rready),
        .S_AXI_RRESP(S_AXI_CTL_rresp),
        .S_AXI_RVALID(S_AXI_CTL_rvalid),
        .S_AXI_WDATA(S_AXI_CTL_wdata),
        .S_AXI_WREADY(S_AXI_CTL_wready),
        .S_AXI_WSTRB(S_AXI_CTL_wstrb),
        .S_AXI_WVALID(S_AXI_CTL_wvalid),
        .async_block_count(datapath_blocks_captured),
        .async_capture_complete(datapath_done),
        .async_hbm_temp(datapath_hbm_temp),
        .async_link_status(async_link_status),
        .async_packet_count(datapath_packets_captured),
        .clk(sys_clk),
        .copy_blocks(control_copy_blocks),
        .copy_complete(datapath_copy_idle),
        .copy_to_host_stb(control_copy_to_host_stb),
        .enable(control_enable),
        .host_addr(control_host_addr),
        .resetn(resetn),
        .resetn_out(control_resetn_out),
        .send_busy(packet_gen_0_busy),
        .send_count(control_send_count),
        .send_size(control_send_size),
        .send_stb(control_send_stb));
  datapath_imp_BKUTWQ datapath
       (.PCI_AXI_araddr(PCI_AXI_araddr),
        .PCI_AXI_arburst(PCI_AXI_arburst),
        .PCI_AXI_arcache(PCI_AXI_arcache),
        .PCI_AXI_arid(PCI_AXI_arid),
        .PCI_AXI_arlen(PCI_AXI_arlen),
        .PCI_AXI_arlock(PCI_AXI_arlock),
        .PCI_AXI_arprot(PCI_AXI_arprot),
        .PCI_AXI_arqos(PCI_AXI_arqos),
        .PCI_AXI_arready(PCI_AXI_arready),
        .PCI_AXI_arsize(PCI_AXI_arsize),
        .PCI_AXI_arvalid(PCI_AXI_arvalid),
        .PCI_AXI_awaddr(PCI_AXI_awaddr),
        .PCI_AXI_awburst(PCI_AXI_awburst),
        .PCI_AXI_awcache(PCI_AXI_awcache),
        .PCI_AXI_awid(PCI_AXI_awid),
        .PCI_AXI_awlen(PCI_AXI_awlen),
        .PCI_AXI_awlock(PCI_AXI_awlock),
        .PCI_AXI_awprot(PCI_AXI_awprot),
        .PCI_AXI_awqos(PCI_AXI_awqos),
        .PCI_AXI_awready(PCI_AXI_awready),
        .PCI_AXI_awsize(PCI_AXI_awsize),
        .PCI_AXI_awvalid(PCI_AXI_awvalid),
        .PCI_AXI_bready(PCI_AXI_bready),
        .PCI_AXI_bresp(PCI_AXI_bresp),
        .PCI_AXI_bvalid(PCI_AXI_bvalid),
        .PCI_AXI_rdata(PCI_AXI_rdata),
        .PCI_AXI_rlast(PCI_AXI_rlast),
        .PCI_AXI_rready(PCI_AXI_rready),
        .PCI_AXI_rresp(PCI_AXI_rresp),
        .PCI_AXI_rvalid(PCI_AXI_rvalid),
        .PCI_AXI_wdata(PCI_AXI_wdata),
        .PCI_AXI_wlast(PCI_AXI_wlast),
        .PCI_AXI_wready(PCI_AXI_wready),
        .PCI_AXI_wstrb(PCI_AXI_wstrb),
        .PCI_AXI_wvalid(PCI_AXI_wvalid),
        .axis_in_tdata(axis_in_tdata),
        .axis_in_tkeep(axis_in_tkeep),
        .axis_in_tlast(axis_in_tlast),
        .axis_in_tvalid(axis_in_tvalid),
        .block_count(control_copy_blocks),
        .blocks_captured(datapath_blocks_captured),
        .cmac_clk(cmac_clk),
        .copy_idle(datapath_copy_idle),
        .done(datapath_done),
        .enable(control_enable),
        .hbm_cattrip(hbm_cattrip),
        .hbm_refclk_clk_n(hbm_refclk_clk_n),
        .hbm_refclk_clk_p(hbm_refclk_clk_p),
        .hbm_temp(datapath_hbm_temp),
        .host_addr(control_host_addr),
        .packets_captured(datapath_packets_captured),
        .start_copy_stb(control_copy_to_host_stb),
        .sys_clk(sys_clk),
        .sys_resetn(control_resetn_out));
  top_level_packet_gen_1 packet_gen
       (.axis_out_tdata(axis_pg_out_tdata),
        .axis_out_tkeep(axis_pg_out_tkeep),
        .axis_out_tlast(axis_pg_out_tlast),
        .axis_out_tready(axis_pg_out_tready),
        .axis_out_tvalid(axis_pg_out_tvalid),
        .busy(packet_gen_0_busy),
        .clk(sys_clk),
        .packet_count(control_send_count),
        .packet_length(control_send_size),
        .resetn(resetn),
        .start_stb(control_send_stb));
  playback_imp_1PLRSXX playback
       (.M_AXI_PCI_araddr(M_AXI_PCI_araddr),
        .M_AXI_PCI_arburst(M_AXI_PCI_arburst),
        .M_AXI_PCI_arcache(M_AXI_PCI_arcache),
        .M_AXI_PCI_arid(M_AXI_PCI_arid),
        .M_AXI_PCI_arlen(M_AXI_PCI_arlen),
        .M_AXI_PCI_arlock(M_AXI_PCI_arlock),
        .M_AXI_PCI_arprot(M_AXI_PCI_arprot),
        .M_AXI_PCI_arqos(M_AXI_PCI_arqos),
        .M_AXI_PCI_arready(M_AXI_PCI_arready),
        .M_AXI_PCI_arsize(M_AXI_PCI_arsize),
        .M_AXI_PCI_arvalid(M_AXI_PCI_arvalid),
        .M_AXI_PCI_awaddr(M_AXI_PCI_awaddr),
        .M_AXI_PCI_awburst(M_AXI_PCI_awburst),
        .M_AXI_PCI_awcache(M_AXI_PCI_awcache),
        .M_AXI_PCI_awid(M_AXI_PCI_awid),
        .M_AXI_PCI_awlen(M_AXI_PCI_awlen),
        .M_AXI_PCI_awlock(M_AXI_PCI_awlock),
        .M_AXI_PCI_awprot(M_AXI_PCI_awprot),
        .M_AXI_PCI_awqos(M_AXI_PCI_awqos),
        .M_AXI_PCI_awready(M_AXI_PCI_awready),
        .M_AXI_PCI_awsize(M_AXI_PCI_awsize),
        .M_AXI_PCI_awvalid(M_AXI_PCI_awvalid),
        .M_AXI_PCI_bid(M_AXI_PCI_bid),
        .M_AXI_PCI_bready(M_AXI_PCI_bready),
        .M_AXI_PCI_bresp(M_AXI_PCI_bresp),
        .M_AXI_PCI_bvalid(M_AXI_PCI_bvalid),
        .M_AXI_PCI_rdata(M_AXI_PCI_rdata),
        .M_AXI_PCI_rid(M_AXI_PCI_rid),
        .M_AXI_PCI_rlast(M_AXI_PCI_rlast),
        .M_AXI_PCI_rready(M_AXI_PCI_rready),
        .M_AXI_PCI_rresp(M_AXI_PCI_rresp),
        .M_AXI_PCI_rvalid(M_AXI_PCI_rvalid),
        .M_AXI_PCI_wdata(M_AXI_PCI_wdata),
        .M_AXI_PCI_wlast(M_AXI_PCI_wlast),
        .M_AXI_PCI_wready(M_AXI_PCI_wready),
        .M_AXI_PCI_wstrb(M_AXI_PCI_wstrb),
        .M_AXI_PCI_wvalid(M_AXI_PCI_wvalid),
        .S_AXI_PB_araddr(S_AXI_PB_araddr),
        .S_AXI_PB_arprot(S_AXI_PB_arprot),
        .S_AXI_PB_arready(S_AXI_PB_arready),
        .S_AXI_PB_arvalid(S_AXI_PB_arvalid),
        .S_AXI_PB_awaddr(S_AXI_PB_awaddr),
        .S_AXI_PB_awprot(S_AXI_PB_awprot),
        .S_AXI_PB_awready(S_AXI_PB_awready),
        .S_AXI_PB_awvalid(S_AXI_PB_awvalid),
        .S_AXI_PB_bready(S_AXI_PB_bready),
        .S_AXI_PB_bresp(S_AXI_PB_bresp),
        .S_AXI_PB_bvalid(S_AXI_PB_bvalid),
        .S_AXI_PB_rdata(S_AXI_PB_rdata),
        .S_AXI_PB_rready(S_AXI_PB_rready),
        .S_AXI_PB_rresp(S_AXI_PB_rresp),
        .S_AXI_PB_rvalid(S_AXI_PB_rvalid),
        .S_AXI_PB_wdata(S_AXI_PB_wdata),
        .S_AXI_PB_wready(S_AXI_PB_wready),
        .S_AXI_PB_wstrb(S_AXI_PB_wstrb),
        .S_AXI_PB_wvalid(S_AXI_PB_wvalid),
        .axis_out_tdata(axis_pb_out_tdata),
        .axis_out_tkeep(axis_pb_out_tkeep),
        .axis_out_tlast(axis_pb_out_tlast),
        .axis_out_tready(axis_pb_out_tready),
        .axis_out_tvalid(axis_pb_out_tvalid),
        .cmac_clk(cmac_clk),
        .pb_mux_sel(pb_mux_sel),
        .sys_clk(sys_clk),
        .sys_resetn(resetn));
endmodule

module copy_to_host_imp_V5JWLQ
   (HBM_AXI_araddr,
    HBM_AXI_arburst,
    HBM_AXI_arcache,
    HBM_AXI_arid,
    HBM_AXI_arlen,
    HBM_AXI_arlock,
    HBM_AXI_arprot,
    HBM_AXI_arqos,
    HBM_AXI_arready,
    HBM_AXI_arsize,
    HBM_AXI_arvalid,
    HBM_AXI_awaddr,
    HBM_AXI_awburst,
    HBM_AXI_awcache,
    HBM_AXI_awid,
    HBM_AXI_awlen,
    HBM_AXI_awlock,
    HBM_AXI_awprot,
    HBM_AXI_awqos,
    HBM_AXI_awready,
    HBM_AXI_awsize,
    HBM_AXI_awvalid,
    HBM_AXI_bready,
    HBM_AXI_bresp,
    HBM_AXI_bvalid,
    HBM_AXI_rdata,
    HBM_AXI_rlast,
    HBM_AXI_rready,
    HBM_AXI_rresp,
    HBM_AXI_rvalid,
    HBM_AXI_wdata,
    HBM_AXI_wlast,
    HBM_AXI_wready,
    HBM_AXI_wstrb,
    HBM_AXI_wvalid,
    PCI_AXI_araddr,
    PCI_AXI_arburst,
    PCI_AXI_arcache,
    PCI_AXI_arid,
    PCI_AXI_arlen,
    PCI_AXI_arlock,
    PCI_AXI_arprot,
    PCI_AXI_arqos,
    PCI_AXI_arready,
    PCI_AXI_arsize,
    PCI_AXI_arvalid,
    PCI_AXI_awaddr,
    PCI_AXI_awburst,
    PCI_AXI_awcache,
    PCI_AXI_awid,
    PCI_AXI_awlen,
    PCI_AXI_awlock,
    PCI_AXI_awprot,
    PCI_AXI_awqos,
    PCI_AXI_awready,
    PCI_AXI_awsize,
    PCI_AXI_awvalid,
    PCI_AXI_bready,
    PCI_AXI_bresp,
    PCI_AXI_bvalid,
    PCI_AXI_rdata,
    PCI_AXI_rlast,
    PCI_AXI_rready,
    PCI_AXI_rresp,
    PCI_AXI_rvalid,
    PCI_AXI_wdata,
    PCI_AXI_wlast,
    PCI_AXI_wready,
    PCI_AXI_wstrb,
    PCI_AXI_wvalid,
    block_count,
    copy_idle,
    host_addr,
    start_copy_stb,
    sys_clk,
    sys_resetn);
  output [63:0]HBM_AXI_araddr;
  output [1:0]HBM_AXI_arburst;
  output [3:0]HBM_AXI_arcache;
  output [3:0]HBM_AXI_arid;
  output [7:0]HBM_AXI_arlen;
  output HBM_AXI_arlock;
  output [2:0]HBM_AXI_arprot;
  output [3:0]HBM_AXI_arqos;
  input HBM_AXI_arready;
  output [2:0]HBM_AXI_arsize;
  output HBM_AXI_arvalid;
  output [63:0]HBM_AXI_awaddr;
  output [1:0]HBM_AXI_awburst;
  output [3:0]HBM_AXI_awcache;
  output [3:0]HBM_AXI_awid;
  output [7:0]HBM_AXI_awlen;
  output HBM_AXI_awlock;
  output [2:0]HBM_AXI_awprot;
  output [3:0]HBM_AXI_awqos;
  input HBM_AXI_awready;
  output [2:0]HBM_AXI_awsize;
  output HBM_AXI_awvalid;
  output HBM_AXI_bready;
  input [1:0]HBM_AXI_bresp;
  input HBM_AXI_bvalid;
  input [511:0]HBM_AXI_rdata;
  input HBM_AXI_rlast;
  output HBM_AXI_rready;
  input [1:0]HBM_AXI_rresp;
  input HBM_AXI_rvalid;
  output [511:0]HBM_AXI_wdata;
  output HBM_AXI_wlast;
  input HBM_AXI_wready;
  output [63:0]HBM_AXI_wstrb;
  output HBM_AXI_wvalid;
  output [63:0]PCI_AXI_araddr;
  output [1:0]PCI_AXI_arburst;
  output [3:0]PCI_AXI_arcache;
  output [3:0]PCI_AXI_arid;
  output [7:0]PCI_AXI_arlen;
  output PCI_AXI_arlock;
  output [2:0]PCI_AXI_arprot;
  output [3:0]PCI_AXI_arqos;
  input PCI_AXI_arready;
  output [2:0]PCI_AXI_arsize;
  output PCI_AXI_arvalid;
  output [63:0]PCI_AXI_awaddr;
  output [1:0]PCI_AXI_awburst;
  output [3:0]PCI_AXI_awcache;
  output [3:0]PCI_AXI_awid;
  output [7:0]PCI_AXI_awlen;
  output PCI_AXI_awlock;
  output [2:0]PCI_AXI_awprot;
  output [3:0]PCI_AXI_awqos;
  input PCI_AXI_awready;
  output [2:0]PCI_AXI_awsize;
  output PCI_AXI_awvalid;
  output PCI_AXI_bready;
  input [1:0]PCI_AXI_bresp;
  input PCI_AXI_bvalid;
  input [511:0]PCI_AXI_rdata;
  input PCI_AXI_rlast;
  output PCI_AXI_rready;
  input [1:0]PCI_AXI_rresp;
  input PCI_AXI_rvalid;
  output [511:0]PCI_AXI_wdata;
  output PCI_AXI_wlast;
  input PCI_AXI_wready;
  output [63:0]PCI_AXI_wstrb;
  output PCI_AXI_wvalid;
  input [31:0]block_count;
  output copy_idle;
  input [63:0]host_addr;
  input start_copy_stb;
  input sys_clk;
  input sys_resetn;

  wire [63:0]HBM_AXI_araddr;
  wire [1:0]HBM_AXI_arburst;
  wire [3:0]HBM_AXI_arcache;
  wire [3:0]HBM_AXI_arid;
  wire [7:0]HBM_AXI_arlen;
  wire HBM_AXI_arlock;
  wire [2:0]HBM_AXI_arprot;
  wire [3:0]HBM_AXI_arqos;
  wire HBM_AXI_arready;
  wire [2:0]HBM_AXI_arsize;
  wire HBM_AXI_arvalid;
  wire [63:0]HBM_AXI_awaddr;
  wire [1:0]HBM_AXI_awburst;
  wire [3:0]HBM_AXI_awcache;
  wire [3:0]HBM_AXI_awid;
  wire [7:0]HBM_AXI_awlen;
  wire HBM_AXI_awlock;
  wire [2:0]HBM_AXI_awprot;
  wire [3:0]HBM_AXI_awqos;
  wire HBM_AXI_awready;
  wire [2:0]HBM_AXI_awsize;
  wire HBM_AXI_awvalid;
  wire HBM_AXI_bready;
  wire [1:0]HBM_AXI_bresp;
  wire HBM_AXI_bvalid;
  wire [511:0]HBM_AXI_rdata;
  wire HBM_AXI_rlast;
  wire HBM_AXI_rready;
  wire [1:0]HBM_AXI_rresp;
  wire HBM_AXI_rvalid;
  wire [511:0]HBM_AXI_wdata;
  wire HBM_AXI_wlast;
  wire HBM_AXI_wready;
  wire [63:0]HBM_AXI_wstrb;
  wire HBM_AXI_wvalid;
  wire [63:0]PCI_AXI_araddr;
  wire [1:0]PCI_AXI_arburst;
  wire [3:0]PCI_AXI_arcache;
  wire [3:0]PCI_AXI_arid;
  wire [7:0]PCI_AXI_arlen;
  wire PCI_AXI_arlock;
  wire [2:0]PCI_AXI_arprot;
  wire [3:0]PCI_AXI_arqos;
  wire PCI_AXI_arready;
  wire [2:0]PCI_AXI_arsize;
  wire PCI_AXI_arvalid;
  wire [63:0]PCI_AXI_awaddr;
  wire [1:0]PCI_AXI_awburst;
  wire [3:0]PCI_AXI_awcache;
  wire [3:0]PCI_AXI_awid;
  wire [7:0]PCI_AXI_awlen;
  wire PCI_AXI_awlock;
  wire [2:0]PCI_AXI_awprot;
  wire [3:0]PCI_AXI_awqos;
  wire PCI_AXI_awready;
  wire [2:0]PCI_AXI_awsize;
  wire PCI_AXI_awvalid;
  wire PCI_AXI_bready;
  wire [1:0]PCI_AXI_bresp;
  wire PCI_AXI_bvalid;
  wire [511:0]PCI_AXI_rdata;
  wire PCI_AXI_rlast;
  wire PCI_AXI_rready;
  wire [1:0]PCI_AXI_rresp;
  wire PCI_AXI_rvalid;
  wire [511:0]PCI_AXI_wdata;
  wire PCI_AXI_wlast;
  wire PCI_AXI_wready;
  wire [63:0]PCI_AXI_wstrb;
  wire PCI_AXI_wvalid;
  wire [31:0]block_count;
  wire copy_idle;
  wire [12:0]copy_to_host_burst_size;
  wire [63:0]copy_to_host_byte_count;
  wire [63:0]copy_to_host_dst_address;
  wire [63:0]copy_to_host_src_address;
  wire copy_to_host_start_copy_stb;
  wire [63:0]host_addr;
  wire start_copy_stb;
  wire sys_clk;
  wire sys_resetn;

  top_level_copy_to_host_1 copy_to_host
       (.block_count(block_count),
        .burst_size(copy_to_host_burst_size),
        .byte_count(copy_to_host_byte_count),
        .clk(sys_clk),
        .dst_address(copy_to_host_dst_address),
        .host_addr(host_addr),
        .i_start_copy_stb(start_copy_stb),
        .src_address(copy_to_host_src_address),
        .start_copy_stb(copy_to_host_start_copy_stb));
  top_level_data_mover_1 data_mover
       (.DST_AXI_ARADDR(PCI_AXI_araddr),
        .DST_AXI_ARBURST(PCI_AXI_arburst),
        .DST_AXI_ARCACHE(PCI_AXI_arcache),
        .DST_AXI_ARID(PCI_AXI_arid),
        .DST_AXI_ARLEN(PCI_AXI_arlen),
        .DST_AXI_ARLOCK(PCI_AXI_arlock),
        .DST_AXI_ARPROT(PCI_AXI_arprot),
        .DST_AXI_ARQOS(PCI_AXI_arqos),
        .DST_AXI_ARREADY(PCI_AXI_arready),
        .DST_AXI_ARSIZE(PCI_AXI_arsize),
        .DST_AXI_ARVALID(PCI_AXI_arvalid),
        .DST_AXI_AWADDR(PCI_AXI_awaddr),
        .DST_AXI_AWBURST(PCI_AXI_awburst),
        .DST_AXI_AWCACHE(PCI_AXI_awcache),
        .DST_AXI_AWID(PCI_AXI_awid),
        .DST_AXI_AWLEN(PCI_AXI_awlen),
        .DST_AXI_AWLOCK(PCI_AXI_awlock),
        .DST_AXI_AWPROT(PCI_AXI_awprot),
        .DST_AXI_AWQOS(PCI_AXI_awqos),
        .DST_AXI_AWREADY(PCI_AXI_awready),
        .DST_AXI_AWSIZE(PCI_AXI_awsize),
        .DST_AXI_AWVALID(PCI_AXI_awvalid),
        .DST_AXI_BREADY(PCI_AXI_bready),
        .DST_AXI_BRESP(PCI_AXI_bresp),
        .DST_AXI_BVALID(PCI_AXI_bvalid),
        .DST_AXI_RDATA(PCI_AXI_rdata),
        .DST_AXI_RLAST(PCI_AXI_rlast),
        .DST_AXI_RREADY(PCI_AXI_rready),
        .DST_AXI_RRESP(PCI_AXI_rresp),
        .DST_AXI_RVALID(PCI_AXI_rvalid),
        .DST_AXI_WDATA(PCI_AXI_wdata),
        .DST_AXI_WLAST(PCI_AXI_wlast),
        .DST_AXI_WREADY(PCI_AXI_wready),
        .DST_AXI_WSTRB(PCI_AXI_wstrb),
        .DST_AXI_WVALID(PCI_AXI_wvalid),
        .SRC_AXI_ARADDR(HBM_AXI_araddr),
        .SRC_AXI_ARBURST(HBM_AXI_arburst),
        .SRC_AXI_ARCACHE(HBM_AXI_arcache),
        .SRC_AXI_ARID(HBM_AXI_arid),
        .SRC_AXI_ARLEN(HBM_AXI_arlen),
        .SRC_AXI_ARLOCK(HBM_AXI_arlock),
        .SRC_AXI_ARPROT(HBM_AXI_arprot),
        .SRC_AXI_ARQOS(HBM_AXI_arqos),
        .SRC_AXI_ARREADY(HBM_AXI_arready),
        .SRC_AXI_ARSIZE(HBM_AXI_arsize),
        .SRC_AXI_ARVALID(HBM_AXI_arvalid),
        .SRC_AXI_AWADDR(HBM_AXI_awaddr),
        .SRC_AXI_AWBURST(HBM_AXI_awburst),
        .SRC_AXI_AWCACHE(HBM_AXI_awcache),
        .SRC_AXI_AWID(HBM_AXI_awid),
        .SRC_AXI_AWLEN(HBM_AXI_awlen),
        .SRC_AXI_AWLOCK(HBM_AXI_awlock),
        .SRC_AXI_AWPROT(HBM_AXI_awprot),
        .SRC_AXI_AWQOS(HBM_AXI_awqos),
        .SRC_AXI_AWREADY(HBM_AXI_awready),
        .SRC_AXI_AWSIZE(HBM_AXI_awsize),
        .SRC_AXI_AWVALID(HBM_AXI_awvalid),
        .SRC_AXI_BREADY(HBM_AXI_bready),
        .SRC_AXI_BRESP(HBM_AXI_bresp),
        .SRC_AXI_BVALID(HBM_AXI_bvalid),
        .SRC_AXI_RDATA(HBM_AXI_rdata),
        .SRC_AXI_RLAST(HBM_AXI_rlast),
        .SRC_AXI_RREADY(HBM_AXI_rready),
        .SRC_AXI_RRESP(HBM_AXI_rresp),
        .SRC_AXI_RVALID(HBM_AXI_rvalid),
        .SRC_AXI_WDATA(HBM_AXI_wdata),
        .SRC_AXI_WLAST(HBM_AXI_wlast),
        .SRC_AXI_WREADY(HBM_AXI_wready),
        .SRC_AXI_WSTRB(HBM_AXI_wstrb),
        .SRC_AXI_WVALID(HBM_AXI_wvalid),
        .burst_size(copy_to_host_burst_size),
        .byte_count(copy_to_host_byte_count),
        .clk(sys_clk),
        .dst_address(copy_to_host_dst_address),
        .idle(copy_idle),
        .resetn(sys_resetn),
        .src_address(copy_to_host_src_address),
        .start(copy_to_host_start_copy_stb));
endmodule

module copy_to_host_imp_ZY8XGK
   (HBM_AXI_araddr,
    HBM_AXI_arburst,
    HBM_AXI_arcache,
    HBM_AXI_arid,
    HBM_AXI_arlen,
    HBM_AXI_arlock,
    HBM_AXI_arprot,
    HBM_AXI_arqos,
    HBM_AXI_arready,
    HBM_AXI_arsize,
    HBM_AXI_arvalid,
    HBM_AXI_awaddr,
    HBM_AXI_awburst,
    HBM_AXI_awcache,
    HBM_AXI_awid,
    HBM_AXI_awlen,
    HBM_AXI_awlock,
    HBM_AXI_awprot,
    HBM_AXI_awqos,
    HBM_AXI_awready,
    HBM_AXI_awsize,
    HBM_AXI_awvalid,
    HBM_AXI_bready,
    HBM_AXI_bresp,
    HBM_AXI_bvalid,
    HBM_AXI_rdata,
    HBM_AXI_rlast,
    HBM_AXI_rready,
    HBM_AXI_rresp,
    HBM_AXI_rvalid,
    HBM_AXI_wdata,
    HBM_AXI_wlast,
    HBM_AXI_wready,
    HBM_AXI_wstrb,
    HBM_AXI_wvalid,
    PCI_AXI_araddr,
    PCI_AXI_arburst,
    PCI_AXI_arcache,
    PCI_AXI_arid,
    PCI_AXI_arlen,
    PCI_AXI_arlock,
    PCI_AXI_arprot,
    PCI_AXI_arqos,
    PCI_AXI_arready,
    PCI_AXI_arsize,
    PCI_AXI_arvalid,
    PCI_AXI_awaddr,
    PCI_AXI_awburst,
    PCI_AXI_awcache,
    PCI_AXI_awid,
    PCI_AXI_awlen,
    PCI_AXI_awlock,
    PCI_AXI_awprot,
    PCI_AXI_awqos,
    PCI_AXI_awready,
    PCI_AXI_awsize,
    PCI_AXI_awvalid,
    PCI_AXI_bready,
    PCI_AXI_bresp,
    PCI_AXI_bvalid,
    PCI_AXI_rdata,
    PCI_AXI_rlast,
    PCI_AXI_rready,
    PCI_AXI_rresp,
    PCI_AXI_rvalid,
    PCI_AXI_wdata,
    PCI_AXI_wlast,
    PCI_AXI_wready,
    PCI_AXI_wstrb,
    PCI_AXI_wvalid,
    block_count,
    copy_idle,
    host_addr,
    start_copy_stb,
    sys_clk,
    sys_resetn);
  output [63:0]HBM_AXI_araddr;
  output [1:0]HBM_AXI_arburst;
  output [3:0]HBM_AXI_arcache;
  output [3:0]HBM_AXI_arid;
  output [7:0]HBM_AXI_arlen;
  output HBM_AXI_arlock;
  output [2:0]HBM_AXI_arprot;
  output [3:0]HBM_AXI_arqos;
  input HBM_AXI_arready;
  output [2:0]HBM_AXI_arsize;
  output HBM_AXI_arvalid;
  output [63:0]HBM_AXI_awaddr;
  output [1:0]HBM_AXI_awburst;
  output [3:0]HBM_AXI_awcache;
  output [3:0]HBM_AXI_awid;
  output [7:0]HBM_AXI_awlen;
  output HBM_AXI_awlock;
  output [2:0]HBM_AXI_awprot;
  output [3:0]HBM_AXI_awqos;
  input HBM_AXI_awready;
  output [2:0]HBM_AXI_awsize;
  output HBM_AXI_awvalid;
  output HBM_AXI_bready;
  input [1:0]HBM_AXI_bresp;
  input HBM_AXI_bvalid;
  input [511:0]HBM_AXI_rdata;
  input HBM_AXI_rlast;
  output HBM_AXI_rready;
  input [1:0]HBM_AXI_rresp;
  input HBM_AXI_rvalid;
  output [511:0]HBM_AXI_wdata;
  output HBM_AXI_wlast;
  input HBM_AXI_wready;
  output [63:0]HBM_AXI_wstrb;
  output HBM_AXI_wvalid;
  output [63:0]PCI_AXI_araddr;
  output [1:0]PCI_AXI_arburst;
  output [3:0]PCI_AXI_arcache;
  output [3:0]PCI_AXI_arid;
  output [7:0]PCI_AXI_arlen;
  output PCI_AXI_arlock;
  output [2:0]PCI_AXI_arprot;
  output [3:0]PCI_AXI_arqos;
  input PCI_AXI_arready;
  output [2:0]PCI_AXI_arsize;
  output PCI_AXI_arvalid;
  output [63:0]PCI_AXI_awaddr;
  output [1:0]PCI_AXI_awburst;
  output [3:0]PCI_AXI_awcache;
  output [3:0]PCI_AXI_awid;
  output [7:0]PCI_AXI_awlen;
  output PCI_AXI_awlock;
  output [2:0]PCI_AXI_awprot;
  output [3:0]PCI_AXI_awqos;
  input PCI_AXI_awready;
  output [2:0]PCI_AXI_awsize;
  output PCI_AXI_awvalid;
  output PCI_AXI_bready;
  input [1:0]PCI_AXI_bresp;
  input PCI_AXI_bvalid;
  input [511:0]PCI_AXI_rdata;
  input PCI_AXI_rlast;
  output PCI_AXI_rready;
  input [1:0]PCI_AXI_rresp;
  input PCI_AXI_rvalid;
  output [511:0]PCI_AXI_wdata;
  output PCI_AXI_wlast;
  input PCI_AXI_wready;
  output [63:0]PCI_AXI_wstrb;
  output PCI_AXI_wvalid;
  input [31:0]block_count;
  output copy_idle;
  input [63:0]host_addr;
  input start_copy_stb;
  input sys_clk;
  input sys_resetn;

  wire [63:0]HBM_AXI_araddr;
  wire [1:0]HBM_AXI_arburst;
  wire [3:0]HBM_AXI_arcache;
  wire [3:0]HBM_AXI_arid;
  wire [7:0]HBM_AXI_arlen;
  wire HBM_AXI_arlock;
  wire [2:0]HBM_AXI_arprot;
  wire [3:0]HBM_AXI_arqos;
  wire HBM_AXI_arready;
  wire [2:0]HBM_AXI_arsize;
  wire HBM_AXI_arvalid;
  wire [63:0]HBM_AXI_awaddr;
  wire [1:0]HBM_AXI_awburst;
  wire [3:0]HBM_AXI_awcache;
  wire [3:0]HBM_AXI_awid;
  wire [7:0]HBM_AXI_awlen;
  wire HBM_AXI_awlock;
  wire [2:0]HBM_AXI_awprot;
  wire [3:0]HBM_AXI_awqos;
  wire HBM_AXI_awready;
  wire [2:0]HBM_AXI_awsize;
  wire HBM_AXI_awvalid;
  wire HBM_AXI_bready;
  wire [1:0]HBM_AXI_bresp;
  wire HBM_AXI_bvalid;
  wire [511:0]HBM_AXI_rdata;
  wire HBM_AXI_rlast;
  wire HBM_AXI_rready;
  wire [1:0]HBM_AXI_rresp;
  wire HBM_AXI_rvalid;
  wire [511:0]HBM_AXI_wdata;
  wire HBM_AXI_wlast;
  wire HBM_AXI_wready;
  wire [63:0]HBM_AXI_wstrb;
  wire HBM_AXI_wvalid;
  wire [63:0]PCI_AXI_araddr;
  wire [1:0]PCI_AXI_arburst;
  wire [3:0]PCI_AXI_arcache;
  wire [3:0]PCI_AXI_arid;
  wire [7:0]PCI_AXI_arlen;
  wire PCI_AXI_arlock;
  wire [2:0]PCI_AXI_arprot;
  wire [3:0]PCI_AXI_arqos;
  wire PCI_AXI_arready;
  wire [2:0]PCI_AXI_arsize;
  wire PCI_AXI_arvalid;
  wire [63:0]PCI_AXI_awaddr;
  wire [1:0]PCI_AXI_awburst;
  wire [3:0]PCI_AXI_awcache;
  wire [3:0]PCI_AXI_awid;
  wire [7:0]PCI_AXI_awlen;
  wire PCI_AXI_awlock;
  wire [2:0]PCI_AXI_awprot;
  wire [3:0]PCI_AXI_awqos;
  wire PCI_AXI_awready;
  wire [2:0]PCI_AXI_awsize;
  wire PCI_AXI_awvalid;
  wire PCI_AXI_bready;
  wire [1:0]PCI_AXI_bresp;
  wire PCI_AXI_bvalid;
  wire [511:0]PCI_AXI_rdata;
  wire PCI_AXI_rlast;
  wire PCI_AXI_rready;
  wire [1:0]PCI_AXI_rresp;
  wire PCI_AXI_rvalid;
  wire [511:0]PCI_AXI_wdata;
  wire PCI_AXI_wlast;
  wire PCI_AXI_wready;
  wire [63:0]PCI_AXI_wstrb;
  wire PCI_AXI_wvalid;
  wire [31:0]block_count;
  wire copy_idle;
  wire [12:0]copy_to_host_burst_size;
  wire [63:0]copy_to_host_byte_count;
  wire [63:0]copy_to_host_dst_address;
  wire [63:0]copy_to_host_src_address;
  wire copy_to_host_start_copy_stb;
  wire [63:0]host_addr;
  wire start_copy_stb;
  wire sys_clk;
  wire sys_resetn;

  top_level_copy_to_host_0_0 copy_to_host
       (.block_count(block_count),
        .burst_size(copy_to_host_burst_size),
        .byte_count(copy_to_host_byte_count),
        .clk(sys_clk),
        .dst_address(copy_to_host_dst_address),
        .host_addr(host_addr),
        .i_start_copy_stb(start_copy_stb),
        .src_address(copy_to_host_src_address),
        .start_copy_stb(copy_to_host_start_copy_stb));
  top_level_data_mover_0_0 data_mover
       (.DST_AXI_ARADDR(PCI_AXI_araddr),
        .DST_AXI_ARBURST(PCI_AXI_arburst),
        .DST_AXI_ARCACHE(PCI_AXI_arcache),
        .DST_AXI_ARID(PCI_AXI_arid),
        .DST_AXI_ARLEN(PCI_AXI_arlen),
        .DST_AXI_ARLOCK(PCI_AXI_arlock),
        .DST_AXI_ARPROT(PCI_AXI_arprot),
        .DST_AXI_ARQOS(PCI_AXI_arqos),
        .DST_AXI_ARREADY(PCI_AXI_arready),
        .DST_AXI_ARSIZE(PCI_AXI_arsize),
        .DST_AXI_ARVALID(PCI_AXI_arvalid),
        .DST_AXI_AWADDR(PCI_AXI_awaddr),
        .DST_AXI_AWBURST(PCI_AXI_awburst),
        .DST_AXI_AWCACHE(PCI_AXI_awcache),
        .DST_AXI_AWID(PCI_AXI_awid),
        .DST_AXI_AWLEN(PCI_AXI_awlen),
        .DST_AXI_AWLOCK(PCI_AXI_awlock),
        .DST_AXI_AWPROT(PCI_AXI_awprot),
        .DST_AXI_AWQOS(PCI_AXI_awqos),
        .DST_AXI_AWREADY(PCI_AXI_awready),
        .DST_AXI_AWSIZE(PCI_AXI_awsize),
        .DST_AXI_AWVALID(PCI_AXI_awvalid),
        .DST_AXI_BREADY(PCI_AXI_bready),
        .DST_AXI_BRESP(PCI_AXI_bresp),
        .DST_AXI_BVALID(PCI_AXI_bvalid),
        .DST_AXI_RDATA(PCI_AXI_rdata),
        .DST_AXI_RLAST(PCI_AXI_rlast),
        .DST_AXI_RREADY(PCI_AXI_rready),
        .DST_AXI_RRESP(PCI_AXI_rresp),
        .DST_AXI_RVALID(PCI_AXI_rvalid),
        .DST_AXI_WDATA(PCI_AXI_wdata),
        .DST_AXI_WLAST(PCI_AXI_wlast),
        .DST_AXI_WREADY(PCI_AXI_wready),
        .DST_AXI_WSTRB(PCI_AXI_wstrb),
        .DST_AXI_WVALID(PCI_AXI_wvalid),
        .SRC_AXI_ARADDR(HBM_AXI_araddr),
        .SRC_AXI_ARBURST(HBM_AXI_arburst),
        .SRC_AXI_ARCACHE(HBM_AXI_arcache),
        .SRC_AXI_ARID(HBM_AXI_arid),
        .SRC_AXI_ARLEN(HBM_AXI_arlen),
        .SRC_AXI_ARLOCK(HBM_AXI_arlock),
        .SRC_AXI_ARPROT(HBM_AXI_arprot),
        .SRC_AXI_ARQOS(HBM_AXI_arqos),
        .SRC_AXI_ARREADY(HBM_AXI_arready),
        .SRC_AXI_ARSIZE(HBM_AXI_arsize),
        .SRC_AXI_ARVALID(HBM_AXI_arvalid),
        .SRC_AXI_AWADDR(HBM_AXI_awaddr),
        .SRC_AXI_AWBURST(HBM_AXI_awburst),
        .SRC_AXI_AWCACHE(HBM_AXI_awcache),
        .SRC_AXI_AWID(HBM_AXI_awid),
        .SRC_AXI_AWLEN(HBM_AXI_awlen),
        .SRC_AXI_AWLOCK(HBM_AXI_awlock),
        .SRC_AXI_AWPROT(HBM_AXI_awprot),
        .SRC_AXI_AWQOS(HBM_AXI_awqos),
        .SRC_AXI_AWREADY(HBM_AXI_awready),
        .SRC_AXI_AWSIZE(HBM_AXI_awsize),
        .SRC_AXI_AWVALID(HBM_AXI_awvalid),
        .SRC_AXI_BREADY(HBM_AXI_bready),
        .SRC_AXI_BRESP(HBM_AXI_bresp),
        .SRC_AXI_BVALID(HBM_AXI_bvalid),
        .SRC_AXI_RDATA(HBM_AXI_rdata),
        .SRC_AXI_RLAST(HBM_AXI_rlast),
        .SRC_AXI_RREADY(HBM_AXI_rready),
        .SRC_AXI_RRESP(HBM_AXI_rresp),
        .SRC_AXI_RVALID(HBM_AXI_rvalid),
        .SRC_AXI_WDATA(HBM_AXI_wdata),
        .SRC_AXI_WLAST(HBM_AXI_wlast),
        .SRC_AXI_WREADY(HBM_AXI_wready),
        .SRC_AXI_WSTRB(HBM_AXI_wstrb),
        .SRC_AXI_WVALID(HBM_AXI_wvalid),
        .burst_size(copy_to_host_burst_size),
        .byte_count(copy_to_host_byte_count),
        .clk(sys_clk),
        .dst_address(copy_to_host_dst_address),
        .idle(copy_idle),
        .resetn(sys_resetn),
        .src_address(copy_to_host_src_address),
        .start(copy_to_host_start_copy_stb));
endmodule

module datapath_imp_1YKLZG2
   (PCI_AXI_araddr,
    PCI_AXI_arburst,
    PCI_AXI_arcache,
    PCI_AXI_arid,
    PCI_AXI_arlen,
    PCI_AXI_arlock,
    PCI_AXI_arprot,
    PCI_AXI_arqos,
    PCI_AXI_arready,
    PCI_AXI_arsize,
    PCI_AXI_arvalid,
    PCI_AXI_awaddr,
    PCI_AXI_awburst,
    PCI_AXI_awcache,
    PCI_AXI_awid,
    PCI_AXI_awlen,
    PCI_AXI_awlock,
    PCI_AXI_awprot,
    PCI_AXI_awqos,
    PCI_AXI_awready,
    PCI_AXI_awsize,
    PCI_AXI_awvalid,
    PCI_AXI_bready,
    PCI_AXI_bresp,
    PCI_AXI_bvalid,
    PCI_AXI_rdata,
    PCI_AXI_rlast,
    PCI_AXI_rready,
    PCI_AXI_rresp,
    PCI_AXI_rvalid,
    PCI_AXI_wdata,
    PCI_AXI_wlast,
    PCI_AXI_wready,
    PCI_AXI_wstrb,
    PCI_AXI_wvalid,
    axis_in_tdata,
    axis_in_tkeep,
    axis_in_tlast,
    axis_in_tvalid,
    block_count,
    blocks_captured,
    cmac_clk,
    copy_idle,
    done,
    enable,
    hbm_cattrip,
    hbm_refclk_clk_n,
    hbm_refclk_clk_p,
    hbm_temp,
    host_addr,
    packets_captured,
    start_copy_stb,
    sys_clk,
    sys_resetn);
  output [63:0]PCI_AXI_araddr;
  output [1:0]PCI_AXI_arburst;
  output [3:0]PCI_AXI_arcache;
  output [3:0]PCI_AXI_arid;
  output [7:0]PCI_AXI_arlen;
  output PCI_AXI_arlock;
  output [2:0]PCI_AXI_arprot;
  output [3:0]PCI_AXI_arqos;
  input PCI_AXI_arready;
  output [2:0]PCI_AXI_arsize;
  output PCI_AXI_arvalid;
  output [63:0]PCI_AXI_awaddr;
  output [1:0]PCI_AXI_awburst;
  output [3:0]PCI_AXI_awcache;
  output [3:0]PCI_AXI_awid;
  output [7:0]PCI_AXI_awlen;
  output PCI_AXI_awlock;
  output [2:0]PCI_AXI_awprot;
  output [3:0]PCI_AXI_awqos;
  input PCI_AXI_awready;
  output [2:0]PCI_AXI_awsize;
  output PCI_AXI_awvalid;
  output PCI_AXI_bready;
  input [1:0]PCI_AXI_bresp;
  input PCI_AXI_bvalid;
  input [511:0]PCI_AXI_rdata;
  input PCI_AXI_rlast;
  output PCI_AXI_rready;
  input [1:0]PCI_AXI_rresp;
  input PCI_AXI_rvalid;
  output [511:0]PCI_AXI_wdata;
  output PCI_AXI_wlast;
  input PCI_AXI_wready;
  output [63:0]PCI_AXI_wstrb;
  output PCI_AXI_wvalid;
  input [511:0]axis_in_tdata;
  input [63:0]axis_in_tkeep;
  input axis_in_tlast;
  input axis_in_tvalid;
  input [31:0]block_count;
  output [31:0]blocks_captured;
  input cmac_clk;
  output copy_idle;
  output done;
  input [0:0]enable;
  output hbm_cattrip;
  input [0:0]hbm_refclk_clk_n;
  input [0:0]hbm_refclk_clk_p;
  output [6:0]hbm_temp;
  input [63:0]host_addr;
  output [31:0]packets_captured;
  input start_copy_stb;
  input sys_clk;
  input sys_resetn;

  wire [63:0]PCI_AXI_araddr;
  wire [1:0]PCI_AXI_arburst;
  wire [3:0]PCI_AXI_arcache;
  wire [3:0]PCI_AXI_arid;
  wire [7:0]PCI_AXI_arlen;
  wire PCI_AXI_arlock;
  wire [2:0]PCI_AXI_arprot;
  wire [3:0]PCI_AXI_arqos;
  wire PCI_AXI_arready;
  wire [2:0]PCI_AXI_arsize;
  wire PCI_AXI_arvalid;
  wire [63:0]PCI_AXI_awaddr;
  wire [1:0]PCI_AXI_awburst;
  wire [3:0]PCI_AXI_awcache;
  wire [3:0]PCI_AXI_awid;
  wire [7:0]PCI_AXI_awlen;
  wire PCI_AXI_awlock;
  wire [2:0]PCI_AXI_awprot;
  wire [3:0]PCI_AXI_awqos;
  wire PCI_AXI_awready;
  wire [2:0]PCI_AXI_awsize;
  wire PCI_AXI_awvalid;
  wire PCI_AXI_bready;
  wire [1:0]PCI_AXI_bresp;
  wire PCI_AXI_bvalid;
  wire [511:0]PCI_AXI_rdata;
  wire PCI_AXI_rlast;
  wire PCI_AXI_rready;
  wire [1:0]PCI_AXI_rresp;
  wire PCI_AXI_rvalid;
  wire [511:0]PCI_AXI_wdata;
  wire PCI_AXI_wlast;
  wire PCI_AXI_wready;
  wire [63:0]PCI_AXI_wstrb;
  wire PCI_AXI_wvalid;
  wire [63:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [1:0]S00_AXI_1_ARID;
  wire [7:0]S00_AXI_1_ARLEN;
  wire S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [63:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [1:0]S00_AXI_1_AWID;
  wire [7:0]S00_AXI_1_AWLEN;
  wire S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire S00_AXI_1_AWVALID;
  wire [1:0]S00_AXI_1_BID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [511:0]S00_AXI_1_RDATA;
  wire [1:0]S00_AXI_1_RID;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [511:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [63:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [511:0]axis_in_tdata;
  wire [63:0]axis_in_tkeep;
  wire axis_in_tlast;
  wire axis_in_tvalid;
  wire [31:0]block_count;
  wire [31:0]blocks_captured;
  wire cmac_clk;
  wire copy_idle;
  wire [63:0]data_mover_0_SRC_AXI_ARADDR;
  wire [1:0]data_mover_0_SRC_AXI_ARBURST;
  wire [3:0]data_mover_0_SRC_AXI_ARCACHE;
  wire [3:0]data_mover_0_SRC_AXI_ARID;
  wire [7:0]data_mover_0_SRC_AXI_ARLEN;
  wire data_mover_0_SRC_AXI_ARLOCK;
  wire [2:0]data_mover_0_SRC_AXI_ARPROT;
  wire [3:0]data_mover_0_SRC_AXI_ARQOS;
  wire data_mover_0_SRC_AXI_ARREADY;
  wire [2:0]data_mover_0_SRC_AXI_ARSIZE;
  wire data_mover_0_SRC_AXI_ARVALID;
  wire [63:0]data_mover_0_SRC_AXI_AWADDR;
  wire [1:0]data_mover_0_SRC_AXI_AWBURST;
  wire [3:0]data_mover_0_SRC_AXI_AWCACHE;
  wire [3:0]data_mover_0_SRC_AXI_AWID;
  wire [7:0]data_mover_0_SRC_AXI_AWLEN;
  wire data_mover_0_SRC_AXI_AWLOCK;
  wire [2:0]data_mover_0_SRC_AXI_AWPROT;
  wire [3:0]data_mover_0_SRC_AXI_AWQOS;
  wire data_mover_0_SRC_AXI_AWREADY;
  wire [2:0]data_mover_0_SRC_AXI_AWSIZE;
  wire data_mover_0_SRC_AXI_AWVALID;
  wire data_mover_0_SRC_AXI_BREADY;
  wire [1:0]data_mover_0_SRC_AXI_BRESP;
  wire data_mover_0_SRC_AXI_BVALID;
  wire [511:0]data_mover_0_SRC_AXI_RDATA;
  wire data_mover_0_SRC_AXI_RLAST;
  wire data_mover_0_SRC_AXI_RREADY;
  wire [1:0]data_mover_0_SRC_AXI_RRESP;
  wire data_mover_0_SRC_AXI_RVALID;
  wire [511:0]data_mover_0_SRC_AXI_WDATA;
  wire data_mover_0_SRC_AXI_WLAST;
  wire data_mover_0_SRC_AXI_WREADY;
  wire [63:0]data_mover_0_SRC_AXI_WSTRB;
  wire data_mover_0_SRC_AXI_WVALID;
  wire done;
  wire [0:0]enable;
  wire hbm_0_cmac_resetn;
  wire hbm_cattrip;
  wire [0:0]hbm_refclk_clk_n;
  wire [0:0]hbm_refclk_clk_p;
  wire [6:0]hbm_temp;
  wire [63:0]host_addr;
  wire [31:0]packets_captured;
  wire start_copy_stb;
  wire sys_clk;
  wire sys_resetn;

  copy_to_host_imp_ZY8XGK copy_to_host
       (.HBM_AXI_araddr(data_mover_0_SRC_AXI_ARADDR),
        .HBM_AXI_arburst(data_mover_0_SRC_AXI_ARBURST),
        .HBM_AXI_arcache(data_mover_0_SRC_AXI_ARCACHE),
        .HBM_AXI_arid(data_mover_0_SRC_AXI_ARID),
        .HBM_AXI_arlen(data_mover_0_SRC_AXI_ARLEN),
        .HBM_AXI_arlock(data_mover_0_SRC_AXI_ARLOCK),
        .HBM_AXI_arprot(data_mover_0_SRC_AXI_ARPROT),
        .HBM_AXI_arqos(data_mover_0_SRC_AXI_ARQOS),
        .HBM_AXI_arready(data_mover_0_SRC_AXI_ARREADY),
        .HBM_AXI_arsize(data_mover_0_SRC_AXI_ARSIZE),
        .HBM_AXI_arvalid(data_mover_0_SRC_AXI_ARVALID),
        .HBM_AXI_awaddr(data_mover_0_SRC_AXI_AWADDR),
        .HBM_AXI_awburst(data_mover_0_SRC_AXI_AWBURST),
        .HBM_AXI_awcache(data_mover_0_SRC_AXI_AWCACHE),
        .HBM_AXI_awid(data_mover_0_SRC_AXI_AWID),
        .HBM_AXI_awlen(data_mover_0_SRC_AXI_AWLEN),
        .HBM_AXI_awlock(data_mover_0_SRC_AXI_AWLOCK),
        .HBM_AXI_awprot(data_mover_0_SRC_AXI_AWPROT),
        .HBM_AXI_awqos(data_mover_0_SRC_AXI_AWQOS),
        .HBM_AXI_awready(data_mover_0_SRC_AXI_AWREADY),
        .HBM_AXI_awsize(data_mover_0_SRC_AXI_AWSIZE),
        .HBM_AXI_awvalid(data_mover_0_SRC_AXI_AWVALID),
        .HBM_AXI_bready(data_mover_0_SRC_AXI_BREADY),
        .HBM_AXI_bresp(data_mover_0_SRC_AXI_BRESP),
        .HBM_AXI_bvalid(data_mover_0_SRC_AXI_BVALID),
        .HBM_AXI_rdata(data_mover_0_SRC_AXI_RDATA),
        .HBM_AXI_rlast(data_mover_0_SRC_AXI_RLAST),
        .HBM_AXI_rready(data_mover_0_SRC_AXI_RREADY),
        .HBM_AXI_rresp(data_mover_0_SRC_AXI_RRESP),
        .HBM_AXI_rvalid(data_mover_0_SRC_AXI_RVALID),
        .HBM_AXI_wdata(data_mover_0_SRC_AXI_WDATA),
        .HBM_AXI_wlast(data_mover_0_SRC_AXI_WLAST),
        .HBM_AXI_wready(data_mover_0_SRC_AXI_WREADY),
        .HBM_AXI_wstrb(data_mover_0_SRC_AXI_WSTRB),
        .HBM_AXI_wvalid(data_mover_0_SRC_AXI_WVALID),
        .PCI_AXI_araddr(PCI_AXI_araddr),
        .PCI_AXI_arburst(PCI_AXI_arburst),
        .PCI_AXI_arcache(PCI_AXI_arcache),
        .PCI_AXI_arid(PCI_AXI_arid),
        .PCI_AXI_arlen(PCI_AXI_arlen),
        .PCI_AXI_arlock(PCI_AXI_arlock),
        .PCI_AXI_arprot(PCI_AXI_arprot),
        .PCI_AXI_arqos(PCI_AXI_arqos),
        .PCI_AXI_arready(PCI_AXI_arready),
        .PCI_AXI_arsize(PCI_AXI_arsize),
        .PCI_AXI_arvalid(PCI_AXI_arvalid),
        .PCI_AXI_awaddr(PCI_AXI_awaddr),
        .PCI_AXI_awburst(PCI_AXI_awburst),
        .PCI_AXI_awcache(PCI_AXI_awcache),
        .PCI_AXI_awid(PCI_AXI_awid),
        .PCI_AXI_awlen(PCI_AXI_awlen),
        .PCI_AXI_awlock(PCI_AXI_awlock),
        .PCI_AXI_awprot(PCI_AXI_awprot),
        .PCI_AXI_awqos(PCI_AXI_awqos),
        .PCI_AXI_awready(PCI_AXI_awready),
        .PCI_AXI_awsize(PCI_AXI_awsize),
        .PCI_AXI_awvalid(PCI_AXI_awvalid),
        .PCI_AXI_bready(PCI_AXI_bready),
        .PCI_AXI_bresp(PCI_AXI_bresp),
        .PCI_AXI_bvalid(PCI_AXI_bvalid),
        .PCI_AXI_rdata(PCI_AXI_rdata),
        .PCI_AXI_rlast(PCI_AXI_rlast),
        .PCI_AXI_rready(PCI_AXI_rready),
        .PCI_AXI_rresp(PCI_AXI_rresp),
        .PCI_AXI_rvalid(PCI_AXI_rvalid),
        .PCI_AXI_wdata(PCI_AXI_wdata),
        .PCI_AXI_wlast(PCI_AXI_wlast),
        .PCI_AXI_wready(PCI_AXI_wready),
        .PCI_AXI_wstrb(PCI_AXI_wstrb),
        .PCI_AXI_wvalid(PCI_AXI_wvalid),
        .block_count(block_count),
        .copy_idle(copy_idle),
        .host_addr(host_addr),
        .start_copy_stb(start_copy_stb),
        .sys_clk(sys_clk),
        .sys_resetn(sys_resetn));
  hbm_0_imp_1GD7COY hbm_0
       (.S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arid(S00_AXI_1_ARID),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awid(S00_AXI_1_AWID),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bid(S00_AXI_1_BID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rid(S00_AXI_1_RID),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .S01_AXI_araddr(data_mover_0_SRC_AXI_ARADDR),
        .S01_AXI_arburst(data_mover_0_SRC_AXI_ARBURST),
        .S01_AXI_arcache(data_mover_0_SRC_AXI_ARCACHE),
        .S01_AXI_arid(data_mover_0_SRC_AXI_ARID),
        .S01_AXI_arlen(data_mover_0_SRC_AXI_ARLEN),
        .S01_AXI_arlock(data_mover_0_SRC_AXI_ARLOCK),
        .S01_AXI_arprot(data_mover_0_SRC_AXI_ARPROT),
        .S01_AXI_arqos(data_mover_0_SRC_AXI_ARQOS),
        .S01_AXI_arready(data_mover_0_SRC_AXI_ARREADY),
        .S01_AXI_arsize(data_mover_0_SRC_AXI_ARSIZE),
        .S01_AXI_arvalid(data_mover_0_SRC_AXI_ARVALID),
        .S01_AXI_awaddr(data_mover_0_SRC_AXI_AWADDR),
        .S01_AXI_awburst(data_mover_0_SRC_AXI_AWBURST),
        .S01_AXI_awcache(data_mover_0_SRC_AXI_AWCACHE),
        .S01_AXI_awid(data_mover_0_SRC_AXI_AWID),
        .S01_AXI_awlen(data_mover_0_SRC_AXI_AWLEN),
        .S01_AXI_awlock(data_mover_0_SRC_AXI_AWLOCK),
        .S01_AXI_awprot(data_mover_0_SRC_AXI_AWPROT),
        .S01_AXI_awqos(data_mover_0_SRC_AXI_AWQOS),
        .S01_AXI_awready(data_mover_0_SRC_AXI_AWREADY),
        .S01_AXI_awsize(data_mover_0_SRC_AXI_AWSIZE),
        .S01_AXI_awvalid(data_mover_0_SRC_AXI_AWVALID),
        .S01_AXI_bready(data_mover_0_SRC_AXI_BREADY),
        .S01_AXI_bresp(data_mover_0_SRC_AXI_BRESP),
        .S01_AXI_bvalid(data_mover_0_SRC_AXI_BVALID),
        .S01_AXI_rdata(data_mover_0_SRC_AXI_RDATA),
        .S01_AXI_rlast(data_mover_0_SRC_AXI_RLAST),
        .S01_AXI_rready(data_mover_0_SRC_AXI_RREADY),
        .S01_AXI_rresp(data_mover_0_SRC_AXI_RRESP),
        .S01_AXI_rvalid(data_mover_0_SRC_AXI_RVALID),
        .S01_AXI_wdata(data_mover_0_SRC_AXI_WDATA),
        .S01_AXI_wlast(data_mover_0_SRC_AXI_WLAST),
        .S01_AXI_wready(data_mover_0_SRC_AXI_WREADY),
        .S01_AXI_wstrb(data_mover_0_SRC_AXI_WSTRB),
        .S01_AXI_wvalid(data_mover_0_SRC_AXI_WVALID),
        .cmac_clk(cmac_clk),
        .cmac_resetn(hbm_0_cmac_resetn),
        .hbm_cattrip(hbm_cattrip),
        .hbm_refclk_clk_n(hbm_refclk_clk_n),
        .hbm_refclk_clk_p(hbm_refclk_clk_p),
        .hbm_temp(hbm_temp),
        .sys_clk(sys_clk),
        .sys_resetn(sys_resetn));
  packet_datapath_imp_11OZHAT packet_datapath
       (.M_AXI_araddr(S00_AXI_1_ARADDR),
        .M_AXI_arburst(S00_AXI_1_ARBURST),
        .M_AXI_arcache(S00_AXI_1_ARCACHE),
        .M_AXI_arid(S00_AXI_1_ARID),
        .M_AXI_arlen(S00_AXI_1_ARLEN),
        .M_AXI_arlock(S00_AXI_1_ARLOCK),
        .M_AXI_arprot(S00_AXI_1_ARPROT),
        .M_AXI_arqos(S00_AXI_1_ARQOS),
        .M_AXI_arready(S00_AXI_1_ARREADY),
        .M_AXI_arsize(S00_AXI_1_ARSIZE),
        .M_AXI_arvalid(S00_AXI_1_ARVALID),
        .M_AXI_awaddr(S00_AXI_1_AWADDR),
        .M_AXI_awburst(S00_AXI_1_AWBURST),
        .M_AXI_awcache(S00_AXI_1_AWCACHE),
        .M_AXI_awid(S00_AXI_1_AWID),
        .M_AXI_awlen(S00_AXI_1_AWLEN),
        .M_AXI_awlock(S00_AXI_1_AWLOCK),
        .M_AXI_awprot(S00_AXI_1_AWPROT),
        .M_AXI_awqos(S00_AXI_1_AWQOS),
        .M_AXI_awready(S00_AXI_1_AWREADY),
        .M_AXI_awsize(S00_AXI_1_AWSIZE),
        .M_AXI_awvalid(S00_AXI_1_AWVALID),
        .M_AXI_bid(S00_AXI_1_BID),
        .M_AXI_bready(S00_AXI_1_BREADY),
        .M_AXI_bresp(S00_AXI_1_BRESP),
        .M_AXI_bvalid(S00_AXI_1_BVALID),
        .M_AXI_rdata(S00_AXI_1_RDATA),
        .M_AXI_rid(S00_AXI_1_RID),
        .M_AXI_rlast(S00_AXI_1_RLAST),
        .M_AXI_rready(S00_AXI_1_RREADY),
        .M_AXI_rresp(S00_AXI_1_RRESP),
        .M_AXI_rvalid(S00_AXI_1_RVALID),
        .M_AXI_wdata(S00_AXI_1_WDATA),
        .M_AXI_wlast(S00_AXI_1_WLAST),
        .M_AXI_wready(S00_AXI_1_WREADY),
        .M_AXI_wstrb(S00_AXI_1_WSTRB),
        .M_AXI_wvalid(S00_AXI_1_WVALID),
        .axis_in_tdata(axis_in_tdata),
        .axis_in_tkeep(axis_in_tkeep),
        .axis_in_tlast(axis_in_tlast),
        .axis_in_tvalid(axis_in_tvalid),
        .blocks_captured(blocks_captured),
        .cmac_clk(cmac_clk),
        .cmac_resetn(hbm_0_cmac_resetn),
        .done(done),
        .enable(enable),
        .packets_captured(packets_captured),
        .sys_clk(sys_clk));
endmodule

module datapath_imp_BKUTWQ
   (PCI_AXI_araddr,
    PCI_AXI_arburst,
    PCI_AXI_arcache,
    PCI_AXI_arid,
    PCI_AXI_arlen,
    PCI_AXI_arlock,
    PCI_AXI_arprot,
    PCI_AXI_arqos,
    PCI_AXI_arready,
    PCI_AXI_arsize,
    PCI_AXI_arvalid,
    PCI_AXI_awaddr,
    PCI_AXI_awburst,
    PCI_AXI_awcache,
    PCI_AXI_awid,
    PCI_AXI_awlen,
    PCI_AXI_awlock,
    PCI_AXI_awprot,
    PCI_AXI_awqos,
    PCI_AXI_awready,
    PCI_AXI_awsize,
    PCI_AXI_awvalid,
    PCI_AXI_bready,
    PCI_AXI_bresp,
    PCI_AXI_bvalid,
    PCI_AXI_rdata,
    PCI_AXI_rlast,
    PCI_AXI_rready,
    PCI_AXI_rresp,
    PCI_AXI_rvalid,
    PCI_AXI_wdata,
    PCI_AXI_wlast,
    PCI_AXI_wready,
    PCI_AXI_wstrb,
    PCI_AXI_wvalid,
    axis_in_tdata,
    axis_in_tkeep,
    axis_in_tlast,
    axis_in_tvalid,
    block_count,
    blocks_captured,
    cmac_clk,
    copy_idle,
    done,
    enable,
    hbm_cattrip,
    hbm_refclk_clk_n,
    hbm_refclk_clk_p,
    hbm_temp,
    host_addr,
    packets_captured,
    start_copy_stb,
    sys_clk,
    sys_resetn);
  output [63:0]PCI_AXI_araddr;
  output [1:0]PCI_AXI_arburst;
  output [3:0]PCI_AXI_arcache;
  output [3:0]PCI_AXI_arid;
  output [7:0]PCI_AXI_arlen;
  output PCI_AXI_arlock;
  output [2:0]PCI_AXI_arprot;
  output [3:0]PCI_AXI_arqos;
  input PCI_AXI_arready;
  output [2:0]PCI_AXI_arsize;
  output PCI_AXI_arvalid;
  output [63:0]PCI_AXI_awaddr;
  output [1:0]PCI_AXI_awburst;
  output [3:0]PCI_AXI_awcache;
  output [3:0]PCI_AXI_awid;
  output [7:0]PCI_AXI_awlen;
  output PCI_AXI_awlock;
  output [2:0]PCI_AXI_awprot;
  output [3:0]PCI_AXI_awqos;
  input PCI_AXI_awready;
  output [2:0]PCI_AXI_awsize;
  output PCI_AXI_awvalid;
  output PCI_AXI_bready;
  input [1:0]PCI_AXI_bresp;
  input PCI_AXI_bvalid;
  input [511:0]PCI_AXI_rdata;
  input PCI_AXI_rlast;
  output PCI_AXI_rready;
  input [1:0]PCI_AXI_rresp;
  input PCI_AXI_rvalid;
  output [511:0]PCI_AXI_wdata;
  output PCI_AXI_wlast;
  input PCI_AXI_wready;
  output [63:0]PCI_AXI_wstrb;
  output PCI_AXI_wvalid;
  input [511:0]axis_in_tdata;
  input [63:0]axis_in_tkeep;
  input axis_in_tlast;
  input axis_in_tvalid;
  input [31:0]block_count;
  output [31:0]blocks_captured;
  input cmac_clk;
  output copy_idle;
  output done;
  input [0:0]enable;
  output hbm_cattrip;
  input [0:0]hbm_refclk_clk_n;
  input [0:0]hbm_refclk_clk_p;
  output [6:0]hbm_temp;
  input [63:0]host_addr;
  output [31:0]packets_captured;
  input start_copy_stb;
  input sys_clk;
  input sys_resetn;

  wire [63:0]PCI_AXI_araddr;
  wire [1:0]PCI_AXI_arburst;
  wire [3:0]PCI_AXI_arcache;
  wire [3:0]PCI_AXI_arid;
  wire [7:0]PCI_AXI_arlen;
  wire PCI_AXI_arlock;
  wire [2:0]PCI_AXI_arprot;
  wire [3:0]PCI_AXI_arqos;
  wire PCI_AXI_arready;
  wire [2:0]PCI_AXI_arsize;
  wire PCI_AXI_arvalid;
  wire [63:0]PCI_AXI_awaddr;
  wire [1:0]PCI_AXI_awburst;
  wire [3:0]PCI_AXI_awcache;
  wire [3:0]PCI_AXI_awid;
  wire [7:0]PCI_AXI_awlen;
  wire PCI_AXI_awlock;
  wire [2:0]PCI_AXI_awprot;
  wire [3:0]PCI_AXI_awqos;
  wire PCI_AXI_awready;
  wire [2:0]PCI_AXI_awsize;
  wire PCI_AXI_awvalid;
  wire PCI_AXI_bready;
  wire [1:0]PCI_AXI_bresp;
  wire PCI_AXI_bvalid;
  wire [511:0]PCI_AXI_rdata;
  wire PCI_AXI_rlast;
  wire PCI_AXI_rready;
  wire [1:0]PCI_AXI_rresp;
  wire PCI_AXI_rvalid;
  wire [511:0]PCI_AXI_wdata;
  wire PCI_AXI_wlast;
  wire PCI_AXI_wready;
  wire [63:0]PCI_AXI_wstrb;
  wire PCI_AXI_wvalid;
  wire [511:0]axis_in_tdata;
  wire [63:0]axis_in_tkeep;
  wire axis_in_tlast;
  wire axis_in_tvalid;
  wire [31:0]block_count;
  wire [31:0]blocks_captured;
  wire cmac_clk;
  wire copy_idle;
  wire [63:0]copy_to_host_HBM_AXI_ARADDR;
  wire [1:0]copy_to_host_HBM_AXI_ARBURST;
  wire [3:0]copy_to_host_HBM_AXI_ARCACHE;
  wire [3:0]copy_to_host_HBM_AXI_ARID;
  wire [7:0]copy_to_host_HBM_AXI_ARLEN;
  wire copy_to_host_HBM_AXI_ARLOCK;
  wire [2:0]copy_to_host_HBM_AXI_ARPROT;
  wire [3:0]copy_to_host_HBM_AXI_ARQOS;
  wire copy_to_host_HBM_AXI_ARREADY;
  wire [2:0]copy_to_host_HBM_AXI_ARSIZE;
  wire copy_to_host_HBM_AXI_ARVALID;
  wire [63:0]copy_to_host_HBM_AXI_AWADDR;
  wire [1:0]copy_to_host_HBM_AXI_AWBURST;
  wire [3:0]copy_to_host_HBM_AXI_AWCACHE;
  wire [3:0]copy_to_host_HBM_AXI_AWID;
  wire [7:0]copy_to_host_HBM_AXI_AWLEN;
  wire copy_to_host_HBM_AXI_AWLOCK;
  wire [2:0]copy_to_host_HBM_AXI_AWPROT;
  wire [3:0]copy_to_host_HBM_AXI_AWQOS;
  wire copy_to_host_HBM_AXI_AWREADY;
  wire [2:0]copy_to_host_HBM_AXI_AWSIZE;
  wire copy_to_host_HBM_AXI_AWVALID;
  wire copy_to_host_HBM_AXI_BREADY;
  wire [1:0]copy_to_host_HBM_AXI_BRESP;
  wire copy_to_host_HBM_AXI_BVALID;
  wire [511:0]copy_to_host_HBM_AXI_RDATA;
  wire copy_to_host_HBM_AXI_RLAST;
  wire copy_to_host_HBM_AXI_RREADY;
  wire [1:0]copy_to_host_HBM_AXI_RRESP;
  wire copy_to_host_HBM_AXI_RVALID;
  wire [511:0]copy_to_host_HBM_AXI_WDATA;
  wire copy_to_host_HBM_AXI_WLAST;
  wire copy_to_host_HBM_AXI_WREADY;
  wire [63:0]copy_to_host_HBM_AXI_WSTRB;
  wire copy_to_host_HBM_AXI_WVALID;
  wire done;
  wire [0:0]enable;
  wire hbm_cattrip;
  wire [0:0]hbm_refclk_clk_n;
  wire [0:0]hbm_refclk_clk_p;
  wire [6:0]hbm_temp;
  wire [63:0]hbm_writer_M_AXI_ARADDR;
  wire [1:0]hbm_writer_M_AXI_ARBURST;
  wire [3:0]hbm_writer_M_AXI_ARCACHE;
  wire [1:0]hbm_writer_M_AXI_ARID;
  wire [7:0]hbm_writer_M_AXI_ARLEN;
  wire hbm_writer_M_AXI_ARLOCK;
  wire [2:0]hbm_writer_M_AXI_ARPROT;
  wire [3:0]hbm_writer_M_AXI_ARQOS;
  wire hbm_writer_M_AXI_ARREADY;
  wire [2:0]hbm_writer_M_AXI_ARSIZE;
  wire hbm_writer_M_AXI_ARVALID;
  wire [63:0]hbm_writer_M_AXI_AWADDR;
  wire [1:0]hbm_writer_M_AXI_AWBURST;
  wire [3:0]hbm_writer_M_AXI_AWCACHE;
  wire [1:0]hbm_writer_M_AXI_AWID;
  wire [7:0]hbm_writer_M_AXI_AWLEN;
  wire hbm_writer_M_AXI_AWLOCK;
  wire [2:0]hbm_writer_M_AXI_AWPROT;
  wire [3:0]hbm_writer_M_AXI_AWQOS;
  wire hbm_writer_M_AXI_AWREADY;
  wire [2:0]hbm_writer_M_AXI_AWSIZE;
  wire hbm_writer_M_AXI_AWVALID;
  wire [1:0]hbm_writer_M_AXI_BID;
  wire hbm_writer_M_AXI_BREADY;
  wire [1:0]hbm_writer_M_AXI_BRESP;
  wire hbm_writer_M_AXI_BVALID;
  wire [511:0]hbm_writer_M_AXI_RDATA;
  wire [1:0]hbm_writer_M_AXI_RID;
  wire hbm_writer_M_AXI_RLAST;
  wire hbm_writer_M_AXI_RREADY;
  wire [1:0]hbm_writer_M_AXI_RRESP;
  wire hbm_writer_M_AXI_RVALID;
  wire [511:0]hbm_writer_M_AXI_WDATA;
  wire hbm_writer_M_AXI_WLAST;
  wire hbm_writer_M_AXI_WREADY;
  wire [63:0]hbm_writer_M_AXI_WSTRB;
  wire hbm_writer_M_AXI_WVALID;
  wire [63:0]host_addr;
  wire [31:0]packets_captured;
  wire reset_sync_dest_rst_out;
  wire start_copy_stb;
  wire sys_clk;
  wire sys_resetn;

  copy_to_host_imp_V5JWLQ copy_to_host
       (.HBM_AXI_araddr(copy_to_host_HBM_AXI_ARADDR),
        .HBM_AXI_arburst(copy_to_host_HBM_AXI_ARBURST),
        .HBM_AXI_arcache(copy_to_host_HBM_AXI_ARCACHE),
        .HBM_AXI_arid(copy_to_host_HBM_AXI_ARID),
        .HBM_AXI_arlen(copy_to_host_HBM_AXI_ARLEN),
        .HBM_AXI_arlock(copy_to_host_HBM_AXI_ARLOCK),
        .HBM_AXI_arprot(copy_to_host_HBM_AXI_ARPROT),
        .HBM_AXI_arqos(copy_to_host_HBM_AXI_ARQOS),
        .HBM_AXI_arready(copy_to_host_HBM_AXI_ARREADY),
        .HBM_AXI_arsize(copy_to_host_HBM_AXI_ARSIZE),
        .HBM_AXI_arvalid(copy_to_host_HBM_AXI_ARVALID),
        .HBM_AXI_awaddr(copy_to_host_HBM_AXI_AWADDR),
        .HBM_AXI_awburst(copy_to_host_HBM_AXI_AWBURST),
        .HBM_AXI_awcache(copy_to_host_HBM_AXI_AWCACHE),
        .HBM_AXI_awid(copy_to_host_HBM_AXI_AWID),
        .HBM_AXI_awlen(copy_to_host_HBM_AXI_AWLEN),
        .HBM_AXI_awlock(copy_to_host_HBM_AXI_AWLOCK),
        .HBM_AXI_awprot(copy_to_host_HBM_AXI_AWPROT),
        .HBM_AXI_awqos(copy_to_host_HBM_AXI_AWQOS),
        .HBM_AXI_awready(copy_to_host_HBM_AXI_AWREADY),
        .HBM_AXI_awsize(copy_to_host_HBM_AXI_AWSIZE),
        .HBM_AXI_awvalid(copy_to_host_HBM_AXI_AWVALID),
        .HBM_AXI_bready(copy_to_host_HBM_AXI_BREADY),
        .HBM_AXI_bresp(copy_to_host_HBM_AXI_BRESP),
        .HBM_AXI_bvalid(copy_to_host_HBM_AXI_BVALID),
        .HBM_AXI_rdata(copy_to_host_HBM_AXI_RDATA),
        .HBM_AXI_rlast(copy_to_host_HBM_AXI_RLAST),
        .HBM_AXI_rready(copy_to_host_HBM_AXI_RREADY),
        .HBM_AXI_rresp(copy_to_host_HBM_AXI_RRESP),
        .HBM_AXI_rvalid(copy_to_host_HBM_AXI_RVALID),
        .HBM_AXI_wdata(copy_to_host_HBM_AXI_WDATA),
        .HBM_AXI_wlast(copy_to_host_HBM_AXI_WLAST),
        .HBM_AXI_wready(copy_to_host_HBM_AXI_WREADY),
        .HBM_AXI_wstrb(copy_to_host_HBM_AXI_WSTRB),
        .HBM_AXI_wvalid(copy_to_host_HBM_AXI_WVALID),
        .PCI_AXI_araddr(PCI_AXI_araddr),
        .PCI_AXI_arburst(PCI_AXI_arburst),
        .PCI_AXI_arcache(PCI_AXI_arcache),
        .PCI_AXI_arid(PCI_AXI_arid),
        .PCI_AXI_arlen(PCI_AXI_arlen),
        .PCI_AXI_arlock(PCI_AXI_arlock),
        .PCI_AXI_arprot(PCI_AXI_arprot),
        .PCI_AXI_arqos(PCI_AXI_arqos),
        .PCI_AXI_arready(PCI_AXI_arready),
        .PCI_AXI_arsize(PCI_AXI_arsize),
        .PCI_AXI_arvalid(PCI_AXI_arvalid),
        .PCI_AXI_awaddr(PCI_AXI_awaddr),
        .PCI_AXI_awburst(PCI_AXI_awburst),
        .PCI_AXI_awcache(PCI_AXI_awcache),
        .PCI_AXI_awid(PCI_AXI_awid),
        .PCI_AXI_awlen(PCI_AXI_awlen),
        .PCI_AXI_awlock(PCI_AXI_awlock),
        .PCI_AXI_awprot(PCI_AXI_awprot),
        .PCI_AXI_awqos(PCI_AXI_awqos),
        .PCI_AXI_awready(PCI_AXI_awready),
        .PCI_AXI_awsize(PCI_AXI_awsize),
        .PCI_AXI_awvalid(PCI_AXI_awvalid),
        .PCI_AXI_bready(PCI_AXI_bready),
        .PCI_AXI_bresp(PCI_AXI_bresp),
        .PCI_AXI_bvalid(PCI_AXI_bvalid),
        .PCI_AXI_rdata(PCI_AXI_rdata),
        .PCI_AXI_rlast(PCI_AXI_rlast),
        .PCI_AXI_rready(PCI_AXI_rready),
        .PCI_AXI_rresp(PCI_AXI_rresp),
        .PCI_AXI_rvalid(PCI_AXI_rvalid),
        .PCI_AXI_wdata(PCI_AXI_wdata),
        .PCI_AXI_wlast(PCI_AXI_wlast),
        .PCI_AXI_wready(PCI_AXI_wready),
        .PCI_AXI_wstrb(PCI_AXI_wstrb),
        .PCI_AXI_wvalid(PCI_AXI_wvalid),
        .block_count(block_count),
        .copy_idle(copy_idle),
        .host_addr(host_addr),
        .start_copy_stb(start_copy_stb),
        .sys_clk(sys_clk),
        .sys_resetn(sys_resetn));
  hbm_1_imp_1WIOENM hbm_1
       (.S00_AXI_araddr(hbm_writer_M_AXI_ARADDR),
        .S00_AXI_arburst(hbm_writer_M_AXI_ARBURST),
        .S00_AXI_arcache(hbm_writer_M_AXI_ARCACHE),
        .S00_AXI_arid(hbm_writer_M_AXI_ARID),
        .S00_AXI_arlen(hbm_writer_M_AXI_ARLEN),
        .S00_AXI_arlock(hbm_writer_M_AXI_ARLOCK),
        .S00_AXI_arprot(hbm_writer_M_AXI_ARPROT),
        .S00_AXI_arqos(hbm_writer_M_AXI_ARQOS),
        .S00_AXI_arready(hbm_writer_M_AXI_ARREADY),
        .S00_AXI_arsize(hbm_writer_M_AXI_ARSIZE),
        .S00_AXI_arvalid(hbm_writer_M_AXI_ARVALID),
        .S00_AXI_awaddr(hbm_writer_M_AXI_AWADDR),
        .S00_AXI_awburst(hbm_writer_M_AXI_AWBURST),
        .S00_AXI_awcache(hbm_writer_M_AXI_AWCACHE),
        .S00_AXI_awid(hbm_writer_M_AXI_AWID),
        .S00_AXI_awlen(hbm_writer_M_AXI_AWLEN),
        .S00_AXI_awlock(hbm_writer_M_AXI_AWLOCK),
        .S00_AXI_awprot(hbm_writer_M_AXI_AWPROT),
        .S00_AXI_awqos(hbm_writer_M_AXI_AWQOS),
        .S00_AXI_awready(hbm_writer_M_AXI_AWREADY),
        .S00_AXI_awsize(hbm_writer_M_AXI_AWSIZE),
        .S00_AXI_awvalid(hbm_writer_M_AXI_AWVALID),
        .S00_AXI_bid(hbm_writer_M_AXI_BID),
        .S00_AXI_bready(hbm_writer_M_AXI_BREADY),
        .S00_AXI_bresp(hbm_writer_M_AXI_BRESP),
        .S00_AXI_bvalid(hbm_writer_M_AXI_BVALID),
        .S00_AXI_rdata(hbm_writer_M_AXI_RDATA),
        .S00_AXI_rid(hbm_writer_M_AXI_RID),
        .S00_AXI_rlast(hbm_writer_M_AXI_RLAST),
        .S00_AXI_rready(hbm_writer_M_AXI_RREADY),
        .S00_AXI_rresp(hbm_writer_M_AXI_RRESP),
        .S00_AXI_rvalid(hbm_writer_M_AXI_RVALID),
        .S00_AXI_wdata(hbm_writer_M_AXI_WDATA),
        .S00_AXI_wlast(hbm_writer_M_AXI_WLAST),
        .S00_AXI_wready(hbm_writer_M_AXI_WREADY),
        .S00_AXI_wstrb(hbm_writer_M_AXI_WSTRB),
        .S00_AXI_wvalid(hbm_writer_M_AXI_WVALID),
        .S01_AXI_araddr(copy_to_host_HBM_AXI_ARADDR),
        .S01_AXI_arburst(copy_to_host_HBM_AXI_ARBURST),
        .S01_AXI_arcache(copy_to_host_HBM_AXI_ARCACHE),
        .S01_AXI_arid(copy_to_host_HBM_AXI_ARID),
        .S01_AXI_arlen(copy_to_host_HBM_AXI_ARLEN),
        .S01_AXI_arlock(copy_to_host_HBM_AXI_ARLOCK),
        .S01_AXI_arprot(copy_to_host_HBM_AXI_ARPROT),
        .S01_AXI_arqos(copy_to_host_HBM_AXI_ARQOS),
        .S01_AXI_arready(copy_to_host_HBM_AXI_ARREADY),
        .S01_AXI_arsize(copy_to_host_HBM_AXI_ARSIZE),
        .S01_AXI_arvalid(copy_to_host_HBM_AXI_ARVALID),
        .S01_AXI_awaddr(copy_to_host_HBM_AXI_AWADDR),
        .S01_AXI_awburst(copy_to_host_HBM_AXI_AWBURST),
        .S01_AXI_awcache(copy_to_host_HBM_AXI_AWCACHE),
        .S01_AXI_awid(copy_to_host_HBM_AXI_AWID),
        .S01_AXI_awlen(copy_to_host_HBM_AXI_AWLEN),
        .S01_AXI_awlock(copy_to_host_HBM_AXI_AWLOCK),
        .S01_AXI_awprot(copy_to_host_HBM_AXI_AWPROT),
        .S01_AXI_awqos(copy_to_host_HBM_AXI_AWQOS),
        .S01_AXI_awready(copy_to_host_HBM_AXI_AWREADY),
        .S01_AXI_awsize(copy_to_host_HBM_AXI_AWSIZE),
        .S01_AXI_awvalid(copy_to_host_HBM_AXI_AWVALID),
        .S01_AXI_bready(copy_to_host_HBM_AXI_BREADY),
        .S01_AXI_bresp(copy_to_host_HBM_AXI_BRESP),
        .S01_AXI_bvalid(copy_to_host_HBM_AXI_BVALID),
        .S01_AXI_rdata(copy_to_host_HBM_AXI_RDATA),
        .S01_AXI_rlast(copy_to_host_HBM_AXI_RLAST),
        .S01_AXI_rready(copy_to_host_HBM_AXI_RREADY),
        .S01_AXI_rresp(copy_to_host_HBM_AXI_RRESP),
        .S01_AXI_rvalid(copy_to_host_HBM_AXI_RVALID),
        .S01_AXI_wdata(copy_to_host_HBM_AXI_WDATA),
        .S01_AXI_wlast(copy_to_host_HBM_AXI_WLAST),
        .S01_AXI_wready(copy_to_host_HBM_AXI_WREADY),
        .S01_AXI_wstrb(copy_to_host_HBM_AXI_WSTRB),
        .S01_AXI_wvalid(copy_to_host_HBM_AXI_WVALID),
        .cmac_clk(cmac_clk),
        .cmac_resetn(reset_sync_dest_rst_out),
        .hbm_cattrip(hbm_cattrip),
        .hbm_refclk_clk_n(hbm_refclk_clk_n),
        .hbm_refclk_clk_p(hbm_refclk_clk_p),
        .hbm_temp(hbm_temp),
        .sys_clk(sys_clk),
        .sys_resetn(sys_resetn));
  packet_datapath_imp_K1UF8D packet_datapath
       (.M_AXI_araddr(hbm_writer_M_AXI_ARADDR),
        .M_AXI_arburst(hbm_writer_M_AXI_ARBURST),
        .M_AXI_arcache(hbm_writer_M_AXI_ARCACHE),
        .M_AXI_arid(hbm_writer_M_AXI_ARID),
        .M_AXI_arlen(hbm_writer_M_AXI_ARLEN),
        .M_AXI_arlock(hbm_writer_M_AXI_ARLOCK),
        .M_AXI_arprot(hbm_writer_M_AXI_ARPROT),
        .M_AXI_arqos(hbm_writer_M_AXI_ARQOS),
        .M_AXI_arready(hbm_writer_M_AXI_ARREADY),
        .M_AXI_arsize(hbm_writer_M_AXI_ARSIZE),
        .M_AXI_arvalid(hbm_writer_M_AXI_ARVALID),
        .M_AXI_awaddr(hbm_writer_M_AXI_AWADDR),
        .M_AXI_awburst(hbm_writer_M_AXI_AWBURST),
        .M_AXI_awcache(hbm_writer_M_AXI_AWCACHE),
        .M_AXI_awid(hbm_writer_M_AXI_AWID),
        .M_AXI_awlen(hbm_writer_M_AXI_AWLEN),
        .M_AXI_awlock(hbm_writer_M_AXI_AWLOCK),
        .M_AXI_awprot(hbm_writer_M_AXI_AWPROT),
        .M_AXI_awqos(hbm_writer_M_AXI_AWQOS),
        .M_AXI_awready(hbm_writer_M_AXI_AWREADY),
        .M_AXI_awsize(hbm_writer_M_AXI_AWSIZE),
        .M_AXI_awvalid(hbm_writer_M_AXI_AWVALID),
        .M_AXI_bid(hbm_writer_M_AXI_BID),
        .M_AXI_bready(hbm_writer_M_AXI_BREADY),
        .M_AXI_bresp(hbm_writer_M_AXI_BRESP),
        .M_AXI_bvalid(hbm_writer_M_AXI_BVALID),
        .M_AXI_rdata(hbm_writer_M_AXI_RDATA),
        .M_AXI_rid(hbm_writer_M_AXI_RID),
        .M_AXI_rlast(hbm_writer_M_AXI_RLAST),
        .M_AXI_rready(hbm_writer_M_AXI_RREADY),
        .M_AXI_rresp(hbm_writer_M_AXI_RRESP),
        .M_AXI_rvalid(hbm_writer_M_AXI_RVALID),
        .M_AXI_wdata(hbm_writer_M_AXI_WDATA),
        .M_AXI_wlast(hbm_writer_M_AXI_WLAST),
        .M_AXI_wready(hbm_writer_M_AXI_WREADY),
        .M_AXI_wstrb(hbm_writer_M_AXI_WSTRB),
        .M_AXI_wvalid(hbm_writer_M_AXI_WVALID),
        .axis_in_tdata(axis_in_tdata),
        .axis_in_tkeep(axis_in_tkeep),
        .axis_in_tlast(axis_in_tlast),
        .axis_in_tvalid(axis_in_tvalid),
        .blocks_captured(blocks_captured),
        .cmac_clk(cmac_clk),
        .cmac_resetn(reset_sync_dest_rst_out),
        .done(done),
        .enable(enable),
        .packets_captured(packets_captured),
        .sys_clk(sys_clk));
endmodule

module eth0_imp_B1LCBY
   (M_AXIS_tdata,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tvalid,
    async_source_select,
    axis_pb_tdata,
    axis_pb_tkeep,
    axis_pb_tlast,
    axis_pb_tready,
    axis_pb_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tvalid,
    cmac_clk,
    gt_ref_clk_clk_n,
    gt_ref_clk_clk_p,
    gt_serial_port_grx_n,
    gt_serial_port_grx_p,
    gt_serial_port_gtx_n,
    gt_serial_port_gtx_p,
    rx_aligned,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    sys_clk);
  output [511:0]M_AXIS_tdata;
  output [63:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  output M_AXIS_tvalid;
  input async_source_select;
  input [511:0]axis_pb_tdata;
  input [63:0]axis_pb_tkeep;
  input axis_pb_tlast;
  output axis_pb_tready;
  input axis_pb_tvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tvalid;
  output cmac_clk;
  input gt_ref_clk_clk_n;
  input gt_ref_clk_clk_p;
  input [3:0]gt_serial_port_grx_n;
  input [3:0]gt_serial_port_grx_p;
  output [3:0]gt_serial_port_gtx_n;
  output [3:0]gt_serial_port_gtx_p;
  output rx_aligned;
  input [31:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  output s_axi_arready;
  input s_axi_arvalid;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  input sys_clk;

  wire [511:0]M_AXIS_tdata;
  wire [63:0]M_AXIS_tkeep;
  wire M_AXIS_tlast;
  wire M_AXIS_tvalid;
  (* CONN_BUS_INFO = "S_AXIS_1 xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]S_AXIS_1_TDATA;
  (* CONN_BUS_INFO = "S_AXIS_1 xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]S_AXIS_1_TKEEP;
  (* CONN_BUS_INFO = "S_AXIS_1 xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire S_AXIS_1_TLAST;
  (* CONN_BUS_INFO = "S_AXIS_1 xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire S_AXIS_1_TUSER;
  (* CONN_BUS_INFO = "S_AXIS_1 xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire S_AXIS_1_TVALID;
  wire async_source_select;
  wire [31:0]axi_register_slice_0_M_AXI_ARADDR;
  wire axi_register_slice_0_M_AXI_ARREADY;
  wire axi_register_slice_0_M_AXI_ARVALID;
  wire [31:0]axi_register_slice_0_M_AXI_AWADDR;
  wire axi_register_slice_0_M_AXI_AWREADY;
  wire axi_register_slice_0_M_AXI_AWVALID;
  wire axi_register_slice_0_M_AXI_BREADY;
  wire [1:0]axi_register_slice_0_M_AXI_BRESP;
  wire axi_register_slice_0_M_AXI_BVALID;
  wire [31:0]axi_register_slice_0_M_AXI_RDATA;
  wire axi_register_slice_0_M_AXI_RREADY;
  wire [1:0]axi_register_slice_0_M_AXI_RRESP;
  wire axi_register_slice_0_M_AXI_RVALID;
  wire [31:0]axi_register_slice_0_M_AXI_WDATA;
  wire axi_register_slice_0_M_AXI_WREADY;
  wire [3:0]axi_register_slice_0_M_AXI_WSTRB;
  wire axi_register_slice_0_M_AXI_WVALID;
  wire [511:0]axis_pb_tdata;
  wire [63:0]axis_pb_tkeep;
  wire axis_pb_tlast;
  wire axis_pb_tready;
  wire axis_pb_tvalid;
  wire [511:0]axis_tx_tdata;
  wire [63:0]axis_tx_tkeep;
  wire axis_tx_tlast;
  wire axis_tx_tready;
  wire axis_tx_tvalid;
  wire cmac_control_0_ctl_tx_ctl_tx_send_rfi;
  wire [19:0]cmac_control_0_gt_trans_debug_gt_txdiffctrl;
  wire [19:0]cmac_control_0_gt_trans_debug_gt_txprecursor;
  wire cmac_control_0_reset_rx_datapath;
  wire cmac_control_0_sys_reset_out;
  (* CONN_BUS_INFO = "cmac_tx_cdc_0_m_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]cmac_tx_cdc_0_m_axis_TDATA;
  (* CONN_BUS_INFO = "cmac_tx_cdc_0_m_axis xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]cmac_tx_cdc_0_m_axis_TKEEP;
  (* CONN_BUS_INFO = "cmac_tx_cdc_0_m_axis xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire cmac_tx_cdc_0_m_axis_TLAST;
  (* CONN_BUS_INFO = "cmac_tx_cdc_0_m_axis xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire cmac_tx_cdc_0_m_axis_TREADY;
  (* CONN_BUS_INFO = "cmac_tx_cdc_0_m_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire cmac_tx_cdc_0_m_axis_TVALID;
  wire cmac_usplus_0_gt_txusrclk2;
  wire cmac_usplus_0_stat_rx_stat_rx_aligned;
  wire [55:0]cmac_usplus_rx_preambleout;
  wire gt_ref_clk_clk_n;
  wire gt_ref_clk_clk_p;
  wire [3:0]gt_serial_port_grx_n;
  wire [3:0]gt_serial_port_grx_p;
  wire [3:0]gt_serial_port_gtx_n;
  wire [3:0]gt_serial_port_gtx_p;
  wire [0:0]one_dout;
  wire rx_aligned;
  wire [31:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sys_clk;

  assign cmac_clk = cmac_usplus_0_gt_txusrclk2;
  top_level_axi_register_slice_0_0 axi_register_slice
       (.aclk(sys_clk),
        .aresetn(one_dout),
        .m_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .m_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .m_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .m_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .m_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_0_M_AXI_WVALID),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  top_level_cmac_control_0_0 cmac_control
       (.ctl_tx_send_rfi(cmac_control_0_ctl_tx_ctl_tx_send_rfi),
        .gt_txdiffctrl(cmac_control_0_gt_trans_debug_gt_txdiffctrl),
        .gt_txprecursor(cmac_control_0_gt_trans_debug_gt_txprecursor),
        .init_clk(sys_clk),
        .reset_rx_datapath(cmac_control_0_reset_rx_datapath),
        .rx_clk(cmac_usplus_0_gt_txusrclk2),
        .stat_rx_aligned(cmac_usplus_0_stat_rx_stat_rx_aligned),
        .sync_rx_aligned(rx_aligned),
        .sys_reset_out(cmac_control_0_sys_reset_out),
        .sys_resetn_in(one_dout));
  top_level_cmac_rx_slice_0_0 cmac_rx_slice
       (.axis_in_tdata(S_AXIS_1_TDATA),
        .axis_in_tkeep(S_AXIS_1_TKEEP),
        .axis_in_tlast(S_AXIS_1_TLAST),
        .axis_in_tuser(S_AXIS_1_TUSER),
        .axis_in_tvalid(S_AXIS_1_TVALID),
        .axis_out_tdata(M_AXIS_tdata),
        .axis_out_tkeep(M_AXIS_tkeep),
        .axis_out_tlast(M_AXIS_tlast),
        .axis_out_tvalid(M_AXIS_tvalid),
        .clk(cmac_usplus_0_gt_txusrclk2));
  top_level_cmac_usplus_0_0 cmac_usplus
       (.common0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpen(1'b0),
        .common0_drpwe(1'b0),
        .core_drp_reset(1'b0),
        .core_rx_reset(1'b0),
        .core_tx_reset(1'b0),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_0_ctl_tx_ctl_tx_send_rfi),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(sys_clk),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpen(1'b0),
        .gt0_drpwe(1'b0),
        .gt1_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpen(1'b0),
        .gt1_drpwe(1'b0),
        .gt2_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpen(1'b0),
        .gt2_drpwe(1'b0),
        .gt3_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpen(1'b0),
        .gt3_drpwe(1'b0),
        .gt_drpclk(sys_clk),
        .gt_eyescanreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_eyescantrigger({1'b0,1'b0,1'b0,1'b0}),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(gt_ref_clk_clk_n),
        .gt_ref_clk_p(gt_ref_clk_clk_p),
        .gt_rxcdrhold({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxdfelpmreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxlpmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxn_in(gt_serial_port_grx_n),
        .gt_rxp_in(gt_serial_port_grx_p),
        .gt_rxpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbscntreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_rxrate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txdiffctrl(cmac_control_0_gt_trans_debug_gt_txdiffctrl),
        .gt_txinhibit({1'b0,1'b0,1'b0,1'b0}),
        .gt_txn_out(gt_serial_port_gtx_n),
        .gt_txp_out(gt_serial_port_gtx_p),
        .gt_txpippmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpippmsel({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpostcursor({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbsforceerr({1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprecursor(cmac_control_0_gt_trans_debug_gt_txprecursor),
        .gt_txusrclk2(cmac_usplus_0_gt_txusrclk2),
        .gtwiz_reset_rx_datapath(cmac_control_0_reset_rx_datapath),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(sys_clk),
        .pm_tick(1'b0),
        .rx_axis_tdata(S_AXIS_1_TDATA),
        .rx_axis_tkeep(S_AXIS_1_TKEEP),
        .rx_axis_tlast(S_AXIS_1_TLAST),
        .rx_axis_tuser(S_AXIS_1_TUSER),
        .rx_axis_tvalid(S_AXIS_1_TVALID),
        .rx_clk(cmac_usplus_0_gt_txusrclk2),
        .rx_preambleout(cmac_usplus_rx_preambleout),
        .s_axi_aclk(sys_clk),
        .s_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .s_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .s_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .s_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .s_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .s_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .s_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .s_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .s_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .s_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .s_axi_sreset(1'b0),
        .s_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .s_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_register_slice_0_M_AXI_WVALID),
        .stat_rx_aligned(cmac_usplus_0_stat_rx_stat_rx_aligned),
        .sys_reset(cmac_control_0_sys_reset_out),
        .tx_axis_tdata(cmac_tx_cdc_0_m_axis_TDATA),
        .tx_axis_tkeep(cmac_tx_cdc_0_m_axis_TKEEP),
        .tx_axis_tlast(cmac_tx_cdc_0_m_axis_TLAST),
        .tx_axis_tready(cmac_tx_cdc_0_m_axis_TREADY),
        .tx_axis_tuser(1'b0),
        .tx_axis_tvalid(cmac_tx_cdc_0_m_axis_TVALID),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  assign one_dout = 1'h1;
  top_level_system_ila_1_0 system_ila
       (.SLOT_0_AXIS_tdata(S_AXIS_1_TDATA),
        .SLOT_0_AXIS_tkeep(S_AXIS_1_TKEEP),
        .SLOT_0_AXIS_tlast(S_AXIS_1_TLAST),
        .SLOT_0_AXIS_tuser(S_AXIS_1_TUSER),
        .SLOT_0_AXIS_tvalid(S_AXIS_1_TVALID),
        .SLOT_1_AXIS_tdata(cmac_tx_cdc_0_m_axis_TDATA),
        .SLOT_1_AXIS_tkeep(cmac_tx_cdc_0_m_axis_TKEEP),
        .SLOT_1_AXIS_tlast(cmac_tx_cdc_0_m_axis_TLAST),
        .SLOT_1_AXIS_tready(cmac_tx_cdc_0_m_axis_TREADY),
        .SLOT_1_AXIS_tvalid(cmac_tx_cdc_0_m_axis_TVALID),
        .clk(cmac_usplus_0_gt_txusrclk2),
        .probe0(cmac_usplus_rx_preambleout),
        .resetn(1'b1));
  tx_mux_imp_1RVKZTS tx_mux
       (.async_source_select(async_source_select),
        .axis_out_tdata(cmac_tx_cdc_0_m_axis_TDATA),
        .axis_out_tkeep(cmac_tx_cdc_0_m_axis_TKEEP),
        .axis_out_tlast(cmac_tx_cdc_0_m_axis_TLAST),
        .axis_out_tready(cmac_tx_cdc_0_m_axis_TREADY),
        .axis_out_tvalid(cmac_tx_cdc_0_m_axis_TVALID),
        .axis_pb_tdata(axis_pb_tdata),
        .axis_pb_tkeep(axis_pb_tkeep),
        .axis_pb_tlast(axis_pb_tlast),
        .axis_pb_tready(axis_pb_tready),
        .axis_pb_tvalid(axis_pb_tvalid),
        .axis_tx_tdata(axis_tx_tdata),
        .axis_tx_tkeep(axis_tx_tkeep),
        .axis_tx_tlast(axis_tx_tlast),
        .axis_tx_tready(axis_tx_tready),
        .axis_tx_tvalid(axis_tx_tvalid),
        .cmac_clk(cmac_usplus_0_gt_txusrclk2),
        .resetn(one_dout),
        .sys_clk(sys_clk));
endmodule

module eth1_imp_1JICUXC
   (M_AXIS_tdata,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tvalid,
    async_source_select,
    axis_pb_tdata,
    axis_pb_tkeep,
    axis_pb_tlast,
    axis_pb_tready,
    axis_pb_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tvalid,
    cmac_clk,
    gt_ref_clk_clk_n,
    gt_ref_clk_clk_p,
    gt_serial_port_grx_n,
    gt_serial_port_grx_p,
    gt_serial_port_gtx_n,
    gt_serial_port_gtx_p,
    rx_aligned,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    sys_clk);
  output [511:0]M_AXIS_tdata;
  output [63:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  output M_AXIS_tvalid;
  input async_source_select;
  input [511:0]axis_pb_tdata;
  input [63:0]axis_pb_tkeep;
  input axis_pb_tlast;
  output axis_pb_tready;
  input axis_pb_tvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tvalid;
  output cmac_clk;
  input gt_ref_clk_clk_n;
  input gt_ref_clk_clk_p;
  input [3:0]gt_serial_port_grx_n;
  input [3:0]gt_serial_port_grx_p;
  output [3:0]gt_serial_port_gtx_n;
  output [3:0]gt_serial_port_gtx_p;
  output rx_aligned;
  input [31:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  output s_axi_arready;
  input s_axi_arvalid;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  input sys_clk;

  wire [511:0]M_AXIS_tdata;
  wire [63:0]M_AXIS_tkeep;
  wire M_AXIS_tlast;
  wire M_AXIS_tvalid;
  wire async_source_select;
  wire [31:0]axi_register_slice_M_AXI_ARADDR;
  wire axi_register_slice_M_AXI_ARREADY;
  wire axi_register_slice_M_AXI_ARVALID;
  wire [31:0]axi_register_slice_M_AXI_AWADDR;
  wire axi_register_slice_M_AXI_AWREADY;
  wire axi_register_slice_M_AXI_AWVALID;
  wire axi_register_slice_M_AXI_BREADY;
  wire [1:0]axi_register_slice_M_AXI_BRESP;
  wire axi_register_slice_M_AXI_BVALID;
  wire [31:0]axi_register_slice_M_AXI_RDATA;
  wire axi_register_slice_M_AXI_RREADY;
  wire [1:0]axi_register_slice_M_AXI_RRESP;
  wire axi_register_slice_M_AXI_RVALID;
  wire [31:0]axi_register_slice_M_AXI_WDATA;
  wire axi_register_slice_M_AXI_WREADY;
  wire [3:0]axi_register_slice_M_AXI_WSTRB;
  wire axi_register_slice_M_AXI_WVALID;
  wire [511:0]axis_pb_tdata;
  wire [63:0]axis_pb_tkeep;
  wire axis_pb_tlast;
  wire axis_pb_tready;
  wire axis_pb_tvalid;
  wire [511:0]axis_tx_tdata;
  wire [63:0]axis_tx_tkeep;
  wire axis_tx_tlast;
  wire axis_tx_tready;
  wire axis_tx_tvalid;
  wire cmac_control_0_ctl_tx_ctl_tx_send_rfi;
  wire [19:0]cmac_control_0_gt_trans_debug_gt_txdiffctrl;
  wire [19:0]cmac_control_0_gt_trans_debug_gt_txprecursor;
  wire cmac_control_0_reset_rx_datapath;
  wire cmac_control_0_sys_reset_out;
  wire cmac_usplus_0_gt_txusrclk2;
  wire cmac_usplus_0_stat_rx_stat_rx_aligned;
  (* CONN_BUS_INFO = "cmac_usplus_axis_rx xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]cmac_usplus_axis_rx_TDATA;
  (* CONN_BUS_INFO = "cmac_usplus_axis_rx xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]cmac_usplus_axis_rx_TKEEP;
  (* CONN_BUS_INFO = "cmac_usplus_axis_rx xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire cmac_usplus_axis_rx_TLAST;
  (* CONN_BUS_INFO = "cmac_usplus_axis_rx xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire cmac_usplus_axis_rx_TUSER;
  (* CONN_BUS_INFO = "cmac_usplus_axis_rx xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire cmac_usplus_axis_rx_TVALID;
  wire [55:0]cmac_usplus_rx_preambleout;
  wire gt_ref_clk_clk_n;
  wire gt_ref_clk_clk_p;
  wire [3:0]gt_serial_port_grx_n;
  wire [3:0]gt_serial_port_grx_p;
  wire [3:0]gt_serial_port_gtx_n;
  wire [3:0]gt_serial_port_gtx_p;
  wire [0:0]one_dout;
  wire rx_aligned;
  wire [31:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sys_clk;
  wire [511:0]tx_mux_axis_out_TDATA;
  wire [63:0]tx_mux_axis_out_TKEEP;
  wire tx_mux_axis_out_TLAST;
  wire tx_mux_axis_out_TREADY;
  wire tx_mux_axis_out_TVALID;

  assign cmac_clk = cmac_usplus_0_gt_txusrclk2;
  top_level_axi_register_slice_1 axi_register_slice
       (.aclk(sys_clk),
        .aresetn(one_dout),
        .m_axi_araddr(axi_register_slice_M_AXI_ARADDR),
        .m_axi_arready(axi_register_slice_M_AXI_ARREADY),
        .m_axi_arvalid(axi_register_slice_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_M_AXI_AWADDR),
        .m_axi_awready(axi_register_slice_M_AXI_AWREADY),
        .m_axi_awvalid(axi_register_slice_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_M_AXI_RDATA),
        .m_axi_rready(axi_register_slice_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_M_AXI_WDATA),
        .m_axi_wready(axi_register_slice_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_M_AXI_WVALID),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  top_level_cmac_control_1 cmac_control
       (.ctl_tx_send_rfi(cmac_control_0_ctl_tx_ctl_tx_send_rfi),
        .gt_txdiffctrl(cmac_control_0_gt_trans_debug_gt_txdiffctrl),
        .gt_txprecursor(cmac_control_0_gt_trans_debug_gt_txprecursor),
        .init_clk(sys_clk),
        .reset_rx_datapath(cmac_control_0_reset_rx_datapath),
        .rx_clk(cmac_usplus_0_gt_txusrclk2),
        .stat_rx_aligned(cmac_usplus_0_stat_rx_stat_rx_aligned),
        .sync_rx_aligned(rx_aligned),
        .sys_reset_out(cmac_control_0_sys_reset_out),
        .sys_resetn_in(one_dout));
  top_level_cmac_rx_slice_0_1 cmac_rx_slice
       (.axis_in_tdata(cmac_usplus_axis_rx_TDATA),
        .axis_in_tkeep(cmac_usplus_axis_rx_TKEEP),
        .axis_in_tlast(cmac_usplus_axis_rx_TLAST),
        .axis_in_tuser(cmac_usplus_axis_rx_TUSER),
        .axis_in_tvalid(cmac_usplus_axis_rx_TVALID),
        .axis_out_tdata(M_AXIS_tdata),
        .axis_out_tkeep(M_AXIS_tkeep),
        .axis_out_tlast(M_AXIS_tlast),
        .axis_out_tvalid(M_AXIS_tvalid),
        .clk(cmac_usplus_0_gt_txusrclk2));
  top_level_cmac_usplus_1 cmac_usplus
       (.common0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpen(1'b0),
        .common0_drpwe(1'b0),
        .core_drp_reset(1'b0),
        .core_rx_reset(1'b0),
        .core_tx_reset(1'b0),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_0_ctl_tx_ctl_tx_send_rfi),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(sys_clk),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpen(1'b0),
        .gt0_drpwe(1'b0),
        .gt1_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpen(1'b0),
        .gt1_drpwe(1'b0),
        .gt2_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpen(1'b0),
        .gt2_drpwe(1'b0),
        .gt3_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpen(1'b0),
        .gt3_drpwe(1'b0),
        .gt_drpclk(sys_clk),
        .gt_eyescanreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_eyescantrigger({1'b0,1'b0,1'b0,1'b0}),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(gt_ref_clk_clk_n),
        .gt_ref_clk_p(gt_ref_clk_clk_p),
        .gt_rxcdrhold({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxdfelpmreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxlpmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxn_in(gt_serial_port_grx_n),
        .gt_rxp_in(gt_serial_port_grx_p),
        .gt_rxpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbscntreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_rxrate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txdiffctrl(cmac_control_0_gt_trans_debug_gt_txdiffctrl),
        .gt_txinhibit({1'b0,1'b0,1'b0,1'b0}),
        .gt_txn_out(gt_serial_port_gtx_n),
        .gt_txp_out(gt_serial_port_gtx_p),
        .gt_txpippmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpippmsel({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpostcursor({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbsforceerr({1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprecursor(cmac_control_0_gt_trans_debug_gt_txprecursor),
        .gt_txusrclk2(cmac_usplus_0_gt_txusrclk2),
        .gtwiz_reset_rx_datapath(cmac_control_0_reset_rx_datapath),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(sys_clk),
        .pm_tick(1'b0),
        .rx_axis_tdata(cmac_usplus_axis_rx_TDATA),
        .rx_axis_tkeep(cmac_usplus_axis_rx_TKEEP),
        .rx_axis_tlast(cmac_usplus_axis_rx_TLAST),
        .rx_axis_tuser(cmac_usplus_axis_rx_TUSER),
        .rx_axis_tvalid(cmac_usplus_axis_rx_TVALID),
        .rx_clk(cmac_usplus_0_gt_txusrclk2),
        .rx_preambleout(cmac_usplus_rx_preambleout),
        .s_axi_aclk(sys_clk),
        .s_axi_araddr(axi_register_slice_M_AXI_ARADDR),
        .s_axi_arready(axi_register_slice_M_AXI_ARREADY),
        .s_axi_arvalid(axi_register_slice_M_AXI_ARVALID),
        .s_axi_awaddr(axi_register_slice_M_AXI_AWADDR),
        .s_axi_awready(axi_register_slice_M_AXI_AWREADY),
        .s_axi_awvalid(axi_register_slice_M_AXI_AWVALID),
        .s_axi_bready(axi_register_slice_M_AXI_BREADY),
        .s_axi_bresp(axi_register_slice_M_AXI_BRESP),
        .s_axi_bvalid(axi_register_slice_M_AXI_BVALID),
        .s_axi_rdata(axi_register_slice_M_AXI_RDATA),
        .s_axi_rready(axi_register_slice_M_AXI_RREADY),
        .s_axi_rresp(axi_register_slice_M_AXI_RRESP),
        .s_axi_rvalid(axi_register_slice_M_AXI_RVALID),
        .s_axi_sreset(1'b0),
        .s_axi_wdata(axi_register_slice_M_AXI_WDATA),
        .s_axi_wready(axi_register_slice_M_AXI_WREADY),
        .s_axi_wstrb(axi_register_slice_M_AXI_WSTRB),
        .s_axi_wvalid(axi_register_slice_M_AXI_WVALID),
        .stat_rx_aligned(cmac_usplus_0_stat_rx_stat_rx_aligned),
        .sys_reset(cmac_control_0_sys_reset_out),
        .tx_axis_tdata(tx_mux_axis_out_TDATA),
        .tx_axis_tkeep(tx_mux_axis_out_TKEEP),
        .tx_axis_tlast(tx_mux_axis_out_TLAST),
        .tx_axis_tready(tx_mux_axis_out_TREADY),
        .tx_axis_tuser(1'b0),
        .tx_axis_tvalid(tx_mux_axis_out_TVALID),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  assign one_dout = 1'h1;
  top_level_system_ila_1_2 system_ila
       (.SLOT_0_AXIS_tdata(cmac_usplus_axis_rx_TDATA),
        .SLOT_0_AXIS_tkeep(cmac_usplus_axis_rx_TKEEP),
        .SLOT_0_AXIS_tlast(cmac_usplus_axis_rx_TLAST),
        .SLOT_0_AXIS_tuser(cmac_usplus_axis_rx_TUSER),
        .SLOT_0_AXIS_tvalid(cmac_usplus_axis_rx_TVALID),
        .SLOT_1_AXIS_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_1_AXIS_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .SLOT_1_AXIS_tlast(1'b0),
        .SLOT_1_AXIS_tready(1'b1),
        .SLOT_1_AXIS_tvalid(1'b0),
        .clk(cmac_usplus_0_gt_txusrclk2),
        .probe0(cmac_usplus_rx_preambleout),
        .resetn(1'b1));
  tx_mux_imp_R2KBOJ tx_mux
       (.async_source_select(async_source_select),
        .axis_out_tdata(tx_mux_axis_out_TDATA),
        .axis_out_tkeep(tx_mux_axis_out_TKEEP),
        .axis_out_tlast(tx_mux_axis_out_TLAST),
        .axis_out_tready(tx_mux_axis_out_TREADY),
        .axis_out_tvalid(tx_mux_axis_out_TVALID),
        .axis_pb_tdata(axis_pb_tdata),
        .axis_pb_tkeep(axis_pb_tkeep),
        .axis_pb_tlast(axis_pb_tlast),
        .axis_pb_tready(axis_pb_tready),
        .axis_pb_tvalid(axis_pb_tvalid),
        .axis_tx_tdata(axis_tx_tdata),
        .axis_tx_tkeep(axis_tx_tkeep),
        .axis_tx_tlast(axis_tx_tlast),
        .axis_tx_tready(axis_tx_tready),
        .axis_tx_tvalid(axis_tx_tvalid),
        .cmac_clk(cmac_usplus_0_gt_txusrclk2),
        .resetn(one_dout),
        .sys_clk(sys_clk));
endmodule

module ethernet_imp_1SW6PPD
   (axis_pb0_tdata,
    axis_pb0_tkeep,
    axis_pb0_tlast,
    axis_pb0_tready,
    axis_pb0_tvalid,
    axis_pb1_tdata,
    axis_pb1_tkeep,
    axis_pb1_tlast,
    axis_pb1_tready,
    axis_pb1_tvalid,
    axis_rx0_tdata,
    axis_rx0_tkeep,
    axis_rx0_tlast,
    axis_rx0_tvalid,
    axis_rx1_tdata,
    axis_rx1_tkeep,
    axis_rx1_tlast,
    axis_rx1_tvalid,
    axis_tx0_tdata,
    axis_tx0_tkeep,
    axis_tx0_tlast,
    axis_tx0_tready,
    axis_tx0_tvalid,
    axis_tx1_tdata,
    axis_tx1_tkeep,
    axis_tx1_tlast,
    axis_tx1_tready,
    axis_tx1_tvalid,
    cmac0_clk,
    cmac1_clk,
    link_status,
    qsfp0_clk_clk_n,
    qsfp0_clk_clk_p,
    qsfp0_gt_grx_n,
    qsfp0_gt_grx_p,
    qsfp0_gt_gtx_n,
    qsfp0_gt_gtx_p,
    qsfp0_leds,
    qsfp1_clk_clk_n,
    qsfp1_clk_clk_p,
    qsfp1_gt_grx_n,
    qsfp1_gt_grx_p,
    qsfp1_gt_gtx_n,
    qsfp1_gt_gtx_p,
    qsfp1_leds,
    s0_axi_stat_araddr,
    s0_axi_stat_arprot,
    s0_axi_stat_arready,
    s0_axi_stat_arvalid,
    s0_axi_stat_awaddr,
    s0_axi_stat_awprot,
    s0_axi_stat_awready,
    s0_axi_stat_awvalid,
    s0_axi_stat_bready,
    s0_axi_stat_bresp,
    s0_axi_stat_bvalid,
    s0_axi_stat_rdata,
    s0_axi_stat_rready,
    s0_axi_stat_rresp,
    s0_axi_stat_rvalid,
    s0_axi_stat_wdata,
    s0_axi_stat_wready,
    s0_axi_stat_wstrb,
    s0_axi_stat_wvalid,
    s1_axi_stat_araddr,
    s1_axi_stat_arprot,
    s1_axi_stat_arready,
    s1_axi_stat_arvalid,
    s1_axi_stat_awaddr,
    s1_axi_stat_awprot,
    s1_axi_stat_awready,
    s1_axi_stat_awvalid,
    s1_axi_stat_bready,
    s1_axi_stat_bresp,
    s1_axi_stat_bvalid,
    s1_axi_stat_rdata,
    s1_axi_stat_rready,
    s1_axi_stat_rresp,
    s1_axi_stat_rvalid,
    s1_axi_stat_wdata,
    s1_axi_stat_wready,
    s1_axi_stat_wstrb,
    s1_axi_stat_wvalid,
    sys_clk,
    tx0_mux_sel,
    tx1_mux_sel);
  input [511:0]axis_pb0_tdata;
  input [63:0]axis_pb0_tkeep;
  input axis_pb0_tlast;
  output axis_pb0_tready;
  input axis_pb0_tvalid;
  input [511:0]axis_pb1_tdata;
  input [63:0]axis_pb1_tkeep;
  input axis_pb1_tlast;
  output axis_pb1_tready;
  input axis_pb1_tvalid;
  output [511:0]axis_rx0_tdata;
  output [63:0]axis_rx0_tkeep;
  output axis_rx0_tlast;
  output axis_rx0_tvalid;
  output [511:0]axis_rx1_tdata;
  output [63:0]axis_rx1_tkeep;
  output axis_rx1_tlast;
  output axis_rx1_tvalid;
  input [511:0]axis_tx0_tdata;
  input [63:0]axis_tx0_tkeep;
  input axis_tx0_tlast;
  output axis_tx0_tready;
  input axis_tx0_tvalid;
  input [511:0]axis_tx1_tdata;
  input [63:0]axis_tx1_tkeep;
  input axis_tx1_tlast;
  output axis_tx1_tready;
  input axis_tx1_tvalid;
  output cmac0_clk;
  output cmac1_clk;
  output [1:0]link_status;
  input qsfp0_clk_clk_n;
  input qsfp0_clk_clk_p;
  input [3:0]qsfp0_gt_grx_n;
  input [3:0]qsfp0_gt_grx_p;
  output [3:0]qsfp0_gt_gtx_n;
  output [3:0]qsfp0_gt_gtx_p;
  output [2:0]qsfp0_leds;
  input qsfp1_clk_clk_n;
  input qsfp1_clk_clk_p;
  input [3:0]qsfp1_gt_grx_n;
  input [3:0]qsfp1_gt_grx_p;
  output [3:0]qsfp1_gt_gtx_n;
  output [3:0]qsfp1_gt_gtx_p;
  output [2:0]qsfp1_leds;
  input [31:0]s0_axi_stat_araddr;
  input [2:0]s0_axi_stat_arprot;
  output s0_axi_stat_arready;
  input s0_axi_stat_arvalid;
  input [31:0]s0_axi_stat_awaddr;
  input [2:0]s0_axi_stat_awprot;
  output s0_axi_stat_awready;
  input s0_axi_stat_awvalid;
  input s0_axi_stat_bready;
  output [1:0]s0_axi_stat_bresp;
  output s0_axi_stat_bvalid;
  output [31:0]s0_axi_stat_rdata;
  input s0_axi_stat_rready;
  output [1:0]s0_axi_stat_rresp;
  output s0_axi_stat_rvalid;
  input [31:0]s0_axi_stat_wdata;
  output s0_axi_stat_wready;
  input [3:0]s0_axi_stat_wstrb;
  input s0_axi_stat_wvalid;
  input [31:0]s1_axi_stat_araddr;
  input [2:0]s1_axi_stat_arprot;
  output s1_axi_stat_arready;
  input s1_axi_stat_arvalid;
  input [31:0]s1_axi_stat_awaddr;
  input [2:0]s1_axi_stat_awprot;
  output s1_axi_stat_awready;
  input s1_axi_stat_awvalid;
  input s1_axi_stat_bready;
  output [1:0]s1_axi_stat_bresp;
  output s1_axi_stat_bvalid;
  output [31:0]s1_axi_stat_rdata;
  input s1_axi_stat_rready;
  output [1:0]s1_axi_stat_rresp;
  output s1_axi_stat_rvalid;
  input [31:0]s1_axi_stat_wdata;
  output s1_axi_stat_wready;
  input [3:0]s1_axi_stat_wstrb;
  input s1_axi_stat_wvalid;
  input sys_clk;
  input tx0_mux_sel;
  input tx1_mux_sel;

  wire [511:0]axis_pb0_tdata;
  wire [63:0]axis_pb0_tkeep;
  wire axis_pb0_tlast;
  wire axis_pb0_tready;
  wire axis_pb0_tvalid;
  wire [511:0]axis_pb1_tdata;
  wire [63:0]axis_pb1_tkeep;
  wire axis_pb1_tlast;
  wire axis_pb1_tready;
  wire axis_pb1_tvalid;
  wire [511:0]axis_rx0_tdata;
  wire [63:0]axis_rx0_tkeep;
  wire axis_rx0_tlast;
  wire axis_rx0_tvalid;
  wire [511:0]axis_rx1_tdata;
  wire [63:0]axis_rx1_tkeep;
  wire axis_rx1_tlast;
  wire axis_rx1_tvalid;
  wire [511:0]axis_tx0_tdata;
  wire [63:0]axis_tx0_tkeep;
  wire axis_tx0_tlast;
  wire axis_tx0_tready;
  wire axis_tx0_tvalid;
  wire [511:0]axis_tx1_tdata;
  wire [63:0]axis_tx1_tkeep;
  wire axis_tx1_tlast;
  wire axis_tx1_tready;
  wire axis_tx1_tvalid;
  wire cmac0_clk;
  wire cmac1_clk;
  wire eth0_rx_aligned;
  wire eth1_rx_aligned;
  wire [1:0]link_status;
  wire qsfp0_clk_clk_n;
  wire qsfp0_clk_clk_p;
  wire [3:0]qsfp0_gt_grx_n;
  wire [3:0]qsfp0_gt_grx_p;
  wire [3:0]qsfp0_gt_gtx_n;
  wire [3:0]qsfp0_gt_gtx_p;
  wire [2:0]qsfp0_leds;
  wire qsfp1_clk_clk_n;
  wire qsfp1_clk_clk_p;
  wire [3:0]qsfp1_gt_grx_n;
  wire [3:0]qsfp1_gt_grx_p;
  wire [3:0]qsfp1_gt_gtx_n;
  wire [3:0]qsfp1_gt_gtx_p;
  wire [2:0]qsfp1_leds;
  wire [31:0]s0_axi_stat_araddr;
  wire [2:0]s0_axi_stat_arprot;
  wire s0_axi_stat_arready;
  wire s0_axi_stat_arvalid;
  wire [31:0]s0_axi_stat_awaddr;
  wire [2:0]s0_axi_stat_awprot;
  wire s0_axi_stat_awready;
  wire s0_axi_stat_awvalid;
  wire s0_axi_stat_bready;
  wire [1:0]s0_axi_stat_bresp;
  wire s0_axi_stat_bvalid;
  wire [31:0]s0_axi_stat_rdata;
  wire s0_axi_stat_rready;
  wire [1:0]s0_axi_stat_rresp;
  wire s0_axi_stat_rvalid;
  wire [31:0]s0_axi_stat_wdata;
  wire s0_axi_stat_wready;
  wire [3:0]s0_axi_stat_wstrb;
  wire s0_axi_stat_wvalid;
  wire [31:0]s1_axi_stat_araddr;
  wire [2:0]s1_axi_stat_arprot;
  wire s1_axi_stat_arready;
  wire s1_axi_stat_arvalid;
  wire [31:0]s1_axi_stat_awaddr;
  wire [2:0]s1_axi_stat_awprot;
  wire s1_axi_stat_awready;
  wire s1_axi_stat_awvalid;
  wire s1_axi_stat_bready;
  wire [1:0]s1_axi_stat_bresp;
  wire s1_axi_stat_bvalid;
  wire [31:0]s1_axi_stat_rdata;
  wire s1_axi_stat_rready;
  wire [1:0]s1_axi_stat_rresp;
  wire s1_axi_stat_rvalid;
  wire [31:0]s1_axi_stat_wdata;
  wire s1_axi_stat_wready;
  wire [3:0]s1_axi_stat_wstrb;
  wire s1_axi_stat_wvalid;
  wire sys_clk;
  wire tx0_mux_sel;
  wire tx1_mux_sel;

  eth0_imp_B1LCBY eth0
       (.M_AXIS_tdata(axis_rx0_tdata),
        .M_AXIS_tkeep(axis_rx0_tkeep),
        .M_AXIS_tlast(axis_rx0_tlast),
        .M_AXIS_tvalid(axis_rx0_tvalid),
        .async_source_select(tx0_mux_sel),
        .axis_pb_tdata(axis_pb0_tdata),
        .axis_pb_tkeep(axis_pb0_tkeep),
        .axis_pb_tlast(axis_pb0_tlast),
        .axis_pb_tready(axis_pb0_tready),
        .axis_pb_tvalid(axis_pb0_tvalid),
        .axis_tx_tdata(axis_tx0_tdata),
        .axis_tx_tkeep(axis_tx0_tkeep),
        .axis_tx_tlast(axis_tx0_tlast),
        .axis_tx_tready(axis_tx0_tready),
        .axis_tx_tvalid(axis_tx0_tvalid),
        .cmac_clk(cmac0_clk),
        .gt_ref_clk_clk_n(qsfp0_clk_clk_n),
        .gt_ref_clk_clk_p(qsfp0_clk_clk_p),
        .gt_serial_port_grx_n(qsfp0_gt_grx_n),
        .gt_serial_port_grx_p(qsfp0_gt_grx_p),
        .gt_serial_port_gtx_n(qsfp0_gt_gtx_n),
        .gt_serial_port_gtx_p(qsfp0_gt_gtx_p),
        .rx_aligned(eth0_rx_aligned),
        .s_axi_araddr(s0_axi_stat_araddr),
        .s_axi_arprot(s0_axi_stat_arprot),
        .s_axi_arready(s0_axi_stat_arready),
        .s_axi_arvalid(s0_axi_stat_arvalid),
        .s_axi_awaddr(s0_axi_stat_awaddr),
        .s_axi_awprot(s0_axi_stat_awprot),
        .s_axi_awready(s0_axi_stat_awready),
        .s_axi_awvalid(s0_axi_stat_awvalid),
        .s_axi_bready(s0_axi_stat_bready),
        .s_axi_bresp(s0_axi_stat_bresp),
        .s_axi_bvalid(s0_axi_stat_bvalid),
        .s_axi_rdata(s0_axi_stat_rdata),
        .s_axi_rready(s0_axi_stat_rready),
        .s_axi_rresp(s0_axi_stat_rresp),
        .s_axi_rvalid(s0_axi_stat_rvalid),
        .s_axi_wdata(s0_axi_stat_wdata),
        .s_axi_wready(s0_axi_stat_wready),
        .s_axi_wstrb(s0_axi_stat_wstrb),
        .s_axi_wvalid(s0_axi_stat_wvalid),
        .sys_clk(sys_clk));
  eth1_imp_1JICUXC eth1
       (.M_AXIS_tdata(axis_rx1_tdata),
        .M_AXIS_tkeep(axis_rx1_tkeep),
        .M_AXIS_tlast(axis_rx1_tlast),
        .M_AXIS_tvalid(axis_rx1_tvalid),
        .async_source_select(tx1_mux_sel),
        .axis_pb_tdata(axis_pb1_tdata),
        .axis_pb_tkeep(axis_pb1_tkeep),
        .axis_pb_tlast(axis_pb1_tlast),
        .axis_pb_tready(axis_pb1_tready),
        .axis_pb_tvalid(axis_pb1_tvalid),
        .axis_tx_tdata(axis_tx1_tdata),
        .axis_tx_tkeep(axis_tx1_tkeep),
        .axis_tx_tlast(axis_tx1_tlast),
        .axis_tx_tready(axis_tx1_tready),
        .axis_tx_tvalid(axis_tx1_tvalid),
        .cmac_clk(cmac1_clk),
        .gt_ref_clk_clk_n(qsfp1_clk_clk_n),
        .gt_ref_clk_clk_p(qsfp1_clk_clk_p),
        .gt_serial_port_grx_n(qsfp1_gt_grx_n),
        .gt_serial_port_grx_p(qsfp1_gt_grx_p),
        .gt_serial_port_gtx_n(qsfp1_gt_gtx_n),
        .gt_serial_port_gtx_p(qsfp1_gt_gtx_p),
        .rx_aligned(eth1_rx_aligned),
        .s_axi_araddr(s1_axi_stat_araddr),
        .s_axi_arprot(s1_axi_stat_arprot),
        .s_axi_arready(s1_axi_stat_arready),
        .s_axi_arvalid(s1_axi_stat_arvalid),
        .s_axi_awaddr(s1_axi_stat_awaddr),
        .s_axi_awprot(s1_axi_stat_awprot),
        .s_axi_awready(s1_axi_stat_awready),
        .s_axi_awvalid(s1_axi_stat_awvalid),
        .s_axi_bready(s1_axi_stat_bready),
        .s_axi_bresp(s1_axi_stat_bresp),
        .s_axi_bvalid(s1_axi_stat_bvalid),
        .s_axi_rdata(s1_axi_stat_rdata),
        .s_axi_rready(s1_axi_stat_rready),
        .s_axi_rresp(s1_axi_stat_rresp),
        .s_axi_rvalid(s1_axi_stat_rvalid),
        .s_axi_wdata(s1_axi_stat_wdata),
        .s_axi_wready(s1_axi_stat_wready),
        .s_axi_wstrb(s1_axi_stat_wstrb),
        .s_axi_wvalid(s1_axi_stat_wvalid),
        .sys_clk(sys_clk));
  top_level_status_leds_0_0 status_leds
       (.link0_up(eth0_rx_aligned),
        .link1_up(eth1_rx_aligned),
        .link_status(link_status),
        .qsfp0_leds(qsfp0_leds),
        .qsfp1_leds(qsfp1_leds));
endmodule

module hbm_0_imp_1GD7COY
   (S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    cmac_clk,
    cmac_resetn,
    hbm_cattrip,
    hbm_refclk_clk_n,
    hbm_refclk_clk_p,
    hbm_temp,
    sys_clk,
    sys_resetn);
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [1:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [1:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [1:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input [63:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [3:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [63:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [3:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [511:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [511:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [63:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input cmac_clk;
  output cmac_resetn;
  output hbm_cattrip;
  input [0:0]hbm_refclk_clk_n;
  input [0:0]hbm_refclk_clk_p;
  output [6:0]hbm_temp;
  input sys_clk;
  input sys_resetn;

  wire [63:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [1:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [63:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [1:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire [1:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire [1:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [63:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [3:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire S01_AXI_arready;
  wire [2:0]S01_AXI_arsize;
  wire S01_AXI_arvalid;
  wire [63:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [3:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [2:0]S01_AXI_awsize;
  wire S01_AXI_awvalid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [511:0]S01_AXI_rdata;
  wire S01_AXI_rlast;
  wire S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire S01_AXI_rvalid;
  wire [511:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [63:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [33:0]axi4_splitter_0_M0_AXI_ARADDR;
  wire [1:0]axi4_splitter_0_M0_AXI_ARBURST;
  wire [3:0]axi4_splitter_0_M0_AXI_ARCACHE;
  wire [4:0]axi4_splitter_0_M0_AXI_ARID;
  wire [7:0]axi4_splitter_0_M0_AXI_ARLEN;
  wire axi4_splitter_0_M0_AXI_ARLOCK;
  wire [2:0]axi4_splitter_0_M0_AXI_ARPROT;
  wire [3:0]axi4_splitter_0_M0_AXI_ARQOS;
  wire axi4_splitter_0_M0_AXI_ARREADY;
  wire [2:0]axi4_splitter_0_M0_AXI_ARSIZE;
  wire axi4_splitter_0_M0_AXI_ARVALID;
  wire [33:0]axi4_splitter_0_M0_AXI_AWADDR;
  wire [1:0]axi4_splitter_0_M0_AXI_AWBURST;
  wire [3:0]axi4_splitter_0_M0_AXI_AWCACHE;
  wire [4:0]axi4_splitter_0_M0_AXI_AWID;
  wire [7:0]axi4_splitter_0_M0_AXI_AWLEN;
  wire axi4_splitter_0_M0_AXI_AWLOCK;
  wire [2:0]axi4_splitter_0_M0_AXI_AWPROT;
  wire [3:0]axi4_splitter_0_M0_AXI_AWQOS;
  wire axi4_splitter_0_M0_AXI_AWREADY;
  wire [2:0]axi4_splitter_0_M0_AXI_AWSIZE;
  wire axi4_splitter_0_M0_AXI_AWVALID;
  wire axi4_splitter_0_M0_AXI_BREADY;
  wire [1:0]axi4_splitter_0_M0_AXI_BRESP;
  wire axi4_splitter_0_M0_AXI_BVALID;
  wire [255:0]axi4_splitter_0_M0_AXI_RDATA;
  wire [4:0]axi4_splitter_0_M0_AXI_RID;
  wire axi4_splitter_0_M0_AXI_RLAST;
  wire axi4_splitter_0_M0_AXI_RREADY;
  wire [1:0]axi4_splitter_0_M0_AXI_RRESP;
  wire axi4_splitter_0_M0_AXI_RVALID;
  wire [255:0]axi4_splitter_0_M0_AXI_WDATA;
  wire axi4_splitter_0_M0_AXI_WLAST;
  wire axi4_splitter_0_M0_AXI_WREADY;
  wire [31:0]axi4_splitter_0_M0_AXI_WSTRB;
  wire axi4_splitter_0_M0_AXI_WVALID;
  wire [33:0]axi4_splitter_0_M1_AXI_ARADDR;
  wire [1:0]axi4_splitter_0_M1_AXI_ARBURST;
  wire [3:0]axi4_splitter_0_M1_AXI_ARCACHE;
  wire [4:0]axi4_splitter_0_M1_AXI_ARID;
  wire [7:0]axi4_splitter_0_M1_AXI_ARLEN;
  wire axi4_splitter_0_M1_AXI_ARLOCK;
  wire [2:0]axi4_splitter_0_M1_AXI_ARPROT;
  wire [3:0]axi4_splitter_0_M1_AXI_ARQOS;
  wire axi4_splitter_0_M1_AXI_ARREADY;
  wire [2:0]axi4_splitter_0_M1_AXI_ARSIZE;
  wire axi4_splitter_0_M1_AXI_ARVALID;
  wire [33:0]axi4_splitter_0_M1_AXI_AWADDR;
  wire [1:0]axi4_splitter_0_M1_AXI_AWBURST;
  wire [3:0]axi4_splitter_0_M1_AXI_AWCACHE;
  wire [4:0]axi4_splitter_0_M1_AXI_AWID;
  wire [7:0]axi4_splitter_0_M1_AXI_AWLEN;
  wire axi4_splitter_0_M1_AXI_AWLOCK;
  wire [2:0]axi4_splitter_0_M1_AXI_AWPROT;
  wire [3:0]axi4_splitter_0_M1_AXI_AWQOS;
  wire axi4_splitter_0_M1_AXI_AWREADY;
  wire [2:0]axi4_splitter_0_M1_AXI_AWSIZE;
  wire axi4_splitter_0_M1_AXI_AWVALID;
  wire axi4_splitter_0_M1_AXI_BREADY;
  wire [1:0]axi4_splitter_0_M1_AXI_BRESP;
  wire axi4_splitter_0_M1_AXI_BVALID;
  wire [255:0]axi4_splitter_0_M1_AXI_RDATA;
  wire [4:0]axi4_splitter_0_M1_AXI_RID;
  wire axi4_splitter_0_M1_AXI_RLAST;
  wire axi4_splitter_0_M1_AXI_RREADY;
  wire [1:0]axi4_splitter_0_M1_AXI_RRESP;
  wire axi4_splitter_0_M1_AXI_RVALID;
  wire [255:0]axi4_splitter_0_M1_AXI_WDATA;
  wire axi4_splitter_0_M1_AXI_WLAST;
  wire axi4_splitter_0_M1_AXI_WREADY;
  wire [31:0]axi4_splitter_0_M1_AXI_WSTRB;
  wire axi4_splitter_0_M1_AXI_WVALID;
  wire [33:0]axi4_splitter_1_M0_AXI_ARADDR;
  wire [1:0]axi4_splitter_1_M0_AXI_ARBURST;
  wire [3:0]axi4_splitter_1_M0_AXI_ARCACHE;
  wire [4:0]axi4_splitter_1_M0_AXI_ARID;
  wire [7:0]axi4_splitter_1_M0_AXI_ARLEN;
  wire axi4_splitter_1_M0_AXI_ARLOCK;
  wire [2:0]axi4_splitter_1_M0_AXI_ARPROT;
  wire [3:0]axi4_splitter_1_M0_AXI_ARQOS;
  wire axi4_splitter_1_M0_AXI_ARREADY;
  wire [2:0]axi4_splitter_1_M0_AXI_ARSIZE;
  wire axi4_splitter_1_M0_AXI_ARVALID;
  wire [33:0]axi4_splitter_1_M0_AXI_AWADDR;
  wire [1:0]axi4_splitter_1_M0_AXI_AWBURST;
  wire [3:0]axi4_splitter_1_M0_AXI_AWCACHE;
  wire [4:0]axi4_splitter_1_M0_AXI_AWID;
  wire [7:0]axi4_splitter_1_M0_AXI_AWLEN;
  wire axi4_splitter_1_M0_AXI_AWLOCK;
  wire [2:0]axi4_splitter_1_M0_AXI_AWPROT;
  wire [3:0]axi4_splitter_1_M0_AXI_AWQOS;
  wire axi4_splitter_1_M0_AXI_AWREADY;
  wire [2:0]axi4_splitter_1_M0_AXI_AWSIZE;
  wire axi4_splitter_1_M0_AXI_AWVALID;
  wire axi4_splitter_1_M0_AXI_BREADY;
  wire [1:0]axi4_splitter_1_M0_AXI_BRESP;
  wire axi4_splitter_1_M0_AXI_BVALID;
  wire [255:0]axi4_splitter_1_M0_AXI_RDATA;
  wire [4:0]axi4_splitter_1_M0_AXI_RID;
  wire axi4_splitter_1_M0_AXI_RLAST;
  wire axi4_splitter_1_M0_AXI_RREADY;
  wire [1:0]axi4_splitter_1_M0_AXI_RRESP;
  wire axi4_splitter_1_M0_AXI_RVALID;
  wire [255:0]axi4_splitter_1_M0_AXI_WDATA;
  wire axi4_splitter_1_M0_AXI_WLAST;
  wire axi4_splitter_1_M0_AXI_WREADY;
  wire [31:0]axi4_splitter_1_M0_AXI_WSTRB;
  wire axi4_splitter_1_M0_AXI_WVALID;
  wire [33:0]axi4_splitter_1_M1_AXI_ARADDR;
  wire [1:0]axi4_splitter_1_M1_AXI_ARBURST;
  wire [3:0]axi4_splitter_1_M1_AXI_ARCACHE;
  wire [4:0]axi4_splitter_1_M1_AXI_ARID;
  wire [7:0]axi4_splitter_1_M1_AXI_ARLEN;
  wire axi4_splitter_1_M1_AXI_ARLOCK;
  wire [2:0]axi4_splitter_1_M1_AXI_ARPROT;
  wire [3:0]axi4_splitter_1_M1_AXI_ARQOS;
  wire axi4_splitter_1_M1_AXI_ARREADY;
  wire [2:0]axi4_splitter_1_M1_AXI_ARSIZE;
  wire axi4_splitter_1_M1_AXI_ARVALID;
  wire [33:0]axi4_splitter_1_M1_AXI_AWADDR;
  wire [1:0]axi4_splitter_1_M1_AXI_AWBURST;
  wire [3:0]axi4_splitter_1_M1_AXI_AWCACHE;
  wire [4:0]axi4_splitter_1_M1_AXI_AWID;
  wire [7:0]axi4_splitter_1_M1_AXI_AWLEN;
  wire axi4_splitter_1_M1_AXI_AWLOCK;
  wire [2:0]axi4_splitter_1_M1_AXI_AWPROT;
  wire [3:0]axi4_splitter_1_M1_AXI_AWQOS;
  wire axi4_splitter_1_M1_AXI_AWREADY;
  wire [2:0]axi4_splitter_1_M1_AXI_AWSIZE;
  wire axi4_splitter_1_M1_AXI_AWVALID;
  wire axi4_splitter_1_M1_AXI_BREADY;
  wire [1:0]axi4_splitter_1_M1_AXI_BRESP;
  wire axi4_splitter_1_M1_AXI_BVALID;
  wire [255:0]axi4_splitter_1_M1_AXI_RDATA;
  wire [4:0]axi4_splitter_1_M1_AXI_RID;
  wire axi4_splitter_1_M1_AXI_RLAST;
  wire axi4_splitter_1_M1_AXI_RREADY;
  wire [1:0]axi4_splitter_1_M1_AXI_RRESP;
  wire axi4_splitter_1_M1_AXI_RVALID;
  wire [255:0]axi4_splitter_1_M1_AXI_WDATA;
  wire axi4_splitter_1_M1_AXI_WLAST;
  wire axi4_splitter_1_M1_AXI_WREADY;
  wire [31:0]axi4_splitter_1_M1_AXI_WSTRB;
  wire axi4_splitter_1_M1_AXI_WVALID;
  wire axi_nn_aclk_1;
  wire axi_nn_resetn_1;
  wire [0:0]clock_buffer_IBUF_OUT;
  wire cmac_clk;
  wire cmac_resetn;
  wire hbm_cattrip;
  wire [0:0]hbm_refclk_clk_n;
  wire [0:0]hbm_refclk_clk_p;
  wire [6:0]hbm_temp;
  wire [63:0]main_crossbar_M00_AXI_ARADDR;
  wire [1:0]main_crossbar_M00_AXI_ARBURST;
  wire [3:0]main_crossbar_M00_AXI_ARCACHE;
  wire [7:0]main_crossbar_M00_AXI_ARLEN;
  wire [0:0]main_crossbar_M00_AXI_ARLOCK;
  wire [2:0]main_crossbar_M00_AXI_ARPROT;
  wire [3:0]main_crossbar_M00_AXI_ARQOS;
  wire main_crossbar_M00_AXI_ARREADY;
  wire [2:0]main_crossbar_M00_AXI_ARSIZE;
  wire main_crossbar_M00_AXI_ARVALID;
  wire [63:0]main_crossbar_M00_AXI_AWADDR;
  wire [1:0]main_crossbar_M00_AXI_AWBURST;
  wire [3:0]main_crossbar_M00_AXI_AWCACHE;
  wire [7:0]main_crossbar_M00_AXI_AWLEN;
  wire [0:0]main_crossbar_M00_AXI_AWLOCK;
  wire [2:0]main_crossbar_M00_AXI_AWPROT;
  wire [3:0]main_crossbar_M00_AXI_AWQOS;
  wire main_crossbar_M00_AXI_AWREADY;
  wire [2:0]main_crossbar_M00_AXI_AWSIZE;
  wire main_crossbar_M00_AXI_AWVALID;
  wire main_crossbar_M00_AXI_BREADY;
  wire [1:0]main_crossbar_M00_AXI_BRESP;
  wire main_crossbar_M00_AXI_BVALID;
  wire [511:0]main_crossbar_M00_AXI_RDATA;
  wire main_crossbar_M00_AXI_RLAST;
  wire main_crossbar_M00_AXI_RREADY;
  wire [1:0]main_crossbar_M00_AXI_RRESP;
  wire main_crossbar_M00_AXI_RVALID;
  wire [511:0]main_crossbar_M00_AXI_WDATA;
  wire main_crossbar_M00_AXI_WLAST;
  wire main_crossbar_M00_AXI_WREADY;
  wire [63:0]main_crossbar_M00_AXI_WSTRB;
  wire main_crossbar_M00_AXI_WVALID;
  wire [63:0]main_crossbar_M01_AXI_ARADDR;
  wire [1:0]main_crossbar_M01_AXI_ARBURST;
  wire [3:0]main_crossbar_M01_AXI_ARCACHE;
  wire [7:0]main_crossbar_M01_AXI_ARLEN;
  wire [0:0]main_crossbar_M01_AXI_ARLOCK;
  wire [2:0]main_crossbar_M01_AXI_ARPROT;
  wire [3:0]main_crossbar_M01_AXI_ARQOS;
  wire main_crossbar_M01_AXI_ARREADY;
  wire [2:0]main_crossbar_M01_AXI_ARSIZE;
  wire main_crossbar_M01_AXI_ARVALID;
  wire [63:0]main_crossbar_M01_AXI_AWADDR;
  wire [1:0]main_crossbar_M01_AXI_AWBURST;
  wire [3:0]main_crossbar_M01_AXI_AWCACHE;
  wire [7:0]main_crossbar_M01_AXI_AWLEN;
  wire [0:0]main_crossbar_M01_AXI_AWLOCK;
  wire [2:0]main_crossbar_M01_AXI_AWPROT;
  wire [3:0]main_crossbar_M01_AXI_AWQOS;
  wire main_crossbar_M01_AXI_AWREADY;
  wire [2:0]main_crossbar_M01_AXI_AWSIZE;
  wire main_crossbar_M01_AXI_AWVALID;
  wire main_crossbar_M01_AXI_BREADY;
  wire [1:0]main_crossbar_M01_AXI_BRESP;
  wire main_crossbar_M01_AXI_BVALID;
  wire [511:0]main_crossbar_M01_AXI_RDATA;
  wire main_crossbar_M01_AXI_RLAST;
  wire main_crossbar_M01_AXI_RREADY;
  wire [1:0]main_crossbar_M01_AXI_RRESP;
  wire main_crossbar_M01_AXI_RVALID;
  wire [511:0]main_crossbar_M01_AXI_WDATA;
  wire main_crossbar_M01_AXI_WLAST;
  wire main_crossbar_M01_AXI_WREADY;
  wire [63:0]main_crossbar_M01_AXI_WSTRB;
  wire main_crossbar_M01_AXI_WVALID;
  wire [0:0]one_dout;
  wire [33:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARLEN;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [33:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWLEN;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [255:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [255:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [31:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [33:0]smartconnect_0_M01_AXI_ARADDR;
  wire [1:0]smartconnect_0_M01_AXI_ARBURST;
  wire [3:0]smartconnect_0_M01_AXI_ARLEN;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire [2:0]smartconnect_0_M01_AXI_ARSIZE;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [33:0]smartconnect_0_M01_AXI_AWADDR;
  wire [1:0]smartconnect_0_M01_AXI_AWBURST;
  wire [3:0]smartconnect_0_M01_AXI_AWLEN;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire [2:0]smartconnect_0_M01_AXI_AWSIZE;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [255:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RLAST;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [255:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WLAST;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [31:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire [33:0]smartconnect_0_M02_AXI_ARADDR;
  wire [1:0]smartconnect_0_M02_AXI_ARBURST;
  wire [3:0]smartconnect_0_M02_AXI_ARLEN;
  wire smartconnect_0_M02_AXI_ARREADY;
  wire [2:0]smartconnect_0_M02_AXI_ARSIZE;
  wire smartconnect_0_M02_AXI_ARVALID;
  wire [33:0]smartconnect_0_M02_AXI_AWADDR;
  wire [1:0]smartconnect_0_M02_AXI_AWBURST;
  wire [3:0]smartconnect_0_M02_AXI_AWLEN;
  wire smartconnect_0_M02_AXI_AWREADY;
  wire [2:0]smartconnect_0_M02_AXI_AWSIZE;
  wire smartconnect_0_M02_AXI_AWVALID;
  wire smartconnect_0_M02_AXI_BREADY;
  wire [1:0]smartconnect_0_M02_AXI_BRESP;
  wire smartconnect_0_M02_AXI_BVALID;
  wire [255:0]smartconnect_0_M02_AXI_RDATA;
  wire smartconnect_0_M02_AXI_RLAST;
  wire smartconnect_0_M02_AXI_RREADY;
  wire [1:0]smartconnect_0_M02_AXI_RRESP;
  wire smartconnect_0_M02_AXI_RVALID;
  wire [255:0]smartconnect_0_M02_AXI_WDATA;
  wire smartconnect_0_M02_AXI_WLAST;
  wire smartconnect_0_M02_AXI_WREADY;
  wire [31:0]smartconnect_0_M02_AXI_WSTRB;
  wire smartconnect_0_M02_AXI_WVALID;
  wire [33:0]smartconnect_0_M03_AXI_ARADDR;
  wire [1:0]smartconnect_0_M03_AXI_ARBURST;
  wire [3:0]smartconnect_0_M03_AXI_ARLEN;
  wire smartconnect_0_M03_AXI_ARREADY;
  wire [2:0]smartconnect_0_M03_AXI_ARSIZE;
  wire smartconnect_0_M03_AXI_ARVALID;
  wire [33:0]smartconnect_0_M03_AXI_AWADDR;
  wire [1:0]smartconnect_0_M03_AXI_AWBURST;
  wire [3:0]smartconnect_0_M03_AXI_AWLEN;
  wire smartconnect_0_M03_AXI_AWREADY;
  wire [2:0]smartconnect_0_M03_AXI_AWSIZE;
  wire smartconnect_0_M03_AXI_AWVALID;
  wire smartconnect_0_M03_AXI_BREADY;
  wire [1:0]smartconnect_0_M03_AXI_BRESP;
  wire smartconnect_0_M03_AXI_BVALID;
  wire [255:0]smartconnect_0_M03_AXI_RDATA;
  wire smartconnect_0_M03_AXI_RLAST;
  wire smartconnect_0_M03_AXI_RREADY;
  wire [1:0]smartconnect_0_M03_AXI_RRESP;
  wire smartconnect_0_M03_AXI_RVALID;
  wire [255:0]smartconnect_0_M03_AXI_WDATA;
  wire smartconnect_0_M03_AXI_WLAST;
  wire smartconnect_0_M03_AXI_WREADY;
  wire [31:0]smartconnect_0_M03_AXI_WSTRB;
  wire smartconnect_0_M03_AXI_WVALID;
  wire [33:0]smartconnect_1_M00_AXI_ARADDR;
  wire [1:0]smartconnect_1_M00_AXI_ARBURST;
  wire [3:0]smartconnect_1_M00_AXI_ARLEN;
  wire smartconnect_1_M00_AXI_ARREADY;
  wire [2:0]smartconnect_1_M00_AXI_ARSIZE;
  wire smartconnect_1_M00_AXI_ARVALID;
  wire [33:0]smartconnect_1_M00_AXI_AWADDR;
  wire [1:0]smartconnect_1_M00_AXI_AWBURST;
  wire [3:0]smartconnect_1_M00_AXI_AWLEN;
  wire smartconnect_1_M00_AXI_AWREADY;
  wire [2:0]smartconnect_1_M00_AXI_AWSIZE;
  wire smartconnect_1_M00_AXI_AWVALID;
  wire smartconnect_1_M00_AXI_BREADY;
  wire [1:0]smartconnect_1_M00_AXI_BRESP;
  wire smartconnect_1_M00_AXI_BVALID;
  wire [255:0]smartconnect_1_M00_AXI_RDATA;
  wire smartconnect_1_M00_AXI_RLAST;
  wire smartconnect_1_M00_AXI_RREADY;
  wire [1:0]smartconnect_1_M00_AXI_RRESP;
  wire smartconnect_1_M00_AXI_RVALID;
  wire [255:0]smartconnect_1_M00_AXI_WDATA;
  wire smartconnect_1_M00_AXI_WLAST;
  wire smartconnect_1_M00_AXI_WREADY;
  wire [31:0]smartconnect_1_M00_AXI_WSTRB;
  wire smartconnect_1_M00_AXI_WVALID;
  wire [33:0]smartconnect_1_M01_AXI_ARADDR;
  wire [1:0]smartconnect_1_M01_AXI_ARBURST;
  wire [3:0]smartconnect_1_M01_AXI_ARLEN;
  wire smartconnect_1_M01_AXI_ARREADY;
  wire [2:0]smartconnect_1_M01_AXI_ARSIZE;
  wire smartconnect_1_M01_AXI_ARVALID;
  wire [33:0]smartconnect_1_M01_AXI_AWADDR;
  wire [1:0]smartconnect_1_M01_AXI_AWBURST;
  wire [3:0]smartconnect_1_M01_AXI_AWLEN;
  wire smartconnect_1_M01_AXI_AWREADY;
  wire [2:0]smartconnect_1_M01_AXI_AWSIZE;
  wire smartconnect_1_M01_AXI_AWVALID;
  wire smartconnect_1_M01_AXI_BREADY;
  wire [1:0]smartconnect_1_M01_AXI_BRESP;
  wire smartconnect_1_M01_AXI_BVALID;
  wire [255:0]smartconnect_1_M01_AXI_RDATA;
  wire smartconnect_1_M01_AXI_RLAST;
  wire smartconnect_1_M01_AXI_RREADY;
  wire [1:0]smartconnect_1_M01_AXI_RRESP;
  wire smartconnect_1_M01_AXI_RVALID;
  wire [255:0]smartconnect_1_M01_AXI_WDATA;
  wire smartconnect_1_M01_AXI_WLAST;
  wire smartconnect_1_M01_AXI_WREADY;
  wire [31:0]smartconnect_1_M01_AXI_WSTRB;
  wire smartconnect_1_M01_AXI_WVALID;
  wire [33:0]smartconnect_1_M02_AXI_ARADDR;
  wire [1:0]smartconnect_1_M02_AXI_ARBURST;
  wire [3:0]smartconnect_1_M02_AXI_ARLEN;
  wire smartconnect_1_M02_AXI_ARREADY;
  wire [2:0]smartconnect_1_M02_AXI_ARSIZE;
  wire smartconnect_1_M02_AXI_ARVALID;
  wire [33:0]smartconnect_1_M02_AXI_AWADDR;
  wire [1:0]smartconnect_1_M02_AXI_AWBURST;
  wire [3:0]smartconnect_1_M02_AXI_AWLEN;
  wire smartconnect_1_M02_AXI_AWREADY;
  wire [2:0]smartconnect_1_M02_AXI_AWSIZE;
  wire smartconnect_1_M02_AXI_AWVALID;
  wire smartconnect_1_M02_AXI_BREADY;
  wire [1:0]smartconnect_1_M02_AXI_BRESP;
  wire smartconnect_1_M02_AXI_BVALID;
  wire [255:0]smartconnect_1_M02_AXI_RDATA;
  wire smartconnect_1_M02_AXI_RLAST;
  wire smartconnect_1_M02_AXI_RREADY;
  wire [1:0]smartconnect_1_M02_AXI_RRESP;
  wire smartconnect_1_M02_AXI_RVALID;
  wire [255:0]smartconnect_1_M02_AXI_WDATA;
  wire smartconnect_1_M02_AXI_WLAST;
  wire smartconnect_1_M02_AXI_WREADY;
  wire [31:0]smartconnect_1_M02_AXI_WSTRB;
  wire smartconnect_1_M02_AXI_WVALID;
  wire [33:0]smartconnect_1_M03_AXI_ARADDR;
  wire [1:0]smartconnect_1_M03_AXI_ARBURST;
  wire [3:0]smartconnect_1_M03_AXI_ARLEN;
  wire smartconnect_1_M03_AXI_ARREADY;
  wire [2:0]smartconnect_1_M03_AXI_ARSIZE;
  wire smartconnect_1_M03_AXI_ARVALID;
  wire [33:0]smartconnect_1_M03_AXI_AWADDR;
  wire [1:0]smartconnect_1_M03_AXI_AWBURST;
  wire [3:0]smartconnect_1_M03_AXI_AWLEN;
  wire smartconnect_1_M03_AXI_AWREADY;
  wire [2:0]smartconnect_1_M03_AXI_AWSIZE;
  wire smartconnect_1_M03_AXI_AWVALID;
  wire smartconnect_1_M03_AXI_BREADY;
  wire [1:0]smartconnect_1_M03_AXI_BRESP;
  wire smartconnect_1_M03_AXI_BVALID;
  wire [255:0]smartconnect_1_M03_AXI_RDATA;
  wire smartconnect_1_M03_AXI_RLAST;
  wire smartconnect_1_M03_AXI_RREADY;
  wire [1:0]smartconnect_1_M03_AXI_RRESP;
  wire smartconnect_1_M03_AXI_RVALID;
  wire [255:0]smartconnect_1_M03_AXI_WDATA;
  wire smartconnect_1_M03_AXI_WLAST;
  wire smartconnect_1_M03_AXI_WREADY;
  wire [31:0]smartconnect_1_M03_AXI_WSTRB;
  wire smartconnect_1_M03_AXI_WVALID;
  wire [33:0]smartconnect_2_M00_AXI_ARADDR;
  wire [1:0]smartconnect_2_M00_AXI_ARBURST;
  wire [3:0]smartconnect_2_M00_AXI_ARLEN;
  wire smartconnect_2_M00_AXI_ARREADY;
  wire [2:0]smartconnect_2_M00_AXI_ARSIZE;
  wire smartconnect_2_M00_AXI_ARVALID;
  wire [33:0]smartconnect_2_M00_AXI_AWADDR;
  wire [1:0]smartconnect_2_M00_AXI_AWBURST;
  wire [3:0]smartconnect_2_M00_AXI_AWLEN;
  wire smartconnect_2_M00_AXI_AWREADY;
  wire [2:0]smartconnect_2_M00_AXI_AWSIZE;
  wire smartconnect_2_M00_AXI_AWVALID;
  wire smartconnect_2_M00_AXI_BREADY;
  wire [1:0]smartconnect_2_M00_AXI_BRESP;
  wire smartconnect_2_M00_AXI_BVALID;
  wire [255:0]smartconnect_2_M00_AXI_RDATA;
  wire smartconnect_2_M00_AXI_RLAST;
  wire smartconnect_2_M00_AXI_RREADY;
  wire [1:0]smartconnect_2_M00_AXI_RRESP;
  wire smartconnect_2_M00_AXI_RVALID;
  wire [255:0]smartconnect_2_M00_AXI_WDATA;
  wire smartconnect_2_M00_AXI_WLAST;
  wire smartconnect_2_M00_AXI_WREADY;
  wire [31:0]smartconnect_2_M00_AXI_WSTRB;
  wire smartconnect_2_M00_AXI_WVALID;
  wire [33:0]smartconnect_2_M01_AXI_ARADDR;
  wire [1:0]smartconnect_2_M01_AXI_ARBURST;
  wire [3:0]smartconnect_2_M01_AXI_ARLEN;
  wire smartconnect_2_M01_AXI_ARREADY;
  wire [2:0]smartconnect_2_M01_AXI_ARSIZE;
  wire smartconnect_2_M01_AXI_ARVALID;
  wire [33:0]smartconnect_2_M01_AXI_AWADDR;
  wire [1:0]smartconnect_2_M01_AXI_AWBURST;
  wire [3:0]smartconnect_2_M01_AXI_AWLEN;
  wire smartconnect_2_M01_AXI_AWREADY;
  wire [2:0]smartconnect_2_M01_AXI_AWSIZE;
  wire smartconnect_2_M01_AXI_AWVALID;
  wire smartconnect_2_M01_AXI_BREADY;
  wire [1:0]smartconnect_2_M01_AXI_BRESP;
  wire smartconnect_2_M01_AXI_BVALID;
  wire [255:0]smartconnect_2_M01_AXI_RDATA;
  wire smartconnect_2_M01_AXI_RLAST;
  wire smartconnect_2_M01_AXI_RREADY;
  wire [1:0]smartconnect_2_M01_AXI_RRESP;
  wire smartconnect_2_M01_AXI_RVALID;
  wire [255:0]smartconnect_2_M01_AXI_WDATA;
  wire smartconnect_2_M01_AXI_WLAST;
  wire smartconnect_2_M01_AXI_WREADY;
  wire [31:0]smartconnect_2_M01_AXI_WSTRB;
  wire smartconnect_2_M01_AXI_WVALID;
  wire [33:0]smartconnect_2_M02_AXI_ARADDR;
  wire [1:0]smartconnect_2_M02_AXI_ARBURST;
  wire [3:0]smartconnect_2_M02_AXI_ARLEN;
  wire smartconnect_2_M02_AXI_ARREADY;
  wire [2:0]smartconnect_2_M02_AXI_ARSIZE;
  wire smartconnect_2_M02_AXI_ARVALID;
  wire [33:0]smartconnect_2_M02_AXI_AWADDR;
  wire [1:0]smartconnect_2_M02_AXI_AWBURST;
  wire [3:0]smartconnect_2_M02_AXI_AWLEN;
  wire smartconnect_2_M02_AXI_AWREADY;
  wire [2:0]smartconnect_2_M02_AXI_AWSIZE;
  wire smartconnect_2_M02_AXI_AWVALID;
  wire smartconnect_2_M02_AXI_BREADY;
  wire [1:0]smartconnect_2_M02_AXI_BRESP;
  wire smartconnect_2_M02_AXI_BVALID;
  wire [255:0]smartconnect_2_M02_AXI_RDATA;
  wire smartconnect_2_M02_AXI_RLAST;
  wire smartconnect_2_M02_AXI_RREADY;
  wire [1:0]smartconnect_2_M02_AXI_RRESP;
  wire smartconnect_2_M02_AXI_RVALID;
  wire [255:0]smartconnect_2_M02_AXI_WDATA;
  wire smartconnect_2_M02_AXI_WLAST;
  wire smartconnect_2_M02_AXI_WREADY;
  wire [31:0]smartconnect_2_M02_AXI_WSTRB;
  wire smartconnect_2_M02_AXI_WVALID;
  wire [33:0]smartconnect_2_M03_AXI_ARADDR;
  wire [1:0]smartconnect_2_M03_AXI_ARBURST;
  wire [3:0]smartconnect_2_M03_AXI_ARLEN;
  wire smartconnect_2_M03_AXI_ARREADY;
  wire [2:0]smartconnect_2_M03_AXI_ARSIZE;
  wire smartconnect_2_M03_AXI_ARVALID;
  wire [33:0]smartconnect_2_M03_AXI_AWADDR;
  wire [1:0]smartconnect_2_M03_AXI_AWBURST;
  wire [3:0]smartconnect_2_M03_AXI_AWLEN;
  wire smartconnect_2_M03_AXI_AWREADY;
  wire [2:0]smartconnect_2_M03_AXI_AWSIZE;
  wire smartconnect_2_M03_AXI_AWVALID;
  wire smartconnect_2_M03_AXI_BREADY;
  wire [1:0]smartconnect_2_M03_AXI_BRESP;
  wire smartconnect_2_M03_AXI_BVALID;
  wire [255:0]smartconnect_2_M03_AXI_RDATA;
  wire smartconnect_2_M03_AXI_RLAST;
  wire smartconnect_2_M03_AXI_RREADY;
  wire [1:0]smartconnect_2_M03_AXI_RRESP;
  wire smartconnect_2_M03_AXI_RVALID;
  wire [255:0]smartconnect_2_M03_AXI_WDATA;
  wire smartconnect_2_M03_AXI_WLAST;
  wire smartconnect_2_M03_AXI_WREADY;
  wire [31:0]smartconnect_2_M03_AXI_WSTRB;
  wire smartconnect_2_M03_AXI_WVALID;
  wire [33:0]smartconnect_3_M00_AXI_ARADDR;
  wire [1:0]smartconnect_3_M00_AXI_ARBURST;
  wire [3:0]smartconnect_3_M00_AXI_ARLEN;
  wire smartconnect_3_M00_AXI_ARREADY;
  wire [2:0]smartconnect_3_M00_AXI_ARSIZE;
  wire smartconnect_3_M00_AXI_ARVALID;
  wire [33:0]smartconnect_3_M00_AXI_AWADDR;
  wire [1:0]smartconnect_3_M00_AXI_AWBURST;
  wire [3:0]smartconnect_3_M00_AXI_AWLEN;
  wire smartconnect_3_M00_AXI_AWREADY;
  wire [2:0]smartconnect_3_M00_AXI_AWSIZE;
  wire smartconnect_3_M00_AXI_AWVALID;
  wire smartconnect_3_M00_AXI_BREADY;
  wire [1:0]smartconnect_3_M00_AXI_BRESP;
  wire smartconnect_3_M00_AXI_BVALID;
  wire [255:0]smartconnect_3_M00_AXI_RDATA;
  wire smartconnect_3_M00_AXI_RLAST;
  wire smartconnect_3_M00_AXI_RREADY;
  wire [1:0]smartconnect_3_M00_AXI_RRESP;
  wire smartconnect_3_M00_AXI_RVALID;
  wire [255:0]smartconnect_3_M00_AXI_WDATA;
  wire smartconnect_3_M00_AXI_WLAST;
  wire smartconnect_3_M00_AXI_WREADY;
  wire [31:0]smartconnect_3_M00_AXI_WSTRB;
  wire smartconnect_3_M00_AXI_WVALID;
  wire [33:0]smartconnect_3_M01_AXI_ARADDR;
  wire [1:0]smartconnect_3_M01_AXI_ARBURST;
  wire [3:0]smartconnect_3_M01_AXI_ARLEN;
  wire smartconnect_3_M01_AXI_ARREADY;
  wire [2:0]smartconnect_3_M01_AXI_ARSIZE;
  wire smartconnect_3_M01_AXI_ARVALID;
  wire [33:0]smartconnect_3_M01_AXI_AWADDR;
  wire [1:0]smartconnect_3_M01_AXI_AWBURST;
  wire [3:0]smartconnect_3_M01_AXI_AWLEN;
  wire smartconnect_3_M01_AXI_AWREADY;
  wire [2:0]smartconnect_3_M01_AXI_AWSIZE;
  wire smartconnect_3_M01_AXI_AWVALID;
  wire smartconnect_3_M01_AXI_BREADY;
  wire [1:0]smartconnect_3_M01_AXI_BRESP;
  wire smartconnect_3_M01_AXI_BVALID;
  wire [255:0]smartconnect_3_M01_AXI_RDATA;
  wire smartconnect_3_M01_AXI_RLAST;
  wire smartconnect_3_M01_AXI_RREADY;
  wire [1:0]smartconnect_3_M01_AXI_RRESP;
  wire smartconnect_3_M01_AXI_RVALID;
  wire [255:0]smartconnect_3_M01_AXI_WDATA;
  wire smartconnect_3_M01_AXI_WLAST;
  wire smartconnect_3_M01_AXI_WREADY;
  wire [31:0]smartconnect_3_M01_AXI_WSTRB;
  wire smartconnect_3_M01_AXI_WVALID;
  wire [33:0]smartconnect_3_M02_AXI_ARADDR;
  wire [1:0]smartconnect_3_M02_AXI_ARBURST;
  wire [3:0]smartconnect_3_M02_AXI_ARLEN;
  wire smartconnect_3_M02_AXI_ARREADY;
  wire [2:0]smartconnect_3_M02_AXI_ARSIZE;
  wire smartconnect_3_M02_AXI_ARVALID;
  wire [33:0]smartconnect_3_M02_AXI_AWADDR;
  wire [1:0]smartconnect_3_M02_AXI_AWBURST;
  wire [3:0]smartconnect_3_M02_AXI_AWLEN;
  wire smartconnect_3_M02_AXI_AWREADY;
  wire [2:0]smartconnect_3_M02_AXI_AWSIZE;
  wire smartconnect_3_M02_AXI_AWVALID;
  wire smartconnect_3_M02_AXI_BREADY;
  wire [1:0]smartconnect_3_M02_AXI_BRESP;
  wire smartconnect_3_M02_AXI_BVALID;
  wire [255:0]smartconnect_3_M02_AXI_RDATA;
  wire smartconnect_3_M02_AXI_RLAST;
  wire smartconnect_3_M02_AXI_RREADY;
  wire [1:0]smartconnect_3_M02_AXI_RRESP;
  wire smartconnect_3_M02_AXI_RVALID;
  wire [255:0]smartconnect_3_M02_AXI_WDATA;
  wire smartconnect_3_M02_AXI_WLAST;
  wire smartconnect_3_M02_AXI_WREADY;
  wire [31:0]smartconnect_3_M02_AXI_WSTRB;
  wire smartconnect_3_M02_AXI_WVALID;
  wire [33:0]smartconnect_3_M03_AXI_ARADDR;
  wire [1:0]smartconnect_3_M03_AXI_ARBURST;
  wire [3:0]smartconnect_3_M03_AXI_ARLEN;
  wire smartconnect_3_M03_AXI_ARREADY;
  wire [2:0]smartconnect_3_M03_AXI_ARSIZE;
  wire smartconnect_3_M03_AXI_ARVALID;
  wire [33:0]smartconnect_3_M03_AXI_AWADDR;
  wire [1:0]smartconnect_3_M03_AXI_AWBURST;
  wire [3:0]smartconnect_3_M03_AXI_AWLEN;
  wire smartconnect_3_M03_AXI_AWREADY;
  wire [2:0]smartconnect_3_M03_AXI_AWSIZE;
  wire smartconnect_3_M03_AXI_AWVALID;
  wire smartconnect_3_M03_AXI_BREADY;
  wire [1:0]smartconnect_3_M03_AXI_BRESP;
  wire smartconnect_3_M03_AXI_BVALID;
  wire [255:0]smartconnect_3_M03_AXI_RDATA;
  wire smartconnect_3_M03_AXI_RLAST;
  wire smartconnect_3_M03_AXI_RREADY;
  wire [1:0]smartconnect_3_M03_AXI_RRESP;
  wire smartconnect_3_M03_AXI_RVALID;
  wire [255:0]smartconnect_3_M03_AXI_WDATA;
  wire smartconnect_3_M03_AXI_WLAST;
  wire smartconnect_3_M03_AXI_WREADY;
  wire [31:0]smartconnect_3_M03_AXI_WSTRB;
  wire smartconnect_3_M03_AXI_WVALID;
  wire sys_clk;
  wire sys_resetn;

  top_level_axi4_splitter_0_0 bank0_splitter
       (.M0_AXI_ARADDR(axi4_splitter_0_M0_AXI_ARADDR),
        .M0_AXI_ARBURST(axi4_splitter_0_M0_AXI_ARBURST),
        .M0_AXI_ARCACHE(axi4_splitter_0_M0_AXI_ARCACHE),
        .M0_AXI_ARID(axi4_splitter_0_M0_AXI_ARID),
        .M0_AXI_ARLEN(axi4_splitter_0_M0_AXI_ARLEN),
        .M0_AXI_ARLOCK(axi4_splitter_0_M0_AXI_ARLOCK),
        .M0_AXI_ARPROT(axi4_splitter_0_M0_AXI_ARPROT),
        .M0_AXI_ARQOS(axi4_splitter_0_M0_AXI_ARQOS),
        .M0_AXI_ARREADY(axi4_splitter_0_M0_AXI_ARREADY),
        .M0_AXI_ARSIZE(axi4_splitter_0_M0_AXI_ARSIZE),
        .M0_AXI_ARVALID(axi4_splitter_0_M0_AXI_ARVALID),
        .M0_AXI_AWADDR(axi4_splitter_0_M0_AXI_AWADDR),
        .M0_AXI_AWBURST(axi4_splitter_0_M0_AXI_AWBURST),
        .M0_AXI_AWCACHE(axi4_splitter_0_M0_AXI_AWCACHE),
        .M0_AXI_AWID(axi4_splitter_0_M0_AXI_AWID),
        .M0_AXI_AWLEN(axi4_splitter_0_M0_AXI_AWLEN),
        .M0_AXI_AWLOCK(axi4_splitter_0_M0_AXI_AWLOCK),
        .M0_AXI_AWPROT(axi4_splitter_0_M0_AXI_AWPROT),
        .M0_AXI_AWQOS(axi4_splitter_0_M0_AXI_AWQOS),
        .M0_AXI_AWREADY(axi4_splitter_0_M0_AXI_AWREADY),
        .M0_AXI_AWSIZE(axi4_splitter_0_M0_AXI_AWSIZE),
        .M0_AXI_AWVALID(axi4_splitter_0_M0_AXI_AWVALID),
        .M0_AXI_BREADY(axi4_splitter_0_M0_AXI_BREADY),
        .M0_AXI_BRESP(axi4_splitter_0_M0_AXI_BRESP),
        .M0_AXI_BVALID(axi4_splitter_0_M0_AXI_BVALID),
        .M0_AXI_RDATA(axi4_splitter_0_M0_AXI_RDATA),
        .M0_AXI_RID(axi4_splitter_0_M0_AXI_RID),
        .M0_AXI_RLAST(axi4_splitter_0_M0_AXI_RLAST),
        .M0_AXI_RREADY(axi4_splitter_0_M0_AXI_RREADY),
        .M0_AXI_RRESP(axi4_splitter_0_M0_AXI_RRESP),
        .M0_AXI_RVALID(axi4_splitter_0_M0_AXI_RVALID),
        .M0_AXI_WDATA(axi4_splitter_0_M0_AXI_WDATA),
        .M0_AXI_WLAST(axi4_splitter_0_M0_AXI_WLAST),
        .M0_AXI_WREADY(axi4_splitter_0_M0_AXI_WREADY),
        .M0_AXI_WSTRB(axi4_splitter_0_M0_AXI_WSTRB),
        .M0_AXI_WVALID(axi4_splitter_0_M0_AXI_WVALID),
        .M1_AXI_ARADDR(axi4_splitter_0_M1_AXI_ARADDR),
        .M1_AXI_ARBURST(axi4_splitter_0_M1_AXI_ARBURST),
        .M1_AXI_ARCACHE(axi4_splitter_0_M1_AXI_ARCACHE),
        .M1_AXI_ARID(axi4_splitter_0_M1_AXI_ARID),
        .M1_AXI_ARLEN(axi4_splitter_0_M1_AXI_ARLEN),
        .M1_AXI_ARLOCK(axi4_splitter_0_M1_AXI_ARLOCK),
        .M1_AXI_ARPROT(axi4_splitter_0_M1_AXI_ARPROT),
        .M1_AXI_ARQOS(axi4_splitter_0_M1_AXI_ARQOS),
        .M1_AXI_ARREADY(axi4_splitter_0_M1_AXI_ARREADY),
        .M1_AXI_ARSIZE(axi4_splitter_0_M1_AXI_ARSIZE),
        .M1_AXI_ARVALID(axi4_splitter_0_M1_AXI_ARVALID),
        .M1_AXI_AWADDR(axi4_splitter_0_M1_AXI_AWADDR),
        .M1_AXI_AWBURST(axi4_splitter_0_M1_AXI_AWBURST),
        .M1_AXI_AWCACHE(axi4_splitter_0_M1_AXI_AWCACHE),
        .M1_AXI_AWID(axi4_splitter_0_M1_AXI_AWID),
        .M1_AXI_AWLEN(axi4_splitter_0_M1_AXI_AWLEN),
        .M1_AXI_AWLOCK(axi4_splitter_0_M1_AXI_AWLOCK),
        .M1_AXI_AWPROT(axi4_splitter_0_M1_AXI_AWPROT),
        .M1_AXI_AWQOS(axi4_splitter_0_M1_AXI_AWQOS),
        .M1_AXI_AWREADY(axi4_splitter_0_M1_AXI_AWREADY),
        .M1_AXI_AWSIZE(axi4_splitter_0_M1_AXI_AWSIZE),
        .M1_AXI_AWVALID(axi4_splitter_0_M1_AXI_AWVALID),
        .M1_AXI_BREADY(axi4_splitter_0_M1_AXI_BREADY),
        .M1_AXI_BRESP(axi4_splitter_0_M1_AXI_BRESP),
        .M1_AXI_BVALID(axi4_splitter_0_M1_AXI_BVALID),
        .M1_AXI_RDATA(axi4_splitter_0_M1_AXI_RDATA),
        .M1_AXI_RID(axi4_splitter_0_M1_AXI_RID),
        .M1_AXI_RLAST(axi4_splitter_0_M1_AXI_RLAST),
        .M1_AXI_RREADY(axi4_splitter_0_M1_AXI_RREADY),
        .M1_AXI_RRESP(axi4_splitter_0_M1_AXI_RRESP),
        .M1_AXI_RVALID(axi4_splitter_0_M1_AXI_RVALID),
        .M1_AXI_WDATA(axi4_splitter_0_M1_AXI_WDATA),
        .M1_AXI_WLAST(axi4_splitter_0_M1_AXI_WLAST),
        .M1_AXI_WREADY(axi4_splitter_0_M1_AXI_WREADY),
        .M1_AXI_WSTRB(axi4_splitter_0_M1_AXI_WSTRB),
        .M1_AXI_WVALID(axi4_splitter_0_M1_AXI_WVALID),
        .S_AXI_ARADDR(main_crossbar_M00_AXI_ARADDR),
        .S_AXI_ARBURST(main_crossbar_M00_AXI_ARBURST),
        .S_AXI_ARCACHE(main_crossbar_M00_AXI_ARCACHE),
        .S_AXI_ARID({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ARLEN(main_crossbar_M00_AXI_ARLEN),
        .S_AXI_ARLOCK(main_crossbar_M00_AXI_ARLOCK),
        .S_AXI_ARPROT(main_crossbar_M00_AXI_ARPROT),
        .S_AXI_ARQOS(main_crossbar_M00_AXI_ARQOS),
        .S_AXI_ARREADY(main_crossbar_M00_AXI_ARREADY),
        .S_AXI_ARSIZE(main_crossbar_M00_AXI_ARSIZE),
        .S_AXI_ARVALID(main_crossbar_M00_AXI_ARVALID),
        .S_AXI_AWADDR(main_crossbar_M00_AXI_AWADDR),
        .S_AXI_AWBURST(main_crossbar_M00_AXI_AWBURST),
        .S_AXI_AWCACHE(main_crossbar_M00_AXI_AWCACHE),
        .S_AXI_AWID({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_AWLEN(main_crossbar_M00_AXI_AWLEN),
        .S_AXI_AWLOCK(main_crossbar_M00_AXI_AWLOCK),
        .S_AXI_AWPROT(main_crossbar_M00_AXI_AWPROT),
        .S_AXI_AWQOS(main_crossbar_M00_AXI_AWQOS),
        .S_AXI_AWREADY(main_crossbar_M00_AXI_AWREADY),
        .S_AXI_AWSIZE(main_crossbar_M00_AXI_AWSIZE),
        .S_AXI_AWVALID(main_crossbar_M00_AXI_AWVALID),
        .S_AXI_BREADY(main_crossbar_M00_AXI_BREADY),
        .S_AXI_BRESP(main_crossbar_M00_AXI_BRESP),
        .S_AXI_BVALID(main_crossbar_M00_AXI_BVALID),
        .S_AXI_RDATA(main_crossbar_M00_AXI_RDATA),
        .S_AXI_RLAST(main_crossbar_M00_AXI_RLAST),
        .S_AXI_RREADY(main_crossbar_M00_AXI_RREADY),
        .S_AXI_RRESP(main_crossbar_M00_AXI_RRESP),
        .S_AXI_RVALID(main_crossbar_M00_AXI_RVALID),
        .S_AXI_WDATA(main_crossbar_M00_AXI_WDATA),
        .S_AXI_WLAST(main_crossbar_M00_AXI_WLAST),
        .S_AXI_WREADY(main_crossbar_M00_AXI_WREADY),
        .S_AXI_WSTRB(main_crossbar_M00_AXI_WSTRB),
        .S_AXI_WVALID(main_crossbar_M00_AXI_WVALID),
        .clk(cmac_clk),
        .resetn(cmac_resetn));
  top_level_axi4_splitter_0_1 bank1_splitter
       (.M0_AXI_ARADDR(axi4_splitter_1_M0_AXI_ARADDR),
        .M0_AXI_ARBURST(axi4_splitter_1_M0_AXI_ARBURST),
        .M0_AXI_ARCACHE(axi4_splitter_1_M0_AXI_ARCACHE),
        .M0_AXI_ARID(axi4_splitter_1_M0_AXI_ARID),
        .M0_AXI_ARLEN(axi4_splitter_1_M0_AXI_ARLEN),
        .M0_AXI_ARLOCK(axi4_splitter_1_M0_AXI_ARLOCK),
        .M0_AXI_ARPROT(axi4_splitter_1_M0_AXI_ARPROT),
        .M0_AXI_ARQOS(axi4_splitter_1_M0_AXI_ARQOS),
        .M0_AXI_ARREADY(axi4_splitter_1_M0_AXI_ARREADY),
        .M0_AXI_ARSIZE(axi4_splitter_1_M0_AXI_ARSIZE),
        .M0_AXI_ARVALID(axi4_splitter_1_M0_AXI_ARVALID),
        .M0_AXI_AWADDR(axi4_splitter_1_M0_AXI_AWADDR),
        .M0_AXI_AWBURST(axi4_splitter_1_M0_AXI_AWBURST),
        .M0_AXI_AWCACHE(axi4_splitter_1_M0_AXI_AWCACHE),
        .M0_AXI_AWID(axi4_splitter_1_M0_AXI_AWID),
        .M0_AXI_AWLEN(axi4_splitter_1_M0_AXI_AWLEN),
        .M0_AXI_AWLOCK(axi4_splitter_1_M0_AXI_AWLOCK),
        .M0_AXI_AWPROT(axi4_splitter_1_M0_AXI_AWPROT),
        .M0_AXI_AWQOS(axi4_splitter_1_M0_AXI_AWQOS),
        .M0_AXI_AWREADY(axi4_splitter_1_M0_AXI_AWREADY),
        .M0_AXI_AWSIZE(axi4_splitter_1_M0_AXI_AWSIZE),
        .M0_AXI_AWVALID(axi4_splitter_1_M0_AXI_AWVALID),
        .M0_AXI_BREADY(axi4_splitter_1_M0_AXI_BREADY),
        .M0_AXI_BRESP(axi4_splitter_1_M0_AXI_BRESP),
        .M0_AXI_BVALID(axi4_splitter_1_M0_AXI_BVALID),
        .M0_AXI_RDATA(axi4_splitter_1_M0_AXI_RDATA),
        .M0_AXI_RID(axi4_splitter_1_M0_AXI_RID),
        .M0_AXI_RLAST(axi4_splitter_1_M0_AXI_RLAST),
        .M0_AXI_RREADY(axi4_splitter_1_M0_AXI_RREADY),
        .M0_AXI_RRESP(axi4_splitter_1_M0_AXI_RRESP),
        .M0_AXI_RVALID(axi4_splitter_1_M0_AXI_RVALID),
        .M0_AXI_WDATA(axi4_splitter_1_M0_AXI_WDATA),
        .M0_AXI_WLAST(axi4_splitter_1_M0_AXI_WLAST),
        .M0_AXI_WREADY(axi4_splitter_1_M0_AXI_WREADY),
        .M0_AXI_WSTRB(axi4_splitter_1_M0_AXI_WSTRB),
        .M0_AXI_WVALID(axi4_splitter_1_M0_AXI_WVALID),
        .M1_AXI_ARADDR(axi4_splitter_1_M1_AXI_ARADDR),
        .M1_AXI_ARBURST(axi4_splitter_1_M1_AXI_ARBURST),
        .M1_AXI_ARCACHE(axi4_splitter_1_M1_AXI_ARCACHE),
        .M1_AXI_ARID(axi4_splitter_1_M1_AXI_ARID),
        .M1_AXI_ARLEN(axi4_splitter_1_M1_AXI_ARLEN),
        .M1_AXI_ARLOCK(axi4_splitter_1_M1_AXI_ARLOCK),
        .M1_AXI_ARPROT(axi4_splitter_1_M1_AXI_ARPROT),
        .M1_AXI_ARQOS(axi4_splitter_1_M1_AXI_ARQOS),
        .M1_AXI_ARREADY(axi4_splitter_1_M1_AXI_ARREADY),
        .M1_AXI_ARSIZE(axi4_splitter_1_M1_AXI_ARSIZE),
        .M1_AXI_ARVALID(axi4_splitter_1_M1_AXI_ARVALID),
        .M1_AXI_AWADDR(axi4_splitter_1_M1_AXI_AWADDR),
        .M1_AXI_AWBURST(axi4_splitter_1_M1_AXI_AWBURST),
        .M1_AXI_AWCACHE(axi4_splitter_1_M1_AXI_AWCACHE),
        .M1_AXI_AWID(axi4_splitter_1_M1_AXI_AWID),
        .M1_AXI_AWLEN(axi4_splitter_1_M1_AXI_AWLEN),
        .M1_AXI_AWLOCK(axi4_splitter_1_M1_AXI_AWLOCK),
        .M1_AXI_AWPROT(axi4_splitter_1_M1_AXI_AWPROT),
        .M1_AXI_AWQOS(axi4_splitter_1_M1_AXI_AWQOS),
        .M1_AXI_AWREADY(axi4_splitter_1_M1_AXI_AWREADY),
        .M1_AXI_AWSIZE(axi4_splitter_1_M1_AXI_AWSIZE),
        .M1_AXI_AWVALID(axi4_splitter_1_M1_AXI_AWVALID),
        .M1_AXI_BREADY(axi4_splitter_1_M1_AXI_BREADY),
        .M1_AXI_BRESP(axi4_splitter_1_M1_AXI_BRESP),
        .M1_AXI_BVALID(axi4_splitter_1_M1_AXI_BVALID),
        .M1_AXI_RDATA(axi4_splitter_1_M1_AXI_RDATA),
        .M1_AXI_RID(axi4_splitter_1_M1_AXI_RID),
        .M1_AXI_RLAST(axi4_splitter_1_M1_AXI_RLAST),
        .M1_AXI_RREADY(axi4_splitter_1_M1_AXI_RREADY),
        .M1_AXI_RRESP(axi4_splitter_1_M1_AXI_RRESP),
        .M1_AXI_RVALID(axi4_splitter_1_M1_AXI_RVALID),
        .M1_AXI_WDATA(axi4_splitter_1_M1_AXI_WDATA),
        .M1_AXI_WLAST(axi4_splitter_1_M1_AXI_WLAST),
        .M1_AXI_WREADY(axi4_splitter_1_M1_AXI_WREADY),
        .M1_AXI_WSTRB(axi4_splitter_1_M1_AXI_WSTRB),
        .M1_AXI_WVALID(axi4_splitter_1_M1_AXI_WVALID),
        .S_AXI_ARADDR(main_crossbar_M01_AXI_ARADDR),
        .S_AXI_ARBURST(main_crossbar_M01_AXI_ARBURST),
        .S_AXI_ARCACHE(main_crossbar_M01_AXI_ARCACHE),
        .S_AXI_ARID({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ARLEN(main_crossbar_M01_AXI_ARLEN),
        .S_AXI_ARLOCK(main_crossbar_M01_AXI_ARLOCK),
        .S_AXI_ARPROT(main_crossbar_M01_AXI_ARPROT),
        .S_AXI_ARQOS(main_crossbar_M01_AXI_ARQOS),
        .S_AXI_ARREADY(main_crossbar_M01_AXI_ARREADY),
        .S_AXI_ARSIZE(main_crossbar_M01_AXI_ARSIZE),
        .S_AXI_ARVALID(main_crossbar_M01_AXI_ARVALID),
        .S_AXI_AWADDR(main_crossbar_M01_AXI_AWADDR),
        .S_AXI_AWBURST(main_crossbar_M01_AXI_AWBURST),
        .S_AXI_AWCACHE(main_crossbar_M01_AXI_AWCACHE),
        .S_AXI_AWID({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_AWLEN(main_crossbar_M01_AXI_AWLEN),
        .S_AXI_AWLOCK(main_crossbar_M01_AXI_AWLOCK),
        .S_AXI_AWPROT(main_crossbar_M01_AXI_AWPROT),
        .S_AXI_AWQOS(main_crossbar_M01_AXI_AWQOS),
        .S_AXI_AWREADY(main_crossbar_M01_AXI_AWREADY),
        .S_AXI_AWSIZE(main_crossbar_M01_AXI_AWSIZE),
        .S_AXI_AWVALID(main_crossbar_M01_AXI_AWVALID),
        .S_AXI_BREADY(main_crossbar_M01_AXI_BREADY),
        .S_AXI_BRESP(main_crossbar_M01_AXI_BRESP),
        .S_AXI_BVALID(main_crossbar_M01_AXI_BVALID),
        .S_AXI_RDATA(main_crossbar_M01_AXI_RDATA),
        .S_AXI_RLAST(main_crossbar_M01_AXI_RLAST),
        .S_AXI_RREADY(main_crossbar_M01_AXI_RREADY),
        .S_AXI_RRESP(main_crossbar_M01_AXI_RRESP),
        .S_AXI_RVALID(main_crossbar_M01_AXI_RVALID),
        .S_AXI_WDATA(main_crossbar_M01_AXI_WDATA),
        .S_AXI_WLAST(main_crossbar_M01_AXI_WLAST),
        .S_AXI_WREADY(main_crossbar_M01_AXI_WREADY),
        .S_AXI_WSTRB(main_crossbar_M01_AXI_WSTRB),
        .S_AXI_WVALID(main_crossbar_M01_AXI_WVALID),
        .clk(cmac_clk),
        .resetn(cmac_resetn));
  top_level_util_ds_buf_0_2 clock_buffer
       (.IBUF_DS_N(hbm_refclk_clk_n),
        .IBUF_DS_P(hbm_refclk_clk_p),
        .IBUF_OUT(clock_buffer_IBUF_OUT));
  top_level_hbm_0_0 hbm_0
       (.APB_0_PCLK(clock_buffer_IBUF_OUT),
        .APB_0_PRESET_N(one_dout),
        .AXI_00_ACLK(axi_nn_aclk_1),
        .AXI_00_ARADDR(smartconnect_0_M00_AXI_ARADDR),
        .AXI_00_ARBURST(smartconnect_0_M00_AXI_ARBURST),
        .AXI_00_ARESET_N(axi_nn_resetn_1),
        .AXI_00_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_00_ARLEN(smartconnect_0_M00_AXI_ARLEN),
        .AXI_00_ARREADY(smartconnect_0_M00_AXI_ARREADY),
        .AXI_00_ARSIZE(smartconnect_0_M00_AXI_ARSIZE),
        .AXI_00_ARVALID(smartconnect_0_M00_AXI_ARVALID),
        .AXI_00_AWADDR(smartconnect_0_M00_AXI_AWADDR),
        .AXI_00_AWBURST(smartconnect_0_M00_AXI_AWBURST),
        .AXI_00_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_00_AWLEN(smartconnect_0_M00_AXI_AWLEN),
        .AXI_00_AWREADY(smartconnect_0_M00_AXI_AWREADY),
        .AXI_00_AWSIZE(smartconnect_0_M00_AXI_AWSIZE),
        .AXI_00_AWVALID(smartconnect_0_M00_AXI_AWVALID),
        .AXI_00_BREADY(smartconnect_0_M00_AXI_BREADY),
        .AXI_00_BRESP(smartconnect_0_M00_AXI_BRESP),
        .AXI_00_BVALID(smartconnect_0_M00_AXI_BVALID),
        .AXI_00_RDATA(smartconnect_0_M00_AXI_RDATA),
        .AXI_00_RLAST(smartconnect_0_M00_AXI_RLAST),
        .AXI_00_RREADY(smartconnect_0_M00_AXI_RREADY),
        .AXI_00_RRESP(smartconnect_0_M00_AXI_RRESP),
        .AXI_00_RVALID(smartconnect_0_M00_AXI_RVALID),
        .AXI_00_WDATA(smartconnect_0_M00_AXI_WDATA),
        .AXI_00_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_00_WLAST(smartconnect_0_M00_AXI_WLAST),
        .AXI_00_WREADY(smartconnect_0_M00_AXI_WREADY),
        .AXI_00_WSTRB(smartconnect_0_M00_AXI_WSTRB),
        .AXI_00_WVALID(smartconnect_0_M00_AXI_WVALID),
        .AXI_01_ACLK(axi_nn_aclk_1),
        .AXI_01_ARADDR(smartconnect_0_M01_AXI_ARADDR),
        .AXI_01_ARBURST(smartconnect_0_M01_AXI_ARBURST),
        .AXI_01_ARESET_N(axi_nn_resetn_1),
        .AXI_01_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_01_ARLEN(smartconnect_0_M01_AXI_ARLEN),
        .AXI_01_ARREADY(smartconnect_0_M01_AXI_ARREADY),
        .AXI_01_ARSIZE(smartconnect_0_M01_AXI_ARSIZE),
        .AXI_01_ARVALID(smartconnect_0_M01_AXI_ARVALID),
        .AXI_01_AWADDR(smartconnect_0_M01_AXI_AWADDR),
        .AXI_01_AWBURST(smartconnect_0_M01_AXI_AWBURST),
        .AXI_01_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_01_AWLEN(smartconnect_0_M01_AXI_AWLEN),
        .AXI_01_AWREADY(smartconnect_0_M01_AXI_AWREADY),
        .AXI_01_AWSIZE(smartconnect_0_M01_AXI_AWSIZE),
        .AXI_01_AWVALID(smartconnect_0_M01_AXI_AWVALID),
        .AXI_01_BREADY(smartconnect_0_M01_AXI_BREADY),
        .AXI_01_BRESP(smartconnect_0_M01_AXI_BRESP),
        .AXI_01_BVALID(smartconnect_0_M01_AXI_BVALID),
        .AXI_01_RDATA(smartconnect_0_M01_AXI_RDATA),
        .AXI_01_RLAST(smartconnect_0_M01_AXI_RLAST),
        .AXI_01_RREADY(smartconnect_0_M01_AXI_RREADY),
        .AXI_01_RRESP(smartconnect_0_M01_AXI_RRESP),
        .AXI_01_RVALID(smartconnect_0_M01_AXI_RVALID),
        .AXI_01_WDATA(smartconnect_0_M01_AXI_WDATA),
        .AXI_01_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_01_WLAST(smartconnect_0_M01_AXI_WLAST),
        .AXI_01_WREADY(smartconnect_0_M01_AXI_WREADY),
        .AXI_01_WSTRB(smartconnect_0_M01_AXI_WSTRB),
        .AXI_01_WVALID(smartconnect_0_M01_AXI_WVALID),
        .AXI_02_ACLK(axi_nn_aclk_1),
        .AXI_02_ARADDR(smartconnect_0_M02_AXI_ARADDR),
        .AXI_02_ARBURST(smartconnect_0_M02_AXI_ARBURST),
        .AXI_02_ARESET_N(axi_nn_resetn_1),
        .AXI_02_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_02_ARLEN(smartconnect_0_M02_AXI_ARLEN),
        .AXI_02_ARREADY(smartconnect_0_M02_AXI_ARREADY),
        .AXI_02_ARSIZE(smartconnect_0_M02_AXI_ARSIZE),
        .AXI_02_ARVALID(smartconnect_0_M02_AXI_ARVALID),
        .AXI_02_AWADDR(smartconnect_0_M02_AXI_AWADDR),
        .AXI_02_AWBURST(smartconnect_0_M02_AXI_AWBURST),
        .AXI_02_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_02_AWLEN(smartconnect_0_M02_AXI_AWLEN),
        .AXI_02_AWREADY(smartconnect_0_M02_AXI_AWREADY),
        .AXI_02_AWSIZE(smartconnect_0_M02_AXI_AWSIZE),
        .AXI_02_AWVALID(smartconnect_0_M02_AXI_AWVALID),
        .AXI_02_BREADY(smartconnect_0_M02_AXI_BREADY),
        .AXI_02_BRESP(smartconnect_0_M02_AXI_BRESP),
        .AXI_02_BVALID(smartconnect_0_M02_AXI_BVALID),
        .AXI_02_RDATA(smartconnect_0_M02_AXI_RDATA),
        .AXI_02_RLAST(smartconnect_0_M02_AXI_RLAST),
        .AXI_02_RREADY(smartconnect_0_M02_AXI_RREADY),
        .AXI_02_RRESP(smartconnect_0_M02_AXI_RRESP),
        .AXI_02_RVALID(smartconnect_0_M02_AXI_RVALID),
        .AXI_02_WDATA(smartconnect_0_M02_AXI_WDATA),
        .AXI_02_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_02_WLAST(smartconnect_0_M02_AXI_WLAST),
        .AXI_02_WREADY(smartconnect_0_M02_AXI_WREADY),
        .AXI_02_WSTRB(smartconnect_0_M02_AXI_WSTRB),
        .AXI_02_WVALID(smartconnect_0_M02_AXI_WVALID),
        .AXI_03_ACLK(axi_nn_aclk_1),
        .AXI_03_ARADDR(smartconnect_0_M03_AXI_ARADDR),
        .AXI_03_ARBURST(smartconnect_0_M03_AXI_ARBURST),
        .AXI_03_ARESET_N(axi_nn_resetn_1),
        .AXI_03_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_03_ARLEN(smartconnect_0_M03_AXI_ARLEN),
        .AXI_03_ARREADY(smartconnect_0_M03_AXI_ARREADY),
        .AXI_03_ARSIZE(smartconnect_0_M03_AXI_ARSIZE),
        .AXI_03_ARVALID(smartconnect_0_M03_AXI_ARVALID),
        .AXI_03_AWADDR(smartconnect_0_M03_AXI_AWADDR),
        .AXI_03_AWBURST(smartconnect_0_M03_AXI_AWBURST),
        .AXI_03_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_03_AWLEN(smartconnect_0_M03_AXI_AWLEN),
        .AXI_03_AWREADY(smartconnect_0_M03_AXI_AWREADY),
        .AXI_03_AWSIZE(smartconnect_0_M03_AXI_AWSIZE),
        .AXI_03_AWVALID(smartconnect_0_M03_AXI_AWVALID),
        .AXI_03_BREADY(smartconnect_0_M03_AXI_BREADY),
        .AXI_03_BRESP(smartconnect_0_M03_AXI_BRESP),
        .AXI_03_BVALID(smartconnect_0_M03_AXI_BVALID),
        .AXI_03_RDATA(smartconnect_0_M03_AXI_RDATA),
        .AXI_03_RLAST(smartconnect_0_M03_AXI_RLAST),
        .AXI_03_RREADY(smartconnect_0_M03_AXI_RREADY),
        .AXI_03_RRESP(smartconnect_0_M03_AXI_RRESP),
        .AXI_03_RVALID(smartconnect_0_M03_AXI_RVALID),
        .AXI_03_WDATA(smartconnect_0_M03_AXI_WDATA),
        .AXI_03_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_03_WLAST(smartconnect_0_M03_AXI_WLAST),
        .AXI_03_WREADY(smartconnect_0_M03_AXI_WREADY),
        .AXI_03_WSTRB(smartconnect_0_M03_AXI_WSTRB),
        .AXI_03_WVALID(smartconnect_0_M03_AXI_WVALID),
        .AXI_04_ACLK(axi_nn_aclk_1),
        .AXI_04_ARADDR(smartconnect_1_M00_AXI_ARADDR),
        .AXI_04_ARBURST(smartconnect_1_M00_AXI_ARBURST),
        .AXI_04_ARESET_N(axi_nn_resetn_1),
        .AXI_04_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_04_ARLEN(smartconnect_1_M00_AXI_ARLEN),
        .AXI_04_ARREADY(smartconnect_1_M00_AXI_ARREADY),
        .AXI_04_ARSIZE(smartconnect_1_M00_AXI_ARSIZE),
        .AXI_04_ARVALID(smartconnect_1_M00_AXI_ARVALID),
        .AXI_04_AWADDR(smartconnect_1_M00_AXI_AWADDR),
        .AXI_04_AWBURST(smartconnect_1_M00_AXI_AWBURST),
        .AXI_04_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_04_AWLEN(smartconnect_1_M00_AXI_AWLEN),
        .AXI_04_AWREADY(smartconnect_1_M00_AXI_AWREADY),
        .AXI_04_AWSIZE(smartconnect_1_M00_AXI_AWSIZE),
        .AXI_04_AWVALID(smartconnect_1_M00_AXI_AWVALID),
        .AXI_04_BREADY(smartconnect_1_M00_AXI_BREADY),
        .AXI_04_BRESP(smartconnect_1_M00_AXI_BRESP),
        .AXI_04_BVALID(smartconnect_1_M00_AXI_BVALID),
        .AXI_04_RDATA(smartconnect_1_M00_AXI_RDATA),
        .AXI_04_RLAST(smartconnect_1_M00_AXI_RLAST),
        .AXI_04_RREADY(smartconnect_1_M00_AXI_RREADY),
        .AXI_04_RRESP(smartconnect_1_M00_AXI_RRESP),
        .AXI_04_RVALID(smartconnect_1_M00_AXI_RVALID),
        .AXI_04_WDATA(smartconnect_1_M00_AXI_WDATA),
        .AXI_04_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_04_WLAST(smartconnect_1_M00_AXI_WLAST),
        .AXI_04_WREADY(smartconnect_1_M00_AXI_WREADY),
        .AXI_04_WSTRB(smartconnect_1_M00_AXI_WSTRB),
        .AXI_04_WVALID(smartconnect_1_M00_AXI_WVALID),
        .AXI_05_ACLK(axi_nn_aclk_1),
        .AXI_05_ARADDR(smartconnect_1_M01_AXI_ARADDR),
        .AXI_05_ARBURST(smartconnect_1_M01_AXI_ARBURST),
        .AXI_05_ARESET_N(axi_nn_resetn_1),
        .AXI_05_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_05_ARLEN(smartconnect_1_M01_AXI_ARLEN),
        .AXI_05_ARREADY(smartconnect_1_M01_AXI_ARREADY),
        .AXI_05_ARSIZE(smartconnect_1_M01_AXI_ARSIZE),
        .AXI_05_ARVALID(smartconnect_1_M01_AXI_ARVALID),
        .AXI_05_AWADDR(smartconnect_1_M01_AXI_AWADDR),
        .AXI_05_AWBURST(smartconnect_1_M01_AXI_AWBURST),
        .AXI_05_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_05_AWLEN(smartconnect_1_M01_AXI_AWLEN),
        .AXI_05_AWREADY(smartconnect_1_M01_AXI_AWREADY),
        .AXI_05_AWSIZE(smartconnect_1_M01_AXI_AWSIZE),
        .AXI_05_AWVALID(smartconnect_1_M01_AXI_AWVALID),
        .AXI_05_BREADY(smartconnect_1_M01_AXI_BREADY),
        .AXI_05_BRESP(smartconnect_1_M01_AXI_BRESP),
        .AXI_05_BVALID(smartconnect_1_M01_AXI_BVALID),
        .AXI_05_RDATA(smartconnect_1_M01_AXI_RDATA),
        .AXI_05_RLAST(smartconnect_1_M01_AXI_RLAST),
        .AXI_05_RREADY(smartconnect_1_M01_AXI_RREADY),
        .AXI_05_RRESP(smartconnect_1_M01_AXI_RRESP),
        .AXI_05_RVALID(smartconnect_1_M01_AXI_RVALID),
        .AXI_05_WDATA(smartconnect_1_M01_AXI_WDATA),
        .AXI_05_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_05_WLAST(smartconnect_1_M01_AXI_WLAST),
        .AXI_05_WREADY(smartconnect_1_M01_AXI_WREADY),
        .AXI_05_WSTRB(smartconnect_1_M01_AXI_WSTRB),
        .AXI_05_WVALID(smartconnect_1_M01_AXI_WVALID),
        .AXI_06_ACLK(axi_nn_aclk_1),
        .AXI_06_ARADDR(smartconnect_1_M02_AXI_ARADDR),
        .AXI_06_ARBURST(smartconnect_1_M02_AXI_ARBURST),
        .AXI_06_ARESET_N(axi_nn_resetn_1),
        .AXI_06_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_06_ARLEN(smartconnect_1_M02_AXI_ARLEN),
        .AXI_06_ARREADY(smartconnect_1_M02_AXI_ARREADY),
        .AXI_06_ARSIZE(smartconnect_1_M02_AXI_ARSIZE),
        .AXI_06_ARVALID(smartconnect_1_M02_AXI_ARVALID),
        .AXI_06_AWADDR(smartconnect_1_M02_AXI_AWADDR),
        .AXI_06_AWBURST(smartconnect_1_M02_AXI_AWBURST),
        .AXI_06_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_06_AWLEN(smartconnect_1_M02_AXI_AWLEN),
        .AXI_06_AWREADY(smartconnect_1_M02_AXI_AWREADY),
        .AXI_06_AWSIZE(smartconnect_1_M02_AXI_AWSIZE),
        .AXI_06_AWVALID(smartconnect_1_M02_AXI_AWVALID),
        .AXI_06_BREADY(smartconnect_1_M02_AXI_BREADY),
        .AXI_06_BRESP(smartconnect_1_M02_AXI_BRESP),
        .AXI_06_BVALID(smartconnect_1_M02_AXI_BVALID),
        .AXI_06_RDATA(smartconnect_1_M02_AXI_RDATA),
        .AXI_06_RLAST(smartconnect_1_M02_AXI_RLAST),
        .AXI_06_RREADY(smartconnect_1_M02_AXI_RREADY),
        .AXI_06_RRESP(smartconnect_1_M02_AXI_RRESP),
        .AXI_06_RVALID(smartconnect_1_M02_AXI_RVALID),
        .AXI_06_WDATA(smartconnect_1_M02_AXI_WDATA),
        .AXI_06_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_06_WLAST(smartconnect_1_M02_AXI_WLAST),
        .AXI_06_WREADY(smartconnect_1_M02_AXI_WREADY),
        .AXI_06_WSTRB(smartconnect_1_M02_AXI_WSTRB),
        .AXI_06_WVALID(smartconnect_1_M02_AXI_WVALID),
        .AXI_07_ACLK(axi_nn_aclk_1),
        .AXI_07_ARADDR(smartconnect_1_M03_AXI_ARADDR),
        .AXI_07_ARBURST(smartconnect_1_M03_AXI_ARBURST),
        .AXI_07_ARESET_N(axi_nn_resetn_1),
        .AXI_07_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_07_ARLEN(smartconnect_1_M03_AXI_ARLEN),
        .AXI_07_ARREADY(smartconnect_1_M03_AXI_ARREADY),
        .AXI_07_ARSIZE(smartconnect_1_M03_AXI_ARSIZE),
        .AXI_07_ARVALID(smartconnect_1_M03_AXI_ARVALID),
        .AXI_07_AWADDR(smartconnect_1_M03_AXI_AWADDR),
        .AXI_07_AWBURST(smartconnect_1_M03_AXI_AWBURST),
        .AXI_07_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_07_AWLEN(smartconnect_1_M03_AXI_AWLEN),
        .AXI_07_AWREADY(smartconnect_1_M03_AXI_AWREADY),
        .AXI_07_AWSIZE(smartconnect_1_M03_AXI_AWSIZE),
        .AXI_07_AWVALID(smartconnect_1_M03_AXI_AWVALID),
        .AXI_07_BREADY(smartconnect_1_M03_AXI_BREADY),
        .AXI_07_BRESP(smartconnect_1_M03_AXI_BRESP),
        .AXI_07_BVALID(smartconnect_1_M03_AXI_BVALID),
        .AXI_07_RDATA(smartconnect_1_M03_AXI_RDATA),
        .AXI_07_RLAST(smartconnect_1_M03_AXI_RLAST),
        .AXI_07_RREADY(smartconnect_1_M03_AXI_RREADY),
        .AXI_07_RRESP(smartconnect_1_M03_AXI_RRESP),
        .AXI_07_RVALID(smartconnect_1_M03_AXI_RVALID),
        .AXI_07_WDATA(smartconnect_1_M03_AXI_WDATA),
        .AXI_07_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_07_WLAST(smartconnect_1_M03_AXI_WLAST),
        .AXI_07_WREADY(smartconnect_1_M03_AXI_WREADY),
        .AXI_07_WSTRB(smartconnect_1_M03_AXI_WSTRB),
        .AXI_07_WVALID(smartconnect_1_M03_AXI_WVALID),
        .AXI_08_ACLK(axi_nn_aclk_1),
        .AXI_08_ARADDR(smartconnect_2_M00_AXI_ARADDR),
        .AXI_08_ARBURST(smartconnect_2_M00_AXI_ARBURST),
        .AXI_08_ARESET_N(axi_nn_resetn_1),
        .AXI_08_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_08_ARLEN(smartconnect_2_M00_AXI_ARLEN),
        .AXI_08_ARREADY(smartconnect_2_M00_AXI_ARREADY),
        .AXI_08_ARSIZE(smartconnect_2_M00_AXI_ARSIZE),
        .AXI_08_ARVALID(smartconnect_2_M00_AXI_ARVALID),
        .AXI_08_AWADDR(smartconnect_2_M00_AXI_AWADDR),
        .AXI_08_AWBURST(smartconnect_2_M00_AXI_AWBURST),
        .AXI_08_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_08_AWLEN(smartconnect_2_M00_AXI_AWLEN),
        .AXI_08_AWREADY(smartconnect_2_M00_AXI_AWREADY),
        .AXI_08_AWSIZE(smartconnect_2_M00_AXI_AWSIZE),
        .AXI_08_AWVALID(smartconnect_2_M00_AXI_AWVALID),
        .AXI_08_BREADY(smartconnect_2_M00_AXI_BREADY),
        .AXI_08_BRESP(smartconnect_2_M00_AXI_BRESP),
        .AXI_08_BVALID(smartconnect_2_M00_AXI_BVALID),
        .AXI_08_RDATA(smartconnect_2_M00_AXI_RDATA),
        .AXI_08_RLAST(smartconnect_2_M00_AXI_RLAST),
        .AXI_08_RREADY(smartconnect_2_M00_AXI_RREADY),
        .AXI_08_RRESP(smartconnect_2_M00_AXI_RRESP),
        .AXI_08_RVALID(smartconnect_2_M00_AXI_RVALID),
        .AXI_08_WDATA(smartconnect_2_M00_AXI_WDATA),
        .AXI_08_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_08_WLAST(smartconnect_2_M00_AXI_WLAST),
        .AXI_08_WREADY(smartconnect_2_M00_AXI_WREADY),
        .AXI_08_WSTRB(smartconnect_2_M00_AXI_WSTRB),
        .AXI_08_WVALID(smartconnect_2_M00_AXI_WVALID),
        .AXI_09_ACLK(axi_nn_aclk_1),
        .AXI_09_ARADDR(smartconnect_2_M01_AXI_ARADDR),
        .AXI_09_ARBURST(smartconnect_2_M01_AXI_ARBURST),
        .AXI_09_ARESET_N(axi_nn_resetn_1),
        .AXI_09_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_09_ARLEN(smartconnect_2_M01_AXI_ARLEN),
        .AXI_09_ARREADY(smartconnect_2_M01_AXI_ARREADY),
        .AXI_09_ARSIZE(smartconnect_2_M01_AXI_ARSIZE),
        .AXI_09_ARVALID(smartconnect_2_M01_AXI_ARVALID),
        .AXI_09_AWADDR(smartconnect_2_M01_AXI_AWADDR),
        .AXI_09_AWBURST(smartconnect_2_M01_AXI_AWBURST),
        .AXI_09_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_09_AWLEN(smartconnect_2_M01_AXI_AWLEN),
        .AXI_09_AWREADY(smartconnect_2_M01_AXI_AWREADY),
        .AXI_09_AWSIZE(smartconnect_2_M01_AXI_AWSIZE),
        .AXI_09_AWVALID(smartconnect_2_M01_AXI_AWVALID),
        .AXI_09_BREADY(smartconnect_2_M01_AXI_BREADY),
        .AXI_09_BRESP(smartconnect_2_M01_AXI_BRESP),
        .AXI_09_BVALID(smartconnect_2_M01_AXI_BVALID),
        .AXI_09_RDATA(smartconnect_2_M01_AXI_RDATA),
        .AXI_09_RLAST(smartconnect_2_M01_AXI_RLAST),
        .AXI_09_RREADY(smartconnect_2_M01_AXI_RREADY),
        .AXI_09_RRESP(smartconnect_2_M01_AXI_RRESP),
        .AXI_09_RVALID(smartconnect_2_M01_AXI_RVALID),
        .AXI_09_WDATA(smartconnect_2_M01_AXI_WDATA),
        .AXI_09_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_09_WLAST(smartconnect_2_M01_AXI_WLAST),
        .AXI_09_WREADY(smartconnect_2_M01_AXI_WREADY),
        .AXI_09_WSTRB(smartconnect_2_M01_AXI_WSTRB),
        .AXI_09_WVALID(smartconnect_2_M01_AXI_WVALID),
        .AXI_10_ACLK(axi_nn_aclk_1),
        .AXI_10_ARADDR(smartconnect_2_M02_AXI_ARADDR),
        .AXI_10_ARBURST(smartconnect_2_M02_AXI_ARBURST),
        .AXI_10_ARESET_N(axi_nn_resetn_1),
        .AXI_10_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_10_ARLEN(smartconnect_2_M02_AXI_ARLEN),
        .AXI_10_ARREADY(smartconnect_2_M02_AXI_ARREADY),
        .AXI_10_ARSIZE(smartconnect_2_M02_AXI_ARSIZE),
        .AXI_10_ARVALID(smartconnect_2_M02_AXI_ARVALID),
        .AXI_10_AWADDR(smartconnect_2_M02_AXI_AWADDR),
        .AXI_10_AWBURST(smartconnect_2_M02_AXI_AWBURST),
        .AXI_10_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_10_AWLEN(smartconnect_2_M02_AXI_AWLEN),
        .AXI_10_AWREADY(smartconnect_2_M02_AXI_AWREADY),
        .AXI_10_AWSIZE(smartconnect_2_M02_AXI_AWSIZE),
        .AXI_10_AWVALID(smartconnect_2_M02_AXI_AWVALID),
        .AXI_10_BREADY(smartconnect_2_M02_AXI_BREADY),
        .AXI_10_BRESP(smartconnect_2_M02_AXI_BRESP),
        .AXI_10_BVALID(smartconnect_2_M02_AXI_BVALID),
        .AXI_10_RDATA(smartconnect_2_M02_AXI_RDATA),
        .AXI_10_RLAST(smartconnect_2_M02_AXI_RLAST),
        .AXI_10_RREADY(smartconnect_2_M02_AXI_RREADY),
        .AXI_10_RRESP(smartconnect_2_M02_AXI_RRESP),
        .AXI_10_RVALID(smartconnect_2_M02_AXI_RVALID),
        .AXI_10_WDATA(smartconnect_2_M02_AXI_WDATA),
        .AXI_10_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_10_WLAST(smartconnect_2_M02_AXI_WLAST),
        .AXI_10_WREADY(smartconnect_2_M02_AXI_WREADY),
        .AXI_10_WSTRB(smartconnect_2_M02_AXI_WSTRB),
        .AXI_10_WVALID(smartconnect_2_M02_AXI_WVALID),
        .AXI_11_ACLK(axi_nn_aclk_1),
        .AXI_11_ARADDR(smartconnect_2_M03_AXI_ARADDR),
        .AXI_11_ARBURST(smartconnect_2_M03_AXI_ARBURST),
        .AXI_11_ARESET_N(axi_nn_resetn_1),
        .AXI_11_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_11_ARLEN(smartconnect_2_M03_AXI_ARLEN),
        .AXI_11_ARREADY(smartconnect_2_M03_AXI_ARREADY),
        .AXI_11_ARSIZE(smartconnect_2_M03_AXI_ARSIZE),
        .AXI_11_ARVALID(smartconnect_2_M03_AXI_ARVALID),
        .AXI_11_AWADDR(smartconnect_2_M03_AXI_AWADDR),
        .AXI_11_AWBURST(smartconnect_2_M03_AXI_AWBURST),
        .AXI_11_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_11_AWLEN(smartconnect_2_M03_AXI_AWLEN),
        .AXI_11_AWREADY(smartconnect_2_M03_AXI_AWREADY),
        .AXI_11_AWSIZE(smartconnect_2_M03_AXI_AWSIZE),
        .AXI_11_AWVALID(smartconnect_2_M03_AXI_AWVALID),
        .AXI_11_BREADY(smartconnect_2_M03_AXI_BREADY),
        .AXI_11_BRESP(smartconnect_2_M03_AXI_BRESP),
        .AXI_11_BVALID(smartconnect_2_M03_AXI_BVALID),
        .AXI_11_RDATA(smartconnect_2_M03_AXI_RDATA),
        .AXI_11_RLAST(smartconnect_2_M03_AXI_RLAST),
        .AXI_11_RREADY(smartconnect_2_M03_AXI_RREADY),
        .AXI_11_RRESP(smartconnect_2_M03_AXI_RRESP),
        .AXI_11_RVALID(smartconnect_2_M03_AXI_RVALID),
        .AXI_11_WDATA(smartconnect_2_M03_AXI_WDATA),
        .AXI_11_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_11_WLAST(smartconnect_2_M03_AXI_WLAST),
        .AXI_11_WREADY(smartconnect_2_M03_AXI_WREADY),
        .AXI_11_WSTRB(smartconnect_2_M03_AXI_WSTRB),
        .AXI_11_WVALID(smartconnect_2_M03_AXI_WVALID),
        .AXI_12_ACLK(axi_nn_aclk_1),
        .AXI_12_ARADDR(smartconnect_3_M00_AXI_ARADDR),
        .AXI_12_ARBURST(smartconnect_3_M00_AXI_ARBURST),
        .AXI_12_ARESET_N(axi_nn_resetn_1),
        .AXI_12_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_12_ARLEN(smartconnect_3_M00_AXI_ARLEN),
        .AXI_12_ARREADY(smartconnect_3_M00_AXI_ARREADY),
        .AXI_12_ARSIZE(smartconnect_3_M00_AXI_ARSIZE),
        .AXI_12_ARVALID(smartconnect_3_M00_AXI_ARVALID),
        .AXI_12_AWADDR(smartconnect_3_M00_AXI_AWADDR),
        .AXI_12_AWBURST(smartconnect_3_M00_AXI_AWBURST),
        .AXI_12_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_12_AWLEN(smartconnect_3_M00_AXI_AWLEN),
        .AXI_12_AWREADY(smartconnect_3_M00_AXI_AWREADY),
        .AXI_12_AWSIZE(smartconnect_3_M00_AXI_AWSIZE),
        .AXI_12_AWVALID(smartconnect_3_M00_AXI_AWVALID),
        .AXI_12_BREADY(smartconnect_3_M00_AXI_BREADY),
        .AXI_12_BRESP(smartconnect_3_M00_AXI_BRESP),
        .AXI_12_BVALID(smartconnect_3_M00_AXI_BVALID),
        .AXI_12_RDATA(smartconnect_3_M00_AXI_RDATA),
        .AXI_12_RLAST(smartconnect_3_M00_AXI_RLAST),
        .AXI_12_RREADY(smartconnect_3_M00_AXI_RREADY),
        .AXI_12_RRESP(smartconnect_3_M00_AXI_RRESP),
        .AXI_12_RVALID(smartconnect_3_M00_AXI_RVALID),
        .AXI_12_WDATA(smartconnect_3_M00_AXI_WDATA),
        .AXI_12_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_12_WLAST(smartconnect_3_M00_AXI_WLAST),
        .AXI_12_WREADY(smartconnect_3_M00_AXI_WREADY),
        .AXI_12_WSTRB(smartconnect_3_M00_AXI_WSTRB),
        .AXI_12_WVALID(smartconnect_3_M00_AXI_WVALID),
        .AXI_13_ACLK(axi_nn_aclk_1),
        .AXI_13_ARADDR(smartconnect_3_M01_AXI_ARADDR),
        .AXI_13_ARBURST(smartconnect_3_M01_AXI_ARBURST),
        .AXI_13_ARESET_N(axi_nn_resetn_1),
        .AXI_13_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_13_ARLEN(smartconnect_3_M01_AXI_ARLEN),
        .AXI_13_ARREADY(smartconnect_3_M01_AXI_ARREADY),
        .AXI_13_ARSIZE(smartconnect_3_M01_AXI_ARSIZE),
        .AXI_13_ARVALID(smartconnect_3_M01_AXI_ARVALID),
        .AXI_13_AWADDR(smartconnect_3_M01_AXI_AWADDR),
        .AXI_13_AWBURST(smartconnect_3_M01_AXI_AWBURST),
        .AXI_13_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_13_AWLEN(smartconnect_3_M01_AXI_AWLEN),
        .AXI_13_AWREADY(smartconnect_3_M01_AXI_AWREADY),
        .AXI_13_AWSIZE(smartconnect_3_M01_AXI_AWSIZE),
        .AXI_13_AWVALID(smartconnect_3_M01_AXI_AWVALID),
        .AXI_13_BREADY(smartconnect_3_M01_AXI_BREADY),
        .AXI_13_BRESP(smartconnect_3_M01_AXI_BRESP),
        .AXI_13_BVALID(smartconnect_3_M01_AXI_BVALID),
        .AXI_13_RDATA(smartconnect_3_M01_AXI_RDATA),
        .AXI_13_RLAST(smartconnect_3_M01_AXI_RLAST),
        .AXI_13_RREADY(smartconnect_3_M01_AXI_RREADY),
        .AXI_13_RRESP(smartconnect_3_M01_AXI_RRESP),
        .AXI_13_RVALID(smartconnect_3_M01_AXI_RVALID),
        .AXI_13_WDATA(smartconnect_3_M01_AXI_WDATA),
        .AXI_13_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_13_WLAST(smartconnect_3_M01_AXI_WLAST),
        .AXI_13_WREADY(smartconnect_3_M01_AXI_WREADY),
        .AXI_13_WSTRB(smartconnect_3_M01_AXI_WSTRB),
        .AXI_13_WVALID(smartconnect_3_M01_AXI_WVALID),
        .AXI_14_ACLK(axi_nn_aclk_1),
        .AXI_14_ARADDR(smartconnect_3_M02_AXI_ARADDR),
        .AXI_14_ARBURST(smartconnect_3_M02_AXI_ARBURST),
        .AXI_14_ARESET_N(axi_nn_resetn_1),
        .AXI_14_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_14_ARLEN(smartconnect_3_M02_AXI_ARLEN),
        .AXI_14_ARREADY(smartconnect_3_M02_AXI_ARREADY),
        .AXI_14_ARSIZE(smartconnect_3_M02_AXI_ARSIZE),
        .AXI_14_ARVALID(smartconnect_3_M02_AXI_ARVALID),
        .AXI_14_AWADDR(smartconnect_3_M02_AXI_AWADDR),
        .AXI_14_AWBURST(smartconnect_3_M02_AXI_AWBURST),
        .AXI_14_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_14_AWLEN(smartconnect_3_M02_AXI_AWLEN),
        .AXI_14_AWREADY(smartconnect_3_M02_AXI_AWREADY),
        .AXI_14_AWSIZE(smartconnect_3_M02_AXI_AWSIZE),
        .AXI_14_AWVALID(smartconnect_3_M02_AXI_AWVALID),
        .AXI_14_BREADY(smartconnect_3_M02_AXI_BREADY),
        .AXI_14_BRESP(smartconnect_3_M02_AXI_BRESP),
        .AXI_14_BVALID(smartconnect_3_M02_AXI_BVALID),
        .AXI_14_RDATA(smartconnect_3_M02_AXI_RDATA),
        .AXI_14_RLAST(smartconnect_3_M02_AXI_RLAST),
        .AXI_14_RREADY(smartconnect_3_M02_AXI_RREADY),
        .AXI_14_RRESP(smartconnect_3_M02_AXI_RRESP),
        .AXI_14_RVALID(smartconnect_3_M02_AXI_RVALID),
        .AXI_14_WDATA(smartconnect_3_M02_AXI_WDATA),
        .AXI_14_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_14_WLAST(smartconnect_3_M02_AXI_WLAST),
        .AXI_14_WREADY(smartconnect_3_M02_AXI_WREADY),
        .AXI_14_WSTRB(smartconnect_3_M02_AXI_WSTRB),
        .AXI_14_WVALID(smartconnect_3_M02_AXI_WVALID),
        .AXI_15_ACLK(axi_nn_aclk_1),
        .AXI_15_ARADDR(smartconnect_3_M03_AXI_ARADDR),
        .AXI_15_ARBURST(smartconnect_3_M03_AXI_ARBURST),
        .AXI_15_ARESET_N(axi_nn_resetn_1),
        .AXI_15_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_15_ARLEN(smartconnect_3_M03_AXI_ARLEN),
        .AXI_15_ARREADY(smartconnect_3_M03_AXI_ARREADY),
        .AXI_15_ARSIZE(smartconnect_3_M03_AXI_ARSIZE),
        .AXI_15_ARVALID(smartconnect_3_M03_AXI_ARVALID),
        .AXI_15_AWADDR(smartconnect_3_M03_AXI_AWADDR),
        .AXI_15_AWBURST(smartconnect_3_M03_AXI_AWBURST),
        .AXI_15_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_15_AWLEN(smartconnect_3_M03_AXI_AWLEN),
        .AXI_15_AWREADY(smartconnect_3_M03_AXI_AWREADY),
        .AXI_15_AWSIZE(smartconnect_3_M03_AXI_AWSIZE),
        .AXI_15_AWVALID(smartconnect_3_M03_AXI_AWVALID),
        .AXI_15_BREADY(smartconnect_3_M03_AXI_BREADY),
        .AXI_15_BRESP(smartconnect_3_M03_AXI_BRESP),
        .AXI_15_BVALID(smartconnect_3_M03_AXI_BVALID),
        .AXI_15_RDATA(smartconnect_3_M03_AXI_RDATA),
        .AXI_15_RLAST(smartconnect_3_M03_AXI_RLAST),
        .AXI_15_RREADY(smartconnect_3_M03_AXI_RREADY),
        .AXI_15_RRESP(smartconnect_3_M03_AXI_RRESP),
        .AXI_15_RVALID(smartconnect_3_M03_AXI_RVALID),
        .AXI_15_WDATA(smartconnect_3_M03_AXI_WDATA),
        .AXI_15_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_15_WLAST(smartconnect_3_M03_AXI_WLAST),
        .AXI_15_WREADY(smartconnect_3_M03_AXI_WREADY),
        .AXI_15_WSTRB(smartconnect_3_M03_AXI_WSTRB),
        .AXI_15_WVALID(smartconnect_3_M03_AXI_WVALID),
        .DRAM_0_STAT_CATTRIP(hbm_cattrip),
        .DRAM_0_STAT_TEMP(hbm_temp),
        .HBM_REF_CLK_0(clock_buffer_IBUF_OUT));
  hbm_clock_imp_1PJ5DYR hbm_clock
       (.clk_450(axi_nn_aclk_1),
        .cmac_clk(cmac_clk),
        .cmac_resetn(cmac_resetn),
        .resetn_450(axi_nn_resetn_1),
        .sys_clk(sys_clk),
        .sys_resetn(sys_resetn));
  top_level_smartconnect_4_0 main_crossbar
       (.M00_AXI_araddr(main_crossbar_M00_AXI_ARADDR),
        .M00_AXI_arburst(main_crossbar_M00_AXI_ARBURST),
        .M00_AXI_arcache(main_crossbar_M00_AXI_ARCACHE),
        .M00_AXI_arlen(main_crossbar_M00_AXI_ARLEN),
        .M00_AXI_arlock(main_crossbar_M00_AXI_ARLOCK),
        .M00_AXI_arprot(main_crossbar_M00_AXI_ARPROT),
        .M00_AXI_arqos(main_crossbar_M00_AXI_ARQOS),
        .M00_AXI_arready(main_crossbar_M00_AXI_ARREADY),
        .M00_AXI_arsize(main_crossbar_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(main_crossbar_M00_AXI_ARVALID),
        .M00_AXI_awaddr(main_crossbar_M00_AXI_AWADDR),
        .M00_AXI_awburst(main_crossbar_M00_AXI_AWBURST),
        .M00_AXI_awcache(main_crossbar_M00_AXI_AWCACHE),
        .M00_AXI_awlen(main_crossbar_M00_AXI_AWLEN),
        .M00_AXI_awlock(main_crossbar_M00_AXI_AWLOCK),
        .M00_AXI_awprot(main_crossbar_M00_AXI_AWPROT),
        .M00_AXI_awqos(main_crossbar_M00_AXI_AWQOS),
        .M00_AXI_awready(main_crossbar_M00_AXI_AWREADY),
        .M00_AXI_awsize(main_crossbar_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(main_crossbar_M00_AXI_AWVALID),
        .M00_AXI_bready(main_crossbar_M00_AXI_BREADY),
        .M00_AXI_bresp(main_crossbar_M00_AXI_BRESP),
        .M00_AXI_bvalid(main_crossbar_M00_AXI_BVALID),
        .M00_AXI_rdata(main_crossbar_M00_AXI_RDATA),
        .M00_AXI_rlast(main_crossbar_M00_AXI_RLAST),
        .M00_AXI_rready(main_crossbar_M00_AXI_RREADY),
        .M00_AXI_rresp(main_crossbar_M00_AXI_RRESP),
        .M00_AXI_rvalid(main_crossbar_M00_AXI_RVALID),
        .M00_AXI_wdata(main_crossbar_M00_AXI_WDATA),
        .M00_AXI_wlast(main_crossbar_M00_AXI_WLAST),
        .M00_AXI_wready(main_crossbar_M00_AXI_WREADY),
        .M00_AXI_wstrb(main_crossbar_M00_AXI_WSTRB),
        .M00_AXI_wvalid(main_crossbar_M00_AXI_WVALID),
        .M01_AXI_araddr(main_crossbar_M01_AXI_ARADDR),
        .M01_AXI_arburst(main_crossbar_M01_AXI_ARBURST),
        .M01_AXI_arcache(main_crossbar_M01_AXI_ARCACHE),
        .M01_AXI_arlen(main_crossbar_M01_AXI_ARLEN),
        .M01_AXI_arlock(main_crossbar_M01_AXI_ARLOCK),
        .M01_AXI_arprot(main_crossbar_M01_AXI_ARPROT),
        .M01_AXI_arqos(main_crossbar_M01_AXI_ARQOS),
        .M01_AXI_arready(main_crossbar_M01_AXI_ARREADY),
        .M01_AXI_arsize(main_crossbar_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(main_crossbar_M01_AXI_ARVALID),
        .M01_AXI_awaddr(main_crossbar_M01_AXI_AWADDR),
        .M01_AXI_awburst(main_crossbar_M01_AXI_AWBURST),
        .M01_AXI_awcache(main_crossbar_M01_AXI_AWCACHE),
        .M01_AXI_awlen(main_crossbar_M01_AXI_AWLEN),
        .M01_AXI_awlock(main_crossbar_M01_AXI_AWLOCK),
        .M01_AXI_awprot(main_crossbar_M01_AXI_AWPROT),
        .M01_AXI_awqos(main_crossbar_M01_AXI_AWQOS),
        .M01_AXI_awready(main_crossbar_M01_AXI_AWREADY),
        .M01_AXI_awsize(main_crossbar_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(main_crossbar_M01_AXI_AWVALID),
        .M01_AXI_bready(main_crossbar_M01_AXI_BREADY),
        .M01_AXI_bresp(main_crossbar_M01_AXI_BRESP),
        .M01_AXI_bvalid(main_crossbar_M01_AXI_BVALID),
        .M01_AXI_rdata(main_crossbar_M01_AXI_RDATA),
        .M01_AXI_rlast(main_crossbar_M01_AXI_RLAST),
        .M01_AXI_rready(main_crossbar_M01_AXI_RREADY),
        .M01_AXI_rresp(main_crossbar_M01_AXI_RRESP),
        .M01_AXI_rvalid(main_crossbar_M01_AXI_RVALID),
        .M01_AXI_wdata(main_crossbar_M01_AXI_WDATA),
        .M01_AXI_wlast(main_crossbar_M01_AXI_WLAST),
        .M01_AXI_wready(main_crossbar_M01_AXI_WREADY),
        .M01_AXI_wstrb(main_crossbar_M01_AXI_WSTRB),
        .M01_AXI_wvalid(main_crossbar_M01_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arid(S00_AXI_arid),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awid(S00_AXI_awid),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awsize(S00_AXI_awsize),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bid(S00_AXI_bid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rid(S00_AXI_rid),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .S01_AXI_araddr(S01_AXI_araddr),
        .S01_AXI_arburst(S01_AXI_arburst),
        .S01_AXI_arcache(S01_AXI_arcache),
        .S01_AXI_arid(S01_AXI_arid),
        .S01_AXI_arlen(S01_AXI_arlen),
        .S01_AXI_arlock(S01_AXI_arlock),
        .S01_AXI_arprot(S01_AXI_arprot),
        .S01_AXI_arqos(S01_AXI_arqos),
        .S01_AXI_arready(S01_AXI_arready),
        .S01_AXI_arsize(S01_AXI_arsize),
        .S01_AXI_arvalid(S01_AXI_arvalid),
        .S01_AXI_awaddr(S01_AXI_awaddr),
        .S01_AXI_awburst(S01_AXI_awburst),
        .S01_AXI_awcache(S01_AXI_awcache),
        .S01_AXI_awid(S01_AXI_awid),
        .S01_AXI_awlen(S01_AXI_awlen),
        .S01_AXI_awlock(S01_AXI_awlock),
        .S01_AXI_awprot(S01_AXI_awprot),
        .S01_AXI_awqos(S01_AXI_awqos),
        .S01_AXI_awready(S01_AXI_awready),
        .S01_AXI_awsize(S01_AXI_awsize),
        .S01_AXI_awvalid(S01_AXI_awvalid),
        .S01_AXI_bready(S01_AXI_bready),
        .S01_AXI_bresp(S01_AXI_bresp),
        .S01_AXI_bvalid(S01_AXI_bvalid),
        .S01_AXI_rdata(S01_AXI_rdata),
        .S01_AXI_rlast(S01_AXI_rlast),
        .S01_AXI_rready(S01_AXI_rready),
        .S01_AXI_rresp(S01_AXI_rresp),
        .S01_AXI_rvalid(S01_AXI_rvalid),
        .S01_AXI_wdata(S01_AXI_wdata),
        .S01_AXI_wlast(S01_AXI_wlast),
        .S01_AXI_wready(S01_AXI_wready),
        .S01_AXI_wstrb(S01_AXI_wstrb),
        .S01_AXI_wvalid(S01_AXI_wvalid),
        .aclk(cmac_clk),
        .aclk1(sys_clk),
        .aresetn(cmac_resetn));
  assign one_dout = 1'h1;
  top_level_smartconnect_0_3 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_0_M01_AXI_ARBURST),
        .M01_AXI_arlen(smartconnect_0_M01_AXI_ARLEN),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_0_M01_AXI_AWBURST),
        .M01_AXI_awlen(smartconnect_0_M01_AXI_AWLEN),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_0_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_0_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arburst(smartconnect_0_M02_AXI_ARBURST),
        .M02_AXI_arlen(smartconnect_0_M02_AXI_ARLEN),
        .M02_AXI_arready(smartconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arsize(smartconnect_0_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awburst(smartconnect_0_M02_AXI_AWBURST),
        .M02_AXI_awlen(smartconnect_0_M02_AXI_AWLEN),
        .M02_AXI_awready(smartconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awsize(smartconnect_0_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_0_M02_AXI_RDATA),
        .M02_AXI_rlast(smartconnect_0_M02_AXI_RLAST),
        .M02_AXI_rready(smartconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_0_M02_AXI_WDATA),
        .M02_AXI_wlast(smartconnect_0_M02_AXI_WLAST),
        .M02_AXI_wready(smartconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_0_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arburst(smartconnect_0_M03_AXI_ARBURST),
        .M03_AXI_arlen(smartconnect_0_M03_AXI_ARLEN),
        .M03_AXI_arready(smartconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arsize(smartconnect_0_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awburst(smartconnect_0_M03_AXI_AWBURST),
        .M03_AXI_awlen(smartconnect_0_M03_AXI_AWLEN),
        .M03_AXI_awready(smartconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awsize(smartconnect_0_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_0_M03_AXI_RDATA),
        .M03_AXI_rlast(smartconnect_0_M03_AXI_RLAST),
        .M03_AXI_rready(smartconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_0_M03_AXI_WDATA),
        .M03_AXI_wlast(smartconnect_0_M03_AXI_WLAST),
        .M03_AXI_wready(smartconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_0_M03_AXI_WVALID),
        .S00_AXI_araddr(axi4_splitter_0_M0_AXI_ARADDR),
        .S00_AXI_arburst(axi4_splitter_0_M0_AXI_ARBURST),
        .S00_AXI_arcache(axi4_splitter_0_M0_AXI_ARCACHE),
        .S00_AXI_arid(axi4_splitter_0_M0_AXI_ARID),
        .S00_AXI_arlen(axi4_splitter_0_M0_AXI_ARLEN),
        .S00_AXI_arlock(axi4_splitter_0_M0_AXI_ARLOCK),
        .S00_AXI_arprot(axi4_splitter_0_M0_AXI_ARPROT),
        .S00_AXI_arqos(axi4_splitter_0_M0_AXI_ARQOS),
        .S00_AXI_arready(axi4_splitter_0_M0_AXI_ARREADY),
        .S00_AXI_arsize(axi4_splitter_0_M0_AXI_ARSIZE),
        .S00_AXI_arvalid(axi4_splitter_0_M0_AXI_ARVALID),
        .S00_AXI_awaddr(axi4_splitter_0_M0_AXI_AWADDR),
        .S00_AXI_awburst(axi4_splitter_0_M0_AXI_AWBURST),
        .S00_AXI_awcache(axi4_splitter_0_M0_AXI_AWCACHE),
        .S00_AXI_awid(axi4_splitter_0_M0_AXI_AWID),
        .S00_AXI_awlen(axi4_splitter_0_M0_AXI_AWLEN),
        .S00_AXI_awlock(axi4_splitter_0_M0_AXI_AWLOCK),
        .S00_AXI_awprot(axi4_splitter_0_M0_AXI_AWPROT),
        .S00_AXI_awqos(axi4_splitter_0_M0_AXI_AWQOS),
        .S00_AXI_awready(axi4_splitter_0_M0_AXI_AWREADY),
        .S00_AXI_awsize(axi4_splitter_0_M0_AXI_AWSIZE),
        .S00_AXI_awvalid(axi4_splitter_0_M0_AXI_AWVALID),
        .S00_AXI_bready(axi4_splitter_0_M0_AXI_BREADY),
        .S00_AXI_bresp(axi4_splitter_0_M0_AXI_BRESP),
        .S00_AXI_bvalid(axi4_splitter_0_M0_AXI_BVALID),
        .S00_AXI_rdata(axi4_splitter_0_M0_AXI_RDATA),
        .S00_AXI_rid(axi4_splitter_0_M0_AXI_RID),
        .S00_AXI_rlast(axi4_splitter_0_M0_AXI_RLAST),
        .S00_AXI_rready(axi4_splitter_0_M0_AXI_RREADY),
        .S00_AXI_rresp(axi4_splitter_0_M0_AXI_RRESP),
        .S00_AXI_rvalid(axi4_splitter_0_M0_AXI_RVALID),
        .S00_AXI_wdata(axi4_splitter_0_M0_AXI_WDATA),
        .S00_AXI_wlast(axi4_splitter_0_M0_AXI_WLAST),
        .S00_AXI_wready(axi4_splitter_0_M0_AXI_WREADY),
        .S00_AXI_wstrb(axi4_splitter_0_M0_AXI_WSTRB),
        .S00_AXI_wvalid(axi4_splitter_0_M0_AXI_WVALID),
        .aclk(axi_nn_aclk_1),
        .aclk1(cmac_clk),
        .aresetn(axi_nn_resetn_1));
  top_level_smartconnect_0_4 smartconnect_1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arlen(smartconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awlen(smartconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awready(smartconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_1_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_1_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_1_M01_AXI_ARBURST),
        .M01_AXI_arlen(smartconnect_1_M01_AXI_ARLEN),
        .M01_AXI_arready(smartconnect_1_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_1_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_1_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_1_M01_AXI_AWBURST),
        .M01_AXI_awlen(smartconnect_1_M01_AXI_AWLEN),
        .M01_AXI_awready(smartconnect_1_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_1_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_1_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_1_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_1_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_1_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_1_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_1_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_1_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_1_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_1_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_1_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_1_M02_AXI_ARADDR),
        .M02_AXI_arburst(smartconnect_1_M02_AXI_ARBURST),
        .M02_AXI_arlen(smartconnect_1_M02_AXI_ARLEN),
        .M02_AXI_arready(smartconnect_1_M02_AXI_ARREADY),
        .M02_AXI_arsize(smartconnect_1_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(smartconnect_1_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_1_M02_AXI_AWADDR),
        .M02_AXI_awburst(smartconnect_1_M02_AXI_AWBURST),
        .M02_AXI_awlen(smartconnect_1_M02_AXI_AWLEN),
        .M02_AXI_awready(smartconnect_1_M02_AXI_AWREADY),
        .M02_AXI_awsize(smartconnect_1_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(smartconnect_1_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_1_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_1_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_1_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_1_M02_AXI_RDATA),
        .M02_AXI_rlast(smartconnect_1_M02_AXI_RLAST),
        .M02_AXI_rready(smartconnect_1_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_1_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_1_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_1_M02_AXI_WDATA),
        .M02_AXI_wlast(smartconnect_1_M02_AXI_WLAST),
        .M02_AXI_wready(smartconnect_1_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_1_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_1_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_1_M03_AXI_ARADDR),
        .M03_AXI_arburst(smartconnect_1_M03_AXI_ARBURST),
        .M03_AXI_arlen(smartconnect_1_M03_AXI_ARLEN),
        .M03_AXI_arready(smartconnect_1_M03_AXI_ARREADY),
        .M03_AXI_arsize(smartconnect_1_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(smartconnect_1_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_1_M03_AXI_AWADDR),
        .M03_AXI_awburst(smartconnect_1_M03_AXI_AWBURST),
        .M03_AXI_awlen(smartconnect_1_M03_AXI_AWLEN),
        .M03_AXI_awready(smartconnect_1_M03_AXI_AWREADY),
        .M03_AXI_awsize(smartconnect_1_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(smartconnect_1_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_1_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_1_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_1_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_1_M03_AXI_RDATA),
        .M03_AXI_rlast(smartconnect_1_M03_AXI_RLAST),
        .M03_AXI_rready(smartconnect_1_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_1_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_1_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_1_M03_AXI_WDATA),
        .M03_AXI_wlast(smartconnect_1_M03_AXI_WLAST),
        .M03_AXI_wready(smartconnect_1_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_1_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_1_M03_AXI_WVALID),
        .S00_AXI_araddr(axi4_splitter_0_M1_AXI_ARADDR),
        .S00_AXI_arburst(axi4_splitter_0_M1_AXI_ARBURST),
        .S00_AXI_arcache(axi4_splitter_0_M1_AXI_ARCACHE),
        .S00_AXI_arid(axi4_splitter_0_M1_AXI_ARID),
        .S00_AXI_arlen(axi4_splitter_0_M1_AXI_ARLEN),
        .S00_AXI_arlock(axi4_splitter_0_M1_AXI_ARLOCK),
        .S00_AXI_arprot(axi4_splitter_0_M1_AXI_ARPROT),
        .S00_AXI_arqos(axi4_splitter_0_M1_AXI_ARQOS),
        .S00_AXI_arready(axi4_splitter_0_M1_AXI_ARREADY),
        .S00_AXI_arsize(axi4_splitter_0_M1_AXI_ARSIZE),
        .S00_AXI_arvalid(axi4_splitter_0_M1_AXI_ARVALID),
        .S00_AXI_awaddr(axi4_splitter_0_M1_AXI_AWADDR),
        .S00_AXI_awburst(axi4_splitter_0_M1_AXI_AWBURST),
        .S00_AXI_awcache(axi4_splitter_0_M1_AXI_AWCACHE),
        .S00_AXI_awid(axi4_splitter_0_M1_AXI_AWID),
        .S00_AXI_awlen(axi4_splitter_0_M1_AXI_AWLEN),
        .S00_AXI_awlock(axi4_splitter_0_M1_AXI_AWLOCK),
        .S00_AXI_awprot(axi4_splitter_0_M1_AXI_AWPROT),
        .S00_AXI_awqos(axi4_splitter_0_M1_AXI_AWQOS),
        .S00_AXI_awready(axi4_splitter_0_M1_AXI_AWREADY),
        .S00_AXI_awsize(axi4_splitter_0_M1_AXI_AWSIZE),
        .S00_AXI_awvalid(axi4_splitter_0_M1_AXI_AWVALID),
        .S00_AXI_bready(axi4_splitter_0_M1_AXI_BREADY),
        .S00_AXI_bresp(axi4_splitter_0_M1_AXI_BRESP),
        .S00_AXI_bvalid(axi4_splitter_0_M1_AXI_BVALID),
        .S00_AXI_rdata(axi4_splitter_0_M1_AXI_RDATA),
        .S00_AXI_rid(axi4_splitter_0_M1_AXI_RID),
        .S00_AXI_rlast(axi4_splitter_0_M1_AXI_RLAST),
        .S00_AXI_rready(axi4_splitter_0_M1_AXI_RREADY),
        .S00_AXI_rresp(axi4_splitter_0_M1_AXI_RRESP),
        .S00_AXI_rvalid(axi4_splitter_0_M1_AXI_RVALID),
        .S00_AXI_wdata(axi4_splitter_0_M1_AXI_WDATA),
        .S00_AXI_wlast(axi4_splitter_0_M1_AXI_WLAST),
        .S00_AXI_wready(axi4_splitter_0_M1_AXI_WREADY),
        .S00_AXI_wstrb(axi4_splitter_0_M1_AXI_WSTRB),
        .S00_AXI_wvalid(axi4_splitter_0_M1_AXI_WVALID),
        .aclk(axi_nn_aclk_1),
        .aclk1(cmac_clk),
        .aresetn(axi_nn_resetn_1));
  top_level_smartconnect_1_0 smartconnect_2
       (.M00_AXI_araddr(smartconnect_2_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_2_M00_AXI_ARBURST),
        .M00_AXI_arlen(smartconnect_2_M00_AXI_ARLEN),
        .M00_AXI_arready(smartconnect_2_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_2_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_2_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_2_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_2_M00_AXI_AWBURST),
        .M00_AXI_awlen(smartconnect_2_M00_AXI_AWLEN),
        .M00_AXI_awready(smartconnect_2_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_2_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_2_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_2_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_2_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_2_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_2_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_2_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_2_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_2_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_2_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_2_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_2_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_2_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_2_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_2_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_2_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_2_M01_AXI_ARBURST),
        .M01_AXI_arlen(smartconnect_2_M01_AXI_ARLEN),
        .M01_AXI_arready(smartconnect_2_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_2_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_2_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_2_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_2_M01_AXI_AWBURST),
        .M01_AXI_awlen(smartconnect_2_M01_AXI_AWLEN),
        .M01_AXI_awready(smartconnect_2_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_2_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_2_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_2_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_2_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_2_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_2_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_2_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_2_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_2_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_2_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_2_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_2_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_2_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_2_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_2_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_2_M02_AXI_ARADDR),
        .M02_AXI_arburst(smartconnect_2_M02_AXI_ARBURST),
        .M02_AXI_arlen(smartconnect_2_M02_AXI_ARLEN),
        .M02_AXI_arready(smartconnect_2_M02_AXI_ARREADY),
        .M02_AXI_arsize(smartconnect_2_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(smartconnect_2_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_2_M02_AXI_AWADDR),
        .M02_AXI_awburst(smartconnect_2_M02_AXI_AWBURST),
        .M02_AXI_awlen(smartconnect_2_M02_AXI_AWLEN),
        .M02_AXI_awready(smartconnect_2_M02_AXI_AWREADY),
        .M02_AXI_awsize(smartconnect_2_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(smartconnect_2_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_2_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_2_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_2_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_2_M02_AXI_RDATA),
        .M02_AXI_rlast(smartconnect_2_M02_AXI_RLAST),
        .M02_AXI_rready(smartconnect_2_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_2_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_2_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_2_M02_AXI_WDATA),
        .M02_AXI_wlast(smartconnect_2_M02_AXI_WLAST),
        .M02_AXI_wready(smartconnect_2_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_2_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_2_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_2_M03_AXI_ARADDR),
        .M03_AXI_arburst(smartconnect_2_M03_AXI_ARBURST),
        .M03_AXI_arlen(smartconnect_2_M03_AXI_ARLEN),
        .M03_AXI_arready(smartconnect_2_M03_AXI_ARREADY),
        .M03_AXI_arsize(smartconnect_2_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(smartconnect_2_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_2_M03_AXI_AWADDR),
        .M03_AXI_awburst(smartconnect_2_M03_AXI_AWBURST),
        .M03_AXI_awlen(smartconnect_2_M03_AXI_AWLEN),
        .M03_AXI_awready(smartconnect_2_M03_AXI_AWREADY),
        .M03_AXI_awsize(smartconnect_2_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(smartconnect_2_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_2_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_2_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_2_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_2_M03_AXI_RDATA),
        .M03_AXI_rlast(smartconnect_2_M03_AXI_RLAST),
        .M03_AXI_rready(smartconnect_2_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_2_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_2_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_2_M03_AXI_WDATA),
        .M03_AXI_wlast(smartconnect_2_M03_AXI_WLAST),
        .M03_AXI_wready(smartconnect_2_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_2_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_2_M03_AXI_WVALID),
        .S00_AXI_araddr(axi4_splitter_1_M0_AXI_ARADDR),
        .S00_AXI_arburst(axi4_splitter_1_M0_AXI_ARBURST),
        .S00_AXI_arcache(axi4_splitter_1_M0_AXI_ARCACHE),
        .S00_AXI_arid(axi4_splitter_1_M0_AXI_ARID),
        .S00_AXI_arlen(axi4_splitter_1_M0_AXI_ARLEN),
        .S00_AXI_arlock(axi4_splitter_1_M0_AXI_ARLOCK),
        .S00_AXI_arprot(axi4_splitter_1_M0_AXI_ARPROT),
        .S00_AXI_arqos(axi4_splitter_1_M0_AXI_ARQOS),
        .S00_AXI_arready(axi4_splitter_1_M0_AXI_ARREADY),
        .S00_AXI_arsize(axi4_splitter_1_M0_AXI_ARSIZE),
        .S00_AXI_arvalid(axi4_splitter_1_M0_AXI_ARVALID),
        .S00_AXI_awaddr(axi4_splitter_1_M0_AXI_AWADDR),
        .S00_AXI_awburst(axi4_splitter_1_M0_AXI_AWBURST),
        .S00_AXI_awcache(axi4_splitter_1_M0_AXI_AWCACHE),
        .S00_AXI_awid(axi4_splitter_1_M0_AXI_AWID),
        .S00_AXI_awlen(axi4_splitter_1_M0_AXI_AWLEN),
        .S00_AXI_awlock(axi4_splitter_1_M0_AXI_AWLOCK),
        .S00_AXI_awprot(axi4_splitter_1_M0_AXI_AWPROT),
        .S00_AXI_awqos(axi4_splitter_1_M0_AXI_AWQOS),
        .S00_AXI_awready(axi4_splitter_1_M0_AXI_AWREADY),
        .S00_AXI_awsize(axi4_splitter_1_M0_AXI_AWSIZE),
        .S00_AXI_awvalid(axi4_splitter_1_M0_AXI_AWVALID),
        .S00_AXI_bready(axi4_splitter_1_M0_AXI_BREADY),
        .S00_AXI_bresp(axi4_splitter_1_M0_AXI_BRESP),
        .S00_AXI_bvalid(axi4_splitter_1_M0_AXI_BVALID),
        .S00_AXI_rdata(axi4_splitter_1_M0_AXI_RDATA),
        .S00_AXI_rid(axi4_splitter_1_M0_AXI_RID),
        .S00_AXI_rlast(axi4_splitter_1_M0_AXI_RLAST),
        .S00_AXI_rready(axi4_splitter_1_M0_AXI_RREADY),
        .S00_AXI_rresp(axi4_splitter_1_M0_AXI_RRESP),
        .S00_AXI_rvalid(axi4_splitter_1_M0_AXI_RVALID),
        .S00_AXI_wdata(axi4_splitter_1_M0_AXI_WDATA),
        .S00_AXI_wlast(axi4_splitter_1_M0_AXI_WLAST),
        .S00_AXI_wready(axi4_splitter_1_M0_AXI_WREADY),
        .S00_AXI_wstrb(axi4_splitter_1_M0_AXI_WSTRB),
        .S00_AXI_wvalid(axi4_splitter_1_M0_AXI_WVALID),
        .aclk(axi_nn_aclk_1),
        .aclk1(cmac_clk),
        .aresetn(axi_nn_resetn_1));
  top_level_smartconnect_2_1 smartconnect_3
       (.M00_AXI_araddr(smartconnect_3_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_3_M00_AXI_ARBURST),
        .M00_AXI_arlen(smartconnect_3_M00_AXI_ARLEN),
        .M00_AXI_arready(smartconnect_3_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_3_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_3_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_3_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_3_M00_AXI_AWBURST),
        .M00_AXI_awlen(smartconnect_3_M00_AXI_AWLEN),
        .M00_AXI_awready(smartconnect_3_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_3_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_3_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_3_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_3_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_3_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_3_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_3_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_3_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_3_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_3_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_3_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_3_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_3_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_3_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_3_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_3_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_3_M01_AXI_ARBURST),
        .M01_AXI_arlen(smartconnect_3_M01_AXI_ARLEN),
        .M01_AXI_arready(smartconnect_3_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_3_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_3_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_3_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_3_M01_AXI_AWBURST),
        .M01_AXI_awlen(smartconnect_3_M01_AXI_AWLEN),
        .M01_AXI_awready(smartconnect_3_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_3_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_3_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_3_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_3_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_3_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_3_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_3_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_3_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_3_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_3_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_3_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_3_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_3_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_3_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_3_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_3_M02_AXI_ARADDR),
        .M02_AXI_arburst(smartconnect_3_M02_AXI_ARBURST),
        .M02_AXI_arlen(smartconnect_3_M02_AXI_ARLEN),
        .M02_AXI_arready(smartconnect_3_M02_AXI_ARREADY),
        .M02_AXI_arsize(smartconnect_3_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(smartconnect_3_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_3_M02_AXI_AWADDR),
        .M02_AXI_awburst(smartconnect_3_M02_AXI_AWBURST),
        .M02_AXI_awlen(smartconnect_3_M02_AXI_AWLEN),
        .M02_AXI_awready(smartconnect_3_M02_AXI_AWREADY),
        .M02_AXI_awsize(smartconnect_3_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(smartconnect_3_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_3_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_3_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_3_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_3_M02_AXI_RDATA),
        .M02_AXI_rlast(smartconnect_3_M02_AXI_RLAST),
        .M02_AXI_rready(smartconnect_3_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_3_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_3_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_3_M02_AXI_WDATA),
        .M02_AXI_wlast(smartconnect_3_M02_AXI_WLAST),
        .M02_AXI_wready(smartconnect_3_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_3_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_3_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_3_M03_AXI_ARADDR),
        .M03_AXI_arburst(smartconnect_3_M03_AXI_ARBURST),
        .M03_AXI_arlen(smartconnect_3_M03_AXI_ARLEN),
        .M03_AXI_arready(smartconnect_3_M03_AXI_ARREADY),
        .M03_AXI_arsize(smartconnect_3_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(smartconnect_3_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_3_M03_AXI_AWADDR),
        .M03_AXI_awburst(smartconnect_3_M03_AXI_AWBURST),
        .M03_AXI_awlen(smartconnect_3_M03_AXI_AWLEN),
        .M03_AXI_awready(smartconnect_3_M03_AXI_AWREADY),
        .M03_AXI_awsize(smartconnect_3_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(smartconnect_3_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_3_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_3_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_3_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_3_M03_AXI_RDATA),
        .M03_AXI_rlast(smartconnect_3_M03_AXI_RLAST),
        .M03_AXI_rready(smartconnect_3_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_3_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_3_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_3_M03_AXI_WDATA),
        .M03_AXI_wlast(smartconnect_3_M03_AXI_WLAST),
        .M03_AXI_wready(smartconnect_3_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_3_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_3_M03_AXI_WVALID),
        .S00_AXI_araddr(axi4_splitter_1_M1_AXI_ARADDR),
        .S00_AXI_arburst(axi4_splitter_1_M1_AXI_ARBURST),
        .S00_AXI_arcache(axi4_splitter_1_M1_AXI_ARCACHE),
        .S00_AXI_arid(axi4_splitter_1_M1_AXI_ARID),
        .S00_AXI_arlen(axi4_splitter_1_M1_AXI_ARLEN),
        .S00_AXI_arlock(axi4_splitter_1_M1_AXI_ARLOCK),
        .S00_AXI_arprot(axi4_splitter_1_M1_AXI_ARPROT),
        .S00_AXI_arqos(axi4_splitter_1_M1_AXI_ARQOS),
        .S00_AXI_arready(axi4_splitter_1_M1_AXI_ARREADY),
        .S00_AXI_arsize(axi4_splitter_1_M1_AXI_ARSIZE),
        .S00_AXI_arvalid(axi4_splitter_1_M1_AXI_ARVALID),
        .S00_AXI_awaddr(axi4_splitter_1_M1_AXI_AWADDR),
        .S00_AXI_awburst(axi4_splitter_1_M1_AXI_AWBURST),
        .S00_AXI_awcache(axi4_splitter_1_M1_AXI_AWCACHE),
        .S00_AXI_awid(axi4_splitter_1_M1_AXI_AWID),
        .S00_AXI_awlen(axi4_splitter_1_M1_AXI_AWLEN),
        .S00_AXI_awlock(axi4_splitter_1_M1_AXI_AWLOCK),
        .S00_AXI_awprot(axi4_splitter_1_M1_AXI_AWPROT),
        .S00_AXI_awqos(axi4_splitter_1_M1_AXI_AWQOS),
        .S00_AXI_awready(axi4_splitter_1_M1_AXI_AWREADY),
        .S00_AXI_awsize(axi4_splitter_1_M1_AXI_AWSIZE),
        .S00_AXI_awvalid(axi4_splitter_1_M1_AXI_AWVALID),
        .S00_AXI_bready(axi4_splitter_1_M1_AXI_BREADY),
        .S00_AXI_bresp(axi4_splitter_1_M1_AXI_BRESP),
        .S00_AXI_bvalid(axi4_splitter_1_M1_AXI_BVALID),
        .S00_AXI_rdata(axi4_splitter_1_M1_AXI_RDATA),
        .S00_AXI_rid(axi4_splitter_1_M1_AXI_RID),
        .S00_AXI_rlast(axi4_splitter_1_M1_AXI_RLAST),
        .S00_AXI_rready(axi4_splitter_1_M1_AXI_RREADY),
        .S00_AXI_rresp(axi4_splitter_1_M1_AXI_RRESP),
        .S00_AXI_rvalid(axi4_splitter_1_M1_AXI_RVALID),
        .S00_AXI_wdata(axi4_splitter_1_M1_AXI_WDATA),
        .S00_AXI_wlast(axi4_splitter_1_M1_AXI_WLAST),
        .S00_AXI_wready(axi4_splitter_1_M1_AXI_WREADY),
        .S00_AXI_wstrb(axi4_splitter_1_M1_AXI_WSTRB),
        .S00_AXI_wvalid(axi4_splitter_1_M1_AXI_WVALID),
        .aclk(axi_nn_aclk_1),
        .aclk1(cmac_clk),
        .aresetn(axi_nn_resetn_1));
endmodule

module hbm_1_imp_1WIOENM
   (S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    cmac_clk,
    cmac_resetn,
    hbm_cattrip,
    hbm_refclk_clk_n,
    hbm_refclk_clk_p,
    hbm_temp,
    sys_clk,
    sys_resetn);
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [1:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [1:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [1:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input [63:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [3:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [63:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [3:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [511:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [511:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [63:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input cmac_clk;
  output cmac_resetn;
  output hbm_cattrip;
  input [0:0]hbm_refclk_clk_n;
  input [0:0]hbm_refclk_clk_p;
  output [6:0]hbm_temp;
  input sys_clk;
  input sys_resetn;

  wire [63:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [1:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [63:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [1:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire [1:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire [1:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [63:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [3:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire S01_AXI_arready;
  wire [2:0]S01_AXI_arsize;
  wire S01_AXI_arvalid;
  wire [63:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [3:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [2:0]S01_AXI_awsize;
  wire S01_AXI_awvalid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [511:0]S01_AXI_rdata;
  wire S01_AXI_rlast;
  wire S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire S01_AXI_rvalid;
  wire [511:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [63:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [33:0]axi4_splitter_0_M0_AXI_ARADDR;
  wire [1:0]axi4_splitter_0_M0_AXI_ARBURST;
  wire [3:0]axi4_splitter_0_M0_AXI_ARCACHE;
  wire [4:0]axi4_splitter_0_M0_AXI_ARID;
  wire [7:0]axi4_splitter_0_M0_AXI_ARLEN;
  wire axi4_splitter_0_M0_AXI_ARLOCK;
  wire [2:0]axi4_splitter_0_M0_AXI_ARPROT;
  wire [3:0]axi4_splitter_0_M0_AXI_ARQOS;
  wire axi4_splitter_0_M0_AXI_ARREADY;
  wire [2:0]axi4_splitter_0_M0_AXI_ARSIZE;
  wire axi4_splitter_0_M0_AXI_ARVALID;
  wire [33:0]axi4_splitter_0_M0_AXI_AWADDR;
  wire [1:0]axi4_splitter_0_M0_AXI_AWBURST;
  wire [3:0]axi4_splitter_0_M0_AXI_AWCACHE;
  wire [4:0]axi4_splitter_0_M0_AXI_AWID;
  wire [7:0]axi4_splitter_0_M0_AXI_AWLEN;
  wire axi4_splitter_0_M0_AXI_AWLOCK;
  wire [2:0]axi4_splitter_0_M0_AXI_AWPROT;
  wire [3:0]axi4_splitter_0_M0_AXI_AWQOS;
  wire axi4_splitter_0_M0_AXI_AWREADY;
  wire [2:0]axi4_splitter_0_M0_AXI_AWSIZE;
  wire axi4_splitter_0_M0_AXI_AWVALID;
  wire axi4_splitter_0_M0_AXI_BREADY;
  wire [1:0]axi4_splitter_0_M0_AXI_BRESP;
  wire axi4_splitter_0_M0_AXI_BVALID;
  wire [255:0]axi4_splitter_0_M0_AXI_RDATA;
  wire [4:0]axi4_splitter_0_M0_AXI_RID;
  wire axi4_splitter_0_M0_AXI_RLAST;
  wire axi4_splitter_0_M0_AXI_RREADY;
  wire [1:0]axi4_splitter_0_M0_AXI_RRESP;
  wire axi4_splitter_0_M0_AXI_RVALID;
  wire [255:0]axi4_splitter_0_M0_AXI_WDATA;
  wire axi4_splitter_0_M0_AXI_WLAST;
  wire axi4_splitter_0_M0_AXI_WREADY;
  wire [31:0]axi4_splitter_0_M0_AXI_WSTRB;
  wire axi4_splitter_0_M0_AXI_WVALID;
  wire [33:0]axi4_splitter_0_M1_AXI_ARADDR;
  wire [1:0]axi4_splitter_0_M1_AXI_ARBURST;
  wire [3:0]axi4_splitter_0_M1_AXI_ARCACHE;
  wire [4:0]axi4_splitter_0_M1_AXI_ARID;
  wire [7:0]axi4_splitter_0_M1_AXI_ARLEN;
  wire axi4_splitter_0_M1_AXI_ARLOCK;
  wire [2:0]axi4_splitter_0_M1_AXI_ARPROT;
  wire [3:0]axi4_splitter_0_M1_AXI_ARQOS;
  wire axi4_splitter_0_M1_AXI_ARREADY;
  wire [2:0]axi4_splitter_0_M1_AXI_ARSIZE;
  wire axi4_splitter_0_M1_AXI_ARVALID;
  wire [33:0]axi4_splitter_0_M1_AXI_AWADDR;
  wire [1:0]axi4_splitter_0_M1_AXI_AWBURST;
  wire [3:0]axi4_splitter_0_M1_AXI_AWCACHE;
  wire [4:0]axi4_splitter_0_M1_AXI_AWID;
  wire [7:0]axi4_splitter_0_M1_AXI_AWLEN;
  wire axi4_splitter_0_M1_AXI_AWLOCK;
  wire [2:0]axi4_splitter_0_M1_AXI_AWPROT;
  wire [3:0]axi4_splitter_0_M1_AXI_AWQOS;
  wire axi4_splitter_0_M1_AXI_AWREADY;
  wire [2:0]axi4_splitter_0_M1_AXI_AWSIZE;
  wire axi4_splitter_0_M1_AXI_AWVALID;
  wire axi4_splitter_0_M1_AXI_BREADY;
  wire [1:0]axi4_splitter_0_M1_AXI_BRESP;
  wire axi4_splitter_0_M1_AXI_BVALID;
  wire [255:0]axi4_splitter_0_M1_AXI_RDATA;
  wire [4:0]axi4_splitter_0_M1_AXI_RID;
  wire axi4_splitter_0_M1_AXI_RLAST;
  wire axi4_splitter_0_M1_AXI_RREADY;
  wire [1:0]axi4_splitter_0_M1_AXI_RRESP;
  wire axi4_splitter_0_M1_AXI_RVALID;
  wire [255:0]axi4_splitter_0_M1_AXI_WDATA;
  wire axi4_splitter_0_M1_AXI_WLAST;
  wire axi4_splitter_0_M1_AXI_WREADY;
  wire [31:0]axi4_splitter_0_M1_AXI_WSTRB;
  wire axi4_splitter_0_M1_AXI_WVALID;
  wire [33:0]axi4_splitter_1_M0_AXI_ARADDR;
  wire [1:0]axi4_splitter_1_M0_AXI_ARBURST;
  wire [3:0]axi4_splitter_1_M0_AXI_ARCACHE;
  wire [4:0]axi4_splitter_1_M0_AXI_ARID;
  wire [7:0]axi4_splitter_1_M0_AXI_ARLEN;
  wire axi4_splitter_1_M0_AXI_ARLOCK;
  wire [2:0]axi4_splitter_1_M0_AXI_ARPROT;
  wire [3:0]axi4_splitter_1_M0_AXI_ARQOS;
  wire axi4_splitter_1_M0_AXI_ARREADY;
  wire [2:0]axi4_splitter_1_M0_AXI_ARSIZE;
  wire axi4_splitter_1_M0_AXI_ARVALID;
  wire [33:0]axi4_splitter_1_M0_AXI_AWADDR;
  wire [1:0]axi4_splitter_1_M0_AXI_AWBURST;
  wire [3:0]axi4_splitter_1_M0_AXI_AWCACHE;
  wire [4:0]axi4_splitter_1_M0_AXI_AWID;
  wire [7:0]axi4_splitter_1_M0_AXI_AWLEN;
  wire axi4_splitter_1_M0_AXI_AWLOCK;
  wire [2:0]axi4_splitter_1_M0_AXI_AWPROT;
  wire [3:0]axi4_splitter_1_M0_AXI_AWQOS;
  wire axi4_splitter_1_M0_AXI_AWREADY;
  wire [2:0]axi4_splitter_1_M0_AXI_AWSIZE;
  wire axi4_splitter_1_M0_AXI_AWVALID;
  wire axi4_splitter_1_M0_AXI_BREADY;
  wire [1:0]axi4_splitter_1_M0_AXI_BRESP;
  wire axi4_splitter_1_M0_AXI_BVALID;
  wire [255:0]axi4_splitter_1_M0_AXI_RDATA;
  wire [4:0]axi4_splitter_1_M0_AXI_RID;
  wire axi4_splitter_1_M0_AXI_RLAST;
  wire axi4_splitter_1_M0_AXI_RREADY;
  wire [1:0]axi4_splitter_1_M0_AXI_RRESP;
  wire axi4_splitter_1_M0_AXI_RVALID;
  wire [255:0]axi4_splitter_1_M0_AXI_WDATA;
  wire axi4_splitter_1_M0_AXI_WLAST;
  wire axi4_splitter_1_M0_AXI_WREADY;
  wire [31:0]axi4_splitter_1_M0_AXI_WSTRB;
  wire axi4_splitter_1_M0_AXI_WVALID;
  wire [33:0]axi4_splitter_1_M1_AXI_ARADDR;
  wire [1:0]axi4_splitter_1_M1_AXI_ARBURST;
  wire [3:0]axi4_splitter_1_M1_AXI_ARCACHE;
  wire [4:0]axi4_splitter_1_M1_AXI_ARID;
  wire [7:0]axi4_splitter_1_M1_AXI_ARLEN;
  wire axi4_splitter_1_M1_AXI_ARLOCK;
  wire [2:0]axi4_splitter_1_M1_AXI_ARPROT;
  wire [3:0]axi4_splitter_1_M1_AXI_ARQOS;
  wire axi4_splitter_1_M1_AXI_ARREADY;
  wire [2:0]axi4_splitter_1_M1_AXI_ARSIZE;
  wire axi4_splitter_1_M1_AXI_ARVALID;
  wire [33:0]axi4_splitter_1_M1_AXI_AWADDR;
  wire [1:0]axi4_splitter_1_M1_AXI_AWBURST;
  wire [3:0]axi4_splitter_1_M1_AXI_AWCACHE;
  wire [4:0]axi4_splitter_1_M1_AXI_AWID;
  wire [7:0]axi4_splitter_1_M1_AXI_AWLEN;
  wire axi4_splitter_1_M1_AXI_AWLOCK;
  wire [2:0]axi4_splitter_1_M1_AXI_AWPROT;
  wire [3:0]axi4_splitter_1_M1_AXI_AWQOS;
  wire axi4_splitter_1_M1_AXI_AWREADY;
  wire [2:0]axi4_splitter_1_M1_AXI_AWSIZE;
  wire axi4_splitter_1_M1_AXI_AWVALID;
  wire axi4_splitter_1_M1_AXI_BREADY;
  wire [1:0]axi4_splitter_1_M1_AXI_BRESP;
  wire axi4_splitter_1_M1_AXI_BVALID;
  wire [255:0]axi4_splitter_1_M1_AXI_RDATA;
  wire [4:0]axi4_splitter_1_M1_AXI_RID;
  wire axi4_splitter_1_M1_AXI_RLAST;
  wire axi4_splitter_1_M1_AXI_RREADY;
  wire [1:0]axi4_splitter_1_M1_AXI_RRESP;
  wire axi4_splitter_1_M1_AXI_RVALID;
  wire [255:0]axi4_splitter_1_M1_AXI_WDATA;
  wire axi4_splitter_1_M1_AXI_WLAST;
  wire axi4_splitter_1_M1_AXI_WREADY;
  wire [31:0]axi4_splitter_1_M1_AXI_WSTRB;
  wire axi4_splitter_1_M1_AXI_WVALID;
  wire axi_nn_aclk_1;
  wire axi_nn_resetn_1;
  wire [0:0]clock_buffer_IBUF_OUT;
  wire cmac_clk;
  wire cmac_resetn;
  wire hbm_cattrip;
  wire [0:0]hbm_refclk_clk_n;
  wire [0:0]hbm_refclk_clk_p;
  wire [6:0]hbm_temp;
  wire [0:0]one_dout;
  wire [33:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARLEN;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [33:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWLEN;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [255:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [255:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [31:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [33:0]smartconnect_0_M01_AXI_ARADDR;
  wire [1:0]smartconnect_0_M01_AXI_ARBURST;
  wire [3:0]smartconnect_0_M01_AXI_ARLEN;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire [2:0]smartconnect_0_M01_AXI_ARSIZE;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [33:0]smartconnect_0_M01_AXI_AWADDR;
  wire [1:0]smartconnect_0_M01_AXI_AWBURST;
  wire [3:0]smartconnect_0_M01_AXI_AWLEN;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire [2:0]smartconnect_0_M01_AXI_AWSIZE;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [255:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RLAST;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [255:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WLAST;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [31:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire [33:0]smartconnect_0_M02_AXI_ARADDR;
  wire [1:0]smartconnect_0_M02_AXI_ARBURST;
  wire [3:0]smartconnect_0_M02_AXI_ARLEN;
  wire smartconnect_0_M02_AXI_ARREADY;
  wire [2:0]smartconnect_0_M02_AXI_ARSIZE;
  wire smartconnect_0_M02_AXI_ARVALID;
  wire [33:0]smartconnect_0_M02_AXI_AWADDR;
  wire [1:0]smartconnect_0_M02_AXI_AWBURST;
  wire [3:0]smartconnect_0_M02_AXI_AWLEN;
  wire smartconnect_0_M02_AXI_AWREADY;
  wire [2:0]smartconnect_0_M02_AXI_AWSIZE;
  wire smartconnect_0_M02_AXI_AWVALID;
  wire smartconnect_0_M02_AXI_BREADY;
  wire [1:0]smartconnect_0_M02_AXI_BRESP;
  wire smartconnect_0_M02_AXI_BVALID;
  wire [255:0]smartconnect_0_M02_AXI_RDATA;
  wire smartconnect_0_M02_AXI_RLAST;
  wire smartconnect_0_M02_AXI_RREADY;
  wire [1:0]smartconnect_0_M02_AXI_RRESP;
  wire smartconnect_0_M02_AXI_RVALID;
  wire [255:0]smartconnect_0_M02_AXI_WDATA;
  wire smartconnect_0_M02_AXI_WLAST;
  wire smartconnect_0_M02_AXI_WREADY;
  wire [31:0]smartconnect_0_M02_AXI_WSTRB;
  wire smartconnect_0_M02_AXI_WVALID;
  wire [33:0]smartconnect_0_M03_AXI_ARADDR;
  wire [1:0]smartconnect_0_M03_AXI_ARBURST;
  wire [3:0]smartconnect_0_M03_AXI_ARLEN;
  wire smartconnect_0_M03_AXI_ARREADY;
  wire [2:0]smartconnect_0_M03_AXI_ARSIZE;
  wire smartconnect_0_M03_AXI_ARVALID;
  wire [33:0]smartconnect_0_M03_AXI_AWADDR;
  wire [1:0]smartconnect_0_M03_AXI_AWBURST;
  wire [3:0]smartconnect_0_M03_AXI_AWLEN;
  wire smartconnect_0_M03_AXI_AWREADY;
  wire [2:0]smartconnect_0_M03_AXI_AWSIZE;
  wire smartconnect_0_M03_AXI_AWVALID;
  wire smartconnect_0_M03_AXI_BREADY;
  wire [1:0]smartconnect_0_M03_AXI_BRESP;
  wire smartconnect_0_M03_AXI_BVALID;
  wire [255:0]smartconnect_0_M03_AXI_RDATA;
  wire smartconnect_0_M03_AXI_RLAST;
  wire smartconnect_0_M03_AXI_RREADY;
  wire [1:0]smartconnect_0_M03_AXI_RRESP;
  wire smartconnect_0_M03_AXI_RVALID;
  wire [255:0]smartconnect_0_M03_AXI_WDATA;
  wire smartconnect_0_M03_AXI_WLAST;
  wire smartconnect_0_M03_AXI_WREADY;
  wire [31:0]smartconnect_0_M03_AXI_WSTRB;
  wire smartconnect_0_M03_AXI_WVALID;
  wire [33:0]smartconnect_1_M00_AXI_ARADDR;
  wire [1:0]smartconnect_1_M00_AXI_ARBURST;
  wire [3:0]smartconnect_1_M00_AXI_ARLEN;
  wire smartconnect_1_M00_AXI_ARREADY;
  wire [2:0]smartconnect_1_M00_AXI_ARSIZE;
  wire smartconnect_1_M00_AXI_ARVALID;
  wire [33:0]smartconnect_1_M00_AXI_AWADDR;
  wire [1:0]smartconnect_1_M00_AXI_AWBURST;
  wire [3:0]smartconnect_1_M00_AXI_AWLEN;
  wire smartconnect_1_M00_AXI_AWREADY;
  wire [2:0]smartconnect_1_M00_AXI_AWSIZE;
  wire smartconnect_1_M00_AXI_AWVALID;
  wire smartconnect_1_M00_AXI_BREADY;
  wire [1:0]smartconnect_1_M00_AXI_BRESP;
  wire smartconnect_1_M00_AXI_BVALID;
  wire [255:0]smartconnect_1_M00_AXI_RDATA;
  wire smartconnect_1_M00_AXI_RLAST;
  wire smartconnect_1_M00_AXI_RREADY;
  wire [1:0]smartconnect_1_M00_AXI_RRESP;
  wire smartconnect_1_M00_AXI_RVALID;
  wire [255:0]smartconnect_1_M00_AXI_WDATA;
  wire smartconnect_1_M00_AXI_WLAST;
  wire smartconnect_1_M00_AXI_WREADY;
  wire [31:0]smartconnect_1_M00_AXI_WSTRB;
  wire smartconnect_1_M00_AXI_WVALID;
  wire [33:0]smartconnect_1_M01_AXI_ARADDR;
  wire [1:0]smartconnect_1_M01_AXI_ARBURST;
  wire [3:0]smartconnect_1_M01_AXI_ARLEN;
  wire smartconnect_1_M01_AXI_ARREADY;
  wire [2:0]smartconnect_1_M01_AXI_ARSIZE;
  wire smartconnect_1_M01_AXI_ARVALID;
  wire [33:0]smartconnect_1_M01_AXI_AWADDR;
  wire [1:0]smartconnect_1_M01_AXI_AWBURST;
  wire [3:0]smartconnect_1_M01_AXI_AWLEN;
  wire smartconnect_1_M01_AXI_AWREADY;
  wire [2:0]smartconnect_1_M01_AXI_AWSIZE;
  wire smartconnect_1_M01_AXI_AWVALID;
  wire smartconnect_1_M01_AXI_BREADY;
  wire [1:0]smartconnect_1_M01_AXI_BRESP;
  wire smartconnect_1_M01_AXI_BVALID;
  wire [255:0]smartconnect_1_M01_AXI_RDATA;
  wire smartconnect_1_M01_AXI_RLAST;
  wire smartconnect_1_M01_AXI_RREADY;
  wire [1:0]smartconnect_1_M01_AXI_RRESP;
  wire smartconnect_1_M01_AXI_RVALID;
  wire [255:0]smartconnect_1_M01_AXI_WDATA;
  wire smartconnect_1_M01_AXI_WLAST;
  wire smartconnect_1_M01_AXI_WREADY;
  wire [31:0]smartconnect_1_M01_AXI_WSTRB;
  wire smartconnect_1_M01_AXI_WVALID;
  wire [33:0]smartconnect_1_M02_AXI_ARADDR;
  wire [1:0]smartconnect_1_M02_AXI_ARBURST;
  wire [3:0]smartconnect_1_M02_AXI_ARLEN;
  wire smartconnect_1_M02_AXI_ARREADY;
  wire [2:0]smartconnect_1_M02_AXI_ARSIZE;
  wire smartconnect_1_M02_AXI_ARVALID;
  wire [33:0]smartconnect_1_M02_AXI_AWADDR;
  wire [1:0]smartconnect_1_M02_AXI_AWBURST;
  wire [3:0]smartconnect_1_M02_AXI_AWLEN;
  wire smartconnect_1_M02_AXI_AWREADY;
  wire [2:0]smartconnect_1_M02_AXI_AWSIZE;
  wire smartconnect_1_M02_AXI_AWVALID;
  wire smartconnect_1_M02_AXI_BREADY;
  wire [1:0]smartconnect_1_M02_AXI_BRESP;
  wire smartconnect_1_M02_AXI_BVALID;
  wire [255:0]smartconnect_1_M02_AXI_RDATA;
  wire smartconnect_1_M02_AXI_RLAST;
  wire smartconnect_1_M02_AXI_RREADY;
  wire [1:0]smartconnect_1_M02_AXI_RRESP;
  wire smartconnect_1_M02_AXI_RVALID;
  wire [255:0]smartconnect_1_M02_AXI_WDATA;
  wire smartconnect_1_M02_AXI_WLAST;
  wire smartconnect_1_M02_AXI_WREADY;
  wire [31:0]smartconnect_1_M02_AXI_WSTRB;
  wire smartconnect_1_M02_AXI_WVALID;
  wire [33:0]smartconnect_1_M03_AXI_ARADDR;
  wire [1:0]smartconnect_1_M03_AXI_ARBURST;
  wire [3:0]smartconnect_1_M03_AXI_ARLEN;
  wire smartconnect_1_M03_AXI_ARREADY;
  wire [2:0]smartconnect_1_M03_AXI_ARSIZE;
  wire smartconnect_1_M03_AXI_ARVALID;
  wire [33:0]smartconnect_1_M03_AXI_AWADDR;
  wire [1:0]smartconnect_1_M03_AXI_AWBURST;
  wire [3:0]smartconnect_1_M03_AXI_AWLEN;
  wire smartconnect_1_M03_AXI_AWREADY;
  wire [2:0]smartconnect_1_M03_AXI_AWSIZE;
  wire smartconnect_1_M03_AXI_AWVALID;
  wire smartconnect_1_M03_AXI_BREADY;
  wire [1:0]smartconnect_1_M03_AXI_BRESP;
  wire smartconnect_1_M03_AXI_BVALID;
  wire [255:0]smartconnect_1_M03_AXI_RDATA;
  wire smartconnect_1_M03_AXI_RLAST;
  wire smartconnect_1_M03_AXI_RREADY;
  wire [1:0]smartconnect_1_M03_AXI_RRESP;
  wire smartconnect_1_M03_AXI_RVALID;
  wire [255:0]smartconnect_1_M03_AXI_WDATA;
  wire smartconnect_1_M03_AXI_WLAST;
  wire smartconnect_1_M03_AXI_WREADY;
  wire [31:0]smartconnect_1_M03_AXI_WSTRB;
  wire smartconnect_1_M03_AXI_WVALID;
  wire [33:0]smartconnect_2_M00_AXI_ARADDR;
  wire [1:0]smartconnect_2_M00_AXI_ARBURST;
  wire [3:0]smartconnect_2_M00_AXI_ARLEN;
  wire smartconnect_2_M00_AXI_ARREADY;
  wire [2:0]smartconnect_2_M00_AXI_ARSIZE;
  wire smartconnect_2_M00_AXI_ARVALID;
  wire [33:0]smartconnect_2_M00_AXI_AWADDR;
  wire [1:0]smartconnect_2_M00_AXI_AWBURST;
  wire [3:0]smartconnect_2_M00_AXI_AWLEN;
  wire smartconnect_2_M00_AXI_AWREADY;
  wire [2:0]smartconnect_2_M00_AXI_AWSIZE;
  wire smartconnect_2_M00_AXI_AWVALID;
  wire smartconnect_2_M00_AXI_BREADY;
  wire [1:0]smartconnect_2_M00_AXI_BRESP;
  wire smartconnect_2_M00_AXI_BVALID;
  wire [255:0]smartconnect_2_M00_AXI_RDATA;
  wire smartconnect_2_M00_AXI_RLAST;
  wire smartconnect_2_M00_AXI_RREADY;
  wire [1:0]smartconnect_2_M00_AXI_RRESP;
  wire smartconnect_2_M00_AXI_RVALID;
  wire [255:0]smartconnect_2_M00_AXI_WDATA;
  wire smartconnect_2_M00_AXI_WLAST;
  wire smartconnect_2_M00_AXI_WREADY;
  wire [31:0]smartconnect_2_M00_AXI_WSTRB;
  wire smartconnect_2_M00_AXI_WVALID;
  wire [33:0]smartconnect_2_M01_AXI_ARADDR;
  wire [1:0]smartconnect_2_M01_AXI_ARBURST;
  wire [3:0]smartconnect_2_M01_AXI_ARLEN;
  wire smartconnect_2_M01_AXI_ARREADY;
  wire [2:0]smartconnect_2_M01_AXI_ARSIZE;
  wire smartconnect_2_M01_AXI_ARVALID;
  wire [33:0]smartconnect_2_M01_AXI_AWADDR;
  wire [1:0]smartconnect_2_M01_AXI_AWBURST;
  wire [3:0]smartconnect_2_M01_AXI_AWLEN;
  wire smartconnect_2_M01_AXI_AWREADY;
  wire [2:0]smartconnect_2_M01_AXI_AWSIZE;
  wire smartconnect_2_M01_AXI_AWVALID;
  wire smartconnect_2_M01_AXI_BREADY;
  wire [1:0]smartconnect_2_M01_AXI_BRESP;
  wire smartconnect_2_M01_AXI_BVALID;
  wire [255:0]smartconnect_2_M01_AXI_RDATA;
  wire smartconnect_2_M01_AXI_RLAST;
  wire smartconnect_2_M01_AXI_RREADY;
  wire [1:0]smartconnect_2_M01_AXI_RRESP;
  wire smartconnect_2_M01_AXI_RVALID;
  wire [255:0]smartconnect_2_M01_AXI_WDATA;
  wire smartconnect_2_M01_AXI_WLAST;
  wire smartconnect_2_M01_AXI_WREADY;
  wire [31:0]smartconnect_2_M01_AXI_WSTRB;
  wire smartconnect_2_M01_AXI_WVALID;
  wire [33:0]smartconnect_2_M02_AXI_ARADDR;
  wire [1:0]smartconnect_2_M02_AXI_ARBURST;
  wire [3:0]smartconnect_2_M02_AXI_ARLEN;
  wire smartconnect_2_M02_AXI_ARREADY;
  wire [2:0]smartconnect_2_M02_AXI_ARSIZE;
  wire smartconnect_2_M02_AXI_ARVALID;
  wire [33:0]smartconnect_2_M02_AXI_AWADDR;
  wire [1:0]smartconnect_2_M02_AXI_AWBURST;
  wire [3:0]smartconnect_2_M02_AXI_AWLEN;
  wire smartconnect_2_M02_AXI_AWREADY;
  wire [2:0]smartconnect_2_M02_AXI_AWSIZE;
  wire smartconnect_2_M02_AXI_AWVALID;
  wire smartconnect_2_M02_AXI_BREADY;
  wire [1:0]smartconnect_2_M02_AXI_BRESP;
  wire smartconnect_2_M02_AXI_BVALID;
  wire [255:0]smartconnect_2_M02_AXI_RDATA;
  wire smartconnect_2_M02_AXI_RLAST;
  wire smartconnect_2_M02_AXI_RREADY;
  wire [1:0]smartconnect_2_M02_AXI_RRESP;
  wire smartconnect_2_M02_AXI_RVALID;
  wire [255:0]smartconnect_2_M02_AXI_WDATA;
  wire smartconnect_2_M02_AXI_WLAST;
  wire smartconnect_2_M02_AXI_WREADY;
  wire [31:0]smartconnect_2_M02_AXI_WSTRB;
  wire smartconnect_2_M02_AXI_WVALID;
  wire [33:0]smartconnect_2_M03_AXI_ARADDR;
  wire [1:0]smartconnect_2_M03_AXI_ARBURST;
  wire [3:0]smartconnect_2_M03_AXI_ARLEN;
  wire smartconnect_2_M03_AXI_ARREADY;
  wire [2:0]smartconnect_2_M03_AXI_ARSIZE;
  wire smartconnect_2_M03_AXI_ARVALID;
  wire [33:0]smartconnect_2_M03_AXI_AWADDR;
  wire [1:0]smartconnect_2_M03_AXI_AWBURST;
  wire [3:0]smartconnect_2_M03_AXI_AWLEN;
  wire smartconnect_2_M03_AXI_AWREADY;
  wire [2:0]smartconnect_2_M03_AXI_AWSIZE;
  wire smartconnect_2_M03_AXI_AWVALID;
  wire smartconnect_2_M03_AXI_BREADY;
  wire [1:0]smartconnect_2_M03_AXI_BRESP;
  wire smartconnect_2_M03_AXI_BVALID;
  wire [255:0]smartconnect_2_M03_AXI_RDATA;
  wire smartconnect_2_M03_AXI_RLAST;
  wire smartconnect_2_M03_AXI_RREADY;
  wire [1:0]smartconnect_2_M03_AXI_RRESP;
  wire smartconnect_2_M03_AXI_RVALID;
  wire [255:0]smartconnect_2_M03_AXI_WDATA;
  wire smartconnect_2_M03_AXI_WLAST;
  wire smartconnect_2_M03_AXI_WREADY;
  wire [31:0]smartconnect_2_M03_AXI_WSTRB;
  wire smartconnect_2_M03_AXI_WVALID;
  wire [33:0]smartconnect_3_M00_AXI_ARADDR;
  wire [1:0]smartconnect_3_M00_AXI_ARBURST;
  wire [3:0]smartconnect_3_M00_AXI_ARLEN;
  wire smartconnect_3_M00_AXI_ARREADY;
  wire [2:0]smartconnect_3_M00_AXI_ARSIZE;
  wire smartconnect_3_M00_AXI_ARVALID;
  wire [33:0]smartconnect_3_M00_AXI_AWADDR;
  wire [1:0]smartconnect_3_M00_AXI_AWBURST;
  wire [3:0]smartconnect_3_M00_AXI_AWLEN;
  wire smartconnect_3_M00_AXI_AWREADY;
  wire [2:0]smartconnect_3_M00_AXI_AWSIZE;
  wire smartconnect_3_M00_AXI_AWVALID;
  wire smartconnect_3_M00_AXI_BREADY;
  wire [1:0]smartconnect_3_M00_AXI_BRESP;
  wire smartconnect_3_M00_AXI_BVALID;
  wire [255:0]smartconnect_3_M00_AXI_RDATA;
  wire smartconnect_3_M00_AXI_RLAST;
  wire smartconnect_3_M00_AXI_RREADY;
  wire [1:0]smartconnect_3_M00_AXI_RRESP;
  wire smartconnect_3_M00_AXI_RVALID;
  wire [255:0]smartconnect_3_M00_AXI_WDATA;
  wire smartconnect_3_M00_AXI_WLAST;
  wire smartconnect_3_M00_AXI_WREADY;
  wire [31:0]smartconnect_3_M00_AXI_WSTRB;
  wire smartconnect_3_M00_AXI_WVALID;
  wire [33:0]smartconnect_3_M01_AXI_ARADDR;
  wire [1:0]smartconnect_3_M01_AXI_ARBURST;
  wire [3:0]smartconnect_3_M01_AXI_ARLEN;
  wire smartconnect_3_M01_AXI_ARREADY;
  wire [2:0]smartconnect_3_M01_AXI_ARSIZE;
  wire smartconnect_3_M01_AXI_ARVALID;
  wire [33:0]smartconnect_3_M01_AXI_AWADDR;
  wire [1:0]smartconnect_3_M01_AXI_AWBURST;
  wire [3:0]smartconnect_3_M01_AXI_AWLEN;
  wire smartconnect_3_M01_AXI_AWREADY;
  wire [2:0]smartconnect_3_M01_AXI_AWSIZE;
  wire smartconnect_3_M01_AXI_AWVALID;
  wire smartconnect_3_M01_AXI_BREADY;
  wire [1:0]smartconnect_3_M01_AXI_BRESP;
  wire smartconnect_3_M01_AXI_BVALID;
  wire [255:0]smartconnect_3_M01_AXI_RDATA;
  wire smartconnect_3_M01_AXI_RLAST;
  wire smartconnect_3_M01_AXI_RREADY;
  wire [1:0]smartconnect_3_M01_AXI_RRESP;
  wire smartconnect_3_M01_AXI_RVALID;
  wire [255:0]smartconnect_3_M01_AXI_WDATA;
  wire smartconnect_3_M01_AXI_WLAST;
  wire smartconnect_3_M01_AXI_WREADY;
  wire [31:0]smartconnect_3_M01_AXI_WSTRB;
  wire smartconnect_3_M01_AXI_WVALID;
  wire [33:0]smartconnect_3_M02_AXI_ARADDR;
  wire [1:0]smartconnect_3_M02_AXI_ARBURST;
  wire [3:0]smartconnect_3_M02_AXI_ARLEN;
  wire smartconnect_3_M02_AXI_ARREADY;
  wire [2:0]smartconnect_3_M02_AXI_ARSIZE;
  wire smartconnect_3_M02_AXI_ARVALID;
  wire [33:0]smartconnect_3_M02_AXI_AWADDR;
  wire [1:0]smartconnect_3_M02_AXI_AWBURST;
  wire [3:0]smartconnect_3_M02_AXI_AWLEN;
  wire smartconnect_3_M02_AXI_AWREADY;
  wire [2:0]smartconnect_3_M02_AXI_AWSIZE;
  wire smartconnect_3_M02_AXI_AWVALID;
  wire smartconnect_3_M02_AXI_BREADY;
  wire [1:0]smartconnect_3_M02_AXI_BRESP;
  wire smartconnect_3_M02_AXI_BVALID;
  wire [255:0]smartconnect_3_M02_AXI_RDATA;
  wire smartconnect_3_M02_AXI_RLAST;
  wire smartconnect_3_M02_AXI_RREADY;
  wire [1:0]smartconnect_3_M02_AXI_RRESP;
  wire smartconnect_3_M02_AXI_RVALID;
  wire [255:0]smartconnect_3_M02_AXI_WDATA;
  wire smartconnect_3_M02_AXI_WLAST;
  wire smartconnect_3_M02_AXI_WREADY;
  wire [31:0]smartconnect_3_M02_AXI_WSTRB;
  wire smartconnect_3_M02_AXI_WVALID;
  wire [33:0]smartconnect_3_M03_AXI_ARADDR;
  wire [1:0]smartconnect_3_M03_AXI_ARBURST;
  wire [3:0]smartconnect_3_M03_AXI_ARLEN;
  wire smartconnect_3_M03_AXI_ARREADY;
  wire [2:0]smartconnect_3_M03_AXI_ARSIZE;
  wire smartconnect_3_M03_AXI_ARVALID;
  wire [33:0]smartconnect_3_M03_AXI_AWADDR;
  wire [1:0]smartconnect_3_M03_AXI_AWBURST;
  wire [3:0]smartconnect_3_M03_AXI_AWLEN;
  wire smartconnect_3_M03_AXI_AWREADY;
  wire [2:0]smartconnect_3_M03_AXI_AWSIZE;
  wire smartconnect_3_M03_AXI_AWVALID;
  wire smartconnect_3_M03_AXI_BREADY;
  wire [1:0]smartconnect_3_M03_AXI_BRESP;
  wire smartconnect_3_M03_AXI_BVALID;
  wire [255:0]smartconnect_3_M03_AXI_RDATA;
  wire smartconnect_3_M03_AXI_RLAST;
  wire smartconnect_3_M03_AXI_RREADY;
  wire [1:0]smartconnect_3_M03_AXI_RRESP;
  wire smartconnect_3_M03_AXI_RVALID;
  wire [255:0]smartconnect_3_M03_AXI_WDATA;
  wire smartconnect_3_M03_AXI_WLAST;
  wire smartconnect_3_M03_AXI_WREADY;
  wire [31:0]smartconnect_3_M03_AXI_WSTRB;
  wire smartconnect_3_M03_AXI_WVALID;
  wire [63:0]smartconnect_4_M00_AXI_ARADDR;
  wire [1:0]smartconnect_4_M00_AXI_ARBURST;
  wire [3:0]smartconnect_4_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_4_M00_AXI_ARLEN;
  wire [0:0]smartconnect_4_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_4_M00_AXI_ARPROT;
  wire [3:0]smartconnect_4_M00_AXI_ARQOS;
  wire smartconnect_4_M00_AXI_ARREADY;
  wire [2:0]smartconnect_4_M00_AXI_ARSIZE;
  wire smartconnect_4_M00_AXI_ARVALID;
  wire [63:0]smartconnect_4_M00_AXI_AWADDR;
  wire [1:0]smartconnect_4_M00_AXI_AWBURST;
  wire [3:0]smartconnect_4_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_4_M00_AXI_AWLEN;
  wire [0:0]smartconnect_4_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_4_M00_AXI_AWPROT;
  wire [3:0]smartconnect_4_M00_AXI_AWQOS;
  wire smartconnect_4_M00_AXI_AWREADY;
  wire [2:0]smartconnect_4_M00_AXI_AWSIZE;
  wire smartconnect_4_M00_AXI_AWVALID;
  wire smartconnect_4_M00_AXI_BREADY;
  wire [1:0]smartconnect_4_M00_AXI_BRESP;
  wire smartconnect_4_M00_AXI_BVALID;
  wire [511:0]smartconnect_4_M00_AXI_RDATA;
  wire smartconnect_4_M00_AXI_RLAST;
  wire smartconnect_4_M00_AXI_RREADY;
  wire [1:0]smartconnect_4_M00_AXI_RRESP;
  wire smartconnect_4_M00_AXI_RVALID;
  wire [511:0]smartconnect_4_M00_AXI_WDATA;
  wire smartconnect_4_M00_AXI_WLAST;
  wire smartconnect_4_M00_AXI_WREADY;
  wire [63:0]smartconnect_4_M00_AXI_WSTRB;
  wire smartconnect_4_M00_AXI_WVALID;
  wire [63:0]smartconnect_4_M01_AXI_ARADDR;
  wire [1:0]smartconnect_4_M01_AXI_ARBURST;
  wire [3:0]smartconnect_4_M01_AXI_ARCACHE;
  wire [7:0]smartconnect_4_M01_AXI_ARLEN;
  wire [0:0]smartconnect_4_M01_AXI_ARLOCK;
  wire [2:0]smartconnect_4_M01_AXI_ARPROT;
  wire [3:0]smartconnect_4_M01_AXI_ARQOS;
  wire smartconnect_4_M01_AXI_ARREADY;
  wire [2:0]smartconnect_4_M01_AXI_ARSIZE;
  wire smartconnect_4_M01_AXI_ARVALID;
  wire [63:0]smartconnect_4_M01_AXI_AWADDR;
  wire [1:0]smartconnect_4_M01_AXI_AWBURST;
  wire [3:0]smartconnect_4_M01_AXI_AWCACHE;
  wire [7:0]smartconnect_4_M01_AXI_AWLEN;
  wire [0:0]smartconnect_4_M01_AXI_AWLOCK;
  wire [2:0]smartconnect_4_M01_AXI_AWPROT;
  wire [3:0]smartconnect_4_M01_AXI_AWQOS;
  wire smartconnect_4_M01_AXI_AWREADY;
  wire [2:0]smartconnect_4_M01_AXI_AWSIZE;
  wire smartconnect_4_M01_AXI_AWVALID;
  wire smartconnect_4_M01_AXI_BREADY;
  wire [1:0]smartconnect_4_M01_AXI_BRESP;
  wire smartconnect_4_M01_AXI_BVALID;
  wire [511:0]smartconnect_4_M01_AXI_RDATA;
  wire smartconnect_4_M01_AXI_RLAST;
  wire smartconnect_4_M01_AXI_RREADY;
  wire [1:0]smartconnect_4_M01_AXI_RRESP;
  wire smartconnect_4_M01_AXI_RVALID;
  wire [511:0]smartconnect_4_M01_AXI_WDATA;
  wire smartconnect_4_M01_AXI_WLAST;
  wire smartconnect_4_M01_AXI_WREADY;
  wire [63:0]smartconnect_4_M01_AXI_WSTRB;
  wire smartconnect_4_M01_AXI_WVALID;
  wire sys_clk;
  wire sys_resetn;

  top_level_axi4_splitter_0_2 bank0_splitter
       (.M0_AXI_ARADDR(axi4_splitter_0_M0_AXI_ARADDR),
        .M0_AXI_ARBURST(axi4_splitter_0_M0_AXI_ARBURST),
        .M0_AXI_ARCACHE(axi4_splitter_0_M0_AXI_ARCACHE),
        .M0_AXI_ARID(axi4_splitter_0_M0_AXI_ARID),
        .M0_AXI_ARLEN(axi4_splitter_0_M0_AXI_ARLEN),
        .M0_AXI_ARLOCK(axi4_splitter_0_M0_AXI_ARLOCK),
        .M0_AXI_ARPROT(axi4_splitter_0_M0_AXI_ARPROT),
        .M0_AXI_ARQOS(axi4_splitter_0_M0_AXI_ARQOS),
        .M0_AXI_ARREADY(axi4_splitter_0_M0_AXI_ARREADY),
        .M0_AXI_ARSIZE(axi4_splitter_0_M0_AXI_ARSIZE),
        .M0_AXI_ARVALID(axi4_splitter_0_M0_AXI_ARVALID),
        .M0_AXI_AWADDR(axi4_splitter_0_M0_AXI_AWADDR),
        .M0_AXI_AWBURST(axi4_splitter_0_M0_AXI_AWBURST),
        .M0_AXI_AWCACHE(axi4_splitter_0_M0_AXI_AWCACHE),
        .M0_AXI_AWID(axi4_splitter_0_M0_AXI_AWID),
        .M0_AXI_AWLEN(axi4_splitter_0_M0_AXI_AWLEN),
        .M0_AXI_AWLOCK(axi4_splitter_0_M0_AXI_AWLOCK),
        .M0_AXI_AWPROT(axi4_splitter_0_M0_AXI_AWPROT),
        .M0_AXI_AWQOS(axi4_splitter_0_M0_AXI_AWQOS),
        .M0_AXI_AWREADY(axi4_splitter_0_M0_AXI_AWREADY),
        .M0_AXI_AWSIZE(axi4_splitter_0_M0_AXI_AWSIZE),
        .M0_AXI_AWVALID(axi4_splitter_0_M0_AXI_AWVALID),
        .M0_AXI_BREADY(axi4_splitter_0_M0_AXI_BREADY),
        .M0_AXI_BRESP(axi4_splitter_0_M0_AXI_BRESP),
        .M0_AXI_BVALID(axi4_splitter_0_M0_AXI_BVALID),
        .M0_AXI_RDATA(axi4_splitter_0_M0_AXI_RDATA),
        .M0_AXI_RID(axi4_splitter_0_M0_AXI_RID),
        .M0_AXI_RLAST(axi4_splitter_0_M0_AXI_RLAST),
        .M0_AXI_RREADY(axi4_splitter_0_M0_AXI_RREADY),
        .M0_AXI_RRESP(axi4_splitter_0_M0_AXI_RRESP),
        .M0_AXI_RVALID(axi4_splitter_0_M0_AXI_RVALID),
        .M0_AXI_WDATA(axi4_splitter_0_M0_AXI_WDATA),
        .M0_AXI_WLAST(axi4_splitter_0_M0_AXI_WLAST),
        .M0_AXI_WREADY(axi4_splitter_0_M0_AXI_WREADY),
        .M0_AXI_WSTRB(axi4_splitter_0_M0_AXI_WSTRB),
        .M0_AXI_WVALID(axi4_splitter_0_M0_AXI_WVALID),
        .M1_AXI_ARADDR(axi4_splitter_0_M1_AXI_ARADDR),
        .M1_AXI_ARBURST(axi4_splitter_0_M1_AXI_ARBURST),
        .M1_AXI_ARCACHE(axi4_splitter_0_M1_AXI_ARCACHE),
        .M1_AXI_ARID(axi4_splitter_0_M1_AXI_ARID),
        .M1_AXI_ARLEN(axi4_splitter_0_M1_AXI_ARLEN),
        .M1_AXI_ARLOCK(axi4_splitter_0_M1_AXI_ARLOCK),
        .M1_AXI_ARPROT(axi4_splitter_0_M1_AXI_ARPROT),
        .M1_AXI_ARQOS(axi4_splitter_0_M1_AXI_ARQOS),
        .M1_AXI_ARREADY(axi4_splitter_0_M1_AXI_ARREADY),
        .M1_AXI_ARSIZE(axi4_splitter_0_M1_AXI_ARSIZE),
        .M1_AXI_ARVALID(axi4_splitter_0_M1_AXI_ARVALID),
        .M1_AXI_AWADDR(axi4_splitter_0_M1_AXI_AWADDR),
        .M1_AXI_AWBURST(axi4_splitter_0_M1_AXI_AWBURST),
        .M1_AXI_AWCACHE(axi4_splitter_0_M1_AXI_AWCACHE),
        .M1_AXI_AWID(axi4_splitter_0_M1_AXI_AWID),
        .M1_AXI_AWLEN(axi4_splitter_0_M1_AXI_AWLEN),
        .M1_AXI_AWLOCK(axi4_splitter_0_M1_AXI_AWLOCK),
        .M1_AXI_AWPROT(axi4_splitter_0_M1_AXI_AWPROT),
        .M1_AXI_AWQOS(axi4_splitter_0_M1_AXI_AWQOS),
        .M1_AXI_AWREADY(axi4_splitter_0_M1_AXI_AWREADY),
        .M1_AXI_AWSIZE(axi4_splitter_0_M1_AXI_AWSIZE),
        .M1_AXI_AWVALID(axi4_splitter_0_M1_AXI_AWVALID),
        .M1_AXI_BREADY(axi4_splitter_0_M1_AXI_BREADY),
        .M1_AXI_BRESP(axi4_splitter_0_M1_AXI_BRESP),
        .M1_AXI_BVALID(axi4_splitter_0_M1_AXI_BVALID),
        .M1_AXI_RDATA(axi4_splitter_0_M1_AXI_RDATA),
        .M1_AXI_RID(axi4_splitter_0_M1_AXI_RID),
        .M1_AXI_RLAST(axi4_splitter_0_M1_AXI_RLAST),
        .M1_AXI_RREADY(axi4_splitter_0_M1_AXI_RREADY),
        .M1_AXI_RRESP(axi4_splitter_0_M1_AXI_RRESP),
        .M1_AXI_RVALID(axi4_splitter_0_M1_AXI_RVALID),
        .M1_AXI_WDATA(axi4_splitter_0_M1_AXI_WDATA),
        .M1_AXI_WLAST(axi4_splitter_0_M1_AXI_WLAST),
        .M1_AXI_WREADY(axi4_splitter_0_M1_AXI_WREADY),
        .M1_AXI_WSTRB(axi4_splitter_0_M1_AXI_WSTRB),
        .M1_AXI_WVALID(axi4_splitter_0_M1_AXI_WVALID),
        .S_AXI_ARADDR(smartconnect_4_M00_AXI_ARADDR),
        .S_AXI_ARBURST(smartconnect_4_M00_AXI_ARBURST),
        .S_AXI_ARCACHE(smartconnect_4_M00_AXI_ARCACHE),
        .S_AXI_ARID({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ARLEN(smartconnect_4_M00_AXI_ARLEN),
        .S_AXI_ARLOCK(smartconnect_4_M00_AXI_ARLOCK),
        .S_AXI_ARPROT(smartconnect_4_M00_AXI_ARPROT),
        .S_AXI_ARQOS(smartconnect_4_M00_AXI_ARQOS),
        .S_AXI_ARREADY(smartconnect_4_M00_AXI_ARREADY),
        .S_AXI_ARSIZE(smartconnect_4_M00_AXI_ARSIZE),
        .S_AXI_ARVALID(smartconnect_4_M00_AXI_ARVALID),
        .S_AXI_AWADDR(smartconnect_4_M00_AXI_AWADDR),
        .S_AXI_AWBURST(smartconnect_4_M00_AXI_AWBURST),
        .S_AXI_AWCACHE(smartconnect_4_M00_AXI_AWCACHE),
        .S_AXI_AWID({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_AWLEN(smartconnect_4_M00_AXI_AWLEN),
        .S_AXI_AWLOCK(smartconnect_4_M00_AXI_AWLOCK),
        .S_AXI_AWPROT(smartconnect_4_M00_AXI_AWPROT),
        .S_AXI_AWQOS(smartconnect_4_M00_AXI_AWQOS),
        .S_AXI_AWREADY(smartconnect_4_M00_AXI_AWREADY),
        .S_AXI_AWSIZE(smartconnect_4_M00_AXI_AWSIZE),
        .S_AXI_AWVALID(smartconnect_4_M00_AXI_AWVALID),
        .S_AXI_BREADY(smartconnect_4_M00_AXI_BREADY),
        .S_AXI_BRESP(smartconnect_4_M00_AXI_BRESP),
        .S_AXI_BVALID(smartconnect_4_M00_AXI_BVALID),
        .S_AXI_RDATA(smartconnect_4_M00_AXI_RDATA),
        .S_AXI_RLAST(smartconnect_4_M00_AXI_RLAST),
        .S_AXI_RREADY(smartconnect_4_M00_AXI_RREADY),
        .S_AXI_RRESP(smartconnect_4_M00_AXI_RRESP),
        .S_AXI_RVALID(smartconnect_4_M00_AXI_RVALID),
        .S_AXI_WDATA(smartconnect_4_M00_AXI_WDATA),
        .S_AXI_WLAST(smartconnect_4_M00_AXI_WLAST),
        .S_AXI_WREADY(smartconnect_4_M00_AXI_WREADY),
        .S_AXI_WSTRB(smartconnect_4_M00_AXI_WSTRB),
        .S_AXI_WVALID(smartconnect_4_M00_AXI_WVALID),
        .clk(cmac_clk),
        .resetn(cmac_resetn));
  top_level_axi4_splitter_1_0 bank1_splitter
       (.M0_AXI_ARADDR(axi4_splitter_1_M0_AXI_ARADDR),
        .M0_AXI_ARBURST(axi4_splitter_1_M0_AXI_ARBURST),
        .M0_AXI_ARCACHE(axi4_splitter_1_M0_AXI_ARCACHE),
        .M0_AXI_ARID(axi4_splitter_1_M0_AXI_ARID),
        .M0_AXI_ARLEN(axi4_splitter_1_M0_AXI_ARLEN),
        .M0_AXI_ARLOCK(axi4_splitter_1_M0_AXI_ARLOCK),
        .M0_AXI_ARPROT(axi4_splitter_1_M0_AXI_ARPROT),
        .M0_AXI_ARQOS(axi4_splitter_1_M0_AXI_ARQOS),
        .M0_AXI_ARREADY(axi4_splitter_1_M0_AXI_ARREADY),
        .M0_AXI_ARSIZE(axi4_splitter_1_M0_AXI_ARSIZE),
        .M0_AXI_ARVALID(axi4_splitter_1_M0_AXI_ARVALID),
        .M0_AXI_AWADDR(axi4_splitter_1_M0_AXI_AWADDR),
        .M0_AXI_AWBURST(axi4_splitter_1_M0_AXI_AWBURST),
        .M0_AXI_AWCACHE(axi4_splitter_1_M0_AXI_AWCACHE),
        .M0_AXI_AWID(axi4_splitter_1_M0_AXI_AWID),
        .M0_AXI_AWLEN(axi4_splitter_1_M0_AXI_AWLEN),
        .M0_AXI_AWLOCK(axi4_splitter_1_M0_AXI_AWLOCK),
        .M0_AXI_AWPROT(axi4_splitter_1_M0_AXI_AWPROT),
        .M0_AXI_AWQOS(axi4_splitter_1_M0_AXI_AWQOS),
        .M0_AXI_AWREADY(axi4_splitter_1_M0_AXI_AWREADY),
        .M0_AXI_AWSIZE(axi4_splitter_1_M0_AXI_AWSIZE),
        .M0_AXI_AWVALID(axi4_splitter_1_M0_AXI_AWVALID),
        .M0_AXI_BREADY(axi4_splitter_1_M0_AXI_BREADY),
        .M0_AXI_BRESP(axi4_splitter_1_M0_AXI_BRESP),
        .M0_AXI_BVALID(axi4_splitter_1_M0_AXI_BVALID),
        .M0_AXI_RDATA(axi4_splitter_1_M0_AXI_RDATA),
        .M0_AXI_RID(axi4_splitter_1_M0_AXI_RID),
        .M0_AXI_RLAST(axi4_splitter_1_M0_AXI_RLAST),
        .M0_AXI_RREADY(axi4_splitter_1_M0_AXI_RREADY),
        .M0_AXI_RRESP(axi4_splitter_1_M0_AXI_RRESP),
        .M0_AXI_RVALID(axi4_splitter_1_M0_AXI_RVALID),
        .M0_AXI_WDATA(axi4_splitter_1_M0_AXI_WDATA),
        .M0_AXI_WLAST(axi4_splitter_1_M0_AXI_WLAST),
        .M0_AXI_WREADY(axi4_splitter_1_M0_AXI_WREADY),
        .M0_AXI_WSTRB(axi4_splitter_1_M0_AXI_WSTRB),
        .M0_AXI_WVALID(axi4_splitter_1_M0_AXI_WVALID),
        .M1_AXI_ARADDR(axi4_splitter_1_M1_AXI_ARADDR),
        .M1_AXI_ARBURST(axi4_splitter_1_M1_AXI_ARBURST),
        .M1_AXI_ARCACHE(axi4_splitter_1_M1_AXI_ARCACHE),
        .M1_AXI_ARID(axi4_splitter_1_M1_AXI_ARID),
        .M1_AXI_ARLEN(axi4_splitter_1_M1_AXI_ARLEN),
        .M1_AXI_ARLOCK(axi4_splitter_1_M1_AXI_ARLOCK),
        .M1_AXI_ARPROT(axi4_splitter_1_M1_AXI_ARPROT),
        .M1_AXI_ARQOS(axi4_splitter_1_M1_AXI_ARQOS),
        .M1_AXI_ARREADY(axi4_splitter_1_M1_AXI_ARREADY),
        .M1_AXI_ARSIZE(axi4_splitter_1_M1_AXI_ARSIZE),
        .M1_AXI_ARVALID(axi4_splitter_1_M1_AXI_ARVALID),
        .M1_AXI_AWADDR(axi4_splitter_1_M1_AXI_AWADDR),
        .M1_AXI_AWBURST(axi4_splitter_1_M1_AXI_AWBURST),
        .M1_AXI_AWCACHE(axi4_splitter_1_M1_AXI_AWCACHE),
        .M1_AXI_AWID(axi4_splitter_1_M1_AXI_AWID),
        .M1_AXI_AWLEN(axi4_splitter_1_M1_AXI_AWLEN),
        .M1_AXI_AWLOCK(axi4_splitter_1_M1_AXI_AWLOCK),
        .M1_AXI_AWPROT(axi4_splitter_1_M1_AXI_AWPROT),
        .M1_AXI_AWQOS(axi4_splitter_1_M1_AXI_AWQOS),
        .M1_AXI_AWREADY(axi4_splitter_1_M1_AXI_AWREADY),
        .M1_AXI_AWSIZE(axi4_splitter_1_M1_AXI_AWSIZE),
        .M1_AXI_AWVALID(axi4_splitter_1_M1_AXI_AWVALID),
        .M1_AXI_BREADY(axi4_splitter_1_M1_AXI_BREADY),
        .M1_AXI_BRESP(axi4_splitter_1_M1_AXI_BRESP),
        .M1_AXI_BVALID(axi4_splitter_1_M1_AXI_BVALID),
        .M1_AXI_RDATA(axi4_splitter_1_M1_AXI_RDATA),
        .M1_AXI_RID(axi4_splitter_1_M1_AXI_RID),
        .M1_AXI_RLAST(axi4_splitter_1_M1_AXI_RLAST),
        .M1_AXI_RREADY(axi4_splitter_1_M1_AXI_RREADY),
        .M1_AXI_RRESP(axi4_splitter_1_M1_AXI_RRESP),
        .M1_AXI_RVALID(axi4_splitter_1_M1_AXI_RVALID),
        .M1_AXI_WDATA(axi4_splitter_1_M1_AXI_WDATA),
        .M1_AXI_WLAST(axi4_splitter_1_M1_AXI_WLAST),
        .M1_AXI_WREADY(axi4_splitter_1_M1_AXI_WREADY),
        .M1_AXI_WSTRB(axi4_splitter_1_M1_AXI_WSTRB),
        .M1_AXI_WVALID(axi4_splitter_1_M1_AXI_WVALID),
        .S_AXI_ARADDR(smartconnect_4_M01_AXI_ARADDR),
        .S_AXI_ARBURST(smartconnect_4_M01_AXI_ARBURST),
        .S_AXI_ARCACHE(smartconnect_4_M01_AXI_ARCACHE),
        .S_AXI_ARID({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ARLEN(smartconnect_4_M01_AXI_ARLEN),
        .S_AXI_ARLOCK(smartconnect_4_M01_AXI_ARLOCK),
        .S_AXI_ARPROT(smartconnect_4_M01_AXI_ARPROT),
        .S_AXI_ARQOS(smartconnect_4_M01_AXI_ARQOS),
        .S_AXI_ARREADY(smartconnect_4_M01_AXI_ARREADY),
        .S_AXI_ARSIZE(smartconnect_4_M01_AXI_ARSIZE),
        .S_AXI_ARVALID(smartconnect_4_M01_AXI_ARVALID),
        .S_AXI_AWADDR(smartconnect_4_M01_AXI_AWADDR),
        .S_AXI_AWBURST(smartconnect_4_M01_AXI_AWBURST),
        .S_AXI_AWCACHE(smartconnect_4_M01_AXI_AWCACHE),
        .S_AXI_AWID({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_AWLEN(smartconnect_4_M01_AXI_AWLEN),
        .S_AXI_AWLOCK(smartconnect_4_M01_AXI_AWLOCK),
        .S_AXI_AWPROT(smartconnect_4_M01_AXI_AWPROT),
        .S_AXI_AWQOS(smartconnect_4_M01_AXI_AWQOS),
        .S_AXI_AWREADY(smartconnect_4_M01_AXI_AWREADY),
        .S_AXI_AWSIZE(smartconnect_4_M01_AXI_AWSIZE),
        .S_AXI_AWVALID(smartconnect_4_M01_AXI_AWVALID),
        .S_AXI_BREADY(smartconnect_4_M01_AXI_BREADY),
        .S_AXI_BRESP(smartconnect_4_M01_AXI_BRESP),
        .S_AXI_BVALID(smartconnect_4_M01_AXI_BVALID),
        .S_AXI_RDATA(smartconnect_4_M01_AXI_RDATA),
        .S_AXI_RLAST(smartconnect_4_M01_AXI_RLAST),
        .S_AXI_RREADY(smartconnect_4_M01_AXI_RREADY),
        .S_AXI_RRESP(smartconnect_4_M01_AXI_RRESP),
        .S_AXI_RVALID(smartconnect_4_M01_AXI_RVALID),
        .S_AXI_WDATA(smartconnect_4_M01_AXI_WDATA),
        .S_AXI_WLAST(smartconnect_4_M01_AXI_WLAST),
        .S_AXI_WREADY(smartconnect_4_M01_AXI_WREADY),
        .S_AXI_WSTRB(smartconnect_4_M01_AXI_WSTRB),
        .S_AXI_WVALID(smartconnect_4_M01_AXI_WVALID),
        .clk(cmac_clk),
        .resetn(cmac_resetn));
  top_level_clock_buffer_0 clock_buffer
       (.IBUF_DS_N(hbm_refclk_clk_n),
        .IBUF_DS_P(hbm_refclk_clk_p),
        .IBUF_OUT(clock_buffer_IBUF_OUT));
  top_level_hbm_0_1 hbm_1
       (.APB_0_PCLK(clock_buffer_IBUF_OUT),
        .APB_0_PRESET_N(one_dout),
        .AXI_00_ACLK(axi_nn_aclk_1),
        .AXI_00_ARADDR(smartconnect_0_M00_AXI_ARADDR),
        .AXI_00_ARBURST(smartconnect_0_M00_AXI_ARBURST),
        .AXI_00_ARESET_N(axi_nn_resetn_1),
        .AXI_00_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_00_ARLEN(smartconnect_0_M00_AXI_ARLEN),
        .AXI_00_ARREADY(smartconnect_0_M00_AXI_ARREADY),
        .AXI_00_ARSIZE(smartconnect_0_M00_AXI_ARSIZE),
        .AXI_00_ARVALID(smartconnect_0_M00_AXI_ARVALID),
        .AXI_00_AWADDR(smartconnect_0_M00_AXI_AWADDR),
        .AXI_00_AWBURST(smartconnect_0_M00_AXI_AWBURST),
        .AXI_00_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_00_AWLEN(smartconnect_0_M00_AXI_AWLEN),
        .AXI_00_AWREADY(smartconnect_0_M00_AXI_AWREADY),
        .AXI_00_AWSIZE(smartconnect_0_M00_AXI_AWSIZE),
        .AXI_00_AWVALID(smartconnect_0_M00_AXI_AWVALID),
        .AXI_00_BREADY(smartconnect_0_M00_AXI_BREADY),
        .AXI_00_BRESP(smartconnect_0_M00_AXI_BRESP),
        .AXI_00_BVALID(smartconnect_0_M00_AXI_BVALID),
        .AXI_00_RDATA(smartconnect_0_M00_AXI_RDATA),
        .AXI_00_RLAST(smartconnect_0_M00_AXI_RLAST),
        .AXI_00_RREADY(smartconnect_0_M00_AXI_RREADY),
        .AXI_00_RRESP(smartconnect_0_M00_AXI_RRESP),
        .AXI_00_RVALID(smartconnect_0_M00_AXI_RVALID),
        .AXI_00_WDATA(smartconnect_0_M00_AXI_WDATA),
        .AXI_00_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_00_WLAST(smartconnect_0_M00_AXI_WLAST),
        .AXI_00_WREADY(smartconnect_0_M00_AXI_WREADY),
        .AXI_00_WSTRB(smartconnect_0_M00_AXI_WSTRB),
        .AXI_00_WVALID(smartconnect_0_M00_AXI_WVALID),
        .AXI_01_ACLK(axi_nn_aclk_1),
        .AXI_01_ARADDR(smartconnect_0_M01_AXI_ARADDR),
        .AXI_01_ARBURST(smartconnect_0_M01_AXI_ARBURST),
        .AXI_01_ARESET_N(axi_nn_resetn_1),
        .AXI_01_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_01_ARLEN(smartconnect_0_M01_AXI_ARLEN),
        .AXI_01_ARREADY(smartconnect_0_M01_AXI_ARREADY),
        .AXI_01_ARSIZE(smartconnect_0_M01_AXI_ARSIZE),
        .AXI_01_ARVALID(smartconnect_0_M01_AXI_ARVALID),
        .AXI_01_AWADDR(smartconnect_0_M01_AXI_AWADDR),
        .AXI_01_AWBURST(smartconnect_0_M01_AXI_AWBURST),
        .AXI_01_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_01_AWLEN(smartconnect_0_M01_AXI_AWLEN),
        .AXI_01_AWREADY(smartconnect_0_M01_AXI_AWREADY),
        .AXI_01_AWSIZE(smartconnect_0_M01_AXI_AWSIZE),
        .AXI_01_AWVALID(smartconnect_0_M01_AXI_AWVALID),
        .AXI_01_BREADY(smartconnect_0_M01_AXI_BREADY),
        .AXI_01_BRESP(smartconnect_0_M01_AXI_BRESP),
        .AXI_01_BVALID(smartconnect_0_M01_AXI_BVALID),
        .AXI_01_RDATA(smartconnect_0_M01_AXI_RDATA),
        .AXI_01_RLAST(smartconnect_0_M01_AXI_RLAST),
        .AXI_01_RREADY(smartconnect_0_M01_AXI_RREADY),
        .AXI_01_RRESP(smartconnect_0_M01_AXI_RRESP),
        .AXI_01_RVALID(smartconnect_0_M01_AXI_RVALID),
        .AXI_01_WDATA(smartconnect_0_M01_AXI_WDATA),
        .AXI_01_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_01_WLAST(smartconnect_0_M01_AXI_WLAST),
        .AXI_01_WREADY(smartconnect_0_M01_AXI_WREADY),
        .AXI_01_WSTRB(smartconnect_0_M01_AXI_WSTRB),
        .AXI_01_WVALID(smartconnect_0_M01_AXI_WVALID),
        .AXI_02_ACLK(axi_nn_aclk_1),
        .AXI_02_ARADDR(smartconnect_0_M02_AXI_ARADDR),
        .AXI_02_ARBURST(smartconnect_0_M02_AXI_ARBURST),
        .AXI_02_ARESET_N(axi_nn_resetn_1),
        .AXI_02_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_02_ARLEN(smartconnect_0_M02_AXI_ARLEN),
        .AXI_02_ARREADY(smartconnect_0_M02_AXI_ARREADY),
        .AXI_02_ARSIZE(smartconnect_0_M02_AXI_ARSIZE),
        .AXI_02_ARVALID(smartconnect_0_M02_AXI_ARVALID),
        .AXI_02_AWADDR(smartconnect_0_M02_AXI_AWADDR),
        .AXI_02_AWBURST(smartconnect_0_M02_AXI_AWBURST),
        .AXI_02_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_02_AWLEN(smartconnect_0_M02_AXI_AWLEN),
        .AXI_02_AWREADY(smartconnect_0_M02_AXI_AWREADY),
        .AXI_02_AWSIZE(smartconnect_0_M02_AXI_AWSIZE),
        .AXI_02_AWVALID(smartconnect_0_M02_AXI_AWVALID),
        .AXI_02_BREADY(smartconnect_0_M02_AXI_BREADY),
        .AXI_02_BRESP(smartconnect_0_M02_AXI_BRESP),
        .AXI_02_BVALID(smartconnect_0_M02_AXI_BVALID),
        .AXI_02_RDATA(smartconnect_0_M02_AXI_RDATA),
        .AXI_02_RLAST(smartconnect_0_M02_AXI_RLAST),
        .AXI_02_RREADY(smartconnect_0_M02_AXI_RREADY),
        .AXI_02_RRESP(smartconnect_0_M02_AXI_RRESP),
        .AXI_02_RVALID(smartconnect_0_M02_AXI_RVALID),
        .AXI_02_WDATA(smartconnect_0_M02_AXI_WDATA),
        .AXI_02_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_02_WLAST(smartconnect_0_M02_AXI_WLAST),
        .AXI_02_WREADY(smartconnect_0_M02_AXI_WREADY),
        .AXI_02_WSTRB(smartconnect_0_M02_AXI_WSTRB),
        .AXI_02_WVALID(smartconnect_0_M02_AXI_WVALID),
        .AXI_03_ACLK(axi_nn_aclk_1),
        .AXI_03_ARADDR(smartconnect_0_M03_AXI_ARADDR),
        .AXI_03_ARBURST(smartconnect_0_M03_AXI_ARBURST),
        .AXI_03_ARESET_N(axi_nn_resetn_1),
        .AXI_03_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_03_ARLEN(smartconnect_0_M03_AXI_ARLEN),
        .AXI_03_ARREADY(smartconnect_0_M03_AXI_ARREADY),
        .AXI_03_ARSIZE(smartconnect_0_M03_AXI_ARSIZE),
        .AXI_03_ARVALID(smartconnect_0_M03_AXI_ARVALID),
        .AXI_03_AWADDR(smartconnect_0_M03_AXI_AWADDR),
        .AXI_03_AWBURST(smartconnect_0_M03_AXI_AWBURST),
        .AXI_03_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_03_AWLEN(smartconnect_0_M03_AXI_AWLEN),
        .AXI_03_AWREADY(smartconnect_0_M03_AXI_AWREADY),
        .AXI_03_AWSIZE(smartconnect_0_M03_AXI_AWSIZE),
        .AXI_03_AWVALID(smartconnect_0_M03_AXI_AWVALID),
        .AXI_03_BREADY(smartconnect_0_M03_AXI_BREADY),
        .AXI_03_BRESP(smartconnect_0_M03_AXI_BRESP),
        .AXI_03_BVALID(smartconnect_0_M03_AXI_BVALID),
        .AXI_03_RDATA(smartconnect_0_M03_AXI_RDATA),
        .AXI_03_RLAST(smartconnect_0_M03_AXI_RLAST),
        .AXI_03_RREADY(smartconnect_0_M03_AXI_RREADY),
        .AXI_03_RRESP(smartconnect_0_M03_AXI_RRESP),
        .AXI_03_RVALID(smartconnect_0_M03_AXI_RVALID),
        .AXI_03_WDATA(smartconnect_0_M03_AXI_WDATA),
        .AXI_03_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_03_WLAST(smartconnect_0_M03_AXI_WLAST),
        .AXI_03_WREADY(smartconnect_0_M03_AXI_WREADY),
        .AXI_03_WSTRB(smartconnect_0_M03_AXI_WSTRB),
        .AXI_03_WVALID(smartconnect_0_M03_AXI_WVALID),
        .AXI_04_ACLK(axi_nn_aclk_1),
        .AXI_04_ARADDR(smartconnect_1_M00_AXI_ARADDR),
        .AXI_04_ARBURST(smartconnect_1_M00_AXI_ARBURST),
        .AXI_04_ARESET_N(axi_nn_resetn_1),
        .AXI_04_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_04_ARLEN(smartconnect_1_M00_AXI_ARLEN),
        .AXI_04_ARREADY(smartconnect_1_M00_AXI_ARREADY),
        .AXI_04_ARSIZE(smartconnect_1_M00_AXI_ARSIZE),
        .AXI_04_ARVALID(smartconnect_1_M00_AXI_ARVALID),
        .AXI_04_AWADDR(smartconnect_1_M00_AXI_AWADDR),
        .AXI_04_AWBURST(smartconnect_1_M00_AXI_AWBURST),
        .AXI_04_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_04_AWLEN(smartconnect_1_M00_AXI_AWLEN),
        .AXI_04_AWREADY(smartconnect_1_M00_AXI_AWREADY),
        .AXI_04_AWSIZE(smartconnect_1_M00_AXI_AWSIZE),
        .AXI_04_AWVALID(smartconnect_1_M00_AXI_AWVALID),
        .AXI_04_BREADY(smartconnect_1_M00_AXI_BREADY),
        .AXI_04_BRESP(smartconnect_1_M00_AXI_BRESP),
        .AXI_04_BVALID(smartconnect_1_M00_AXI_BVALID),
        .AXI_04_RDATA(smartconnect_1_M00_AXI_RDATA),
        .AXI_04_RLAST(smartconnect_1_M00_AXI_RLAST),
        .AXI_04_RREADY(smartconnect_1_M00_AXI_RREADY),
        .AXI_04_RRESP(smartconnect_1_M00_AXI_RRESP),
        .AXI_04_RVALID(smartconnect_1_M00_AXI_RVALID),
        .AXI_04_WDATA(smartconnect_1_M00_AXI_WDATA),
        .AXI_04_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_04_WLAST(smartconnect_1_M00_AXI_WLAST),
        .AXI_04_WREADY(smartconnect_1_M00_AXI_WREADY),
        .AXI_04_WSTRB(smartconnect_1_M00_AXI_WSTRB),
        .AXI_04_WVALID(smartconnect_1_M00_AXI_WVALID),
        .AXI_05_ACLK(axi_nn_aclk_1),
        .AXI_05_ARADDR(smartconnect_1_M01_AXI_ARADDR),
        .AXI_05_ARBURST(smartconnect_1_M01_AXI_ARBURST),
        .AXI_05_ARESET_N(axi_nn_resetn_1),
        .AXI_05_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_05_ARLEN(smartconnect_1_M01_AXI_ARLEN),
        .AXI_05_ARREADY(smartconnect_1_M01_AXI_ARREADY),
        .AXI_05_ARSIZE(smartconnect_1_M01_AXI_ARSIZE),
        .AXI_05_ARVALID(smartconnect_1_M01_AXI_ARVALID),
        .AXI_05_AWADDR(smartconnect_1_M01_AXI_AWADDR),
        .AXI_05_AWBURST(smartconnect_1_M01_AXI_AWBURST),
        .AXI_05_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_05_AWLEN(smartconnect_1_M01_AXI_AWLEN),
        .AXI_05_AWREADY(smartconnect_1_M01_AXI_AWREADY),
        .AXI_05_AWSIZE(smartconnect_1_M01_AXI_AWSIZE),
        .AXI_05_AWVALID(smartconnect_1_M01_AXI_AWVALID),
        .AXI_05_BREADY(smartconnect_1_M01_AXI_BREADY),
        .AXI_05_BRESP(smartconnect_1_M01_AXI_BRESP),
        .AXI_05_BVALID(smartconnect_1_M01_AXI_BVALID),
        .AXI_05_RDATA(smartconnect_1_M01_AXI_RDATA),
        .AXI_05_RLAST(smartconnect_1_M01_AXI_RLAST),
        .AXI_05_RREADY(smartconnect_1_M01_AXI_RREADY),
        .AXI_05_RRESP(smartconnect_1_M01_AXI_RRESP),
        .AXI_05_RVALID(smartconnect_1_M01_AXI_RVALID),
        .AXI_05_WDATA(smartconnect_1_M01_AXI_WDATA),
        .AXI_05_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_05_WLAST(smartconnect_1_M01_AXI_WLAST),
        .AXI_05_WREADY(smartconnect_1_M01_AXI_WREADY),
        .AXI_05_WSTRB(smartconnect_1_M01_AXI_WSTRB),
        .AXI_05_WVALID(smartconnect_1_M01_AXI_WVALID),
        .AXI_06_ACLK(axi_nn_aclk_1),
        .AXI_06_ARADDR(smartconnect_1_M02_AXI_ARADDR),
        .AXI_06_ARBURST(smartconnect_1_M02_AXI_ARBURST),
        .AXI_06_ARESET_N(axi_nn_resetn_1),
        .AXI_06_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_06_ARLEN(smartconnect_1_M02_AXI_ARLEN),
        .AXI_06_ARREADY(smartconnect_1_M02_AXI_ARREADY),
        .AXI_06_ARSIZE(smartconnect_1_M02_AXI_ARSIZE),
        .AXI_06_ARVALID(smartconnect_1_M02_AXI_ARVALID),
        .AXI_06_AWADDR(smartconnect_1_M02_AXI_AWADDR),
        .AXI_06_AWBURST(smartconnect_1_M02_AXI_AWBURST),
        .AXI_06_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_06_AWLEN(smartconnect_1_M02_AXI_AWLEN),
        .AXI_06_AWREADY(smartconnect_1_M02_AXI_AWREADY),
        .AXI_06_AWSIZE(smartconnect_1_M02_AXI_AWSIZE),
        .AXI_06_AWVALID(smartconnect_1_M02_AXI_AWVALID),
        .AXI_06_BREADY(smartconnect_1_M02_AXI_BREADY),
        .AXI_06_BRESP(smartconnect_1_M02_AXI_BRESP),
        .AXI_06_BVALID(smartconnect_1_M02_AXI_BVALID),
        .AXI_06_RDATA(smartconnect_1_M02_AXI_RDATA),
        .AXI_06_RLAST(smartconnect_1_M02_AXI_RLAST),
        .AXI_06_RREADY(smartconnect_1_M02_AXI_RREADY),
        .AXI_06_RRESP(smartconnect_1_M02_AXI_RRESP),
        .AXI_06_RVALID(smartconnect_1_M02_AXI_RVALID),
        .AXI_06_WDATA(smartconnect_1_M02_AXI_WDATA),
        .AXI_06_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_06_WLAST(smartconnect_1_M02_AXI_WLAST),
        .AXI_06_WREADY(smartconnect_1_M02_AXI_WREADY),
        .AXI_06_WSTRB(smartconnect_1_M02_AXI_WSTRB),
        .AXI_06_WVALID(smartconnect_1_M02_AXI_WVALID),
        .AXI_07_ACLK(axi_nn_aclk_1),
        .AXI_07_ARADDR(smartconnect_1_M03_AXI_ARADDR),
        .AXI_07_ARBURST(smartconnect_1_M03_AXI_ARBURST),
        .AXI_07_ARESET_N(axi_nn_resetn_1),
        .AXI_07_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_07_ARLEN(smartconnect_1_M03_AXI_ARLEN),
        .AXI_07_ARREADY(smartconnect_1_M03_AXI_ARREADY),
        .AXI_07_ARSIZE(smartconnect_1_M03_AXI_ARSIZE),
        .AXI_07_ARVALID(smartconnect_1_M03_AXI_ARVALID),
        .AXI_07_AWADDR(smartconnect_1_M03_AXI_AWADDR),
        .AXI_07_AWBURST(smartconnect_1_M03_AXI_AWBURST),
        .AXI_07_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_07_AWLEN(smartconnect_1_M03_AXI_AWLEN),
        .AXI_07_AWREADY(smartconnect_1_M03_AXI_AWREADY),
        .AXI_07_AWSIZE(smartconnect_1_M03_AXI_AWSIZE),
        .AXI_07_AWVALID(smartconnect_1_M03_AXI_AWVALID),
        .AXI_07_BREADY(smartconnect_1_M03_AXI_BREADY),
        .AXI_07_BRESP(smartconnect_1_M03_AXI_BRESP),
        .AXI_07_BVALID(smartconnect_1_M03_AXI_BVALID),
        .AXI_07_RDATA(smartconnect_1_M03_AXI_RDATA),
        .AXI_07_RLAST(smartconnect_1_M03_AXI_RLAST),
        .AXI_07_RREADY(smartconnect_1_M03_AXI_RREADY),
        .AXI_07_RRESP(smartconnect_1_M03_AXI_RRESP),
        .AXI_07_RVALID(smartconnect_1_M03_AXI_RVALID),
        .AXI_07_WDATA(smartconnect_1_M03_AXI_WDATA),
        .AXI_07_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_07_WLAST(smartconnect_1_M03_AXI_WLAST),
        .AXI_07_WREADY(smartconnect_1_M03_AXI_WREADY),
        .AXI_07_WSTRB(smartconnect_1_M03_AXI_WSTRB),
        .AXI_07_WVALID(smartconnect_1_M03_AXI_WVALID),
        .AXI_08_ACLK(axi_nn_aclk_1),
        .AXI_08_ARADDR(smartconnect_2_M00_AXI_ARADDR),
        .AXI_08_ARBURST(smartconnect_2_M00_AXI_ARBURST),
        .AXI_08_ARESET_N(axi_nn_resetn_1),
        .AXI_08_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_08_ARLEN(smartconnect_2_M00_AXI_ARLEN),
        .AXI_08_ARREADY(smartconnect_2_M00_AXI_ARREADY),
        .AXI_08_ARSIZE(smartconnect_2_M00_AXI_ARSIZE),
        .AXI_08_ARVALID(smartconnect_2_M00_AXI_ARVALID),
        .AXI_08_AWADDR(smartconnect_2_M00_AXI_AWADDR),
        .AXI_08_AWBURST(smartconnect_2_M00_AXI_AWBURST),
        .AXI_08_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_08_AWLEN(smartconnect_2_M00_AXI_AWLEN),
        .AXI_08_AWREADY(smartconnect_2_M00_AXI_AWREADY),
        .AXI_08_AWSIZE(smartconnect_2_M00_AXI_AWSIZE),
        .AXI_08_AWVALID(smartconnect_2_M00_AXI_AWVALID),
        .AXI_08_BREADY(smartconnect_2_M00_AXI_BREADY),
        .AXI_08_BRESP(smartconnect_2_M00_AXI_BRESP),
        .AXI_08_BVALID(smartconnect_2_M00_AXI_BVALID),
        .AXI_08_RDATA(smartconnect_2_M00_AXI_RDATA),
        .AXI_08_RLAST(smartconnect_2_M00_AXI_RLAST),
        .AXI_08_RREADY(smartconnect_2_M00_AXI_RREADY),
        .AXI_08_RRESP(smartconnect_2_M00_AXI_RRESP),
        .AXI_08_RVALID(smartconnect_2_M00_AXI_RVALID),
        .AXI_08_WDATA(smartconnect_2_M00_AXI_WDATA),
        .AXI_08_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_08_WLAST(smartconnect_2_M00_AXI_WLAST),
        .AXI_08_WREADY(smartconnect_2_M00_AXI_WREADY),
        .AXI_08_WSTRB(smartconnect_2_M00_AXI_WSTRB),
        .AXI_08_WVALID(smartconnect_2_M00_AXI_WVALID),
        .AXI_09_ACLK(axi_nn_aclk_1),
        .AXI_09_ARADDR(smartconnect_2_M01_AXI_ARADDR),
        .AXI_09_ARBURST(smartconnect_2_M01_AXI_ARBURST),
        .AXI_09_ARESET_N(axi_nn_resetn_1),
        .AXI_09_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_09_ARLEN(smartconnect_2_M01_AXI_ARLEN),
        .AXI_09_ARREADY(smartconnect_2_M01_AXI_ARREADY),
        .AXI_09_ARSIZE(smartconnect_2_M01_AXI_ARSIZE),
        .AXI_09_ARVALID(smartconnect_2_M01_AXI_ARVALID),
        .AXI_09_AWADDR(smartconnect_2_M01_AXI_AWADDR),
        .AXI_09_AWBURST(smartconnect_2_M01_AXI_AWBURST),
        .AXI_09_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_09_AWLEN(smartconnect_2_M01_AXI_AWLEN),
        .AXI_09_AWREADY(smartconnect_2_M01_AXI_AWREADY),
        .AXI_09_AWSIZE(smartconnect_2_M01_AXI_AWSIZE),
        .AXI_09_AWVALID(smartconnect_2_M01_AXI_AWVALID),
        .AXI_09_BREADY(smartconnect_2_M01_AXI_BREADY),
        .AXI_09_BRESP(smartconnect_2_M01_AXI_BRESP),
        .AXI_09_BVALID(smartconnect_2_M01_AXI_BVALID),
        .AXI_09_RDATA(smartconnect_2_M01_AXI_RDATA),
        .AXI_09_RLAST(smartconnect_2_M01_AXI_RLAST),
        .AXI_09_RREADY(smartconnect_2_M01_AXI_RREADY),
        .AXI_09_RRESP(smartconnect_2_M01_AXI_RRESP),
        .AXI_09_RVALID(smartconnect_2_M01_AXI_RVALID),
        .AXI_09_WDATA(smartconnect_2_M01_AXI_WDATA),
        .AXI_09_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_09_WLAST(smartconnect_2_M01_AXI_WLAST),
        .AXI_09_WREADY(smartconnect_2_M01_AXI_WREADY),
        .AXI_09_WSTRB(smartconnect_2_M01_AXI_WSTRB),
        .AXI_09_WVALID(smartconnect_2_M01_AXI_WVALID),
        .AXI_10_ACLK(axi_nn_aclk_1),
        .AXI_10_ARADDR(smartconnect_2_M02_AXI_ARADDR),
        .AXI_10_ARBURST(smartconnect_2_M02_AXI_ARBURST),
        .AXI_10_ARESET_N(axi_nn_resetn_1),
        .AXI_10_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_10_ARLEN(smartconnect_2_M02_AXI_ARLEN),
        .AXI_10_ARREADY(smartconnect_2_M02_AXI_ARREADY),
        .AXI_10_ARSIZE(smartconnect_2_M02_AXI_ARSIZE),
        .AXI_10_ARVALID(smartconnect_2_M02_AXI_ARVALID),
        .AXI_10_AWADDR(smartconnect_2_M02_AXI_AWADDR),
        .AXI_10_AWBURST(smartconnect_2_M02_AXI_AWBURST),
        .AXI_10_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_10_AWLEN(smartconnect_2_M02_AXI_AWLEN),
        .AXI_10_AWREADY(smartconnect_2_M02_AXI_AWREADY),
        .AXI_10_AWSIZE(smartconnect_2_M02_AXI_AWSIZE),
        .AXI_10_AWVALID(smartconnect_2_M02_AXI_AWVALID),
        .AXI_10_BREADY(smartconnect_2_M02_AXI_BREADY),
        .AXI_10_BRESP(smartconnect_2_M02_AXI_BRESP),
        .AXI_10_BVALID(smartconnect_2_M02_AXI_BVALID),
        .AXI_10_RDATA(smartconnect_2_M02_AXI_RDATA),
        .AXI_10_RLAST(smartconnect_2_M02_AXI_RLAST),
        .AXI_10_RREADY(smartconnect_2_M02_AXI_RREADY),
        .AXI_10_RRESP(smartconnect_2_M02_AXI_RRESP),
        .AXI_10_RVALID(smartconnect_2_M02_AXI_RVALID),
        .AXI_10_WDATA(smartconnect_2_M02_AXI_WDATA),
        .AXI_10_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_10_WLAST(smartconnect_2_M02_AXI_WLAST),
        .AXI_10_WREADY(smartconnect_2_M02_AXI_WREADY),
        .AXI_10_WSTRB(smartconnect_2_M02_AXI_WSTRB),
        .AXI_10_WVALID(smartconnect_2_M02_AXI_WVALID),
        .AXI_11_ACLK(axi_nn_aclk_1),
        .AXI_11_ARADDR(smartconnect_2_M03_AXI_ARADDR),
        .AXI_11_ARBURST(smartconnect_2_M03_AXI_ARBURST),
        .AXI_11_ARESET_N(axi_nn_resetn_1),
        .AXI_11_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_11_ARLEN(smartconnect_2_M03_AXI_ARLEN),
        .AXI_11_ARREADY(smartconnect_2_M03_AXI_ARREADY),
        .AXI_11_ARSIZE(smartconnect_2_M03_AXI_ARSIZE),
        .AXI_11_ARVALID(smartconnect_2_M03_AXI_ARVALID),
        .AXI_11_AWADDR(smartconnect_2_M03_AXI_AWADDR),
        .AXI_11_AWBURST(smartconnect_2_M03_AXI_AWBURST),
        .AXI_11_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_11_AWLEN(smartconnect_2_M03_AXI_AWLEN),
        .AXI_11_AWREADY(smartconnect_2_M03_AXI_AWREADY),
        .AXI_11_AWSIZE(smartconnect_2_M03_AXI_AWSIZE),
        .AXI_11_AWVALID(smartconnect_2_M03_AXI_AWVALID),
        .AXI_11_BREADY(smartconnect_2_M03_AXI_BREADY),
        .AXI_11_BRESP(smartconnect_2_M03_AXI_BRESP),
        .AXI_11_BVALID(smartconnect_2_M03_AXI_BVALID),
        .AXI_11_RDATA(smartconnect_2_M03_AXI_RDATA),
        .AXI_11_RLAST(smartconnect_2_M03_AXI_RLAST),
        .AXI_11_RREADY(smartconnect_2_M03_AXI_RREADY),
        .AXI_11_RRESP(smartconnect_2_M03_AXI_RRESP),
        .AXI_11_RVALID(smartconnect_2_M03_AXI_RVALID),
        .AXI_11_WDATA(smartconnect_2_M03_AXI_WDATA),
        .AXI_11_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_11_WLAST(smartconnect_2_M03_AXI_WLAST),
        .AXI_11_WREADY(smartconnect_2_M03_AXI_WREADY),
        .AXI_11_WSTRB(smartconnect_2_M03_AXI_WSTRB),
        .AXI_11_WVALID(smartconnect_2_M03_AXI_WVALID),
        .AXI_12_ACLK(axi_nn_aclk_1),
        .AXI_12_ARADDR(smartconnect_3_M00_AXI_ARADDR),
        .AXI_12_ARBURST(smartconnect_3_M00_AXI_ARBURST),
        .AXI_12_ARESET_N(axi_nn_resetn_1),
        .AXI_12_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_12_ARLEN(smartconnect_3_M00_AXI_ARLEN),
        .AXI_12_ARREADY(smartconnect_3_M00_AXI_ARREADY),
        .AXI_12_ARSIZE(smartconnect_3_M00_AXI_ARSIZE),
        .AXI_12_ARVALID(smartconnect_3_M00_AXI_ARVALID),
        .AXI_12_AWADDR(smartconnect_3_M00_AXI_AWADDR),
        .AXI_12_AWBURST(smartconnect_3_M00_AXI_AWBURST),
        .AXI_12_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_12_AWLEN(smartconnect_3_M00_AXI_AWLEN),
        .AXI_12_AWREADY(smartconnect_3_M00_AXI_AWREADY),
        .AXI_12_AWSIZE(smartconnect_3_M00_AXI_AWSIZE),
        .AXI_12_AWVALID(smartconnect_3_M00_AXI_AWVALID),
        .AXI_12_BREADY(smartconnect_3_M00_AXI_BREADY),
        .AXI_12_BRESP(smartconnect_3_M00_AXI_BRESP),
        .AXI_12_BVALID(smartconnect_3_M00_AXI_BVALID),
        .AXI_12_RDATA(smartconnect_3_M00_AXI_RDATA),
        .AXI_12_RLAST(smartconnect_3_M00_AXI_RLAST),
        .AXI_12_RREADY(smartconnect_3_M00_AXI_RREADY),
        .AXI_12_RRESP(smartconnect_3_M00_AXI_RRESP),
        .AXI_12_RVALID(smartconnect_3_M00_AXI_RVALID),
        .AXI_12_WDATA(smartconnect_3_M00_AXI_WDATA),
        .AXI_12_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_12_WLAST(smartconnect_3_M00_AXI_WLAST),
        .AXI_12_WREADY(smartconnect_3_M00_AXI_WREADY),
        .AXI_12_WSTRB(smartconnect_3_M00_AXI_WSTRB),
        .AXI_12_WVALID(smartconnect_3_M00_AXI_WVALID),
        .AXI_13_ACLK(axi_nn_aclk_1),
        .AXI_13_ARADDR(smartconnect_3_M01_AXI_ARADDR),
        .AXI_13_ARBURST(smartconnect_3_M01_AXI_ARBURST),
        .AXI_13_ARESET_N(axi_nn_resetn_1),
        .AXI_13_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_13_ARLEN(smartconnect_3_M01_AXI_ARLEN),
        .AXI_13_ARREADY(smartconnect_3_M01_AXI_ARREADY),
        .AXI_13_ARSIZE(smartconnect_3_M01_AXI_ARSIZE),
        .AXI_13_ARVALID(smartconnect_3_M01_AXI_ARVALID),
        .AXI_13_AWADDR(smartconnect_3_M01_AXI_AWADDR),
        .AXI_13_AWBURST(smartconnect_3_M01_AXI_AWBURST),
        .AXI_13_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_13_AWLEN(smartconnect_3_M01_AXI_AWLEN),
        .AXI_13_AWREADY(smartconnect_3_M01_AXI_AWREADY),
        .AXI_13_AWSIZE(smartconnect_3_M01_AXI_AWSIZE),
        .AXI_13_AWVALID(smartconnect_3_M01_AXI_AWVALID),
        .AXI_13_BREADY(smartconnect_3_M01_AXI_BREADY),
        .AXI_13_BRESP(smartconnect_3_M01_AXI_BRESP),
        .AXI_13_BVALID(smartconnect_3_M01_AXI_BVALID),
        .AXI_13_RDATA(smartconnect_3_M01_AXI_RDATA),
        .AXI_13_RLAST(smartconnect_3_M01_AXI_RLAST),
        .AXI_13_RREADY(smartconnect_3_M01_AXI_RREADY),
        .AXI_13_RRESP(smartconnect_3_M01_AXI_RRESP),
        .AXI_13_RVALID(smartconnect_3_M01_AXI_RVALID),
        .AXI_13_WDATA(smartconnect_3_M01_AXI_WDATA),
        .AXI_13_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_13_WLAST(smartconnect_3_M01_AXI_WLAST),
        .AXI_13_WREADY(smartconnect_3_M01_AXI_WREADY),
        .AXI_13_WSTRB(smartconnect_3_M01_AXI_WSTRB),
        .AXI_13_WVALID(smartconnect_3_M01_AXI_WVALID),
        .AXI_14_ACLK(axi_nn_aclk_1),
        .AXI_14_ARADDR(smartconnect_3_M02_AXI_ARADDR),
        .AXI_14_ARBURST(smartconnect_3_M02_AXI_ARBURST),
        .AXI_14_ARESET_N(axi_nn_resetn_1),
        .AXI_14_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_14_ARLEN(smartconnect_3_M02_AXI_ARLEN),
        .AXI_14_ARREADY(smartconnect_3_M02_AXI_ARREADY),
        .AXI_14_ARSIZE(smartconnect_3_M02_AXI_ARSIZE),
        .AXI_14_ARVALID(smartconnect_3_M02_AXI_ARVALID),
        .AXI_14_AWADDR(smartconnect_3_M02_AXI_AWADDR),
        .AXI_14_AWBURST(smartconnect_3_M02_AXI_AWBURST),
        .AXI_14_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_14_AWLEN(smartconnect_3_M02_AXI_AWLEN),
        .AXI_14_AWREADY(smartconnect_3_M02_AXI_AWREADY),
        .AXI_14_AWSIZE(smartconnect_3_M02_AXI_AWSIZE),
        .AXI_14_AWVALID(smartconnect_3_M02_AXI_AWVALID),
        .AXI_14_BREADY(smartconnect_3_M02_AXI_BREADY),
        .AXI_14_BRESP(smartconnect_3_M02_AXI_BRESP),
        .AXI_14_BVALID(smartconnect_3_M02_AXI_BVALID),
        .AXI_14_RDATA(smartconnect_3_M02_AXI_RDATA),
        .AXI_14_RLAST(smartconnect_3_M02_AXI_RLAST),
        .AXI_14_RREADY(smartconnect_3_M02_AXI_RREADY),
        .AXI_14_RRESP(smartconnect_3_M02_AXI_RRESP),
        .AXI_14_RVALID(smartconnect_3_M02_AXI_RVALID),
        .AXI_14_WDATA(smartconnect_3_M02_AXI_WDATA),
        .AXI_14_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_14_WLAST(smartconnect_3_M02_AXI_WLAST),
        .AXI_14_WREADY(smartconnect_3_M02_AXI_WREADY),
        .AXI_14_WSTRB(smartconnect_3_M02_AXI_WSTRB),
        .AXI_14_WVALID(smartconnect_3_M02_AXI_WVALID),
        .AXI_15_ACLK(axi_nn_aclk_1),
        .AXI_15_ARADDR(smartconnect_3_M03_AXI_ARADDR),
        .AXI_15_ARBURST(smartconnect_3_M03_AXI_ARBURST),
        .AXI_15_ARESET_N(axi_nn_resetn_1),
        .AXI_15_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_15_ARLEN(smartconnect_3_M03_AXI_ARLEN),
        .AXI_15_ARREADY(smartconnect_3_M03_AXI_ARREADY),
        .AXI_15_ARSIZE(smartconnect_3_M03_AXI_ARSIZE),
        .AXI_15_ARVALID(smartconnect_3_M03_AXI_ARVALID),
        .AXI_15_AWADDR(smartconnect_3_M03_AXI_AWADDR),
        .AXI_15_AWBURST(smartconnect_3_M03_AXI_AWBURST),
        .AXI_15_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_15_AWLEN(smartconnect_3_M03_AXI_AWLEN),
        .AXI_15_AWREADY(smartconnect_3_M03_AXI_AWREADY),
        .AXI_15_AWSIZE(smartconnect_3_M03_AXI_AWSIZE),
        .AXI_15_AWVALID(smartconnect_3_M03_AXI_AWVALID),
        .AXI_15_BREADY(smartconnect_3_M03_AXI_BREADY),
        .AXI_15_BRESP(smartconnect_3_M03_AXI_BRESP),
        .AXI_15_BVALID(smartconnect_3_M03_AXI_BVALID),
        .AXI_15_RDATA(smartconnect_3_M03_AXI_RDATA),
        .AXI_15_RLAST(smartconnect_3_M03_AXI_RLAST),
        .AXI_15_RREADY(smartconnect_3_M03_AXI_RREADY),
        .AXI_15_RRESP(smartconnect_3_M03_AXI_RRESP),
        .AXI_15_RVALID(smartconnect_3_M03_AXI_RVALID),
        .AXI_15_WDATA(smartconnect_3_M03_AXI_WDATA),
        .AXI_15_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_15_WLAST(smartconnect_3_M03_AXI_WLAST),
        .AXI_15_WREADY(smartconnect_3_M03_AXI_WREADY),
        .AXI_15_WSTRB(smartconnect_3_M03_AXI_WSTRB),
        .AXI_15_WVALID(smartconnect_3_M03_AXI_WVALID),
        .DRAM_0_STAT_CATTRIP(hbm_cattrip),
        .DRAM_0_STAT_TEMP(hbm_temp),
        .HBM_REF_CLK_0(clock_buffer_IBUF_OUT));
  hbm_clock_imp_X2YGZH hbm_clock
       (.clk_450(axi_nn_aclk_1),
        .cmac_clk(cmac_clk),
        .cmac_resetn(cmac_resetn),
        .resetn_450(axi_nn_resetn_1),
        .sys_clk(sys_clk),
        .sys_resetn(sys_resetn));
  top_level_smartconnect_4_1 main_crossbar
       (.M00_AXI_araddr(smartconnect_4_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_4_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_4_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_4_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_4_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_4_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_4_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_4_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_4_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_4_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_4_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_4_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_4_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_4_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_4_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_4_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_4_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_4_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_4_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_4_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_4_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_4_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_4_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_4_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_4_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_4_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_4_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_4_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_4_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_4_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_4_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_4_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_4_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_4_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_4_M01_AXI_ARBURST),
        .M01_AXI_arcache(smartconnect_4_M01_AXI_ARCACHE),
        .M01_AXI_arlen(smartconnect_4_M01_AXI_ARLEN),
        .M01_AXI_arlock(smartconnect_4_M01_AXI_ARLOCK),
        .M01_AXI_arprot(smartconnect_4_M01_AXI_ARPROT),
        .M01_AXI_arqos(smartconnect_4_M01_AXI_ARQOS),
        .M01_AXI_arready(smartconnect_4_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_4_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_4_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_4_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_4_M01_AXI_AWBURST),
        .M01_AXI_awcache(smartconnect_4_M01_AXI_AWCACHE),
        .M01_AXI_awlen(smartconnect_4_M01_AXI_AWLEN),
        .M01_AXI_awlock(smartconnect_4_M01_AXI_AWLOCK),
        .M01_AXI_awprot(smartconnect_4_M01_AXI_AWPROT),
        .M01_AXI_awqos(smartconnect_4_M01_AXI_AWQOS),
        .M01_AXI_awready(smartconnect_4_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_4_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_4_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_4_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_4_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_4_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_4_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_4_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_4_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_4_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_4_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_4_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_4_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_4_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_4_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_4_M01_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arid(S00_AXI_arid),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awid(S00_AXI_awid),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awsize(S00_AXI_awsize),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bid(S00_AXI_bid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rid(S00_AXI_rid),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .S01_AXI_araddr(S01_AXI_araddr),
        .S01_AXI_arburst(S01_AXI_arburst),
        .S01_AXI_arcache(S01_AXI_arcache),
        .S01_AXI_arid(S01_AXI_arid),
        .S01_AXI_arlen(S01_AXI_arlen),
        .S01_AXI_arlock(S01_AXI_arlock),
        .S01_AXI_arprot(S01_AXI_arprot),
        .S01_AXI_arqos(S01_AXI_arqos),
        .S01_AXI_arready(S01_AXI_arready),
        .S01_AXI_arsize(S01_AXI_arsize),
        .S01_AXI_arvalid(S01_AXI_arvalid),
        .S01_AXI_awaddr(S01_AXI_awaddr),
        .S01_AXI_awburst(S01_AXI_awburst),
        .S01_AXI_awcache(S01_AXI_awcache),
        .S01_AXI_awid(S01_AXI_awid),
        .S01_AXI_awlen(S01_AXI_awlen),
        .S01_AXI_awlock(S01_AXI_awlock),
        .S01_AXI_awprot(S01_AXI_awprot),
        .S01_AXI_awqos(S01_AXI_awqos),
        .S01_AXI_awready(S01_AXI_awready),
        .S01_AXI_awsize(S01_AXI_awsize),
        .S01_AXI_awvalid(S01_AXI_awvalid),
        .S01_AXI_bready(S01_AXI_bready),
        .S01_AXI_bresp(S01_AXI_bresp),
        .S01_AXI_bvalid(S01_AXI_bvalid),
        .S01_AXI_rdata(S01_AXI_rdata),
        .S01_AXI_rlast(S01_AXI_rlast),
        .S01_AXI_rready(S01_AXI_rready),
        .S01_AXI_rresp(S01_AXI_rresp),
        .S01_AXI_rvalid(S01_AXI_rvalid),
        .S01_AXI_wdata(S01_AXI_wdata),
        .S01_AXI_wlast(S01_AXI_wlast),
        .S01_AXI_wready(S01_AXI_wready),
        .S01_AXI_wstrb(S01_AXI_wstrb),
        .S01_AXI_wvalid(S01_AXI_wvalid),
        .aclk(cmac_clk),
        .aclk1(sys_clk),
        .aresetn(cmac_resetn));
  assign one_dout = 1'h1;
  top_level_smartconnect_0_5 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_0_M01_AXI_ARBURST),
        .M01_AXI_arlen(smartconnect_0_M01_AXI_ARLEN),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_0_M01_AXI_AWBURST),
        .M01_AXI_awlen(smartconnect_0_M01_AXI_AWLEN),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_0_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_0_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arburst(smartconnect_0_M02_AXI_ARBURST),
        .M02_AXI_arlen(smartconnect_0_M02_AXI_ARLEN),
        .M02_AXI_arready(smartconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arsize(smartconnect_0_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awburst(smartconnect_0_M02_AXI_AWBURST),
        .M02_AXI_awlen(smartconnect_0_M02_AXI_AWLEN),
        .M02_AXI_awready(smartconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awsize(smartconnect_0_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_0_M02_AXI_RDATA),
        .M02_AXI_rlast(smartconnect_0_M02_AXI_RLAST),
        .M02_AXI_rready(smartconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_0_M02_AXI_WDATA),
        .M02_AXI_wlast(smartconnect_0_M02_AXI_WLAST),
        .M02_AXI_wready(smartconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_0_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arburst(smartconnect_0_M03_AXI_ARBURST),
        .M03_AXI_arlen(smartconnect_0_M03_AXI_ARLEN),
        .M03_AXI_arready(smartconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arsize(smartconnect_0_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awburst(smartconnect_0_M03_AXI_AWBURST),
        .M03_AXI_awlen(smartconnect_0_M03_AXI_AWLEN),
        .M03_AXI_awready(smartconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awsize(smartconnect_0_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_0_M03_AXI_RDATA),
        .M03_AXI_rlast(smartconnect_0_M03_AXI_RLAST),
        .M03_AXI_rready(smartconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_0_M03_AXI_WDATA),
        .M03_AXI_wlast(smartconnect_0_M03_AXI_WLAST),
        .M03_AXI_wready(smartconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_0_M03_AXI_WVALID),
        .S00_AXI_araddr(axi4_splitter_0_M0_AXI_ARADDR),
        .S00_AXI_arburst(axi4_splitter_0_M0_AXI_ARBURST),
        .S00_AXI_arcache(axi4_splitter_0_M0_AXI_ARCACHE),
        .S00_AXI_arid(axi4_splitter_0_M0_AXI_ARID),
        .S00_AXI_arlen(axi4_splitter_0_M0_AXI_ARLEN),
        .S00_AXI_arlock(axi4_splitter_0_M0_AXI_ARLOCK),
        .S00_AXI_arprot(axi4_splitter_0_M0_AXI_ARPROT),
        .S00_AXI_arqos(axi4_splitter_0_M0_AXI_ARQOS),
        .S00_AXI_arready(axi4_splitter_0_M0_AXI_ARREADY),
        .S00_AXI_arsize(axi4_splitter_0_M0_AXI_ARSIZE),
        .S00_AXI_arvalid(axi4_splitter_0_M0_AXI_ARVALID),
        .S00_AXI_awaddr(axi4_splitter_0_M0_AXI_AWADDR),
        .S00_AXI_awburst(axi4_splitter_0_M0_AXI_AWBURST),
        .S00_AXI_awcache(axi4_splitter_0_M0_AXI_AWCACHE),
        .S00_AXI_awid(axi4_splitter_0_M0_AXI_AWID),
        .S00_AXI_awlen(axi4_splitter_0_M0_AXI_AWLEN),
        .S00_AXI_awlock(axi4_splitter_0_M0_AXI_AWLOCK),
        .S00_AXI_awprot(axi4_splitter_0_M0_AXI_AWPROT),
        .S00_AXI_awqos(axi4_splitter_0_M0_AXI_AWQOS),
        .S00_AXI_awready(axi4_splitter_0_M0_AXI_AWREADY),
        .S00_AXI_awsize(axi4_splitter_0_M0_AXI_AWSIZE),
        .S00_AXI_awvalid(axi4_splitter_0_M0_AXI_AWVALID),
        .S00_AXI_bready(axi4_splitter_0_M0_AXI_BREADY),
        .S00_AXI_bresp(axi4_splitter_0_M0_AXI_BRESP),
        .S00_AXI_bvalid(axi4_splitter_0_M0_AXI_BVALID),
        .S00_AXI_rdata(axi4_splitter_0_M0_AXI_RDATA),
        .S00_AXI_rid(axi4_splitter_0_M0_AXI_RID),
        .S00_AXI_rlast(axi4_splitter_0_M0_AXI_RLAST),
        .S00_AXI_rready(axi4_splitter_0_M0_AXI_RREADY),
        .S00_AXI_rresp(axi4_splitter_0_M0_AXI_RRESP),
        .S00_AXI_rvalid(axi4_splitter_0_M0_AXI_RVALID),
        .S00_AXI_wdata(axi4_splitter_0_M0_AXI_WDATA),
        .S00_AXI_wlast(axi4_splitter_0_M0_AXI_WLAST),
        .S00_AXI_wready(axi4_splitter_0_M0_AXI_WREADY),
        .S00_AXI_wstrb(axi4_splitter_0_M0_AXI_WSTRB),
        .S00_AXI_wvalid(axi4_splitter_0_M0_AXI_WVALID),
        .aclk(axi_nn_aclk_1),
        .aclk1(cmac_clk),
        .aresetn(axi_nn_resetn_1));
  top_level_smartconnect_1_1 smartconnect_1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arlen(smartconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awlen(smartconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awready(smartconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_1_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_1_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_1_M01_AXI_ARBURST),
        .M01_AXI_arlen(smartconnect_1_M01_AXI_ARLEN),
        .M01_AXI_arready(smartconnect_1_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_1_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_1_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_1_M01_AXI_AWBURST),
        .M01_AXI_awlen(smartconnect_1_M01_AXI_AWLEN),
        .M01_AXI_awready(smartconnect_1_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_1_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_1_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_1_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_1_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_1_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_1_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_1_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_1_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_1_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_1_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_1_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_1_M02_AXI_ARADDR),
        .M02_AXI_arburst(smartconnect_1_M02_AXI_ARBURST),
        .M02_AXI_arlen(smartconnect_1_M02_AXI_ARLEN),
        .M02_AXI_arready(smartconnect_1_M02_AXI_ARREADY),
        .M02_AXI_arsize(smartconnect_1_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(smartconnect_1_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_1_M02_AXI_AWADDR),
        .M02_AXI_awburst(smartconnect_1_M02_AXI_AWBURST),
        .M02_AXI_awlen(smartconnect_1_M02_AXI_AWLEN),
        .M02_AXI_awready(smartconnect_1_M02_AXI_AWREADY),
        .M02_AXI_awsize(smartconnect_1_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(smartconnect_1_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_1_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_1_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_1_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_1_M02_AXI_RDATA),
        .M02_AXI_rlast(smartconnect_1_M02_AXI_RLAST),
        .M02_AXI_rready(smartconnect_1_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_1_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_1_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_1_M02_AXI_WDATA),
        .M02_AXI_wlast(smartconnect_1_M02_AXI_WLAST),
        .M02_AXI_wready(smartconnect_1_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_1_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_1_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_1_M03_AXI_ARADDR),
        .M03_AXI_arburst(smartconnect_1_M03_AXI_ARBURST),
        .M03_AXI_arlen(smartconnect_1_M03_AXI_ARLEN),
        .M03_AXI_arready(smartconnect_1_M03_AXI_ARREADY),
        .M03_AXI_arsize(smartconnect_1_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(smartconnect_1_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_1_M03_AXI_AWADDR),
        .M03_AXI_awburst(smartconnect_1_M03_AXI_AWBURST),
        .M03_AXI_awlen(smartconnect_1_M03_AXI_AWLEN),
        .M03_AXI_awready(smartconnect_1_M03_AXI_AWREADY),
        .M03_AXI_awsize(smartconnect_1_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(smartconnect_1_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_1_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_1_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_1_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_1_M03_AXI_RDATA),
        .M03_AXI_rlast(smartconnect_1_M03_AXI_RLAST),
        .M03_AXI_rready(smartconnect_1_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_1_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_1_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_1_M03_AXI_WDATA),
        .M03_AXI_wlast(smartconnect_1_M03_AXI_WLAST),
        .M03_AXI_wready(smartconnect_1_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_1_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_1_M03_AXI_WVALID),
        .S00_AXI_araddr(axi4_splitter_0_M1_AXI_ARADDR),
        .S00_AXI_arburst(axi4_splitter_0_M1_AXI_ARBURST),
        .S00_AXI_arcache(axi4_splitter_0_M1_AXI_ARCACHE),
        .S00_AXI_arid(axi4_splitter_0_M1_AXI_ARID),
        .S00_AXI_arlen(axi4_splitter_0_M1_AXI_ARLEN),
        .S00_AXI_arlock(axi4_splitter_0_M1_AXI_ARLOCK),
        .S00_AXI_arprot(axi4_splitter_0_M1_AXI_ARPROT),
        .S00_AXI_arqos(axi4_splitter_0_M1_AXI_ARQOS),
        .S00_AXI_arready(axi4_splitter_0_M1_AXI_ARREADY),
        .S00_AXI_arsize(axi4_splitter_0_M1_AXI_ARSIZE),
        .S00_AXI_arvalid(axi4_splitter_0_M1_AXI_ARVALID),
        .S00_AXI_awaddr(axi4_splitter_0_M1_AXI_AWADDR),
        .S00_AXI_awburst(axi4_splitter_0_M1_AXI_AWBURST),
        .S00_AXI_awcache(axi4_splitter_0_M1_AXI_AWCACHE),
        .S00_AXI_awid(axi4_splitter_0_M1_AXI_AWID),
        .S00_AXI_awlen(axi4_splitter_0_M1_AXI_AWLEN),
        .S00_AXI_awlock(axi4_splitter_0_M1_AXI_AWLOCK),
        .S00_AXI_awprot(axi4_splitter_0_M1_AXI_AWPROT),
        .S00_AXI_awqos(axi4_splitter_0_M1_AXI_AWQOS),
        .S00_AXI_awready(axi4_splitter_0_M1_AXI_AWREADY),
        .S00_AXI_awsize(axi4_splitter_0_M1_AXI_AWSIZE),
        .S00_AXI_awvalid(axi4_splitter_0_M1_AXI_AWVALID),
        .S00_AXI_bready(axi4_splitter_0_M1_AXI_BREADY),
        .S00_AXI_bresp(axi4_splitter_0_M1_AXI_BRESP),
        .S00_AXI_bvalid(axi4_splitter_0_M1_AXI_BVALID),
        .S00_AXI_rdata(axi4_splitter_0_M1_AXI_RDATA),
        .S00_AXI_rid(axi4_splitter_0_M1_AXI_RID),
        .S00_AXI_rlast(axi4_splitter_0_M1_AXI_RLAST),
        .S00_AXI_rready(axi4_splitter_0_M1_AXI_RREADY),
        .S00_AXI_rresp(axi4_splitter_0_M1_AXI_RRESP),
        .S00_AXI_rvalid(axi4_splitter_0_M1_AXI_RVALID),
        .S00_AXI_wdata(axi4_splitter_0_M1_AXI_WDATA),
        .S00_AXI_wlast(axi4_splitter_0_M1_AXI_WLAST),
        .S00_AXI_wready(axi4_splitter_0_M1_AXI_WREADY),
        .S00_AXI_wstrb(axi4_splitter_0_M1_AXI_WSTRB),
        .S00_AXI_wvalid(axi4_splitter_0_M1_AXI_WVALID),
        .aclk(axi_nn_aclk_1),
        .aclk1(cmac_clk),
        .aresetn(axi_nn_resetn_1));
  top_level_smartconnect_2_2 smartconnect_2
       (.M00_AXI_araddr(smartconnect_2_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_2_M00_AXI_ARBURST),
        .M00_AXI_arlen(smartconnect_2_M00_AXI_ARLEN),
        .M00_AXI_arready(smartconnect_2_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_2_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_2_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_2_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_2_M00_AXI_AWBURST),
        .M00_AXI_awlen(smartconnect_2_M00_AXI_AWLEN),
        .M00_AXI_awready(smartconnect_2_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_2_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_2_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_2_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_2_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_2_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_2_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_2_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_2_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_2_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_2_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_2_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_2_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_2_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_2_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_2_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_2_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_2_M01_AXI_ARBURST),
        .M01_AXI_arlen(smartconnect_2_M01_AXI_ARLEN),
        .M01_AXI_arready(smartconnect_2_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_2_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_2_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_2_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_2_M01_AXI_AWBURST),
        .M01_AXI_awlen(smartconnect_2_M01_AXI_AWLEN),
        .M01_AXI_awready(smartconnect_2_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_2_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_2_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_2_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_2_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_2_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_2_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_2_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_2_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_2_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_2_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_2_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_2_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_2_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_2_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_2_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_2_M02_AXI_ARADDR),
        .M02_AXI_arburst(smartconnect_2_M02_AXI_ARBURST),
        .M02_AXI_arlen(smartconnect_2_M02_AXI_ARLEN),
        .M02_AXI_arready(smartconnect_2_M02_AXI_ARREADY),
        .M02_AXI_arsize(smartconnect_2_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(smartconnect_2_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_2_M02_AXI_AWADDR),
        .M02_AXI_awburst(smartconnect_2_M02_AXI_AWBURST),
        .M02_AXI_awlen(smartconnect_2_M02_AXI_AWLEN),
        .M02_AXI_awready(smartconnect_2_M02_AXI_AWREADY),
        .M02_AXI_awsize(smartconnect_2_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(smartconnect_2_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_2_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_2_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_2_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_2_M02_AXI_RDATA),
        .M02_AXI_rlast(smartconnect_2_M02_AXI_RLAST),
        .M02_AXI_rready(smartconnect_2_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_2_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_2_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_2_M02_AXI_WDATA),
        .M02_AXI_wlast(smartconnect_2_M02_AXI_WLAST),
        .M02_AXI_wready(smartconnect_2_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_2_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_2_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_2_M03_AXI_ARADDR),
        .M03_AXI_arburst(smartconnect_2_M03_AXI_ARBURST),
        .M03_AXI_arlen(smartconnect_2_M03_AXI_ARLEN),
        .M03_AXI_arready(smartconnect_2_M03_AXI_ARREADY),
        .M03_AXI_arsize(smartconnect_2_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(smartconnect_2_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_2_M03_AXI_AWADDR),
        .M03_AXI_awburst(smartconnect_2_M03_AXI_AWBURST),
        .M03_AXI_awlen(smartconnect_2_M03_AXI_AWLEN),
        .M03_AXI_awready(smartconnect_2_M03_AXI_AWREADY),
        .M03_AXI_awsize(smartconnect_2_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(smartconnect_2_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_2_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_2_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_2_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_2_M03_AXI_RDATA),
        .M03_AXI_rlast(smartconnect_2_M03_AXI_RLAST),
        .M03_AXI_rready(smartconnect_2_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_2_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_2_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_2_M03_AXI_WDATA),
        .M03_AXI_wlast(smartconnect_2_M03_AXI_WLAST),
        .M03_AXI_wready(smartconnect_2_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_2_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_2_M03_AXI_WVALID),
        .S00_AXI_araddr(axi4_splitter_1_M0_AXI_ARADDR),
        .S00_AXI_arburst(axi4_splitter_1_M0_AXI_ARBURST),
        .S00_AXI_arcache(axi4_splitter_1_M0_AXI_ARCACHE),
        .S00_AXI_arid(axi4_splitter_1_M0_AXI_ARID),
        .S00_AXI_arlen(axi4_splitter_1_M0_AXI_ARLEN),
        .S00_AXI_arlock(axi4_splitter_1_M0_AXI_ARLOCK),
        .S00_AXI_arprot(axi4_splitter_1_M0_AXI_ARPROT),
        .S00_AXI_arqos(axi4_splitter_1_M0_AXI_ARQOS),
        .S00_AXI_arready(axi4_splitter_1_M0_AXI_ARREADY),
        .S00_AXI_arsize(axi4_splitter_1_M0_AXI_ARSIZE),
        .S00_AXI_arvalid(axi4_splitter_1_M0_AXI_ARVALID),
        .S00_AXI_awaddr(axi4_splitter_1_M0_AXI_AWADDR),
        .S00_AXI_awburst(axi4_splitter_1_M0_AXI_AWBURST),
        .S00_AXI_awcache(axi4_splitter_1_M0_AXI_AWCACHE),
        .S00_AXI_awid(axi4_splitter_1_M0_AXI_AWID),
        .S00_AXI_awlen(axi4_splitter_1_M0_AXI_AWLEN),
        .S00_AXI_awlock(axi4_splitter_1_M0_AXI_AWLOCK),
        .S00_AXI_awprot(axi4_splitter_1_M0_AXI_AWPROT),
        .S00_AXI_awqos(axi4_splitter_1_M0_AXI_AWQOS),
        .S00_AXI_awready(axi4_splitter_1_M0_AXI_AWREADY),
        .S00_AXI_awsize(axi4_splitter_1_M0_AXI_AWSIZE),
        .S00_AXI_awvalid(axi4_splitter_1_M0_AXI_AWVALID),
        .S00_AXI_bready(axi4_splitter_1_M0_AXI_BREADY),
        .S00_AXI_bresp(axi4_splitter_1_M0_AXI_BRESP),
        .S00_AXI_bvalid(axi4_splitter_1_M0_AXI_BVALID),
        .S00_AXI_rdata(axi4_splitter_1_M0_AXI_RDATA),
        .S00_AXI_rid(axi4_splitter_1_M0_AXI_RID),
        .S00_AXI_rlast(axi4_splitter_1_M0_AXI_RLAST),
        .S00_AXI_rready(axi4_splitter_1_M0_AXI_RREADY),
        .S00_AXI_rresp(axi4_splitter_1_M0_AXI_RRESP),
        .S00_AXI_rvalid(axi4_splitter_1_M0_AXI_RVALID),
        .S00_AXI_wdata(axi4_splitter_1_M0_AXI_WDATA),
        .S00_AXI_wlast(axi4_splitter_1_M0_AXI_WLAST),
        .S00_AXI_wready(axi4_splitter_1_M0_AXI_WREADY),
        .S00_AXI_wstrb(axi4_splitter_1_M0_AXI_WSTRB),
        .S00_AXI_wvalid(axi4_splitter_1_M0_AXI_WVALID),
        .aclk(axi_nn_aclk_1),
        .aclk1(cmac_clk),
        .aresetn(axi_nn_resetn_1));
  top_level_smartconnect_3_0 smartconnect_3
       (.M00_AXI_araddr(smartconnect_3_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_3_M00_AXI_ARBURST),
        .M00_AXI_arlen(smartconnect_3_M00_AXI_ARLEN),
        .M00_AXI_arready(smartconnect_3_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_3_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_3_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_3_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_3_M00_AXI_AWBURST),
        .M00_AXI_awlen(smartconnect_3_M00_AXI_AWLEN),
        .M00_AXI_awready(smartconnect_3_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_3_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_3_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_3_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_3_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_3_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_3_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_3_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_3_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_3_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_3_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_3_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_3_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_3_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_3_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_3_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_3_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_3_M01_AXI_ARBURST),
        .M01_AXI_arlen(smartconnect_3_M01_AXI_ARLEN),
        .M01_AXI_arready(smartconnect_3_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_3_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_3_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_3_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_3_M01_AXI_AWBURST),
        .M01_AXI_awlen(smartconnect_3_M01_AXI_AWLEN),
        .M01_AXI_awready(smartconnect_3_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_3_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_3_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_3_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_3_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_3_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_3_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_3_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_3_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_3_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_3_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_3_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_3_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_3_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_3_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_3_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_3_M02_AXI_ARADDR),
        .M02_AXI_arburst(smartconnect_3_M02_AXI_ARBURST),
        .M02_AXI_arlen(smartconnect_3_M02_AXI_ARLEN),
        .M02_AXI_arready(smartconnect_3_M02_AXI_ARREADY),
        .M02_AXI_arsize(smartconnect_3_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(smartconnect_3_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_3_M02_AXI_AWADDR),
        .M02_AXI_awburst(smartconnect_3_M02_AXI_AWBURST),
        .M02_AXI_awlen(smartconnect_3_M02_AXI_AWLEN),
        .M02_AXI_awready(smartconnect_3_M02_AXI_AWREADY),
        .M02_AXI_awsize(smartconnect_3_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(smartconnect_3_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_3_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_3_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_3_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_3_M02_AXI_RDATA),
        .M02_AXI_rlast(smartconnect_3_M02_AXI_RLAST),
        .M02_AXI_rready(smartconnect_3_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_3_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_3_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_3_M02_AXI_WDATA),
        .M02_AXI_wlast(smartconnect_3_M02_AXI_WLAST),
        .M02_AXI_wready(smartconnect_3_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_3_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_3_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_3_M03_AXI_ARADDR),
        .M03_AXI_arburst(smartconnect_3_M03_AXI_ARBURST),
        .M03_AXI_arlen(smartconnect_3_M03_AXI_ARLEN),
        .M03_AXI_arready(smartconnect_3_M03_AXI_ARREADY),
        .M03_AXI_arsize(smartconnect_3_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(smartconnect_3_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_3_M03_AXI_AWADDR),
        .M03_AXI_awburst(smartconnect_3_M03_AXI_AWBURST),
        .M03_AXI_awlen(smartconnect_3_M03_AXI_AWLEN),
        .M03_AXI_awready(smartconnect_3_M03_AXI_AWREADY),
        .M03_AXI_awsize(smartconnect_3_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(smartconnect_3_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_3_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_3_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_3_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_3_M03_AXI_RDATA),
        .M03_AXI_rlast(smartconnect_3_M03_AXI_RLAST),
        .M03_AXI_rready(smartconnect_3_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_3_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_3_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_3_M03_AXI_WDATA),
        .M03_AXI_wlast(smartconnect_3_M03_AXI_WLAST),
        .M03_AXI_wready(smartconnect_3_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_3_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_3_M03_AXI_WVALID),
        .S00_AXI_araddr(axi4_splitter_1_M1_AXI_ARADDR),
        .S00_AXI_arburst(axi4_splitter_1_M1_AXI_ARBURST),
        .S00_AXI_arcache(axi4_splitter_1_M1_AXI_ARCACHE),
        .S00_AXI_arid(axi4_splitter_1_M1_AXI_ARID),
        .S00_AXI_arlen(axi4_splitter_1_M1_AXI_ARLEN),
        .S00_AXI_arlock(axi4_splitter_1_M1_AXI_ARLOCK),
        .S00_AXI_arprot(axi4_splitter_1_M1_AXI_ARPROT),
        .S00_AXI_arqos(axi4_splitter_1_M1_AXI_ARQOS),
        .S00_AXI_arready(axi4_splitter_1_M1_AXI_ARREADY),
        .S00_AXI_arsize(axi4_splitter_1_M1_AXI_ARSIZE),
        .S00_AXI_arvalid(axi4_splitter_1_M1_AXI_ARVALID),
        .S00_AXI_awaddr(axi4_splitter_1_M1_AXI_AWADDR),
        .S00_AXI_awburst(axi4_splitter_1_M1_AXI_AWBURST),
        .S00_AXI_awcache(axi4_splitter_1_M1_AXI_AWCACHE),
        .S00_AXI_awid(axi4_splitter_1_M1_AXI_AWID),
        .S00_AXI_awlen(axi4_splitter_1_M1_AXI_AWLEN),
        .S00_AXI_awlock(axi4_splitter_1_M1_AXI_AWLOCK),
        .S00_AXI_awprot(axi4_splitter_1_M1_AXI_AWPROT),
        .S00_AXI_awqos(axi4_splitter_1_M1_AXI_AWQOS),
        .S00_AXI_awready(axi4_splitter_1_M1_AXI_AWREADY),
        .S00_AXI_awsize(axi4_splitter_1_M1_AXI_AWSIZE),
        .S00_AXI_awvalid(axi4_splitter_1_M1_AXI_AWVALID),
        .S00_AXI_bready(axi4_splitter_1_M1_AXI_BREADY),
        .S00_AXI_bresp(axi4_splitter_1_M1_AXI_BRESP),
        .S00_AXI_bvalid(axi4_splitter_1_M1_AXI_BVALID),
        .S00_AXI_rdata(axi4_splitter_1_M1_AXI_RDATA),
        .S00_AXI_rid(axi4_splitter_1_M1_AXI_RID),
        .S00_AXI_rlast(axi4_splitter_1_M1_AXI_RLAST),
        .S00_AXI_rready(axi4_splitter_1_M1_AXI_RREADY),
        .S00_AXI_rresp(axi4_splitter_1_M1_AXI_RRESP),
        .S00_AXI_rvalid(axi4_splitter_1_M1_AXI_RVALID),
        .S00_AXI_wdata(axi4_splitter_1_M1_AXI_WDATA),
        .S00_AXI_wlast(axi4_splitter_1_M1_AXI_WLAST),
        .S00_AXI_wready(axi4_splitter_1_M1_AXI_WREADY),
        .S00_AXI_wstrb(axi4_splitter_1_M1_AXI_WSTRB),
        .S00_AXI_wvalid(axi4_splitter_1_M1_AXI_WVALID),
        .aclk(axi_nn_aclk_1),
        .aclk1(cmac_clk),
        .aresetn(axi_nn_resetn_1));
endmodule

module hbm_clock_imp_1PJ5DYR
   (clk_450,
    cmac_clk,
    cmac_resetn,
    resetn_450,
    sys_clk,
    sys_resetn);
  output clk_450;
  input cmac_clk;
  output cmac_resetn;
  output resetn_450;
  input sys_clk;
  input sys_resetn;

  wire clk_450;
  wire cmac_clk;
  wire cmac_resetn;
  wire resetn_450;
  wire sys_clk;
  wire sys_resetn;

  top_level_clk_wiz_0_0 clk_250_to_450
       (.clk_in1(sys_clk),
        .clk_out1(clk_450));
  top_level_xpm_cdc_gen_0_3 sync_cmac_resetn
       (.dest_arst(cmac_resetn),
        .dest_clk(cmac_clk),
        .src_arst(sys_resetn));
  top_level_xpm_cdc_gen_0_2 sync_reset
       (.dest_arst(resetn_450),
        .dest_clk(clk_450),
        .src_arst(sys_resetn));
endmodule

module hbm_clock_imp_X2YGZH
   (clk_450,
    cmac_clk,
    cmac_resetn,
    resetn_450,
    sys_clk,
    sys_resetn);
  output clk_450;
  input cmac_clk;
  output cmac_resetn;
  output resetn_450;
  input sys_clk;
  input sys_resetn;

  wire clk_450;
  wire cmac_clk;
  wire cmac_resetn;
  wire resetn_450;
  wire sys_clk;
  wire sys_resetn;

  top_level_clk_250_to_450_0 clk_250_to_450
       (.clk_in1(sys_clk),
        .clk_out1(clk_450));
  top_level_sync_cmac_resetn_0 sync_cmac_resetn
       (.dest_arst(cmac_resetn),
        .dest_clk(cmac_clk),
        .src_arst(sys_resetn));
  top_level_sync_reset_0 sync_reset
       (.dest_arst(resetn_450),
        .dest_clk(clk_450),
        .src_arst(sys_resetn));
endmodule

module packet_datapath_imp_11OZHAT
   (M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    axis_in_tdata,
    axis_in_tkeep,
    axis_in_tlast,
    axis_in_tvalid,
    blocks_captured,
    cmac_clk,
    cmac_resetn,
    done,
    enable,
    packets_captured,
    sys_clk);
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input [511:0]axis_in_tdata;
  input [63:0]axis_in_tkeep;
  input axis_in_tlast;
  input axis_in_tvalid;
  output [31:0]blocks_captured;
  input cmac_clk;
  input cmac_resetn;
  output done;
  input [0:0]enable;
  output [31:0]packets_captured;
  input sys_clk;

  wire [63:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [1:0]M_AXI_arid;
  wire [7:0]M_AXI_arlen;
  wire M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire M_AXI_arready;
  wire [2:0]M_AXI_arsize;
  wire M_AXI_arvalid;
  wire [63:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [1:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire [2:0]M_AXI_awsize;
  wire M_AXI_awvalid;
  wire [1:0]M_AXI_bid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [511:0]M_AXI_rdata;
  wire [1:0]M_AXI_rid;
  wire M_AXI_rlast;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [511:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [63:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire [511:0]add_header_axis_out_TDATA;
  wire add_header_axis_out_TREADY;
  wire add_header_axis_out_TVALID;
  wire [511:0]axis_in_tdata;
  wire [63:0]axis_in_tkeep;
  wire axis_in_tlast;
  wire axis_in_tvalid;
  wire [31:0]blocks_captured;
  wire cmac_clk;
  wire cmac_resetn;
  wire done;
  wire [0:0]enable;
  wire [0:0]enable_sync_dest_out;
  wire [63:0]packet_gate_axis_hdr_TDATA;
  wire packet_gate_axis_hdr_TREADY;
  wire [15:0]packet_gate_axis_hdr_TUSER;
  wire packet_gate_axis_hdr_TVALID;
  wire [511:0]packet_gate_axis_out_TDATA;
  wire packet_gate_axis_out_TREADY;
  wire packet_gate_axis_out_TVALID;
  wire [31:0]packets_captured;
  wire sys_clk;

  top_level_add_header_0_0 add_header
       (.axis_md_tdata(packet_gate_axis_hdr_TDATA),
        .axis_md_tready(packet_gate_axis_hdr_TREADY),
        .axis_md_tuser(packet_gate_axis_hdr_TUSER),
        .axis_md_tvalid(packet_gate_axis_hdr_TVALID),
        .axis_out_tdata(add_header_axis_out_TDATA),
        .axis_out_tready(add_header_axis_out_TREADY),
        .axis_out_tvalid(add_header_axis_out_TVALID),
        .axis_pd_tdata(packet_gate_axis_out_TDATA),
        .axis_pd_tready(packet_gate_axis_out_TREADY),
        .axis_pd_tvalid(packet_gate_axis_out_TVALID),
        .clk(cmac_clk),
        .enable(enable_sync_dest_out),
        .packets_captured(packets_captured),
        .resetn(cmac_resetn));
  top_level_xpm_cdc_gen_0_1 enable_sync
       (.dest_clk(cmac_clk),
        .dest_out(enable_sync_dest_out),
        .src_clk(sys_clk),
        .src_in(enable));
  top_level_hbm_writer_0_1 hbm_writer
       (.M_AXI_ARADDR(M_AXI_araddr),
        .M_AXI_ARBURST(M_AXI_arburst),
        .M_AXI_ARCACHE(M_AXI_arcache),
        .M_AXI_ARID(M_AXI_arid),
        .M_AXI_ARLEN(M_AXI_arlen),
        .M_AXI_ARLOCK(M_AXI_arlock),
        .M_AXI_ARPROT(M_AXI_arprot),
        .M_AXI_ARQOS(M_AXI_arqos),
        .M_AXI_ARREADY(M_AXI_arready),
        .M_AXI_ARSIZE(M_AXI_arsize),
        .M_AXI_ARVALID(M_AXI_arvalid),
        .M_AXI_AWADDR(M_AXI_awaddr),
        .M_AXI_AWBURST(M_AXI_awburst),
        .M_AXI_AWCACHE(M_AXI_awcache),
        .M_AXI_AWID(M_AXI_awid),
        .M_AXI_AWLEN(M_AXI_awlen),
        .M_AXI_AWLOCK(M_AXI_awlock),
        .M_AXI_AWPROT(M_AXI_awprot),
        .M_AXI_AWQOS(M_AXI_awqos),
        .M_AXI_AWREADY(M_AXI_awready),
        .M_AXI_AWSIZE(M_AXI_awsize),
        .M_AXI_AWVALID(M_AXI_awvalid),
        .M_AXI_BID(M_AXI_bid),
        .M_AXI_BREADY(M_AXI_bready),
        .M_AXI_BRESP(M_AXI_bresp),
        .M_AXI_BVALID(M_AXI_bvalid),
        .M_AXI_RDATA(M_AXI_rdata),
        .M_AXI_RID(M_AXI_rid),
        .M_AXI_RLAST(M_AXI_rlast),
        .M_AXI_RREADY(M_AXI_rready),
        .M_AXI_RRESP(M_AXI_rresp),
        .M_AXI_RVALID(M_AXI_rvalid),
        .M_AXI_WDATA(M_AXI_wdata),
        .M_AXI_WLAST(M_AXI_wlast),
        .M_AXI_WREADY(M_AXI_wready),
        .M_AXI_WSTRB(M_AXI_wstrb),
        .M_AXI_WVALID(M_AXI_wvalid),
        .axis_in_tdata(add_header_axis_out_TDATA),
        .axis_in_tready(add_header_axis_out_TREADY),
        .axis_in_tvalid(add_header_axis_out_TVALID),
        .blocks_rcvd(blocks_captured),
        .clk(cmac_clk),
        .done(done),
        .enable(enable_sync_dest_out),
        .resetn(cmac_resetn));
  top_level_packet_gate_0_0 packet_gate
       (.axis_hdr_tdata(packet_gate_axis_hdr_TDATA),
        .axis_hdr_tready(packet_gate_axis_hdr_TREADY),
        .axis_hdr_tuser(packet_gate_axis_hdr_TUSER),
        .axis_hdr_tvalid(packet_gate_axis_hdr_TVALID),
        .axis_in_tdata(axis_in_tdata),
        .axis_in_tkeep(axis_in_tkeep),
        .axis_in_tlast(axis_in_tlast),
        .axis_in_tvalid(axis_in_tvalid),
        .axis_out_tdata(packet_gate_axis_out_TDATA),
        .axis_out_tready(packet_gate_axis_out_TREADY),
        .axis_out_tvalid(packet_gate_axis_out_TVALID),
        .clk(cmac_clk),
        .enable(enable_sync_dest_out),
        .resetn(cmac_resetn));
endmodule

module packet_datapath_imp_K1UF8D
   (M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    axis_in_tdata,
    axis_in_tkeep,
    axis_in_tlast,
    axis_in_tvalid,
    blocks_captured,
    cmac_clk,
    cmac_resetn,
    done,
    enable,
    packets_captured,
    sys_clk);
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input [511:0]axis_in_tdata;
  input [63:0]axis_in_tkeep;
  input axis_in_tlast;
  input axis_in_tvalid;
  output [31:0]blocks_captured;
  input cmac_clk;
  input cmac_resetn;
  output done;
  input [0:0]enable;
  output [31:0]packets_captured;
  input sys_clk;

  wire [63:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [1:0]M_AXI_arid;
  wire [7:0]M_AXI_arlen;
  wire M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire M_AXI_arready;
  wire [2:0]M_AXI_arsize;
  wire M_AXI_arvalid;
  wire [63:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [1:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire [2:0]M_AXI_awsize;
  wire M_AXI_awvalid;
  wire [1:0]M_AXI_bid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [511:0]M_AXI_rdata;
  wire [1:0]M_AXI_rid;
  wire M_AXI_rlast;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [511:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [63:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire [511:0]add_header_axis_out_TDATA;
  wire add_header_axis_out_TREADY;
  wire add_header_axis_out_TVALID;
  wire [511:0]axis_in_tdata;
  wire [63:0]axis_in_tkeep;
  wire axis_in_tlast;
  wire axis_in_tvalid;
  wire [31:0]blocks_captured;
  wire cmac_clk;
  wire cmac_resetn;
  wire done;
  wire [0:0]enable;
  wire [0:0]enable_sync_dest_out;
  wire [63:0]packet_gate_axis_hdr_TDATA;
  wire packet_gate_axis_hdr_TREADY;
  wire [15:0]packet_gate_axis_hdr_TUSER;
  wire packet_gate_axis_hdr_TVALID;
  wire [511:0]packet_gate_axis_out_TDATA;
  wire packet_gate_axis_out_TREADY;
  wire packet_gate_axis_out_TVALID;
  wire [31:0]packets_captured;
  wire sys_clk;

  top_level_add_header_1 add_header
       (.axis_md_tdata(packet_gate_axis_hdr_TDATA),
        .axis_md_tready(packet_gate_axis_hdr_TREADY),
        .axis_md_tuser(packet_gate_axis_hdr_TUSER),
        .axis_md_tvalid(packet_gate_axis_hdr_TVALID),
        .axis_out_tdata(add_header_axis_out_TDATA),
        .axis_out_tready(add_header_axis_out_TREADY),
        .axis_out_tvalid(add_header_axis_out_TVALID),
        .axis_pd_tdata(packet_gate_axis_out_TDATA),
        .axis_pd_tready(packet_gate_axis_out_TREADY),
        .axis_pd_tvalid(packet_gate_axis_out_TVALID),
        .clk(cmac_clk),
        .enable(enable_sync_dest_out),
        .packets_captured(packets_captured),
        .resetn(cmac_resetn));
  top_level_enable_sync_0 enable_sync
       (.dest_clk(cmac_clk),
        .dest_out(enable_sync_dest_out),
        .src_clk(sys_clk),
        .src_in(enable));
  top_level_hbm_writer_2 hbm_writer
       (.M_AXI_ARADDR(M_AXI_araddr),
        .M_AXI_ARBURST(M_AXI_arburst),
        .M_AXI_ARCACHE(M_AXI_arcache),
        .M_AXI_ARID(M_AXI_arid),
        .M_AXI_ARLEN(M_AXI_arlen),
        .M_AXI_ARLOCK(M_AXI_arlock),
        .M_AXI_ARPROT(M_AXI_arprot),
        .M_AXI_ARQOS(M_AXI_arqos),
        .M_AXI_ARREADY(M_AXI_arready),
        .M_AXI_ARSIZE(M_AXI_arsize),
        .M_AXI_ARVALID(M_AXI_arvalid),
        .M_AXI_AWADDR(M_AXI_awaddr),
        .M_AXI_AWBURST(M_AXI_awburst),
        .M_AXI_AWCACHE(M_AXI_awcache),
        .M_AXI_AWID(M_AXI_awid),
        .M_AXI_AWLEN(M_AXI_awlen),
        .M_AXI_AWLOCK(M_AXI_awlock),
        .M_AXI_AWPROT(M_AXI_awprot),
        .M_AXI_AWQOS(M_AXI_awqos),
        .M_AXI_AWREADY(M_AXI_awready),
        .M_AXI_AWSIZE(M_AXI_awsize),
        .M_AXI_AWVALID(M_AXI_awvalid),
        .M_AXI_BID(M_AXI_bid),
        .M_AXI_BREADY(M_AXI_bready),
        .M_AXI_BRESP(M_AXI_bresp),
        .M_AXI_BVALID(M_AXI_bvalid),
        .M_AXI_RDATA(M_AXI_rdata),
        .M_AXI_RID(M_AXI_rid),
        .M_AXI_RLAST(M_AXI_rlast),
        .M_AXI_RREADY(M_AXI_rready),
        .M_AXI_RRESP(M_AXI_rresp),
        .M_AXI_RVALID(M_AXI_rvalid),
        .M_AXI_WDATA(M_AXI_wdata),
        .M_AXI_WLAST(M_AXI_wlast),
        .M_AXI_WREADY(M_AXI_wready),
        .M_AXI_WSTRB(M_AXI_wstrb),
        .M_AXI_WVALID(M_AXI_wvalid),
        .axis_in_tdata(add_header_axis_out_TDATA),
        .axis_in_tready(add_header_axis_out_TREADY),
        .axis_in_tvalid(add_header_axis_out_TVALID),
        .blocks_rcvd(blocks_captured),
        .clk(cmac_clk),
        .done(done),
        .enable(enable_sync_dest_out),
        .resetn(cmac_resetn));
  top_level_packet_gate_1 packet_gate
       (.axis_hdr_tdata(packet_gate_axis_hdr_TDATA),
        .axis_hdr_tready(packet_gate_axis_hdr_TREADY),
        .axis_hdr_tuser(packet_gate_axis_hdr_TUSER),
        .axis_hdr_tvalid(packet_gate_axis_hdr_TVALID),
        .axis_in_tdata(axis_in_tdata),
        .axis_in_tkeep(axis_in_tkeep),
        .axis_in_tlast(axis_in_tlast),
        .axis_in_tvalid(axis_in_tvalid),
        .axis_out_tdata(packet_gate_axis_out_TDATA),
        .axis_out_tready(packet_gate_axis_out_TREADY),
        .axis_out_tvalid(packet_gate_axis_out_TVALID),
        .clk(cmac_clk),
        .enable(enable_sync_dest_out),
        .resetn(cmac_resetn));
endmodule

module pcie_imp_P7FEFP
   (AXI_PCI00_araddr,
    AXI_PCI00_arburst,
    AXI_PCI00_arcache,
    AXI_PCI00_arid,
    AXI_PCI00_arlen,
    AXI_PCI00_arlock,
    AXI_PCI00_arprot,
    AXI_PCI00_arqos,
    AXI_PCI00_arready,
    AXI_PCI00_arsize,
    AXI_PCI00_arvalid,
    AXI_PCI00_awaddr,
    AXI_PCI00_awburst,
    AXI_PCI00_awcache,
    AXI_PCI00_awid,
    AXI_PCI00_awlen,
    AXI_PCI00_awlock,
    AXI_PCI00_awprot,
    AXI_PCI00_awqos,
    AXI_PCI00_awready,
    AXI_PCI00_awsize,
    AXI_PCI00_awvalid,
    AXI_PCI00_bready,
    AXI_PCI00_bresp,
    AXI_PCI00_bvalid,
    AXI_PCI00_rdata,
    AXI_PCI00_rlast,
    AXI_PCI00_rready,
    AXI_PCI00_rresp,
    AXI_PCI00_rvalid,
    AXI_PCI00_wdata,
    AXI_PCI00_wlast,
    AXI_PCI00_wready,
    AXI_PCI00_wstrb,
    AXI_PCI00_wvalid,
    AXI_PCI01_araddr,
    AXI_PCI01_arburst,
    AXI_PCI01_arcache,
    AXI_PCI01_arid,
    AXI_PCI01_arlen,
    AXI_PCI01_arlock,
    AXI_PCI01_arprot,
    AXI_PCI01_arqos,
    AXI_PCI01_arready,
    AXI_PCI01_arsize,
    AXI_PCI01_arvalid,
    AXI_PCI01_awaddr,
    AXI_PCI01_awburst,
    AXI_PCI01_awcache,
    AXI_PCI01_awid,
    AXI_PCI01_awlen,
    AXI_PCI01_awlock,
    AXI_PCI01_awprot,
    AXI_PCI01_awqos,
    AXI_PCI01_awready,
    AXI_PCI01_awsize,
    AXI_PCI01_awvalid,
    AXI_PCI01_bid,
    AXI_PCI01_bready,
    AXI_PCI01_bresp,
    AXI_PCI01_bvalid,
    AXI_PCI01_rdata,
    AXI_PCI01_rid,
    AXI_PCI01_rlast,
    AXI_PCI01_rready,
    AXI_PCI01_rresp,
    AXI_PCI01_rvalid,
    AXI_PCI01_wdata,
    AXI_PCI01_wlast,
    AXI_PCI01_wready,
    AXI_PCI01_wstrb,
    AXI_PCI01_wvalid,
    AXI_PCI10_araddr,
    AXI_PCI10_arburst,
    AXI_PCI10_arcache,
    AXI_PCI10_arid,
    AXI_PCI10_arlen,
    AXI_PCI10_arlock,
    AXI_PCI10_arprot,
    AXI_PCI10_arqos,
    AXI_PCI10_arready,
    AXI_PCI10_arsize,
    AXI_PCI10_arvalid,
    AXI_PCI10_awaddr,
    AXI_PCI10_awburst,
    AXI_PCI10_awcache,
    AXI_PCI10_awid,
    AXI_PCI10_awlen,
    AXI_PCI10_awlock,
    AXI_PCI10_awprot,
    AXI_PCI10_awqos,
    AXI_PCI10_awready,
    AXI_PCI10_awsize,
    AXI_PCI10_awvalid,
    AXI_PCI10_bready,
    AXI_PCI10_bresp,
    AXI_PCI10_bvalid,
    AXI_PCI10_rdata,
    AXI_PCI10_rlast,
    AXI_PCI10_rready,
    AXI_PCI10_rresp,
    AXI_PCI10_rvalid,
    AXI_PCI10_wdata,
    AXI_PCI10_wlast,
    AXI_PCI10_wready,
    AXI_PCI10_wstrb,
    AXI_PCI10_wvalid,
    AXI_PCI11_araddr,
    AXI_PCI11_arburst,
    AXI_PCI11_arcache,
    AXI_PCI11_arid,
    AXI_PCI11_arlen,
    AXI_PCI11_arlock,
    AXI_PCI11_arprot,
    AXI_PCI11_arqos,
    AXI_PCI11_arready,
    AXI_PCI11_arsize,
    AXI_PCI11_arvalid,
    AXI_PCI11_awaddr,
    AXI_PCI11_awburst,
    AXI_PCI11_awcache,
    AXI_PCI11_awid,
    AXI_PCI11_awlen,
    AXI_PCI11_awlock,
    AXI_PCI11_awprot,
    AXI_PCI11_awqos,
    AXI_PCI11_awready,
    AXI_PCI11_awsize,
    AXI_PCI11_awvalid,
    AXI_PCI11_bid,
    AXI_PCI11_bready,
    AXI_PCI11_bresp,
    AXI_PCI11_bvalid,
    AXI_PCI11_rdata,
    AXI_PCI11_rid,
    AXI_PCI11_rlast,
    AXI_PCI11_rready,
    AXI_PCI11_rresp,
    AXI_PCI11_rvalid,
    AXI_PCI11_wdata,
    AXI_PCI11_wlast,
    AXI_PCI11_wready,
    AXI_PCI11_wstrb,
    AXI_PCI11_wvalid,
    CMAC0_STAT_araddr,
    CMAC0_STAT_arprot,
    CMAC0_STAT_arready,
    CMAC0_STAT_arvalid,
    CMAC0_STAT_awaddr,
    CMAC0_STAT_awprot,
    CMAC0_STAT_awready,
    CMAC0_STAT_awvalid,
    CMAC0_STAT_bready,
    CMAC0_STAT_bresp,
    CMAC0_STAT_bvalid,
    CMAC0_STAT_rdata,
    CMAC0_STAT_rready,
    CMAC0_STAT_rresp,
    CMAC0_STAT_rvalid,
    CMAC0_STAT_wdata,
    CMAC0_STAT_wready,
    CMAC0_STAT_wstrb,
    CMAC0_STAT_wvalid,
    CMAC1_STAT_araddr,
    CMAC1_STAT_arprot,
    CMAC1_STAT_arready,
    CMAC1_STAT_arvalid,
    CMAC1_STAT_awaddr,
    CMAC1_STAT_awprot,
    CMAC1_STAT_awready,
    CMAC1_STAT_awvalid,
    CMAC1_STAT_bready,
    CMAC1_STAT_bresp,
    CMAC1_STAT_bvalid,
    CMAC1_STAT_rdata,
    CMAC1_STAT_rready,
    CMAC1_STAT_rresp,
    CMAC1_STAT_rvalid,
    CMAC1_STAT_wdata,
    CMAC1_STAT_wready,
    CMAC1_STAT_wstrb,
    CMAC1_STAT_wvalid,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_AXI_araddr,
    M06_AXI_arprot,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awprot,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    axi_aclk,
    axi_aresetn,
    pcie0_refclk_clk_n,
    pcie0_refclk_clk_p,
    pcie1_refclk_clk_n,
    pcie1_refclk_clk_p,
    pcie_mgt_0_rxn,
    pcie_mgt_0_rxp,
    pcie_mgt_0_txn,
    pcie_mgt_0_txp,
    pcie_mgt_1_rxn,
    pcie_mgt_1_rxp,
    pcie_mgt_1_txn,
    pcie_mgt_1_txp,
    pcie_perst_l);
  input [63:0]AXI_PCI00_araddr;
  input [1:0]AXI_PCI00_arburst;
  input [3:0]AXI_PCI00_arcache;
  input [3:0]AXI_PCI00_arid;
  input [7:0]AXI_PCI00_arlen;
  input AXI_PCI00_arlock;
  input [2:0]AXI_PCI00_arprot;
  input [3:0]AXI_PCI00_arqos;
  output AXI_PCI00_arready;
  input [2:0]AXI_PCI00_arsize;
  input AXI_PCI00_arvalid;
  input [63:0]AXI_PCI00_awaddr;
  input [1:0]AXI_PCI00_awburst;
  input [3:0]AXI_PCI00_awcache;
  input [3:0]AXI_PCI00_awid;
  input [7:0]AXI_PCI00_awlen;
  input AXI_PCI00_awlock;
  input [2:0]AXI_PCI00_awprot;
  input [3:0]AXI_PCI00_awqos;
  output AXI_PCI00_awready;
  input [2:0]AXI_PCI00_awsize;
  input AXI_PCI00_awvalid;
  input AXI_PCI00_bready;
  output [1:0]AXI_PCI00_bresp;
  output AXI_PCI00_bvalid;
  output [511:0]AXI_PCI00_rdata;
  output AXI_PCI00_rlast;
  input AXI_PCI00_rready;
  output [1:0]AXI_PCI00_rresp;
  output AXI_PCI00_rvalid;
  input [511:0]AXI_PCI00_wdata;
  input AXI_PCI00_wlast;
  output AXI_PCI00_wready;
  input [63:0]AXI_PCI00_wstrb;
  input AXI_PCI00_wvalid;
  input [63:0]AXI_PCI01_araddr;
  input [1:0]AXI_PCI01_arburst;
  input [3:0]AXI_PCI01_arcache;
  input [1:0]AXI_PCI01_arid;
  input [7:0]AXI_PCI01_arlen;
  input AXI_PCI01_arlock;
  input [2:0]AXI_PCI01_arprot;
  input [3:0]AXI_PCI01_arqos;
  output AXI_PCI01_arready;
  input [2:0]AXI_PCI01_arsize;
  input AXI_PCI01_arvalid;
  input [63:0]AXI_PCI01_awaddr;
  input [1:0]AXI_PCI01_awburst;
  input [3:0]AXI_PCI01_awcache;
  input [1:0]AXI_PCI01_awid;
  input [7:0]AXI_PCI01_awlen;
  input AXI_PCI01_awlock;
  input [2:0]AXI_PCI01_awprot;
  input [3:0]AXI_PCI01_awqos;
  output AXI_PCI01_awready;
  input [2:0]AXI_PCI01_awsize;
  input AXI_PCI01_awvalid;
  output [1:0]AXI_PCI01_bid;
  input AXI_PCI01_bready;
  output [1:0]AXI_PCI01_bresp;
  output AXI_PCI01_bvalid;
  output [511:0]AXI_PCI01_rdata;
  output [1:0]AXI_PCI01_rid;
  output AXI_PCI01_rlast;
  input AXI_PCI01_rready;
  output [1:0]AXI_PCI01_rresp;
  output AXI_PCI01_rvalid;
  input [511:0]AXI_PCI01_wdata;
  input AXI_PCI01_wlast;
  output AXI_PCI01_wready;
  input [63:0]AXI_PCI01_wstrb;
  input AXI_PCI01_wvalid;
  input [63:0]AXI_PCI10_araddr;
  input [1:0]AXI_PCI10_arburst;
  input [3:0]AXI_PCI10_arcache;
  input [3:0]AXI_PCI10_arid;
  input [7:0]AXI_PCI10_arlen;
  input AXI_PCI10_arlock;
  input [2:0]AXI_PCI10_arprot;
  input [3:0]AXI_PCI10_arqos;
  output AXI_PCI10_arready;
  input [2:0]AXI_PCI10_arsize;
  input AXI_PCI10_arvalid;
  input [63:0]AXI_PCI10_awaddr;
  input [1:0]AXI_PCI10_awburst;
  input [3:0]AXI_PCI10_awcache;
  input [3:0]AXI_PCI10_awid;
  input [7:0]AXI_PCI10_awlen;
  input AXI_PCI10_awlock;
  input [2:0]AXI_PCI10_awprot;
  input [3:0]AXI_PCI10_awqos;
  output AXI_PCI10_awready;
  input [2:0]AXI_PCI10_awsize;
  input AXI_PCI10_awvalid;
  input AXI_PCI10_bready;
  output [1:0]AXI_PCI10_bresp;
  output AXI_PCI10_bvalid;
  output [511:0]AXI_PCI10_rdata;
  output AXI_PCI10_rlast;
  input AXI_PCI10_rready;
  output [1:0]AXI_PCI10_rresp;
  output AXI_PCI10_rvalid;
  input [511:0]AXI_PCI10_wdata;
  input AXI_PCI10_wlast;
  output AXI_PCI10_wready;
  input [63:0]AXI_PCI10_wstrb;
  input AXI_PCI10_wvalid;
  input [63:0]AXI_PCI11_araddr;
  input [1:0]AXI_PCI11_arburst;
  input [3:0]AXI_PCI11_arcache;
  input [1:0]AXI_PCI11_arid;
  input [7:0]AXI_PCI11_arlen;
  input AXI_PCI11_arlock;
  input [2:0]AXI_PCI11_arprot;
  input [3:0]AXI_PCI11_arqos;
  output AXI_PCI11_arready;
  input [2:0]AXI_PCI11_arsize;
  input AXI_PCI11_arvalid;
  input [63:0]AXI_PCI11_awaddr;
  input [1:0]AXI_PCI11_awburst;
  input [3:0]AXI_PCI11_awcache;
  input [1:0]AXI_PCI11_awid;
  input [7:0]AXI_PCI11_awlen;
  input AXI_PCI11_awlock;
  input [2:0]AXI_PCI11_awprot;
  input [3:0]AXI_PCI11_awqos;
  output AXI_PCI11_awready;
  input [2:0]AXI_PCI11_awsize;
  input AXI_PCI11_awvalid;
  output [1:0]AXI_PCI11_bid;
  input AXI_PCI11_bready;
  output [1:0]AXI_PCI11_bresp;
  output AXI_PCI11_bvalid;
  output [511:0]AXI_PCI11_rdata;
  output [1:0]AXI_PCI11_rid;
  output AXI_PCI11_rlast;
  input AXI_PCI11_rready;
  output [1:0]AXI_PCI11_rresp;
  output AXI_PCI11_rvalid;
  input [511:0]AXI_PCI11_wdata;
  input AXI_PCI11_wlast;
  output AXI_PCI11_wready;
  input [63:0]AXI_PCI11_wstrb;
  input AXI_PCI11_wvalid;
  output [31:0]CMAC0_STAT_araddr;
  output [2:0]CMAC0_STAT_arprot;
  input CMAC0_STAT_arready;
  output CMAC0_STAT_arvalid;
  output [31:0]CMAC0_STAT_awaddr;
  output [2:0]CMAC0_STAT_awprot;
  input CMAC0_STAT_awready;
  output CMAC0_STAT_awvalid;
  output CMAC0_STAT_bready;
  input [1:0]CMAC0_STAT_bresp;
  input CMAC0_STAT_bvalid;
  input [31:0]CMAC0_STAT_rdata;
  output CMAC0_STAT_rready;
  input [1:0]CMAC0_STAT_rresp;
  input CMAC0_STAT_rvalid;
  output [31:0]CMAC0_STAT_wdata;
  input CMAC0_STAT_wready;
  output [3:0]CMAC0_STAT_wstrb;
  output CMAC0_STAT_wvalid;
  output [31:0]CMAC1_STAT_araddr;
  output [2:0]CMAC1_STAT_arprot;
  input CMAC1_STAT_arready;
  output CMAC1_STAT_arvalid;
  output [31:0]CMAC1_STAT_awaddr;
  output [2:0]CMAC1_STAT_awprot;
  input CMAC1_STAT_awready;
  output CMAC1_STAT_awvalid;
  output CMAC1_STAT_bready;
  input [1:0]CMAC1_STAT_bresp;
  input CMAC1_STAT_bvalid;
  input [31:0]CMAC1_STAT_rdata;
  output CMAC1_STAT_rready;
  input [1:0]CMAC1_STAT_rresp;
  input CMAC1_STAT_rvalid;
  output [31:0]CMAC1_STAT_wdata;
  input CMAC1_STAT_wready;
  output [3:0]CMAC1_STAT_wstrb;
  output CMAC1_STAT_wvalid;
  output [7:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [7:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  output [7:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [7:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  output [7:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [7:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  output [7:0]M06_AXI_araddr;
  output [2:0]M06_AXI_arprot;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [7:0]M06_AXI_awaddr;
  output [2:0]M06_AXI_awprot;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  output axi_aclk;
  output axi_aresetn;
  input [0:0]pcie0_refclk_clk_n;
  input [0:0]pcie0_refclk_clk_p;
  input [0:0]pcie1_refclk_clk_n;
  input [0:0]pcie1_refclk_clk_p;
  input [7:0]pcie_mgt_0_rxn;
  input [7:0]pcie_mgt_0_rxp;
  output [7:0]pcie_mgt_0_txn;
  output [7:0]pcie_mgt_0_txp;
  input [7:0]pcie_mgt_1_rxn;
  input [7:0]pcie_mgt_1_rxp;
  output [7:0]pcie_mgt_1_txn;
  output [7:0]pcie_mgt_1_txp;
  input pcie_perst_l;

  wire [63:0]AXI_PCI00_araddr;
  wire [1:0]AXI_PCI00_arburst;
  wire [3:0]AXI_PCI00_arcache;
  wire [3:0]AXI_PCI00_arid;
  wire [7:0]AXI_PCI00_arlen;
  wire AXI_PCI00_arlock;
  wire [2:0]AXI_PCI00_arprot;
  wire [3:0]AXI_PCI00_arqos;
  wire AXI_PCI00_arready;
  wire [2:0]AXI_PCI00_arsize;
  wire AXI_PCI00_arvalid;
  wire [63:0]AXI_PCI00_awaddr;
  wire [1:0]AXI_PCI00_awburst;
  wire [3:0]AXI_PCI00_awcache;
  wire [3:0]AXI_PCI00_awid;
  wire [7:0]AXI_PCI00_awlen;
  wire AXI_PCI00_awlock;
  wire [2:0]AXI_PCI00_awprot;
  wire [3:0]AXI_PCI00_awqos;
  wire AXI_PCI00_awready;
  wire [2:0]AXI_PCI00_awsize;
  wire AXI_PCI00_awvalid;
  wire AXI_PCI00_bready;
  wire [1:0]AXI_PCI00_bresp;
  wire AXI_PCI00_bvalid;
  wire [511:0]AXI_PCI00_rdata;
  wire AXI_PCI00_rlast;
  wire AXI_PCI00_rready;
  wire [1:0]AXI_PCI00_rresp;
  wire AXI_PCI00_rvalid;
  wire [511:0]AXI_PCI00_wdata;
  wire AXI_PCI00_wlast;
  wire AXI_PCI00_wready;
  wire [63:0]AXI_PCI00_wstrb;
  wire AXI_PCI00_wvalid;
  wire [63:0]AXI_PCI01_araddr;
  wire [1:0]AXI_PCI01_arburst;
  wire [3:0]AXI_PCI01_arcache;
  wire [1:0]AXI_PCI01_arid;
  wire [7:0]AXI_PCI01_arlen;
  wire AXI_PCI01_arlock;
  wire [2:0]AXI_PCI01_arprot;
  wire [3:0]AXI_PCI01_arqos;
  wire AXI_PCI01_arready;
  wire [2:0]AXI_PCI01_arsize;
  wire AXI_PCI01_arvalid;
  wire [63:0]AXI_PCI01_awaddr;
  wire [1:0]AXI_PCI01_awburst;
  wire [3:0]AXI_PCI01_awcache;
  wire [1:0]AXI_PCI01_awid;
  wire [7:0]AXI_PCI01_awlen;
  wire AXI_PCI01_awlock;
  wire [2:0]AXI_PCI01_awprot;
  wire [3:0]AXI_PCI01_awqos;
  wire AXI_PCI01_awready;
  wire [2:0]AXI_PCI01_awsize;
  wire AXI_PCI01_awvalid;
  wire [1:0]AXI_PCI01_bid;
  wire AXI_PCI01_bready;
  wire [1:0]AXI_PCI01_bresp;
  wire AXI_PCI01_bvalid;
  wire [511:0]AXI_PCI01_rdata;
  wire [1:0]AXI_PCI01_rid;
  wire AXI_PCI01_rlast;
  wire AXI_PCI01_rready;
  wire [1:0]AXI_PCI01_rresp;
  wire AXI_PCI01_rvalid;
  wire [511:0]AXI_PCI01_wdata;
  wire AXI_PCI01_wlast;
  wire AXI_PCI01_wready;
  wire [63:0]AXI_PCI01_wstrb;
  wire AXI_PCI01_wvalid;
  wire [63:0]AXI_PCI10_araddr;
  wire [1:0]AXI_PCI10_arburst;
  wire [3:0]AXI_PCI10_arcache;
  wire [3:0]AXI_PCI10_arid;
  wire [7:0]AXI_PCI10_arlen;
  wire AXI_PCI10_arlock;
  wire [2:0]AXI_PCI10_arprot;
  wire [3:0]AXI_PCI10_arqos;
  wire AXI_PCI10_arready;
  wire [2:0]AXI_PCI10_arsize;
  wire AXI_PCI10_arvalid;
  wire [63:0]AXI_PCI10_awaddr;
  wire [1:0]AXI_PCI10_awburst;
  wire [3:0]AXI_PCI10_awcache;
  wire [3:0]AXI_PCI10_awid;
  wire [7:0]AXI_PCI10_awlen;
  wire AXI_PCI10_awlock;
  wire [2:0]AXI_PCI10_awprot;
  wire [3:0]AXI_PCI10_awqos;
  wire AXI_PCI10_awready;
  wire [2:0]AXI_PCI10_awsize;
  wire AXI_PCI10_awvalid;
  wire AXI_PCI10_bready;
  wire [1:0]AXI_PCI10_bresp;
  wire AXI_PCI10_bvalid;
  wire [511:0]AXI_PCI10_rdata;
  wire AXI_PCI10_rlast;
  wire AXI_PCI10_rready;
  wire [1:0]AXI_PCI10_rresp;
  wire AXI_PCI10_rvalid;
  wire [511:0]AXI_PCI10_wdata;
  wire AXI_PCI10_wlast;
  wire AXI_PCI10_wready;
  wire [63:0]AXI_PCI10_wstrb;
  wire AXI_PCI10_wvalid;
  wire [63:0]AXI_PCI11_araddr;
  wire [1:0]AXI_PCI11_arburst;
  wire [3:0]AXI_PCI11_arcache;
  wire [1:0]AXI_PCI11_arid;
  wire [7:0]AXI_PCI11_arlen;
  wire AXI_PCI11_arlock;
  wire [2:0]AXI_PCI11_arprot;
  wire [3:0]AXI_PCI11_arqos;
  wire AXI_PCI11_arready;
  wire [2:0]AXI_PCI11_arsize;
  wire AXI_PCI11_arvalid;
  wire [63:0]AXI_PCI11_awaddr;
  wire [1:0]AXI_PCI11_awburst;
  wire [3:0]AXI_PCI11_awcache;
  wire [1:0]AXI_PCI11_awid;
  wire [7:0]AXI_PCI11_awlen;
  wire AXI_PCI11_awlock;
  wire [2:0]AXI_PCI11_awprot;
  wire [3:0]AXI_PCI11_awqos;
  wire AXI_PCI11_awready;
  wire [2:0]AXI_PCI11_awsize;
  wire AXI_PCI11_awvalid;
  wire [1:0]AXI_PCI11_bid;
  wire AXI_PCI11_bready;
  wire [1:0]AXI_PCI11_bresp;
  wire AXI_PCI11_bvalid;
  wire [511:0]AXI_PCI11_rdata;
  wire [1:0]AXI_PCI11_rid;
  wire AXI_PCI11_rlast;
  wire AXI_PCI11_rready;
  wire [1:0]AXI_PCI11_rresp;
  wire AXI_PCI11_rvalid;
  wire [511:0]AXI_PCI11_wdata;
  wire AXI_PCI11_wlast;
  wire AXI_PCI11_wready;
  wire [63:0]AXI_PCI11_wstrb;
  wire AXI_PCI11_wvalid;
  wire [31:0]CMAC0_STAT_araddr;
  wire [2:0]CMAC0_STAT_arprot;
  wire CMAC0_STAT_arready;
  wire CMAC0_STAT_arvalid;
  wire [31:0]CMAC0_STAT_awaddr;
  wire [2:0]CMAC0_STAT_awprot;
  wire CMAC0_STAT_awready;
  wire CMAC0_STAT_awvalid;
  wire CMAC0_STAT_bready;
  wire [1:0]CMAC0_STAT_bresp;
  wire CMAC0_STAT_bvalid;
  wire [31:0]CMAC0_STAT_rdata;
  wire CMAC0_STAT_rready;
  wire [1:0]CMAC0_STAT_rresp;
  wire CMAC0_STAT_rvalid;
  wire [31:0]CMAC0_STAT_wdata;
  wire CMAC0_STAT_wready;
  wire [3:0]CMAC0_STAT_wstrb;
  wire CMAC0_STAT_wvalid;
  wire [31:0]CMAC1_STAT_araddr;
  wire [2:0]CMAC1_STAT_arprot;
  wire CMAC1_STAT_arready;
  wire CMAC1_STAT_arvalid;
  wire [31:0]CMAC1_STAT_awaddr;
  wire [2:0]CMAC1_STAT_awprot;
  wire CMAC1_STAT_awready;
  wire CMAC1_STAT_awvalid;
  wire CMAC1_STAT_bready;
  wire [1:0]CMAC1_STAT_bresp;
  wire CMAC1_STAT_bvalid;
  wire [31:0]CMAC1_STAT_rdata;
  wire CMAC1_STAT_rready;
  wire [1:0]CMAC1_STAT_rresp;
  wire CMAC1_STAT_rvalid;
  wire [31:0]CMAC1_STAT_wdata;
  wire CMAC1_STAT_wready;
  wire [3:0]CMAC1_STAT_wstrb;
  wire CMAC1_STAT_wvalid;
  wire [7:0]M00_AXI_araddr;
  wire [2:0]M00_AXI_arprot;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [7:0]M00_AXI_awaddr;
  wire [2:0]M00_AXI_awprot;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [7:0]M01_AXI_araddr;
  wire [2:0]M01_AXI_arprot;
  wire M01_AXI_arready;
  wire M01_AXI_arvalid;
  wire [7:0]M01_AXI_awaddr;
  wire [2:0]M01_AXI_awprot;
  wire M01_AXI_awready;
  wire M01_AXI_awvalid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire [7:0]M05_AXI_araddr;
  wire [2:0]M05_AXI_arprot;
  wire M05_AXI_arready;
  wire M05_AXI_arvalid;
  wire [7:0]M05_AXI_awaddr;
  wire [2:0]M05_AXI_awprot;
  wire M05_AXI_awready;
  wire M05_AXI_awvalid;
  wire M05_AXI_bready;
  wire [1:0]M05_AXI_bresp;
  wire M05_AXI_bvalid;
  wire [31:0]M05_AXI_rdata;
  wire M05_AXI_rready;
  wire [1:0]M05_AXI_rresp;
  wire M05_AXI_rvalid;
  wire [31:0]M05_AXI_wdata;
  wire M05_AXI_wready;
  wire [3:0]M05_AXI_wstrb;
  wire M05_AXI_wvalid;
  wire [7:0]M06_AXI_araddr;
  wire [2:0]M06_AXI_arprot;
  wire M06_AXI_arready;
  wire M06_AXI_arvalid;
  wire [7:0]M06_AXI_awaddr;
  wire [2:0]M06_AXI_awprot;
  wire M06_AXI_awready;
  wire M06_AXI_awvalid;
  wire M06_AXI_bready;
  wire [1:0]M06_AXI_bresp;
  wire M06_AXI_bvalid;
  wire [31:0]M06_AXI_rdata;
  wire M06_AXI_rready;
  wire [1:0]M06_AXI_rresp;
  wire M06_AXI_rvalid;
  wire [31:0]M06_AXI_wdata;
  wire M06_AXI_wready;
  wire [3:0]M06_AXI_wstrb;
  wire M06_AXI_wvalid;
  wire [31:0]axi4_lite_plug_0_M_AXI_ARADDR;
  wire axi4_lite_plug_0_M_AXI_ARREADY;
  wire axi4_lite_plug_0_M_AXI_ARVALID;
  wire [31:0]axi4_lite_plug_0_M_AXI_AWADDR;
  wire axi4_lite_plug_0_M_AXI_AWREADY;
  wire axi4_lite_plug_0_M_AXI_AWVALID;
  wire axi4_lite_plug_0_M_AXI_BREADY;
  wire [1:0]axi4_lite_plug_0_M_AXI_BRESP;
  wire axi4_lite_plug_0_M_AXI_BVALID;
  wire [31:0]axi4_lite_plug_0_M_AXI_RDATA;
  wire axi4_lite_plug_0_M_AXI_RREADY;
  wire [1:0]axi4_lite_plug_0_M_AXI_RRESP;
  wire axi4_lite_plug_0_M_AXI_RVALID;
  wire [31:0]axi4_lite_plug_0_M_AXI_WDATA;
  wire axi4_lite_plug_0_M_AXI_WREADY;
  wire [3:0]axi4_lite_plug_0_M_AXI_WSTRB;
  wire axi4_lite_plug_0_M_AXI_WVALID;
  wire [31:0]axi4_lite_plug_1_M_AXI_ARADDR;
  wire axi4_lite_plug_1_M_AXI_ARREADY;
  wire axi4_lite_plug_1_M_AXI_ARVALID;
  wire [31:0]axi4_lite_plug_1_M_AXI_AWADDR;
  wire axi4_lite_plug_1_M_AXI_AWREADY;
  wire axi4_lite_plug_1_M_AXI_AWVALID;
  wire axi4_lite_plug_1_M_AXI_BREADY;
  wire [1:0]axi4_lite_plug_1_M_AXI_BRESP;
  wire axi4_lite_plug_1_M_AXI_BVALID;
  wire [31:0]axi4_lite_plug_1_M_AXI_RDATA;
  wire axi4_lite_plug_1_M_AXI_RREADY;
  wire [1:0]axi4_lite_plug_1_M_AXI_RRESP;
  wire axi4_lite_plug_1_M_AXI_RVALID;
  wire [31:0]axi4_lite_plug_1_M_AXI_WDATA;
  wire axi4_lite_plug_1_M_AXI_WREADY;
  wire [3:0]axi4_lite_plug_1_M_AXI_WSTRB;
  wire axi4_lite_plug_1_M_AXI_WVALID;
  wire axi_aclk;
  wire axi_aresetn;
  wire [0:0]clock_buffer_1_IBUF_DS_ODIV2;
  wire [0:0]clock_buffer_1_IBUF_DS_ODIV3;
  wire [0:0]clock_buffer_1_IBUF_OUT;
  wire [0:0]clock_buffer_1_IBUF_OUT1;
  wire [31:0]cmac_config_M_AXI_ARADDR;
  wire [2:0]cmac_config_M_AXI_ARPROT;
  wire cmac_config_M_AXI_ARREADY;
  wire cmac_config_M_AXI_ARVALID;
  wire [31:0]cmac_config_M_AXI_AWADDR;
  wire [2:0]cmac_config_M_AXI_AWPROT;
  wire cmac_config_M_AXI_AWREADY;
  wire cmac_config_M_AXI_AWVALID;
  wire cmac_config_M_AXI_BREADY;
  wire [1:0]cmac_config_M_AXI_BRESP;
  wire cmac_config_M_AXI_BVALID;
  wire [31:0]cmac_config_M_AXI_RDATA;
  wire cmac_config_M_AXI_RREADY;
  wire [1:0]cmac_config_M_AXI_RRESP;
  wire cmac_config_M_AXI_RVALID;
  wire [31:0]cmac_config_M_AXI_WDATA;
  wire cmac_config_M_AXI_WREADY;
  wire [3:0]cmac_config_M_AXI_WSTRB;
  wire cmac_config_M_AXI_WVALID;
  wire [0:0]pcie0_refclk_clk_n;
  wire [0:0]pcie0_refclk_clk_p;
  wire [0:0]pcie1_refclk_clk_n;
  wire [0:0]pcie1_refclk_clk_p;
  wire [63:0]pcie_bridge_0_M_AXI_B_ARADDR;
  wire [1:0]pcie_bridge_0_M_AXI_B_ARBURST;
  wire [3:0]pcie_bridge_0_M_AXI_B_ARCACHE;
  wire [3:0]pcie_bridge_0_M_AXI_B_ARID;
  wire [7:0]pcie_bridge_0_M_AXI_B_ARLEN;
  wire pcie_bridge_0_M_AXI_B_ARLOCK;
  wire [2:0]pcie_bridge_0_M_AXI_B_ARPROT;
  wire pcie_bridge_0_M_AXI_B_ARREADY;
  wire [2:0]pcie_bridge_0_M_AXI_B_ARSIZE;
  wire pcie_bridge_0_M_AXI_B_ARVALID;
  wire [63:0]pcie_bridge_0_M_AXI_B_AWADDR;
  wire [1:0]pcie_bridge_0_M_AXI_B_AWBURST;
  wire [3:0]pcie_bridge_0_M_AXI_B_AWCACHE;
  wire [3:0]pcie_bridge_0_M_AXI_B_AWID;
  wire [7:0]pcie_bridge_0_M_AXI_B_AWLEN;
  wire pcie_bridge_0_M_AXI_B_AWLOCK;
  wire [2:0]pcie_bridge_0_M_AXI_B_AWPROT;
  wire pcie_bridge_0_M_AXI_B_AWREADY;
  wire [2:0]pcie_bridge_0_M_AXI_B_AWSIZE;
  wire pcie_bridge_0_M_AXI_B_AWVALID;
  wire [3:0]pcie_bridge_0_M_AXI_B_BID;
  wire pcie_bridge_0_M_AXI_B_BREADY;
  wire [1:0]pcie_bridge_0_M_AXI_B_BRESP;
  wire pcie_bridge_0_M_AXI_B_BVALID;
  wire [511:0]pcie_bridge_0_M_AXI_B_RDATA;
  wire [3:0]pcie_bridge_0_M_AXI_B_RID;
  wire pcie_bridge_0_M_AXI_B_RLAST;
  wire pcie_bridge_0_M_AXI_B_RREADY;
  wire [1:0]pcie_bridge_0_M_AXI_B_RRESP;
  wire pcie_bridge_0_M_AXI_B_RVALID;
  wire [511:0]pcie_bridge_0_M_AXI_B_WDATA;
  wire pcie_bridge_0_M_AXI_B_WLAST;
  wire pcie_bridge_0_M_AXI_B_WREADY;
  wire [63:0]pcie_bridge_0_M_AXI_B_WSTRB;
  wire pcie_bridge_0_M_AXI_B_WVALID;
  wire pcie_bridge_1_axi_aclk;
  wire pcie_bridge_1_axi_aresetn;
  wire [7:0]pcie_mgt_0_rxn;
  wire [7:0]pcie_mgt_0_rxp;
  wire [7:0]pcie_mgt_0_txn;
  wire [7:0]pcie_mgt_0_txp;
  wire [7:0]pcie_mgt_1_rxn;
  wire [7:0]pcie_mgt_1_rxp;
  wire [7:0]pcie_mgt_1_txn;
  wire [7:0]pcie_mgt_1_txp;
  wire pcie_perst_l;
  wire [6:0]register_sc_M02_AXI_ARADDR;
  wire [2:0]register_sc_M02_AXI_ARPROT;
  wire register_sc_M02_AXI_ARREADY;
  wire register_sc_M02_AXI_ARVALID;
  wire [6:0]register_sc_M02_AXI_AWADDR;
  wire [2:0]register_sc_M02_AXI_AWPROT;
  wire register_sc_M02_AXI_AWREADY;
  wire register_sc_M02_AXI_AWVALID;
  wire register_sc_M02_AXI_BREADY;
  wire [1:0]register_sc_M02_AXI_BRESP;
  wire register_sc_M02_AXI_BVALID;
  wire [31:0]register_sc_M02_AXI_RDATA;
  wire register_sc_M02_AXI_RREADY;
  wire [1:0]register_sc_M02_AXI_RRESP;
  wire register_sc_M02_AXI_RVALID;
  wire [31:0]register_sc_M02_AXI_WDATA;
  wire register_sc_M02_AXI_WREADY;
  wire [3:0]register_sc_M02_AXI_WSTRB;
  wire register_sc_M02_AXI_WVALID;
  wire [63:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [63:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [511:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [511:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [63:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [63:0]smartconnect_1_M00_AXI_ARADDR;
  wire [1:0]smartconnect_1_M00_AXI_ARBURST;
  wire [7:0]smartconnect_1_M00_AXI_ARLEN;
  wire smartconnect_1_M00_AXI_ARREADY;
  wire [2:0]smartconnect_1_M00_AXI_ARSIZE;
  wire smartconnect_1_M00_AXI_ARVALID;
  wire [63:0]smartconnect_1_M00_AXI_AWADDR;
  wire [1:0]smartconnect_1_M00_AXI_AWBURST;
  wire [7:0]smartconnect_1_M00_AXI_AWLEN;
  wire smartconnect_1_M00_AXI_AWREADY;
  wire [2:0]smartconnect_1_M00_AXI_AWSIZE;
  wire smartconnect_1_M00_AXI_AWVALID;
  wire smartconnect_1_M00_AXI_BREADY;
  wire [1:0]smartconnect_1_M00_AXI_BRESP;
  wire smartconnect_1_M00_AXI_BVALID;
  wire [511:0]smartconnect_1_M00_AXI_RDATA;
  wire smartconnect_1_M00_AXI_RLAST;
  wire smartconnect_1_M00_AXI_RREADY;
  wire [1:0]smartconnect_1_M00_AXI_RRESP;
  wire smartconnect_1_M00_AXI_RVALID;
  wire [511:0]smartconnect_1_M00_AXI_WDATA;
  wire smartconnect_1_M00_AXI_WLAST;
  wire smartconnect_1_M00_AXI_WREADY;
  wire [63:0]smartconnect_1_M00_AXI_WSTRB;
  wire smartconnect_1_M00_AXI_WVALID;

  top_level_axi4_lite_plug_0_0 axi4_lite_plug_0
       (.M_AXI_ARADDR(axi4_lite_plug_0_M_AXI_ARADDR),
        .M_AXI_ARREADY(axi4_lite_plug_0_M_AXI_ARREADY),
        .M_AXI_ARVALID(axi4_lite_plug_0_M_AXI_ARVALID),
        .M_AXI_AWADDR(axi4_lite_plug_0_M_AXI_AWADDR),
        .M_AXI_AWREADY(axi4_lite_plug_0_M_AXI_AWREADY),
        .M_AXI_AWVALID(axi4_lite_plug_0_M_AXI_AWVALID),
        .M_AXI_BREADY(axi4_lite_plug_0_M_AXI_BREADY),
        .M_AXI_BRESP(axi4_lite_plug_0_M_AXI_BRESP),
        .M_AXI_BVALID(axi4_lite_plug_0_M_AXI_BVALID),
        .M_AXI_RDATA(axi4_lite_plug_0_M_AXI_RDATA),
        .M_AXI_RREADY(axi4_lite_plug_0_M_AXI_RREADY),
        .M_AXI_RRESP(axi4_lite_plug_0_M_AXI_RRESP),
        .M_AXI_RVALID(axi4_lite_plug_0_M_AXI_RVALID),
        .M_AXI_WDATA(axi4_lite_plug_0_M_AXI_WDATA),
        .M_AXI_WREADY(axi4_lite_plug_0_M_AXI_WREADY),
        .M_AXI_WSTRB(axi4_lite_plug_0_M_AXI_WSTRB),
        .M_AXI_WVALID(axi4_lite_plug_0_M_AXI_WVALID),
        .clk(axi_aclk));
  top_level_axi4_lite_plug_0_1 axi4_lite_plug_1
       (.M_AXI_ARADDR(axi4_lite_plug_1_M_AXI_ARADDR),
        .M_AXI_ARREADY(axi4_lite_plug_1_M_AXI_ARREADY),
        .M_AXI_ARVALID(axi4_lite_plug_1_M_AXI_ARVALID),
        .M_AXI_AWADDR(axi4_lite_plug_1_M_AXI_AWADDR),
        .M_AXI_AWREADY(axi4_lite_plug_1_M_AXI_AWREADY),
        .M_AXI_AWVALID(axi4_lite_plug_1_M_AXI_AWVALID),
        .M_AXI_BREADY(axi4_lite_plug_1_M_AXI_BREADY),
        .M_AXI_BRESP(axi4_lite_plug_1_M_AXI_BRESP),
        .M_AXI_BVALID(axi4_lite_plug_1_M_AXI_BVALID),
        .M_AXI_RDATA(axi4_lite_plug_1_M_AXI_RDATA),
        .M_AXI_RREADY(axi4_lite_plug_1_M_AXI_RREADY),
        .M_AXI_RRESP(axi4_lite_plug_1_M_AXI_RRESP),
        .M_AXI_RVALID(axi4_lite_plug_1_M_AXI_RVALID),
        .M_AXI_WDATA(axi4_lite_plug_1_M_AXI_WDATA),
        .M_AXI_WREADY(axi4_lite_plug_1_M_AXI_WREADY),
        .M_AXI_WSTRB(axi4_lite_plug_1_M_AXI_WSTRB),
        .M_AXI_WVALID(axi4_lite_plug_1_M_AXI_WVALID),
        .clk(pcie_bridge_1_axi_aclk));
  top_level_axi_revision_0_0 axi_revision
       (.AXI_ACLK(axi_aclk),
        .AXI_ARESETN(axi_aresetn),
        .S_AXI_ARADDR(register_sc_M02_AXI_ARADDR),
        .S_AXI_ARPROT(register_sc_M02_AXI_ARPROT),
        .S_AXI_ARREADY(register_sc_M02_AXI_ARREADY),
        .S_AXI_ARVALID(register_sc_M02_AXI_ARVALID),
        .S_AXI_AWADDR(register_sc_M02_AXI_AWADDR),
        .S_AXI_AWPROT(register_sc_M02_AXI_AWPROT),
        .S_AXI_AWREADY(register_sc_M02_AXI_AWREADY),
        .S_AXI_AWVALID(register_sc_M02_AXI_AWVALID),
        .S_AXI_BREADY(register_sc_M02_AXI_BREADY),
        .S_AXI_BRESP(register_sc_M02_AXI_BRESP),
        .S_AXI_BVALID(register_sc_M02_AXI_BVALID),
        .S_AXI_RDATA(register_sc_M02_AXI_RDATA),
        .S_AXI_RREADY(register_sc_M02_AXI_RREADY),
        .S_AXI_RRESP(register_sc_M02_AXI_RRESP),
        .S_AXI_RVALID(register_sc_M02_AXI_RVALID),
        .S_AXI_WDATA(register_sc_M02_AXI_WDATA),
        .S_AXI_WREADY(register_sc_M02_AXI_WREADY),
        .S_AXI_WSTRB(register_sc_M02_AXI_WSTRB),
        .S_AXI_WVALID(register_sc_M02_AXI_WVALID));
  top_level_util_ds_buf_0_0 clock_buffer_0
       (.IBUF_DS_N(pcie0_refclk_clk_n),
        .IBUF_DS_ODIV2(clock_buffer_1_IBUF_DS_ODIV2),
        .IBUF_DS_P(pcie0_refclk_clk_p),
        .IBUF_OUT(clock_buffer_1_IBUF_OUT));
  top_level_clock_buffer_0_0 clock_buffer_1
       (.IBUF_DS_N(pcie1_refclk_clk_n),
        .IBUF_DS_ODIV2(clock_buffer_1_IBUF_DS_ODIV3),
        .IBUF_DS_P(pcie1_refclk_clk_p),
        .IBUF_OUT(clock_buffer_1_IBUF_OUT1));
  top_level_cmac_config_0_0 cmac_config
       (.M_AXI_ARADDR(cmac_config_M_AXI_ARADDR),
        .M_AXI_ARPROT(cmac_config_M_AXI_ARPROT),
        .M_AXI_ARREADY(cmac_config_M_AXI_ARREADY),
        .M_AXI_ARVALID(cmac_config_M_AXI_ARVALID),
        .M_AXI_AWADDR(cmac_config_M_AXI_AWADDR),
        .M_AXI_AWPROT(cmac_config_M_AXI_AWPROT),
        .M_AXI_AWREADY(cmac_config_M_AXI_AWREADY),
        .M_AXI_AWVALID(cmac_config_M_AXI_AWVALID),
        .M_AXI_BREADY(cmac_config_M_AXI_BREADY),
        .M_AXI_BRESP(cmac_config_M_AXI_BRESP),
        .M_AXI_BVALID(cmac_config_M_AXI_BVALID),
        .M_AXI_RDATA(cmac_config_M_AXI_RDATA),
        .M_AXI_RREADY(cmac_config_M_AXI_RREADY),
        .M_AXI_RRESP(cmac_config_M_AXI_RRESP),
        .M_AXI_RVALID(cmac_config_M_AXI_RVALID),
        .M_AXI_WDATA(cmac_config_M_AXI_WDATA),
        .M_AXI_WREADY(cmac_config_M_AXI_WREADY),
        .M_AXI_WSTRB(cmac_config_M_AXI_WSTRB),
        .M_AXI_WVALID(cmac_config_M_AXI_WVALID),
        .clk(axi_aclk),
        .resetn(axi_aresetn));
  top_level_xdma_0_0 pcie_bridge_0
       (.axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .m_axib_araddr(pcie_bridge_0_M_AXI_B_ARADDR),
        .m_axib_arburst(pcie_bridge_0_M_AXI_B_ARBURST),
        .m_axib_arcache(pcie_bridge_0_M_AXI_B_ARCACHE),
        .m_axib_arid(pcie_bridge_0_M_AXI_B_ARID),
        .m_axib_arlen(pcie_bridge_0_M_AXI_B_ARLEN),
        .m_axib_arlock(pcie_bridge_0_M_AXI_B_ARLOCK),
        .m_axib_arprot(pcie_bridge_0_M_AXI_B_ARPROT),
        .m_axib_arready(pcie_bridge_0_M_AXI_B_ARREADY),
        .m_axib_arsize(pcie_bridge_0_M_AXI_B_ARSIZE),
        .m_axib_arvalid(pcie_bridge_0_M_AXI_B_ARVALID),
        .m_axib_awaddr(pcie_bridge_0_M_AXI_B_AWADDR),
        .m_axib_awburst(pcie_bridge_0_M_AXI_B_AWBURST),
        .m_axib_awcache(pcie_bridge_0_M_AXI_B_AWCACHE),
        .m_axib_awid(pcie_bridge_0_M_AXI_B_AWID),
        .m_axib_awlen(pcie_bridge_0_M_AXI_B_AWLEN),
        .m_axib_awlock(pcie_bridge_0_M_AXI_B_AWLOCK),
        .m_axib_awprot(pcie_bridge_0_M_AXI_B_AWPROT),
        .m_axib_awready(pcie_bridge_0_M_AXI_B_AWREADY),
        .m_axib_awsize(pcie_bridge_0_M_AXI_B_AWSIZE),
        .m_axib_awvalid(pcie_bridge_0_M_AXI_B_AWVALID),
        .m_axib_bid(pcie_bridge_0_M_AXI_B_BID),
        .m_axib_bready(pcie_bridge_0_M_AXI_B_BREADY),
        .m_axib_bresp(pcie_bridge_0_M_AXI_B_BRESP),
        .m_axib_bvalid(pcie_bridge_0_M_AXI_B_BVALID),
        .m_axib_rdata(pcie_bridge_0_M_AXI_B_RDATA),
        .m_axib_rid(pcie_bridge_0_M_AXI_B_RID),
        .m_axib_rlast(pcie_bridge_0_M_AXI_B_RLAST),
        .m_axib_rready(pcie_bridge_0_M_AXI_B_RREADY),
        .m_axib_rresp(pcie_bridge_0_M_AXI_B_RRESP),
        .m_axib_rvalid(pcie_bridge_0_M_AXI_B_RVALID),
        .m_axib_wdata(pcie_bridge_0_M_AXI_B_WDATA),
        .m_axib_wlast(pcie_bridge_0_M_AXI_B_WLAST),
        .m_axib_wready(pcie_bridge_0_M_AXI_B_WREADY),
        .m_axib_wstrb(pcie_bridge_0_M_AXI_B_WSTRB),
        .m_axib_wvalid(pcie_bridge_0_M_AXI_B_WVALID),
        .pci_exp_rxn(pcie_mgt_0_rxn),
        .pci_exp_rxp(pcie_mgt_0_rxp),
        .pci_exp_txn(pcie_mgt_0_txn),
        .pci_exp_txp(pcie_mgt_0_txp),
        .s_axib_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s_axib_arburst(smartconnect_0_M00_AXI_ARBURST),
        .s_axib_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_arlen(smartconnect_0_M00_AXI_ARLEN),
        .s_axib_arready(smartconnect_0_M00_AXI_ARREADY),
        .s_axib_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .s_axib_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s_axib_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s_axib_awburst(smartconnect_0_M00_AXI_AWBURST),
        .s_axib_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_awlen(smartconnect_0_M00_AXI_AWLEN),
        .s_axib_awready(smartconnect_0_M00_AXI_AWREADY),
        .s_axib_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .s_axib_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s_axib_bready(smartconnect_0_M00_AXI_BREADY),
        .s_axib_bresp(smartconnect_0_M00_AXI_BRESP),
        .s_axib_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s_axib_rdata(smartconnect_0_M00_AXI_RDATA),
        .s_axib_rlast(smartconnect_0_M00_AXI_RLAST),
        .s_axib_rready(smartconnect_0_M00_AXI_RREADY),
        .s_axib_rresp(smartconnect_0_M00_AXI_RRESP),
        .s_axib_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s_axib_wdata(smartconnect_0_M00_AXI_WDATA),
        .s_axib_wlast(smartconnect_0_M00_AXI_WLAST),
        .s_axib_wready(smartconnect_0_M00_AXI_WREADY),
        .s_axib_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .s_axib_wvalid(smartconnect_0_M00_AXI_WVALID),
        .s_axil_araddr(axi4_lite_plug_0_M_AXI_ARADDR),
        .s_axil_arprot({1'b0,1'b0,1'b0}),
        .s_axil_arready(axi4_lite_plug_0_M_AXI_ARREADY),
        .s_axil_arvalid(axi4_lite_plug_0_M_AXI_ARVALID),
        .s_axil_awaddr(axi4_lite_plug_0_M_AXI_AWADDR),
        .s_axil_awprot({1'b0,1'b0,1'b0}),
        .s_axil_awready(axi4_lite_plug_0_M_AXI_AWREADY),
        .s_axil_awvalid(axi4_lite_plug_0_M_AXI_AWVALID),
        .s_axil_bready(axi4_lite_plug_0_M_AXI_BREADY),
        .s_axil_bresp(axi4_lite_plug_0_M_AXI_BRESP),
        .s_axil_bvalid(axi4_lite_plug_0_M_AXI_BVALID),
        .s_axil_rdata(axi4_lite_plug_0_M_AXI_RDATA),
        .s_axil_rready(axi4_lite_plug_0_M_AXI_RREADY),
        .s_axil_rresp(axi4_lite_plug_0_M_AXI_RRESP),
        .s_axil_rvalid(axi4_lite_plug_0_M_AXI_RVALID),
        .s_axil_wdata(axi4_lite_plug_0_M_AXI_WDATA),
        .s_axil_wready(axi4_lite_plug_0_M_AXI_WREADY),
        .s_axil_wstrb(axi4_lite_plug_0_M_AXI_WSTRB),
        .s_axil_wvalid(axi4_lite_plug_0_M_AXI_WVALID),
        .sys_clk(clock_buffer_1_IBUF_DS_ODIV2),
        .sys_clk_gt(clock_buffer_1_IBUF_OUT),
        .sys_rst_n(pcie_perst_l),
        .usr_irq_req(1'b0));
  top_level_pcie_bridge_0_0 pcie_bridge_1
       (.axi_aclk(pcie_bridge_1_axi_aclk),
        .axi_aresetn(pcie_bridge_1_axi_aresetn),
        .pci_exp_rxn(pcie_mgt_1_rxn),
        .pci_exp_rxp(pcie_mgt_1_rxp),
        .pci_exp_txn(pcie_mgt_1_txn),
        .pci_exp_txp(pcie_mgt_1_txp),
        .s_axib_araddr(smartconnect_1_M00_AXI_ARADDR),
        .s_axib_arburst(smartconnect_1_M00_AXI_ARBURST),
        .s_axib_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_arlen(smartconnect_1_M00_AXI_ARLEN),
        .s_axib_arready(smartconnect_1_M00_AXI_ARREADY),
        .s_axib_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .s_axib_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .s_axib_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .s_axib_awburst(smartconnect_1_M00_AXI_AWBURST),
        .s_axib_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_awlen(smartconnect_1_M00_AXI_AWLEN),
        .s_axib_awready(smartconnect_1_M00_AXI_AWREADY),
        .s_axib_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_awsize(smartconnect_1_M00_AXI_AWSIZE),
        .s_axib_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .s_axib_bready(smartconnect_1_M00_AXI_BREADY),
        .s_axib_bresp(smartconnect_1_M00_AXI_BRESP),
        .s_axib_bvalid(smartconnect_1_M00_AXI_BVALID),
        .s_axib_rdata(smartconnect_1_M00_AXI_RDATA),
        .s_axib_rlast(smartconnect_1_M00_AXI_RLAST),
        .s_axib_rready(smartconnect_1_M00_AXI_RREADY),
        .s_axib_rresp(smartconnect_1_M00_AXI_RRESP),
        .s_axib_rvalid(smartconnect_1_M00_AXI_RVALID),
        .s_axib_wdata(smartconnect_1_M00_AXI_WDATA),
        .s_axib_wlast(smartconnect_1_M00_AXI_WLAST),
        .s_axib_wready(smartconnect_1_M00_AXI_WREADY),
        .s_axib_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .s_axib_wvalid(smartconnect_1_M00_AXI_WVALID),
        .s_axil_araddr(axi4_lite_plug_1_M_AXI_ARADDR),
        .s_axil_arprot({1'b0,1'b0,1'b0}),
        .s_axil_arready(axi4_lite_plug_1_M_AXI_ARREADY),
        .s_axil_arvalid(axi4_lite_plug_1_M_AXI_ARVALID),
        .s_axil_awaddr(axi4_lite_plug_1_M_AXI_AWADDR),
        .s_axil_awprot({1'b0,1'b0,1'b0}),
        .s_axil_awready(axi4_lite_plug_1_M_AXI_AWREADY),
        .s_axil_awvalid(axi4_lite_plug_1_M_AXI_AWVALID),
        .s_axil_bready(axi4_lite_plug_1_M_AXI_BREADY),
        .s_axil_bresp(axi4_lite_plug_1_M_AXI_BRESP),
        .s_axil_bvalid(axi4_lite_plug_1_M_AXI_BVALID),
        .s_axil_rdata(axi4_lite_plug_1_M_AXI_RDATA),
        .s_axil_rready(axi4_lite_plug_1_M_AXI_RREADY),
        .s_axil_rresp(axi4_lite_plug_1_M_AXI_RRESP),
        .s_axil_rvalid(axi4_lite_plug_1_M_AXI_RVALID),
        .s_axil_wdata(axi4_lite_plug_1_M_AXI_WDATA),
        .s_axil_wready(axi4_lite_plug_1_M_AXI_WREADY),
        .s_axil_wstrb(axi4_lite_plug_1_M_AXI_WSTRB),
        .s_axil_wvalid(axi4_lite_plug_1_M_AXI_WVALID),
        .sys_clk(clock_buffer_1_IBUF_DS_ODIV3),
        .sys_clk_gt(clock_buffer_1_IBUF_OUT1),
        .sys_rst_n(pcie_perst_l),
        .usr_irq_req(1'b0));
  top_level_smartconnect_2_0 register_sc
       (.M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awprot(M00_AXI_awprot),
        .M00_AXI_awready(M00_AXI_awready),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(M00_AXI_bresp),
        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wready(M00_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wvalid(M00_AXI_wvalid),
        .M01_AXI_araddr(M01_AXI_araddr),
        .M01_AXI_arprot(M01_AXI_arprot),
        .M01_AXI_arready(M01_AXI_arready),
        .M01_AXI_arvalid(M01_AXI_arvalid),
        .M01_AXI_awaddr(M01_AXI_awaddr),
        .M01_AXI_awprot(M01_AXI_awprot),
        .M01_AXI_awready(M01_AXI_awready),
        .M01_AXI_awvalid(M01_AXI_awvalid),
        .M01_AXI_bready(M01_AXI_bready),
        .M01_AXI_bresp(M01_AXI_bresp),
        .M01_AXI_bvalid(M01_AXI_bvalid),
        .M01_AXI_rdata(M01_AXI_rdata),
        .M01_AXI_rready(M01_AXI_rready),
        .M01_AXI_rresp(M01_AXI_rresp),
        .M01_AXI_rvalid(M01_AXI_rvalid),
        .M01_AXI_wdata(M01_AXI_wdata),
        .M01_AXI_wready(M01_AXI_wready),
        .M01_AXI_wstrb(M01_AXI_wstrb),
        .M01_AXI_wvalid(M01_AXI_wvalid),
        .M02_AXI_araddr(register_sc_M02_AXI_ARADDR),
        .M02_AXI_arprot(register_sc_M02_AXI_ARPROT),
        .M02_AXI_arready(register_sc_M02_AXI_ARREADY),
        .M02_AXI_arvalid(register_sc_M02_AXI_ARVALID),
        .M02_AXI_awaddr(register_sc_M02_AXI_AWADDR),
        .M02_AXI_awprot(register_sc_M02_AXI_AWPROT),
        .M02_AXI_awready(register_sc_M02_AXI_AWREADY),
        .M02_AXI_awvalid(register_sc_M02_AXI_AWVALID),
        .M02_AXI_bready(register_sc_M02_AXI_BREADY),
        .M02_AXI_bresp(register_sc_M02_AXI_BRESP),
        .M02_AXI_bvalid(register_sc_M02_AXI_BVALID),
        .M02_AXI_rdata(register_sc_M02_AXI_RDATA),
        .M02_AXI_rready(register_sc_M02_AXI_RREADY),
        .M02_AXI_rresp(register_sc_M02_AXI_RRESP),
        .M02_AXI_rvalid(register_sc_M02_AXI_RVALID),
        .M02_AXI_wdata(register_sc_M02_AXI_WDATA),
        .M02_AXI_wready(register_sc_M02_AXI_WREADY),
        .M02_AXI_wstrb(register_sc_M02_AXI_WSTRB),
        .M02_AXI_wvalid(register_sc_M02_AXI_WVALID),
        .M03_AXI_araddr(CMAC0_STAT_araddr),
        .M03_AXI_arprot(CMAC0_STAT_arprot),
        .M03_AXI_arready(CMAC0_STAT_arready),
        .M03_AXI_arvalid(CMAC0_STAT_arvalid),
        .M03_AXI_awaddr(CMAC0_STAT_awaddr),
        .M03_AXI_awprot(CMAC0_STAT_awprot),
        .M03_AXI_awready(CMAC0_STAT_awready),
        .M03_AXI_awvalid(CMAC0_STAT_awvalid),
        .M03_AXI_bready(CMAC0_STAT_bready),
        .M03_AXI_bresp(CMAC0_STAT_bresp),
        .M03_AXI_bvalid(CMAC0_STAT_bvalid),
        .M03_AXI_rdata(CMAC0_STAT_rdata),
        .M03_AXI_rready(CMAC0_STAT_rready),
        .M03_AXI_rresp(CMAC0_STAT_rresp),
        .M03_AXI_rvalid(CMAC0_STAT_rvalid),
        .M03_AXI_wdata(CMAC0_STAT_wdata),
        .M03_AXI_wready(CMAC0_STAT_wready),
        .M03_AXI_wstrb(CMAC0_STAT_wstrb),
        .M03_AXI_wvalid(CMAC0_STAT_wvalid),
        .M04_AXI_araddr(CMAC1_STAT_araddr),
        .M04_AXI_arprot(CMAC1_STAT_arprot),
        .M04_AXI_arready(CMAC1_STAT_arready),
        .M04_AXI_arvalid(CMAC1_STAT_arvalid),
        .M04_AXI_awaddr(CMAC1_STAT_awaddr),
        .M04_AXI_awprot(CMAC1_STAT_awprot),
        .M04_AXI_awready(CMAC1_STAT_awready),
        .M04_AXI_awvalid(CMAC1_STAT_awvalid),
        .M04_AXI_bready(CMAC1_STAT_bready),
        .M04_AXI_bresp(CMAC1_STAT_bresp),
        .M04_AXI_bvalid(CMAC1_STAT_bvalid),
        .M04_AXI_rdata(CMAC1_STAT_rdata),
        .M04_AXI_rready(CMAC1_STAT_rready),
        .M04_AXI_rresp(CMAC1_STAT_rresp),
        .M04_AXI_rvalid(CMAC1_STAT_rvalid),
        .M04_AXI_wdata(CMAC1_STAT_wdata),
        .M04_AXI_wready(CMAC1_STAT_wready),
        .M04_AXI_wstrb(CMAC1_STAT_wstrb),
        .M04_AXI_wvalid(CMAC1_STAT_wvalid),
        .M05_AXI_araddr(M05_AXI_araddr),
        .M05_AXI_arprot(M05_AXI_arprot),
        .M05_AXI_arready(M05_AXI_arready),
        .M05_AXI_arvalid(M05_AXI_arvalid),
        .M05_AXI_awaddr(M05_AXI_awaddr),
        .M05_AXI_awprot(M05_AXI_awprot),
        .M05_AXI_awready(M05_AXI_awready),
        .M05_AXI_awvalid(M05_AXI_awvalid),
        .M05_AXI_bready(M05_AXI_bready),
        .M05_AXI_bresp(M05_AXI_bresp),
        .M05_AXI_bvalid(M05_AXI_bvalid),
        .M05_AXI_rdata(M05_AXI_rdata),
        .M05_AXI_rready(M05_AXI_rready),
        .M05_AXI_rresp(M05_AXI_rresp),
        .M05_AXI_rvalid(M05_AXI_rvalid),
        .M05_AXI_wdata(M05_AXI_wdata),
        .M05_AXI_wready(M05_AXI_wready),
        .M05_AXI_wstrb(M05_AXI_wstrb),
        .M05_AXI_wvalid(M05_AXI_wvalid),
        .M06_AXI_araddr(M06_AXI_araddr),
        .M06_AXI_arprot(M06_AXI_arprot),
        .M06_AXI_arready(M06_AXI_arready),
        .M06_AXI_arvalid(M06_AXI_arvalid),
        .M06_AXI_awaddr(M06_AXI_awaddr),
        .M06_AXI_awprot(M06_AXI_awprot),
        .M06_AXI_awready(M06_AXI_awready),
        .M06_AXI_awvalid(M06_AXI_awvalid),
        .M06_AXI_bready(M06_AXI_bready),
        .M06_AXI_bresp(M06_AXI_bresp),
        .M06_AXI_bvalid(M06_AXI_bvalid),
        .M06_AXI_rdata(M06_AXI_rdata),
        .M06_AXI_rready(M06_AXI_rready),
        .M06_AXI_rresp(M06_AXI_rresp),
        .M06_AXI_rvalid(M06_AXI_rvalid),
        .M06_AXI_wdata(M06_AXI_wdata),
        .M06_AXI_wready(M06_AXI_wready),
        .M06_AXI_wstrb(M06_AXI_wstrb),
        .M06_AXI_wvalid(M06_AXI_wvalid),
        .S00_AXI_araddr(pcie_bridge_0_M_AXI_B_ARADDR),
        .S00_AXI_arburst(pcie_bridge_0_M_AXI_B_ARBURST),
        .S00_AXI_arcache(pcie_bridge_0_M_AXI_B_ARCACHE),
        .S00_AXI_arid(pcie_bridge_0_M_AXI_B_ARID),
        .S00_AXI_arlen(pcie_bridge_0_M_AXI_B_ARLEN),
        .S00_AXI_arlock(pcie_bridge_0_M_AXI_B_ARLOCK),
        .S00_AXI_arprot(pcie_bridge_0_M_AXI_B_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(pcie_bridge_0_M_AXI_B_ARREADY),
        .S00_AXI_arsize(pcie_bridge_0_M_AXI_B_ARSIZE),
        .S00_AXI_arvalid(pcie_bridge_0_M_AXI_B_ARVALID),
        .S00_AXI_awaddr(pcie_bridge_0_M_AXI_B_AWADDR),
        .S00_AXI_awburst(pcie_bridge_0_M_AXI_B_AWBURST),
        .S00_AXI_awcache(pcie_bridge_0_M_AXI_B_AWCACHE),
        .S00_AXI_awid(pcie_bridge_0_M_AXI_B_AWID),
        .S00_AXI_awlen(pcie_bridge_0_M_AXI_B_AWLEN),
        .S00_AXI_awlock(pcie_bridge_0_M_AXI_B_AWLOCK),
        .S00_AXI_awprot(pcie_bridge_0_M_AXI_B_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(pcie_bridge_0_M_AXI_B_AWREADY),
        .S00_AXI_awsize(pcie_bridge_0_M_AXI_B_AWSIZE),
        .S00_AXI_awvalid(pcie_bridge_0_M_AXI_B_AWVALID),
        .S00_AXI_bid(pcie_bridge_0_M_AXI_B_BID),
        .S00_AXI_bready(pcie_bridge_0_M_AXI_B_BREADY),
        .S00_AXI_bresp(pcie_bridge_0_M_AXI_B_BRESP),
        .S00_AXI_bvalid(pcie_bridge_0_M_AXI_B_BVALID),
        .S00_AXI_rdata(pcie_bridge_0_M_AXI_B_RDATA),
        .S00_AXI_rid(pcie_bridge_0_M_AXI_B_RID),
        .S00_AXI_rlast(pcie_bridge_0_M_AXI_B_RLAST),
        .S00_AXI_rready(pcie_bridge_0_M_AXI_B_RREADY),
        .S00_AXI_rresp(pcie_bridge_0_M_AXI_B_RRESP),
        .S00_AXI_rvalid(pcie_bridge_0_M_AXI_B_RVALID),
        .S00_AXI_wdata(pcie_bridge_0_M_AXI_B_WDATA),
        .S00_AXI_wlast(pcie_bridge_0_M_AXI_B_WLAST),
        .S00_AXI_wready(pcie_bridge_0_M_AXI_B_WREADY),
        .S00_AXI_wstrb(pcie_bridge_0_M_AXI_B_WSTRB),
        .S00_AXI_wvalid(pcie_bridge_0_M_AXI_B_WVALID),
        .S01_AXI_araddr(cmac_config_M_AXI_ARADDR),
        .S01_AXI_arprot(cmac_config_M_AXI_ARPROT),
        .S01_AXI_arready(cmac_config_M_AXI_ARREADY),
        .S01_AXI_arvalid(cmac_config_M_AXI_ARVALID),
        .S01_AXI_awaddr(cmac_config_M_AXI_AWADDR),
        .S01_AXI_awprot(cmac_config_M_AXI_AWPROT),
        .S01_AXI_awready(cmac_config_M_AXI_AWREADY),
        .S01_AXI_awvalid(cmac_config_M_AXI_AWVALID),
        .S01_AXI_bready(cmac_config_M_AXI_BREADY),
        .S01_AXI_bresp(cmac_config_M_AXI_BRESP),
        .S01_AXI_bvalid(cmac_config_M_AXI_BVALID),
        .S01_AXI_rdata(cmac_config_M_AXI_RDATA),
        .S01_AXI_rready(cmac_config_M_AXI_RREADY),
        .S01_AXI_rresp(cmac_config_M_AXI_RRESP),
        .S01_AXI_rvalid(cmac_config_M_AXI_RVALID),
        .S01_AXI_wdata(cmac_config_M_AXI_WDATA),
        .S01_AXI_wready(cmac_config_M_AXI_WREADY),
        .S01_AXI_wstrb(cmac_config_M_AXI_WSTRB),
        .S01_AXI_wvalid(cmac_config_M_AXI_WVALID),
        .aclk(axi_aclk),
        .aresetn(axi_aresetn));
  top_level_smartconnect_0_6 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(AXI_PCI00_araddr),
        .S00_AXI_arburst(AXI_PCI00_arburst),
        .S00_AXI_arcache(AXI_PCI00_arcache),
        .S00_AXI_arid(AXI_PCI00_arid),
        .S00_AXI_arlen(AXI_PCI00_arlen),
        .S00_AXI_arlock(AXI_PCI00_arlock),
        .S00_AXI_arprot(AXI_PCI00_arprot),
        .S00_AXI_arqos(AXI_PCI00_arqos),
        .S00_AXI_arready(AXI_PCI00_arready),
        .S00_AXI_arsize(AXI_PCI00_arsize),
        .S00_AXI_arvalid(AXI_PCI00_arvalid),
        .S00_AXI_awaddr(AXI_PCI00_awaddr),
        .S00_AXI_awburst(AXI_PCI00_awburst),
        .S00_AXI_awcache(AXI_PCI00_awcache),
        .S00_AXI_awid(AXI_PCI00_awid),
        .S00_AXI_awlen(AXI_PCI00_awlen),
        .S00_AXI_awlock(AXI_PCI00_awlock),
        .S00_AXI_awprot(AXI_PCI00_awprot),
        .S00_AXI_awqos(AXI_PCI00_awqos),
        .S00_AXI_awready(AXI_PCI00_awready),
        .S00_AXI_awsize(AXI_PCI00_awsize),
        .S00_AXI_awvalid(AXI_PCI00_awvalid),
        .S00_AXI_bready(AXI_PCI00_bready),
        .S00_AXI_bresp(AXI_PCI00_bresp),
        .S00_AXI_bvalid(AXI_PCI00_bvalid),
        .S00_AXI_rdata(AXI_PCI00_rdata),
        .S00_AXI_rlast(AXI_PCI00_rlast),
        .S00_AXI_rready(AXI_PCI00_rready),
        .S00_AXI_rresp(AXI_PCI00_rresp),
        .S00_AXI_rvalid(AXI_PCI00_rvalid),
        .S00_AXI_wdata(AXI_PCI00_wdata),
        .S00_AXI_wlast(AXI_PCI00_wlast),
        .S00_AXI_wready(AXI_PCI00_wready),
        .S00_AXI_wstrb(AXI_PCI00_wstrb),
        .S00_AXI_wvalid(AXI_PCI00_wvalid),
        .S01_AXI_araddr(AXI_PCI01_araddr),
        .S01_AXI_arburst(AXI_PCI01_arburst),
        .S01_AXI_arcache(AXI_PCI01_arcache),
        .S01_AXI_arid(AXI_PCI01_arid),
        .S01_AXI_arlen(AXI_PCI01_arlen),
        .S01_AXI_arlock(AXI_PCI01_arlock),
        .S01_AXI_arprot(AXI_PCI01_arprot),
        .S01_AXI_arqos(AXI_PCI01_arqos),
        .S01_AXI_arready(AXI_PCI01_arready),
        .S01_AXI_arsize(AXI_PCI01_arsize),
        .S01_AXI_arvalid(AXI_PCI01_arvalid),
        .S01_AXI_awaddr(AXI_PCI01_awaddr),
        .S01_AXI_awburst(AXI_PCI01_awburst),
        .S01_AXI_awcache(AXI_PCI01_awcache),
        .S01_AXI_awid(AXI_PCI01_awid),
        .S01_AXI_awlen(AXI_PCI01_awlen),
        .S01_AXI_awlock(AXI_PCI01_awlock),
        .S01_AXI_awprot(AXI_PCI01_awprot),
        .S01_AXI_awqos(AXI_PCI01_awqos),
        .S01_AXI_awready(AXI_PCI01_awready),
        .S01_AXI_awsize(AXI_PCI01_awsize),
        .S01_AXI_awvalid(AXI_PCI01_awvalid),
        .S01_AXI_bid(AXI_PCI01_bid),
        .S01_AXI_bready(AXI_PCI01_bready),
        .S01_AXI_bresp(AXI_PCI01_bresp),
        .S01_AXI_bvalid(AXI_PCI01_bvalid),
        .S01_AXI_rdata(AXI_PCI01_rdata),
        .S01_AXI_rid(AXI_PCI01_rid),
        .S01_AXI_rlast(AXI_PCI01_rlast),
        .S01_AXI_rready(AXI_PCI01_rready),
        .S01_AXI_rresp(AXI_PCI01_rresp),
        .S01_AXI_rvalid(AXI_PCI01_rvalid),
        .S01_AXI_wdata(AXI_PCI01_wdata),
        .S01_AXI_wlast(AXI_PCI01_wlast),
        .S01_AXI_wready(AXI_PCI01_wready),
        .S01_AXI_wstrb(AXI_PCI01_wstrb),
        .S01_AXI_wvalid(AXI_PCI01_wvalid),
        .aclk(axi_aclk),
        .aresetn(axi_aresetn));
  top_level_smartconnect_0_7 smartconnect_1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arlen(smartconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awlen(smartconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awready(smartconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_1_M00_AXI_WVALID),
        .S00_AXI_araddr(AXI_PCI10_araddr),
        .S00_AXI_arburst(AXI_PCI10_arburst),
        .S00_AXI_arcache(AXI_PCI10_arcache),
        .S00_AXI_arid(AXI_PCI10_arid),
        .S00_AXI_arlen(AXI_PCI10_arlen),
        .S00_AXI_arlock(AXI_PCI10_arlock),
        .S00_AXI_arprot(AXI_PCI10_arprot),
        .S00_AXI_arqos(AXI_PCI10_arqos),
        .S00_AXI_arready(AXI_PCI10_arready),
        .S00_AXI_arsize(AXI_PCI10_arsize),
        .S00_AXI_arvalid(AXI_PCI10_arvalid),
        .S00_AXI_awaddr(AXI_PCI10_awaddr),
        .S00_AXI_awburst(AXI_PCI10_awburst),
        .S00_AXI_awcache(AXI_PCI10_awcache),
        .S00_AXI_awid(AXI_PCI10_awid),
        .S00_AXI_awlen(AXI_PCI10_awlen),
        .S00_AXI_awlock(AXI_PCI10_awlock),
        .S00_AXI_awprot(AXI_PCI10_awprot),
        .S00_AXI_awqos(AXI_PCI10_awqos),
        .S00_AXI_awready(AXI_PCI10_awready),
        .S00_AXI_awsize(AXI_PCI10_awsize),
        .S00_AXI_awvalid(AXI_PCI10_awvalid),
        .S00_AXI_bready(AXI_PCI10_bready),
        .S00_AXI_bresp(AXI_PCI10_bresp),
        .S00_AXI_bvalid(AXI_PCI10_bvalid),
        .S00_AXI_rdata(AXI_PCI10_rdata),
        .S00_AXI_rlast(AXI_PCI10_rlast),
        .S00_AXI_rready(AXI_PCI10_rready),
        .S00_AXI_rresp(AXI_PCI10_rresp),
        .S00_AXI_rvalid(AXI_PCI10_rvalid),
        .S00_AXI_wdata(AXI_PCI10_wdata),
        .S00_AXI_wlast(AXI_PCI10_wlast),
        .S00_AXI_wready(AXI_PCI10_wready),
        .S00_AXI_wstrb(AXI_PCI10_wstrb),
        .S00_AXI_wvalid(AXI_PCI10_wvalid),
        .S01_AXI_araddr(AXI_PCI11_araddr),
        .S01_AXI_arburst(AXI_PCI11_arburst),
        .S01_AXI_arcache(AXI_PCI11_arcache),
        .S01_AXI_arid(AXI_PCI11_arid),
        .S01_AXI_arlen(AXI_PCI11_arlen),
        .S01_AXI_arlock(AXI_PCI11_arlock),
        .S01_AXI_arprot(AXI_PCI11_arprot),
        .S01_AXI_arqos(AXI_PCI11_arqos),
        .S01_AXI_arready(AXI_PCI11_arready),
        .S01_AXI_arsize(AXI_PCI11_arsize),
        .S01_AXI_arvalid(AXI_PCI11_arvalid),
        .S01_AXI_awaddr(AXI_PCI11_awaddr),
        .S01_AXI_awburst(AXI_PCI11_awburst),
        .S01_AXI_awcache(AXI_PCI11_awcache),
        .S01_AXI_awid(AXI_PCI11_awid),
        .S01_AXI_awlen(AXI_PCI11_awlen),
        .S01_AXI_awlock(AXI_PCI11_awlock),
        .S01_AXI_awprot(AXI_PCI11_awprot),
        .S01_AXI_awqos(AXI_PCI11_awqos),
        .S01_AXI_awready(AXI_PCI11_awready),
        .S01_AXI_awsize(AXI_PCI11_awsize),
        .S01_AXI_awvalid(AXI_PCI11_awvalid),
        .S01_AXI_bid(AXI_PCI11_bid),
        .S01_AXI_bready(AXI_PCI11_bready),
        .S01_AXI_bresp(AXI_PCI11_bresp),
        .S01_AXI_bvalid(AXI_PCI11_bvalid),
        .S01_AXI_rdata(AXI_PCI11_rdata),
        .S01_AXI_rid(AXI_PCI11_rid),
        .S01_AXI_rlast(AXI_PCI11_rlast),
        .S01_AXI_rready(AXI_PCI11_rready),
        .S01_AXI_rresp(AXI_PCI11_rresp),
        .S01_AXI_rvalid(AXI_PCI11_rvalid),
        .S01_AXI_wdata(AXI_PCI11_wdata),
        .S01_AXI_wlast(AXI_PCI11_wlast),
        .S01_AXI_wready(AXI_PCI11_wready),
        .S01_AXI_wstrb(AXI_PCI11_wstrb),
        .S01_AXI_wvalid(AXI_PCI11_wvalid),
        .aclk(pcie_bridge_1_axi_aclk),
        .aclk1(axi_aclk),
        .aresetn(pcie_bridge_1_axi_aresetn));
endmodule

module playback_imp_1PLRSXX
   (M_AXI_PCI_araddr,
    M_AXI_PCI_arburst,
    M_AXI_PCI_arcache,
    M_AXI_PCI_arid,
    M_AXI_PCI_arlen,
    M_AXI_PCI_arlock,
    M_AXI_PCI_arprot,
    M_AXI_PCI_arqos,
    M_AXI_PCI_arready,
    M_AXI_PCI_arsize,
    M_AXI_PCI_arvalid,
    M_AXI_PCI_awaddr,
    M_AXI_PCI_awburst,
    M_AXI_PCI_awcache,
    M_AXI_PCI_awid,
    M_AXI_PCI_awlen,
    M_AXI_PCI_awlock,
    M_AXI_PCI_awprot,
    M_AXI_PCI_awqos,
    M_AXI_PCI_awready,
    M_AXI_PCI_awsize,
    M_AXI_PCI_awvalid,
    M_AXI_PCI_bid,
    M_AXI_PCI_bready,
    M_AXI_PCI_bresp,
    M_AXI_PCI_bvalid,
    M_AXI_PCI_rdata,
    M_AXI_PCI_rid,
    M_AXI_PCI_rlast,
    M_AXI_PCI_rready,
    M_AXI_PCI_rresp,
    M_AXI_PCI_rvalid,
    M_AXI_PCI_wdata,
    M_AXI_PCI_wlast,
    M_AXI_PCI_wready,
    M_AXI_PCI_wstrb,
    M_AXI_PCI_wvalid,
    S_AXI_PB_araddr,
    S_AXI_PB_arprot,
    S_AXI_PB_arready,
    S_AXI_PB_arvalid,
    S_AXI_PB_awaddr,
    S_AXI_PB_awprot,
    S_AXI_PB_awready,
    S_AXI_PB_awvalid,
    S_AXI_PB_bready,
    S_AXI_PB_bresp,
    S_AXI_PB_bvalid,
    S_AXI_PB_rdata,
    S_AXI_PB_rready,
    S_AXI_PB_rresp,
    S_AXI_PB_rvalid,
    S_AXI_PB_wdata,
    S_AXI_PB_wready,
    S_AXI_PB_wstrb,
    S_AXI_PB_wvalid,
    axis_out_tdata,
    axis_out_tkeep,
    axis_out_tlast,
    axis_out_tready,
    axis_out_tvalid,
    cmac_clk,
    pb_mux_sel,
    sys_clk,
    sys_resetn);
  output [63:0]M_AXI_PCI_araddr;
  output [1:0]M_AXI_PCI_arburst;
  output [3:0]M_AXI_PCI_arcache;
  output [1:0]M_AXI_PCI_arid;
  output [7:0]M_AXI_PCI_arlen;
  output M_AXI_PCI_arlock;
  output [2:0]M_AXI_PCI_arprot;
  output [3:0]M_AXI_PCI_arqos;
  input M_AXI_PCI_arready;
  output [2:0]M_AXI_PCI_arsize;
  output M_AXI_PCI_arvalid;
  output [63:0]M_AXI_PCI_awaddr;
  output [1:0]M_AXI_PCI_awburst;
  output [3:0]M_AXI_PCI_awcache;
  output [1:0]M_AXI_PCI_awid;
  output [7:0]M_AXI_PCI_awlen;
  output M_AXI_PCI_awlock;
  output [2:0]M_AXI_PCI_awprot;
  output [3:0]M_AXI_PCI_awqos;
  input M_AXI_PCI_awready;
  output [2:0]M_AXI_PCI_awsize;
  output M_AXI_PCI_awvalid;
  input [1:0]M_AXI_PCI_bid;
  output M_AXI_PCI_bready;
  input [1:0]M_AXI_PCI_bresp;
  input M_AXI_PCI_bvalid;
  input [511:0]M_AXI_PCI_rdata;
  input [1:0]M_AXI_PCI_rid;
  input M_AXI_PCI_rlast;
  output M_AXI_PCI_rready;
  input [1:0]M_AXI_PCI_rresp;
  input M_AXI_PCI_rvalid;
  output [511:0]M_AXI_PCI_wdata;
  output M_AXI_PCI_wlast;
  input M_AXI_PCI_wready;
  output [63:0]M_AXI_PCI_wstrb;
  output M_AXI_PCI_wvalid;
  input [7:0]S_AXI_PB_araddr;
  input [2:0]S_AXI_PB_arprot;
  output S_AXI_PB_arready;
  input S_AXI_PB_arvalid;
  input [7:0]S_AXI_PB_awaddr;
  input [2:0]S_AXI_PB_awprot;
  output S_AXI_PB_awready;
  input S_AXI_PB_awvalid;
  input S_AXI_PB_bready;
  output [1:0]S_AXI_PB_bresp;
  output S_AXI_PB_bvalid;
  output [31:0]S_AXI_PB_rdata;
  input S_AXI_PB_rready;
  output [1:0]S_AXI_PB_rresp;
  output S_AXI_PB_rvalid;
  input [31:0]S_AXI_PB_wdata;
  output S_AXI_PB_wready;
  input [3:0]S_AXI_PB_wstrb;
  input S_AXI_PB_wvalid;
  output [511:0]axis_out_tdata;
  output [63:0]axis_out_tkeep;
  output axis_out_tlast;
  input axis_out_tready;
  output axis_out_tvalid;
  input cmac_clk;
  output pb_mux_sel;
  input sys_clk;
  input sys_resetn;

  wire [63:0]M_AXI_PCI_araddr;
  wire [1:0]M_AXI_PCI_arburst;
  wire [3:0]M_AXI_PCI_arcache;
  wire [1:0]M_AXI_PCI_arid;
  wire [7:0]M_AXI_PCI_arlen;
  wire M_AXI_PCI_arlock;
  wire [2:0]M_AXI_PCI_arprot;
  wire [3:0]M_AXI_PCI_arqos;
  wire M_AXI_PCI_arready;
  wire [2:0]M_AXI_PCI_arsize;
  wire M_AXI_PCI_arvalid;
  wire [63:0]M_AXI_PCI_awaddr;
  wire [1:0]M_AXI_PCI_awburst;
  wire [3:0]M_AXI_PCI_awcache;
  wire [1:0]M_AXI_PCI_awid;
  wire [7:0]M_AXI_PCI_awlen;
  wire M_AXI_PCI_awlock;
  wire [2:0]M_AXI_PCI_awprot;
  wire [3:0]M_AXI_PCI_awqos;
  wire M_AXI_PCI_awready;
  wire [2:0]M_AXI_PCI_awsize;
  wire M_AXI_PCI_awvalid;
  wire [1:0]M_AXI_PCI_bid;
  wire M_AXI_PCI_bready;
  wire [1:0]M_AXI_PCI_bresp;
  wire M_AXI_PCI_bvalid;
  wire [511:0]M_AXI_PCI_rdata;
  wire [1:0]M_AXI_PCI_rid;
  wire M_AXI_PCI_rlast;
  wire M_AXI_PCI_rready;
  wire [1:0]M_AXI_PCI_rresp;
  wire M_AXI_PCI_rvalid;
  wire [511:0]M_AXI_PCI_wdata;
  wire M_AXI_PCI_wlast;
  wire M_AXI_PCI_wready;
  wire [63:0]M_AXI_PCI_wstrb;
  wire M_AXI_PCI_wvalid;
  wire [7:0]S_AXI_PB_araddr;
  wire [2:0]S_AXI_PB_arprot;
  wire S_AXI_PB_arready;
  wire S_AXI_PB_arvalid;
  wire [7:0]S_AXI_PB_awaddr;
  wire [2:0]S_AXI_PB_awprot;
  wire S_AXI_PB_awready;
  wire S_AXI_PB_awvalid;
  wire S_AXI_PB_bready;
  wire [1:0]S_AXI_PB_bresp;
  wire S_AXI_PB_bvalid;
  wire [31:0]S_AXI_PB_rdata;
  wire S_AXI_PB_rready;
  wire [1:0]S_AXI_PB_rresp;
  wire S_AXI_PB_rvalid;
  wire [31:0]S_AXI_PB_wdata;
  wire S_AXI_PB_wready;
  wire [3:0]S_AXI_PB_wstrb;
  wire S_AXI_PB_wvalid;
  wire [511:0]axis_out_tdata;
  wire [63:0]axis_out_tkeep;
  wire axis_out_tlast;
  wire axis_out_tready;
  wire axis_out_tvalid;
  wire cmac_clk;
  wire cmac_resetn_sync_dest_arst;
  wire pb_buffer_0_busy;
  wire [31:0]pb_buffer_packets_out;
  wire [63:0]pb_control_pb_host_addr;
  wire [31:0]pb_control_pb_ipg;
  wire pb_control_pb_start_stb;
  wire [511:0]pb_emitter_axis_out_TDATA;
  wire [63:0]pb_emitter_axis_out_TKEEP;
  wire pb_emitter_axis_out_TLAST;
  wire pb_emitter_axis_out_TREADY;
  wire pb_emitter_axis_out_TVALID;
  wire pb_mux_sel;
  wire [31:0]pb_ram_reader_axis_ctl_TDATA;
  wire pb_ram_reader_axis_ctl_TREADY;
  wire pb_ram_reader_axis_ctl_TVALID;
  wire [511:0]pb_ram_reader_axis_out_TDATA;
  wire pb_ram_reader_axis_out_TREADY;
  wire pb_ram_reader_axis_out_TVALID;
  wire pb_ram_reader_busy;
  wire sys_clk;
  wire sys_resetn;

  top_level_cmac_resetn_sync_0 cmac_resetn_sync
       (.dest_arst(cmac_resetn_sync_dest_arst),
        .dest_clk(cmac_clk),
        .src_arst(sys_resetn));
  top_level_pb_buffer_1 pb_buffer
       (.async_ipg(pb_control_pb_ipg),
        .axis_ctl_tdata(pb_ram_reader_axis_ctl_TDATA),
        .axis_ctl_tready(pb_ram_reader_axis_ctl_TREADY),
        .axis_ctl_tvalid(pb_ram_reader_axis_ctl_TVALID),
        .axis_in_tdata(pb_emitter_axis_out_TDATA),
        .axis_in_tkeep(pb_emitter_axis_out_TKEEP),
        .axis_in_tlast(pb_emitter_axis_out_TLAST),
        .axis_in_tready(pb_emitter_axis_out_TREADY),
        .axis_in_tvalid(pb_emitter_axis_out_TVALID),
        .axis_out_tdata(axis_out_tdata),
        .axis_out_tkeep(axis_out_tkeep),
        .axis_out_tlast(axis_out_tlast),
        .axis_out_tready(axis_out_tready),
        .axis_out_tvalid(axis_out_tvalid),
        .busy(pb_buffer_0_busy),
        .clk(cmac_clk),
        .packets_out(pb_buffer_packets_out),
        .resetn(cmac_resetn_sync_dest_arst));
  top_level_pb_control_1 pb_control
       (.S_AXI_ARADDR(S_AXI_PB_araddr),
        .S_AXI_ARPROT(S_AXI_PB_arprot),
        .S_AXI_ARREADY(S_AXI_PB_arready),
        .S_AXI_ARVALID(S_AXI_PB_arvalid),
        .S_AXI_AWADDR(S_AXI_PB_awaddr),
        .S_AXI_AWPROT(S_AXI_PB_awprot),
        .S_AXI_AWREADY(S_AXI_PB_awready),
        .S_AXI_AWVALID(S_AXI_PB_awvalid),
        .S_AXI_BREADY(S_AXI_PB_bready),
        .S_AXI_BRESP(S_AXI_PB_bresp),
        .S_AXI_BVALID(S_AXI_PB_bvalid),
        .S_AXI_RDATA(S_AXI_PB_rdata),
        .S_AXI_RREADY(S_AXI_PB_rready),
        .S_AXI_RRESP(S_AXI_PB_rresp),
        .S_AXI_RVALID(S_AXI_PB_rvalid),
        .S_AXI_WDATA(S_AXI_PB_wdata),
        .S_AXI_WREADY(S_AXI_PB_wready),
        .S_AXI_WSTRB(S_AXI_PB_wstrb),
        .S_AXI_WVALID(S_AXI_PB_wvalid),
        .async_packets_sent(pb_buffer_packets_out),
        .clk(sys_clk),
        .pb_busy(pb_ram_reader_busy),
        .pb_host_addr(pb_control_pb_host_addr),
        .pb_ipg(pb_control_pb_ipg),
        .pb_mux_sel(pb_mux_sel),
        .pb_start_stb(pb_control_pb_start_stb),
        .resetn(sys_resetn));
  top_level_pb_emitter_1 pb_emitter
       (.axis_in_tdata(pb_ram_reader_axis_out_TDATA),
        .axis_in_tready(pb_ram_reader_axis_out_TREADY),
        .axis_in_tvalid({pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID}),
        .axis_out_tdata(pb_emitter_axis_out_TDATA),
        .axis_out_tkeep(pb_emitter_axis_out_TKEEP),
        .axis_out_tlast(pb_emitter_axis_out_TLAST),
        .axis_out_tready(pb_emitter_axis_out_TREADY),
        .axis_out_tvalid(pb_emitter_axis_out_TVALID),
        .clk(sys_clk),
        .cmac_clk(cmac_clk),
        .cmac_resetn(cmac_resetn_sync_dest_arst),
        .resetn(sys_resetn));
  top_level_pb_ram_reader_1 pb_ram_reader
       (.M_AXI_ARADDR(M_AXI_PCI_araddr),
        .M_AXI_ARBURST(M_AXI_PCI_arburst),
        .M_AXI_ARCACHE(M_AXI_PCI_arcache),
        .M_AXI_ARID(M_AXI_PCI_arid),
        .M_AXI_ARLEN(M_AXI_PCI_arlen),
        .M_AXI_ARLOCK(M_AXI_PCI_arlock),
        .M_AXI_ARPROT(M_AXI_PCI_arprot),
        .M_AXI_ARQOS(M_AXI_PCI_arqos),
        .M_AXI_ARREADY(M_AXI_PCI_arready),
        .M_AXI_ARSIZE(M_AXI_PCI_arsize),
        .M_AXI_ARVALID(M_AXI_PCI_arvalid),
        .M_AXI_AWADDR(M_AXI_PCI_awaddr),
        .M_AXI_AWBURST(M_AXI_PCI_awburst),
        .M_AXI_AWCACHE(M_AXI_PCI_awcache),
        .M_AXI_AWID(M_AXI_PCI_awid),
        .M_AXI_AWLEN(M_AXI_PCI_awlen),
        .M_AXI_AWLOCK(M_AXI_PCI_awlock),
        .M_AXI_AWPROT(M_AXI_PCI_awprot),
        .M_AXI_AWQOS(M_AXI_PCI_awqos),
        .M_AXI_AWREADY(M_AXI_PCI_awready),
        .M_AXI_AWSIZE(M_AXI_PCI_awsize),
        .M_AXI_AWVALID(M_AXI_PCI_awvalid),
        .M_AXI_BID(M_AXI_PCI_bid),
        .M_AXI_BREADY(M_AXI_PCI_bready),
        .M_AXI_BRESP(M_AXI_PCI_bresp),
        .M_AXI_BVALID(M_AXI_PCI_bvalid),
        .M_AXI_RDATA(M_AXI_PCI_rdata),
        .M_AXI_RID(M_AXI_PCI_rid),
        .M_AXI_RLAST(M_AXI_PCI_rlast),
        .M_AXI_RREADY(M_AXI_PCI_rready),
        .M_AXI_RRESP(M_AXI_PCI_rresp),
        .M_AXI_RVALID(M_AXI_PCI_rvalid),
        .M_AXI_WDATA(M_AXI_PCI_wdata),
        .M_AXI_WLAST(M_AXI_PCI_wlast),
        .M_AXI_WREADY(M_AXI_PCI_wready),
        .M_AXI_WSTRB(M_AXI_PCI_wstrb),
        .M_AXI_WVALID(M_AXI_PCI_wvalid),
        .async_buffer_busy(pb_buffer_0_busy),
        .axis_ctl_tdata(pb_ram_reader_axis_ctl_TDATA),
        .axis_ctl_tready(pb_ram_reader_axis_ctl_TREADY),
        .axis_ctl_tvalid(pb_ram_reader_axis_ctl_TVALID),
        .axis_out_tdata(pb_ram_reader_axis_out_TDATA),
        .axis_out_tready(pb_ram_reader_axis_out_TREADY),
        .axis_out_tvalid(pb_ram_reader_axis_out_TVALID),
        .busy(pb_ram_reader_busy),
        .clk(sys_clk),
        .cmac_clk(cmac_clk),
        .host_addr(pb_control_pb_host_addr),
        .resetn(sys_resetn),
        .start_stb(pb_control_pb_start_stb));
endmodule

module playback_imp_2QUTR1
   (M_AXI_PCI_araddr,
    M_AXI_PCI_arburst,
    M_AXI_PCI_arcache,
    M_AXI_PCI_arid,
    M_AXI_PCI_arlen,
    M_AXI_PCI_arlock,
    M_AXI_PCI_arprot,
    M_AXI_PCI_arqos,
    M_AXI_PCI_arready,
    M_AXI_PCI_arsize,
    M_AXI_PCI_arvalid,
    M_AXI_PCI_awaddr,
    M_AXI_PCI_awburst,
    M_AXI_PCI_awcache,
    M_AXI_PCI_awid,
    M_AXI_PCI_awlen,
    M_AXI_PCI_awlock,
    M_AXI_PCI_awprot,
    M_AXI_PCI_awqos,
    M_AXI_PCI_awready,
    M_AXI_PCI_awsize,
    M_AXI_PCI_awvalid,
    M_AXI_PCI_bid,
    M_AXI_PCI_bready,
    M_AXI_PCI_bresp,
    M_AXI_PCI_bvalid,
    M_AXI_PCI_rdata,
    M_AXI_PCI_rid,
    M_AXI_PCI_rlast,
    M_AXI_PCI_rready,
    M_AXI_PCI_rresp,
    M_AXI_PCI_rvalid,
    M_AXI_PCI_wdata,
    M_AXI_PCI_wlast,
    M_AXI_PCI_wready,
    M_AXI_PCI_wstrb,
    M_AXI_PCI_wvalid,
    S_AXI_PB_araddr,
    S_AXI_PB_arprot,
    S_AXI_PB_arready,
    S_AXI_PB_arvalid,
    S_AXI_PB_awaddr,
    S_AXI_PB_awprot,
    S_AXI_PB_awready,
    S_AXI_PB_awvalid,
    S_AXI_PB_bready,
    S_AXI_PB_bresp,
    S_AXI_PB_bvalid,
    S_AXI_PB_rdata,
    S_AXI_PB_rready,
    S_AXI_PB_rresp,
    S_AXI_PB_rvalid,
    S_AXI_PB_wdata,
    S_AXI_PB_wready,
    S_AXI_PB_wstrb,
    S_AXI_PB_wvalid,
    axis_out_tdata,
    axis_out_tkeep,
    axis_out_tlast,
    axis_out_tready,
    axis_out_tvalid,
    cmac_clk,
    pb_mux_sel,
    sys_clk,
    sys_resetn);
  output [63:0]M_AXI_PCI_araddr;
  output [1:0]M_AXI_PCI_arburst;
  output [3:0]M_AXI_PCI_arcache;
  output [1:0]M_AXI_PCI_arid;
  output [7:0]M_AXI_PCI_arlen;
  output M_AXI_PCI_arlock;
  output [2:0]M_AXI_PCI_arprot;
  output [3:0]M_AXI_PCI_arqos;
  input M_AXI_PCI_arready;
  output [2:0]M_AXI_PCI_arsize;
  output M_AXI_PCI_arvalid;
  output [63:0]M_AXI_PCI_awaddr;
  output [1:0]M_AXI_PCI_awburst;
  output [3:0]M_AXI_PCI_awcache;
  output [1:0]M_AXI_PCI_awid;
  output [7:0]M_AXI_PCI_awlen;
  output M_AXI_PCI_awlock;
  output [2:0]M_AXI_PCI_awprot;
  output [3:0]M_AXI_PCI_awqos;
  input M_AXI_PCI_awready;
  output [2:0]M_AXI_PCI_awsize;
  output M_AXI_PCI_awvalid;
  input [1:0]M_AXI_PCI_bid;
  output M_AXI_PCI_bready;
  input [1:0]M_AXI_PCI_bresp;
  input M_AXI_PCI_bvalid;
  input [511:0]M_AXI_PCI_rdata;
  input [1:0]M_AXI_PCI_rid;
  input M_AXI_PCI_rlast;
  output M_AXI_PCI_rready;
  input [1:0]M_AXI_PCI_rresp;
  input M_AXI_PCI_rvalid;
  output [511:0]M_AXI_PCI_wdata;
  output M_AXI_PCI_wlast;
  input M_AXI_PCI_wready;
  output [63:0]M_AXI_PCI_wstrb;
  output M_AXI_PCI_wvalid;
  input [7:0]S_AXI_PB_araddr;
  input [2:0]S_AXI_PB_arprot;
  output S_AXI_PB_arready;
  input S_AXI_PB_arvalid;
  input [7:0]S_AXI_PB_awaddr;
  input [2:0]S_AXI_PB_awprot;
  output S_AXI_PB_awready;
  input S_AXI_PB_awvalid;
  input S_AXI_PB_bready;
  output [1:0]S_AXI_PB_bresp;
  output S_AXI_PB_bvalid;
  output [31:0]S_AXI_PB_rdata;
  input S_AXI_PB_rready;
  output [1:0]S_AXI_PB_rresp;
  output S_AXI_PB_rvalid;
  input [31:0]S_AXI_PB_wdata;
  output S_AXI_PB_wready;
  input [3:0]S_AXI_PB_wstrb;
  input S_AXI_PB_wvalid;
  output [511:0]axis_out_tdata;
  output [63:0]axis_out_tkeep;
  output axis_out_tlast;
  input axis_out_tready;
  output axis_out_tvalid;
  input cmac_clk;
  output pb_mux_sel;
  input sys_clk;
  input sys_resetn;

  wire [63:0]M_AXI_PCI_araddr;
  wire [1:0]M_AXI_PCI_arburst;
  wire [3:0]M_AXI_PCI_arcache;
  wire [1:0]M_AXI_PCI_arid;
  wire [7:0]M_AXI_PCI_arlen;
  wire M_AXI_PCI_arlock;
  wire [2:0]M_AXI_PCI_arprot;
  wire [3:0]M_AXI_PCI_arqos;
  wire M_AXI_PCI_arready;
  wire [2:0]M_AXI_PCI_arsize;
  wire M_AXI_PCI_arvalid;
  wire [63:0]M_AXI_PCI_awaddr;
  wire [1:0]M_AXI_PCI_awburst;
  wire [3:0]M_AXI_PCI_awcache;
  wire [1:0]M_AXI_PCI_awid;
  wire [7:0]M_AXI_PCI_awlen;
  wire M_AXI_PCI_awlock;
  wire [2:0]M_AXI_PCI_awprot;
  wire [3:0]M_AXI_PCI_awqos;
  wire M_AXI_PCI_awready;
  wire [2:0]M_AXI_PCI_awsize;
  wire M_AXI_PCI_awvalid;
  wire [1:0]M_AXI_PCI_bid;
  wire M_AXI_PCI_bready;
  wire [1:0]M_AXI_PCI_bresp;
  wire M_AXI_PCI_bvalid;
  wire [511:0]M_AXI_PCI_rdata;
  wire [1:0]M_AXI_PCI_rid;
  wire M_AXI_PCI_rlast;
  wire M_AXI_PCI_rready;
  wire [1:0]M_AXI_PCI_rresp;
  wire M_AXI_PCI_rvalid;
  wire [511:0]M_AXI_PCI_wdata;
  wire M_AXI_PCI_wlast;
  wire M_AXI_PCI_wready;
  wire [63:0]M_AXI_PCI_wstrb;
  wire M_AXI_PCI_wvalid;
  wire [7:0]S_AXI_PB_araddr;
  wire [2:0]S_AXI_PB_arprot;
  wire S_AXI_PB_arready;
  wire S_AXI_PB_arvalid;
  wire [7:0]S_AXI_PB_awaddr;
  wire [2:0]S_AXI_PB_awprot;
  wire S_AXI_PB_awready;
  wire S_AXI_PB_awvalid;
  wire S_AXI_PB_bready;
  wire [1:0]S_AXI_PB_bresp;
  wire S_AXI_PB_bvalid;
  wire [31:0]S_AXI_PB_rdata;
  wire S_AXI_PB_rready;
  wire [1:0]S_AXI_PB_rresp;
  wire S_AXI_PB_rvalid;
  wire [31:0]S_AXI_PB_wdata;
  wire S_AXI_PB_wready;
  wire [3:0]S_AXI_PB_wstrb;
  wire S_AXI_PB_wvalid;
  wire [511:0]axis_out_tdata;
  wire [63:0]axis_out_tkeep;
  wire axis_out_tlast;
  wire axis_out_tready;
  wire axis_out_tvalid;
  wire cmac_clk;
  wire cmac_resetn_sync_dest_arst;
  wire pb_buffer_0_busy;
  wire [31:0]pb_buffer_packets_out;
  wire [63:0]pb_control_pb_host_addr;
  wire [31:0]pb_control_pb_ipg;
  wire pb_control_pb_start_stb;
  wire [511:0]pb_emitter_axis_out_TDATA;
  wire [63:0]pb_emitter_axis_out_TKEEP;
  wire pb_emitter_axis_out_TLAST;
  wire pb_emitter_axis_out_TREADY;
  wire pb_emitter_axis_out_TVALID;
  wire pb_mux_sel;
  wire [31:0]pb_ram_reader_axis_ctl_TDATA;
  wire pb_ram_reader_axis_ctl_TREADY;
  wire pb_ram_reader_axis_ctl_TVALID;
  wire [511:0]pb_ram_reader_axis_out_TDATA;
  wire pb_ram_reader_axis_out_TREADY;
  wire pb_ram_reader_axis_out_TVALID;
  wire pb_ram_reader_busy;
  wire sys_clk;
  wire sys_resetn;

  top_level_xpm_cdc_gen_0_4 cmac_resetn_sync
       (.dest_arst(cmac_resetn_sync_dest_arst),
        .dest_clk(cmac_clk),
        .src_arst(sys_resetn));
  top_level_pb_buffer_0_0 pb_buffer
       (.async_ipg(pb_control_pb_ipg),
        .axis_ctl_tdata(pb_ram_reader_axis_ctl_TDATA),
        .axis_ctl_tready(pb_ram_reader_axis_ctl_TREADY),
        .axis_ctl_tvalid(pb_ram_reader_axis_ctl_TVALID),
        .axis_in_tdata(pb_emitter_axis_out_TDATA),
        .axis_in_tkeep(pb_emitter_axis_out_TKEEP),
        .axis_in_tlast(pb_emitter_axis_out_TLAST),
        .axis_in_tready(pb_emitter_axis_out_TREADY),
        .axis_in_tvalid(pb_emitter_axis_out_TVALID),
        .axis_out_tdata(axis_out_tdata),
        .axis_out_tkeep(axis_out_tkeep),
        .axis_out_tlast(axis_out_tlast),
        .axis_out_tready(axis_out_tready),
        .axis_out_tvalid(axis_out_tvalid),
        .busy(pb_buffer_0_busy),
        .clk(cmac_clk),
        .packets_out(pb_buffer_packets_out),
        .resetn(cmac_resetn_sync_dest_arst));
  top_level_pb_control_0_0 pb_control
       (.S_AXI_ARADDR(S_AXI_PB_araddr),
        .S_AXI_ARPROT(S_AXI_PB_arprot),
        .S_AXI_ARREADY(S_AXI_PB_arready),
        .S_AXI_ARVALID(S_AXI_PB_arvalid),
        .S_AXI_AWADDR(S_AXI_PB_awaddr),
        .S_AXI_AWPROT(S_AXI_PB_awprot),
        .S_AXI_AWREADY(S_AXI_PB_awready),
        .S_AXI_AWVALID(S_AXI_PB_awvalid),
        .S_AXI_BREADY(S_AXI_PB_bready),
        .S_AXI_BRESP(S_AXI_PB_bresp),
        .S_AXI_BVALID(S_AXI_PB_bvalid),
        .S_AXI_RDATA(S_AXI_PB_rdata),
        .S_AXI_RREADY(S_AXI_PB_rready),
        .S_AXI_RRESP(S_AXI_PB_rresp),
        .S_AXI_RVALID(S_AXI_PB_rvalid),
        .S_AXI_WDATA(S_AXI_PB_wdata),
        .S_AXI_WREADY(S_AXI_PB_wready),
        .S_AXI_WSTRB(S_AXI_PB_wstrb),
        .S_AXI_WVALID(S_AXI_PB_wvalid),
        .async_packets_sent(pb_buffer_packets_out),
        .clk(sys_clk),
        .pb_busy(pb_ram_reader_busy),
        .pb_host_addr(pb_control_pb_host_addr),
        .pb_ipg(pb_control_pb_ipg),
        .pb_mux_sel(pb_mux_sel),
        .pb_start_stb(pb_control_pb_start_stb),
        .resetn(sys_resetn));
  top_level_pb_emitter_0_0 pb_emitter
       (.axis_in_tdata(pb_ram_reader_axis_out_TDATA),
        .axis_in_tready(pb_ram_reader_axis_out_TREADY),
        .axis_in_tvalid({pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID,pb_ram_reader_axis_out_TVALID}),
        .axis_out_tdata(pb_emitter_axis_out_TDATA),
        .axis_out_tkeep(pb_emitter_axis_out_TKEEP),
        .axis_out_tlast(pb_emitter_axis_out_TLAST),
        .axis_out_tready(pb_emitter_axis_out_TREADY),
        .axis_out_tvalid(pb_emitter_axis_out_TVALID),
        .clk(sys_clk),
        .cmac_clk(cmac_clk),
        .cmac_resetn(cmac_resetn_sync_dest_arst),
        .resetn(sys_resetn));
  top_level_pb_ram_reader_0_0 pb_ram_reader
       (.M_AXI_ARADDR(M_AXI_PCI_araddr),
        .M_AXI_ARBURST(M_AXI_PCI_arburst),
        .M_AXI_ARCACHE(M_AXI_PCI_arcache),
        .M_AXI_ARID(M_AXI_PCI_arid),
        .M_AXI_ARLEN(M_AXI_PCI_arlen),
        .M_AXI_ARLOCK(M_AXI_PCI_arlock),
        .M_AXI_ARPROT(M_AXI_PCI_arprot),
        .M_AXI_ARQOS(M_AXI_PCI_arqos),
        .M_AXI_ARREADY(M_AXI_PCI_arready),
        .M_AXI_ARSIZE(M_AXI_PCI_arsize),
        .M_AXI_ARVALID(M_AXI_PCI_arvalid),
        .M_AXI_AWADDR(M_AXI_PCI_awaddr),
        .M_AXI_AWBURST(M_AXI_PCI_awburst),
        .M_AXI_AWCACHE(M_AXI_PCI_awcache),
        .M_AXI_AWID(M_AXI_PCI_awid),
        .M_AXI_AWLEN(M_AXI_PCI_awlen),
        .M_AXI_AWLOCK(M_AXI_PCI_awlock),
        .M_AXI_AWPROT(M_AXI_PCI_awprot),
        .M_AXI_AWQOS(M_AXI_PCI_awqos),
        .M_AXI_AWREADY(M_AXI_PCI_awready),
        .M_AXI_AWSIZE(M_AXI_PCI_awsize),
        .M_AXI_AWVALID(M_AXI_PCI_awvalid),
        .M_AXI_BID(M_AXI_PCI_bid),
        .M_AXI_BREADY(M_AXI_PCI_bready),
        .M_AXI_BRESP(M_AXI_PCI_bresp),
        .M_AXI_BVALID(M_AXI_PCI_bvalid),
        .M_AXI_RDATA(M_AXI_PCI_rdata),
        .M_AXI_RID(M_AXI_PCI_rid),
        .M_AXI_RLAST(M_AXI_PCI_rlast),
        .M_AXI_RREADY(M_AXI_PCI_rready),
        .M_AXI_RRESP(M_AXI_PCI_rresp),
        .M_AXI_RVALID(M_AXI_PCI_rvalid),
        .M_AXI_WDATA(M_AXI_PCI_wdata),
        .M_AXI_WLAST(M_AXI_PCI_wlast),
        .M_AXI_WREADY(M_AXI_PCI_wready),
        .M_AXI_WSTRB(M_AXI_PCI_wstrb),
        .M_AXI_WVALID(M_AXI_PCI_wvalid),
        .async_buffer_busy(pb_buffer_0_busy),
        .axis_ctl_tdata(pb_ram_reader_axis_ctl_TDATA),
        .axis_ctl_tready(pb_ram_reader_axis_ctl_TREADY),
        .axis_ctl_tvalid(pb_ram_reader_axis_ctl_TVALID),
        .axis_out_tdata(pb_ram_reader_axis_out_TDATA),
        .axis_out_tready(pb_ram_reader_axis_out_TREADY),
        .axis_out_tvalid(pb_ram_reader_axis_out_TVALID),
        .busy(pb_ram_reader_busy),
        .clk(sys_clk),
        .cmac_clk(cmac_clk),
        .host_addr(pb_control_pb_host_addr),
        .resetn(sys_resetn),
        .start_stb(pb_control_pb_start_stb));
endmodule

(* CORE_GENERATION_INFO = "top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_level,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=101,numReposBlks=81,numNonXlnxBlks=0,numHierBlks=20,maxHierDepth=4,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=39,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "top_level.hwdef" *) 
module top_level
   (hbm0_refclk_clk_n,
    hbm0_refclk_clk_p,
    hbm1_refclk_clk_n,
    hbm1_refclk_clk_p,
    hbm_cattrip,
    pcie0_refclk_clk_n,
    pcie0_refclk_clk_p,
    pcie1_refclk_clk_n,
    pcie1_refclk_clk_p,
    pcie_mgt_0_rxn,
    pcie_mgt_0_rxp,
    pcie_mgt_0_txn,
    pcie_mgt_0_txp,
    pcie_mgt_1_rxn,
    pcie_mgt_1_rxp,
    pcie_mgt_1_txn,
    pcie_mgt_1_txp,
    pcie_perst_l,
    qsfp0_clk_clk_n,
    qsfp0_clk_clk_p,
    qsfp0_gt_grx_n,
    qsfp0_gt_grx_p,
    qsfp0_gt_gtx_n,
    qsfp0_gt_gtx_p,
    qsfp0_leds,
    qsfp1_clk_clk_n,
    qsfp1_clk_clk_p,
    qsfp1_gt_grx_n,
    qsfp1_gt_grx_p,
    qsfp1_gt_gtx_n,
    qsfp1_gt_gtx_p,
    qsfp1_leds);
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 hbm0_refclk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME hbm0_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]hbm0_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 hbm0_refclk CLK_P" *) input [0:0]hbm0_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 hbm1_refclk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME hbm1_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]hbm1_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 hbm1_refclk CLK_P" *) input [0:0]hbm1_refclk_clk_p;
  output [0:0]hbm_cattrip;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie0_refclk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie0_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie0_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie0_refclk CLK_P" *) input [0:0]pcie0_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie1_refclk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie1_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie1_refclk CLK_P" *) input [0:0]pcie1_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_0 rxn" *) (* X_INTERFACE_MODE = "Master" *) input [7:0]pcie_mgt_0_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_0 rxp" *) input [7:0]pcie_mgt_0_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_0 txn" *) output [7:0]pcie_mgt_0_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_0 txp" *) output [7:0]pcie_mgt_0_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_1 rxn" *) (* X_INTERFACE_MODE = "Master" *) input [7:0]pcie_mgt_1_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_1 rxp" *) input [7:0]pcie_mgt_1_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_1 txn" *) output [7:0]pcie_mgt_1_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_1 txp" *) output [7:0]pcie_mgt_1_txp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_PERST_L RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_PERST_L, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input pcie_perst_l;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_clk, CAN_DEBUG false, FREQ_HZ 161132812" *) input qsfp0_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_P" *) input qsfp0_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_gt, CAN_DEBUG false" *) input [3:0]qsfp0_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_P" *) input [3:0]qsfp0_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_N" *) output [3:0]qsfp0_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_P" *) output [3:0]qsfp0_gt_gtx_p;
  output [2:0]qsfp0_leds;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_clk, CAN_DEBUG false, FREQ_HZ 161132812" *) input qsfp1_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_P" *) input qsfp1_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_gt, CAN_DEBUG false" *) input [3:0]qsfp1_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_P" *) input [3:0]qsfp1_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_N" *) output [3:0]qsfp1_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_P" *) output [3:0]qsfp1_gt_gtx_p;
  output [2:0]qsfp1_leds;

  wire [63:0]AXI_PCI11_1_ARADDR;
  wire [1:0]AXI_PCI11_1_ARBURST;
  wire [3:0]AXI_PCI11_1_ARCACHE;
  wire [1:0]AXI_PCI11_1_ARID;
  wire [7:0]AXI_PCI11_1_ARLEN;
  wire AXI_PCI11_1_ARLOCK;
  wire [2:0]AXI_PCI11_1_ARPROT;
  wire [3:0]AXI_PCI11_1_ARQOS;
  wire AXI_PCI11_1_ARREADY;
  wire [2:0]AXI_PCI11_1_ARSIZE;
  wire AXI_PCI11_1_ARVALID;
  wire [63:0]AXI_PCI11_1_AWADDR;
  wire [1:0]AXI_PCI11_1_AWBURST;
  wire [3:0]AXI_PCI11_1_AWCACHE;
  wire [1:0]AXI_PCI11_1_AWID;
  wire [7:0]AXI_PCI11_1_AWLEN;
  wire AXI_PCI11_1_AWLOCK;
  wire [2:0]AXI_PCI11_1_AWPROT;
  wire [3:0]AXI_PCI11_1_AWQOS;
  wire AXI_PCI11_1_AWREADY;
  wire [2:0]AXI_PCI11_1_AWSIZE;
  wire AXI_PCI11_1_AWVALID;
  wire [1:0]AXI_PCI11_1_BID;
  wire AXI_PCI11_1_BREADY;
  wire [1:0]AXI_PCI11_1_BRESP;
  wire AXI_PCI11_1_BVALID;
  wire [511:0]AXI_PCI11_1_RDATA;
  wire [1:0]AXI_PCI11_1_RID;
  wire AXI_PCI11_1_RLAST;
  wire AXI_PCI11_1_RREADY;
  wire [1:0]AXI_PCI11_1_RRESP;
  wire AXI_PCI11_1_RVALID;
  wire [511:0]AXI_PCI11_1_WDATA;
  wire AXI_PCI11_1_WLAST;
  wire AXI_PCI11_1_WREADY;
  wire [63:0]AXI_PCI11_1_WSTRB;
  wire AXI_PCI11_1_WVALID;
  wire [7:0]S_AXI_1_ARADDR;
  wire [2:0]S_AXI_1_ARPROT;
  wire S_AXI_1_ARREADY;
  wire S_AXI_1_ARVALID;
  wire [7:0]S_AXI_1_AWADDR;
  wire [2:0]S_AXI_1_AWPROT;
  wire S_AXI_1_AWREADY;
  wire S_AXI_1_AWVALID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire [7:0]S_AXI_2_ARADDR;
  wire [2:0]S_AXI_2_ARPROT;
  wire S_AXI_2_ARREADY;
  wire S_AXI_2_ARVALID;
  wire [7:0]S_AXI_2_AWADDR;
  wire [2:0]S_AXI_2_AWPROT;
  wire S_AXI_2_AWREADY;
  wire S_AXI_2_AWVALID;
  wire S_AXI_2_BREADY;
  wire [1:0]S_AXI_2_BRESP;
  wire S_AXI_2_BVALID;
  wire [31:0]S_AXI_2_RDATA;
  wire S_AXI_2_RREADY;
  wire [1:0]S_AXI_2_RRESP;
  wire S_AXI_2_RVALID;
  wire [31:0]S_AXI_2_WDATA;
  wire S_AXI_2_WREADY;
  wire [3:0]S_AXI_2_WSTRB;
  wire S_AXI_2_WVALID;
  wire [7:0]S_AXI_PB_1_ARADDR;
  wire [2:0]S_AXI_PB_1_ARPROT;
  wire S_AXI_PB_1_ARREADY;
  wire S_AXI_PB_1_ARVALID;
  wire [7:0]S_AXI_PB_1_AWADDR;
  wire [2:0]S_AXI_PB_1_AWPROT;
  wire S_AXI_PB_1_AWREADY;
  wire S_AXI_PB_1_AWVALID;
  wire S_AXI_PB_1_BREADY;
  wire [1:0]S_AXI_PB_1_BRESP;
  wire S_AXI_PB_1_BVALID;
  wire [31:0]S_AXI_PB_1_RDATA;
  wire S_AXI_PB_1_RREADY;
  wire [1:0]S_AXI_PB_1_RRESP;
  wire S_AXI_PB_1_RVALID;
  wire [31:0]S_AXI_PB_1_WDATA;
  wire S_AXI_PB_1_WREADY;
  wire [3:0]S_AXI_PB_1_WSTRB;
  wire S_AXI_PB_1_WVALID;
  wire [7:0]S_AXI_PB_2_ARADDR;
  wire [2:0]S_AXI_PB_2_ARPROT;
  wire S_AXI_PB_2_ARREADY;
  wire S_AXI_PB_2_ARVALID;
  wire [7:0]S_AXI_PB_2_AWADDR;
  wire [2:0]S_AXI_PB_2_AWPROT;
  wire S_AXI_PB_2_AWREADY;
  wire S_AXI_PB_2_AWVALID;
  wire S_AXI_PB_2_BREADY;
  wire [1:0]S_AXI_PB_2_BRESP;
  wire S_AXI_PB_2_BVALID;
  wire [31:0]S_AXI_PB_2_RDATA;
  wire S_AXI_PB_2_RREADY;
  wire [1:0]S_AXI_PB_2_RRESP;
  wire S_AXI_PB_2_RVALID;
  wire [31:0]S_AXI_PB_2_WDATA;
  wire S_AXI_PB_2_WREADY;
  wire [3:0]S_AXI_PB_2_WSTRB;
  wire S_AXI_PB_2_WVALID;
  wire [511:0]axis_in_1_TDATA;
  wire [63:0]axis_in_1_TKEEP;
  wire axis_in_1_TLAST;
  wire axis_in_1_TVALID;
  wire [63:0]channel_0_M_AXI_PB_ARADDR;
  wire [1:0]channel_0_M_AXI_PB_ARBURST;
  wire [3:0]channel_0_M_AXI_PB_ARCACHE;
  wire [1:0]channel_0_M_AXI_PB_ARID;
  wire [7:0]channel_0_M_AXI_PB_ARLEN;
  wire channel_0_M_AXI_PB_ARLOCK;
  wire [2:0]channel_0_M_AXI_PB_ARPROT;
  wire [3:0]channel_0_M_AXI_PB_ARQOS;
  wire channel_0_M_AXI_PB_ARREADY;
  wire [2:0]channel_0_M_AXI_PB_ARSIZE;
  wire channel_0_M_AXI_PB_ARVALID;
  wire [63:0]channel_0_M_AXI_PB_AWADDR;
  wire [1:0]channel_0_M_AXI_PB_AWBURST;
  wire [3:0]channel_0_M_AXI_PB_AWCACHE;
  wire [1:0]channel_0_M_AXI_PB_AWID;
  wire [7:0]channel_0_M_AXI_PB_AWLEN;
  wire channel_0_M_AXI_PB_AWLOCK;
  wire [2:0]channel_0_M_AXI_PB_AWPROT;
  wire [3:0]channel_0_M_AXI_PB_AWQOS;
  wire channel_0_M_AXI_PB_AWREADY;
  wire [2:0]channel_0_M_AXI_PB_AWSIZE;
  wire channel_0_M_AXI_PB_AWVALID;
  wire [1:0]channel_0_M_AXI_PB_BID;
  wire channel_0_M_AXI_PB_BREADY;
  wire [1:0]channel_0_M_AXI_PB_BRESP;
  wire channel_0_M_AXI_PB_BVALID;
  wire [511:0]channel_0_M_AXI_PB_RDATA;
  wire [1:0]channel_0_M_AXI_PB_RID;
  wire channel_0_M_AXI_PB_RLAST;
  wire channel_0_M_AXI_PB_RREADY;
  wire [1:0]channel_0_M_AXI_PB_RRESP;
  wire channel_0_M_AXI_PB_RVALID;
  wire [511:0]channel_0_M_AXI_PB_WDATA;
  wire channel_0_M_AXI_PB_WLAST;
  wire channel_0_M_AXI_PB_WREADY;
  wire [63:0]channel_0_M_AXI_PB_WSTRB;
  wire channel_0_M_AXI_PB_WVALID;
  wire [63:0]channel_0_PCI_AXI_ARADDR;
  wire [1:0]channel_0_PCI_AXI_ARBURST;
  wire [3:0]channel_0_PCI_AXI_ARCACHE;
  wire [3:0]channel_0_PCI_AXI_ARID;
  wire [7:0]channel_0_PCI_AXI_ARLEN;
  wire channel_0_PCI_AXI_ARLOCK;
  wire [2:0]channel_0_PCI_AXI_ARPROT;
  wire [3:0]channel_0_PCI_AXI_ARQOS;
  wire channel_0_PCI_AXI_ARREADY;
  wire [2:0]channel_0_PCI_AXI_ARSIZE;
  wire channel_0_PCI_AXI_ARVALID;
  wire [63:0]channel_0_PCI_AXI_AWADDR;
  wire [1:0]channel_0_PCI_AXI_AWBURST;
  wire [3:0]channel_0_PCI_AXI_AWCACHE;
  wire [3:0]channel_0_PCI_AXI_AWID;
  wire [7:0]channel_0_PCI_AXI_AWLEN;
  wire channel_0_PCI_AXI_AWLOCK;
  wire [2:0]channel_0_PCI_AXI_AWPROT;
  wire [3:0]channel_0_PCI_AXI_AWQOS;
  wire channel_0_PCI_AXI_AWREADY;
  wire [2:0]channel_0_PCI_AXI_AWSIZE;
  wire channel_0_PCI_AXI_AWVALID;
  wire channel_0_PCI_AXI_BREADY;
  wire [1:0]channel_0_PCI_AXI_BRESP;
  wire channel_0_PCI_AXI_BVALID;
  wire [511:0]channel_0_PCI_AXI_RDATA;
  wire channel_0_PCI_AXI_RLAST;
  wire channel_0_PCI_AXI_RREADY;
  wire [1:0]channel_0_PCI_AXI_RRESP;
  wire channel_0_PCI_AXI_RVALID;
  wire [511:0]channel_0_PCI_AXI_WDATA;
  wire channel_0_PCI_AXI_WLAST;
  wire channel_0_PCI_AXI_WREADY;
  wire [63:0]channel_0_PCI_AXI_WSTRB;
  wire channel_0_PCI_AXI_WVALID;
  wire [511:0]channel_0_axis_pb_out_TDATA;
  wire [63:0]channel_0_axis_pb_out_TKEEP;
  wire channel_0_axis_pb_out_TLAST;
  wire channel_0_axis_pb_out_TREADY;
  wire channel_0_axis_pb_out_TVALID;
  wire channel_0_hbm_cattrip;
  wire [63:0]channel_1_PCI_AXI_ARADDR;
  wire [1:0]channel_1_PCI_AXI_ARBURST;
  wire [3:0]channel_1_PCI_AXI_ARCACHE;
  wire [3:0]channel_1_PCI_AXI_ARID;
  wire [7:0]channel_1_PCI_AXI_ARLEN;
  wire channel_1_PCI_AXI_ARLOCK;
  wire [2:0]channel_1_PCI_AXI_ARPROT;
  wire [3:0]channel_1_PCI_AXI_ARQOS;
  wire channel_1_PCI_AXI_ARREADY;
  wire [2:0]channel_1_PCI_AXI_ARSIZE;
  wire channel_1_PCI_AXI_ARVALID;
  wire [63:0]channel_1_PCI_AXI_AWADDR;
  wire [1:0]channel_1_PCI_AXI_AWBURST;
  wire [3:0]channel_1_PCI_AXI_AWCACHE;
  wire [3:0]channel_1_PCI_AXI_AWID;
  wire [7:0]channel_1_PCI_AXI_AWLEN;
  wire channel_1_PCI_AXI_AWLOCK;
  wire [2:0]channel_1_PCI_AXI_AWPROT;
  wire [3:0]channel_1_PCI_AXI_AWQOS;
  wire channel_1_PCI_AXI_AWREADY;
  wire [2:0]channel_1_PCI_AXI_AWSIZE;
  wire channel_1_PCI_AXI_AWVALID;
  wire channel_1_PCI_AXI_BREADY;
  wire [1:0]channel_1_PCI_AXI_BRESP;
  wire channel_1_PCI_AXI_BVALID;
  wire [511:0]channel_1_PCI_AXI_RDATA;
  wire channel_1_PCI_AXI_RLAST;
  wire channel_1_PCI_AXI_RREADY;
  wire [1:0]channel_1_PCI_AXI_RRESP;
  wire channel_1_PCI_AXI_RVALID;
  wire [511:0]channel_1_PCI_AXI_WDATA;
  wire channel_1_PCI_AXI_WLAST;
  wire channel_1_PCI_AXI_WREADY;
  wire [63:0]channel_1_PCI_AXI_WSTRB;
  wire channel_1_PCI_AXI_WVALID;
  wire [511:0]channel_1_axis_pb_out_TDATA;
  wire [63:0]channel_1_axis_pb_out_TKEEP;
  wire channel_1_axis_pb_out_TLAST;
  wire channel_1_axis_pb_out_TREADY;
  wire channel_1_axis_pb_out_TVALID;
  wire channel_1_hbm_cattrip;
  wire channel_1_pb_mux_sel;
  wire cmac_clk_1;
  wire cmac_clk_2;
  wire [511:0]ethernet_axis_rx0_TDATA;
  wire [63:0]ethernet_axis_rx0_TKEEP;
  wire ethernet_axis_rx0_TLAST;
  wire ethernet_axis_rx0_TVALID;
  wire [1:0]ethernet_link_status;
  wire [511:0]feeder_axis_out0_TDATA;
  wire [63:0]feeder_axis_out0_TKEEP;
  wire feeder_axis_out0_TLAST;
  wire feeder_axis_out0_TREADY;
  wire feeder_axis_out0_TVALID;
  wire [511:0]feeder_axis_out1_TDATA;
  wire [63:0]feeder_axis_out1_TKEEP;
  wire feeder_axis_out1_TLAST;
  wire feeder_axis_out1_TREADY;
  wire feeder_axis_out1_TVALID;
  wire [0:0]hbm0_refclk_clk_n;
  wire [0:0]hbm0_refclk_clk_p;
  wire [0:0]hbm1_refclk_clk_n;
  wire [0:0]hbm1_refclk_clk_p;
  wire [0:0]hbm_cattrip;
  wire [0:0]pcie0_refclk_clk_n;
  wire [0:0]pcie0_refclk_clk_p;
  wire [0:0]pcie1_refclk_clk_n;
  wire [0:0]pcie1_refclk_clk_p;
  wire pcie_axi_aclk;
  wire pcie_axi_aresetn;
  wire [7:0]pcie_mgt_0_rxn;
  wire [7:0]pcie_mgt_0_rxp;
  wire [7:0]pcie_mgt_0_txn;
  wire [7:0]pcie_mgt_0_txp;
  wire [7:0]pcie_mgt_1_rxn;
  wire [7:0]pcie_mgt_1_rxp;
  wire [7:0]pcie_mgt_1_txn;
  wire [7:0]pcie_mgt_1_txp;
  wire pcie_perst_l;
  wire qsfp0_clk_clk_n;
  wire qsfp0_clk_clk_p;
  wire [3:0]qsfp0_gt_grx_n;
  wire [3:0]qsfp0_gt_grx_p;
  wire [3:0]qsfp0_gt_gtx_n;
  wire [3:0]qsfp0_gt_gtx_p;
  wire [2:0]qsfp0_leds;
  wire qsfp1_clk_clk_n;
  wire qsfp1_clk_clk_p;
  wire [3:0]qsfp1_gt_grx_n;
  wire [3:0]qsfp1_gt_grx_p;
  wire [3:0]qsfp1_gt_gtx_n;
  wire [3:0]qsfp1_gt_gtx_p;
  wire [2:0]qsfp1_leds;
  wire [31:0]s0_axi_stat_1_ARADDR;
  wire [2:0]s0_axi_stat_1_ARPROT;
  wire s0_axi_stat_1_ARREADY;
  wire s0_axi_stat_1_ARVALID;
  wire [31:0]s0_axi_stat_1_AWADDR;
  wire [2:0]s0_axi_stat_1_AWPROT;
  wire s0_axi_stat_1_AWREADY;
  wire s0_axi_stat_1_AWVALID;
  wire s0_axi_stat_1_BREADY;
  wire [1:0]s0_axi_stat_1_BRESP;
  wire s0_axi_stat_1_BVALID;
  wire [31:0]s0_axi_stat_1_RDATA;
  wire s0_axi_stat_1_RREADY;
  wire [1:0]s0_axi_stat_1_RRESP;
  wire s0_axi_stat_1_RVALID;
  wire [31:0]s0_axi_stat_1_WDATA;
  wire s0_axi_stat_1_WREADY;
  wire [3:0]s0_axi_stat_1_WSTRB;
  wire s0_axi_stat_1_WVALID;
  wire [31:0]s1_axi_stat_1_ARADDR;
  wire [2:0]s1_axi_stat_1_ARPROT;
  wire s1_axi_stat_1_ARREADY;
  wire s1_axi_stat_1_ARVALID;
  wire [31:0]s1_axi_stat_1_AWADDR;
  wire [2:0]s1_axi_stat_1_AWPROT;
  wire s1_axi_stat_1_AWREADY;
  wire s1_axi_stat_1_AWVALID;
  wire s1_axi_stat_1_BREADY;
  wire [1:0]s1_axi_stat_1_BRESP;
  wire s1_axi_stat_1_BVALID;
  wire [31:0]s1_axi_stat_1_RDATA;
  wire s1_axi_stat_1_RREADY;
  wire [1:0]s1_axi_stat_1_RRESP;
  wire s1_axi_stat_1_RVALID;
  wire [31:0]s1_axi_stat_1_WDATA;
  wire s1_axi_stat_1_WREADY;
  wire [3:0]s1_axi_stat_1_WSTRB;
  wire s1_axi_stat_1_WVALID;
  wire tx0_mux_sel_1;

  channel_0_imp_3EIWA1 channel_0
       (.M_AXI_PB_araddr(channel_0_M_AXI_PB_ARADDR),
        .M_AXI_PB_arburst(channel_0_M_AXI_PB_ARBURST),
        .M_AXI_PB_arcache(channel_0_M_AXI_PB_ARCACHE),
        .M_AXI_PB_arid(channel_0_M_AXI_PB_ARID),
        .M_AXI_PB_arlen(channel_0_M_AXI_PB_ARLEN),
        .M_AXI_PB_arlock(channel_0_M_AXI_PB_ARLOCK),
        .M_AXI_PB_arprot(channel_0_M_AXI_PB_ARPROT),
        .M_AXI_PB_arqos(channel_0_M_AXI_PB_ARQOS),
        .M_AXI_PB_arready(channel_0_M_AXI_PB_ARREADY),
        .M_AXI_PB_arsize(channel_0_M_AXI_PB_ARSIZE),
        .M_AXI_PB_arvalid(channel_0_M_AXI_PB_ARVALID),
        .M_AXI_PB_awaddr(channel_0_M_AXI_PB_AWADDR),
        .M_AXI_PB_awburst(channel_0_M_AXI_PB_AWBURST),
        .M_AXI_PB_awcache(channel_0_M_AXI_PB_AWCACHE),
        .M_AXI_PB_awid(channel_0_M_AXI_PB_AWID),
        .M_AXI_PB_awlen(channel_0_M_AXI_PB_AWLEN),
        .M_AXI_PB_awlock(channel_0_M_AXI_PB_AWLOCK),
        .M_AXI_PB_awprot(channel_0_M_AXI_PB_AWPROT),
        .M_AXI_PB_awqos(channel_0_M_AXI_PB_AWQOS),
        .M_AXI_PB_awready(channel_0_M_AXI_PB_AWREADY),
        .M_AXI_PB_awsize(channel_0_M_AXI_PB_AWSIZE),
        .M_AXI_PB_awvalid(channel_0_M_AXI_PB_AWVALID),
        .M_AXI_PB_bid(channel_0_M_AXI_PB_BID),
        .M_AXI_PB_bready(channel_0_M_AXI_PB_BREADY),
        .M_AXI_PB_bresp(channel_0_M_AXI_PB_BRESP),
        .M_AXI_PB_bvalid(channel_0_M_AXI_PB_BVALID),
        .M_AXI_PB_rdata(channel_0_M_AXI_PB_RDATA),
        .M_AXI_PB_rid(channel_0_M_AXI_PB_RID),
        .M_AXI_PB_rlast(channel_0_M_AXI_PB_RLAST),
        .M_AXI_PB_rready(channel_0_M_AXI_PB_RREADY),
        .M_AXI_PB_rresp(channel_0_M_AXI_PB_RRESP),
        .M_AXI_PB_rvalid(channel_0_M_AXI_PB_RVALID),
        .M_AXI_PB_wdata(channel_0_M_AXI_PB_WDATA),
        .M_AXI_PB_wlast(channel_0_M_AXI_PB_WLAST),
        .M_AXI_PB_wready(channel_0_M_AXI_PB_WREADY),
        .M_AXI_PB_wstrb(channel_0_M_AXI_PB_WSTRB),
        .M_AXI_PB_wvalid(channel_0_M_AXI_PB_WVALID),
        .PCI_AXI_araddr(channel_0_PCI_AXI_ARADDR),
        .PCI_AXI_arburst(channel_0_PCI_AXI_ARBURST),
        .PCI_AXI_arcache(channel_0_PCI_AXI_ARCACHE),
        .PCI_AXI_arid(channel_0_PCI_AXI_ARID),
        .PCI_AXI_arlen(channel_0_PCI_AXI_ARLEN),
        .PCI_AXI_arlock(channel_0_PCI_AXI_ARLOCK),
        .PCI_AXI_arprot(channel_0_PCI_AXI_ARPROT),
        .PCI_AXI_arqos(channel_0_PCI_AXI_ARQOS),
        .PCI_AXI_arready(channel_0_PCI_AXI_ARREADY),
        .PCI_AXI_arsize(channel_0_PCI_AXI_ARSIZE),
        .PCI_AXI_arvalid(channel_0_PCI_AXI_ARVALID),
        .PCI_AXI_awaddr(channel_0_PCI_AXI_AWADDR),
        .PCI_AXI_awburst(channel_0_PCI_AXI_AWBURST),
        .PCI_AXI_awcache(channel_0_PCI_AXI_AWCACHE),
        .PCI_AXI_awid(channel_0_PCI_AXI_AWID),
        .PCI_AXI_awlen(channel_0_PCI_AXI_AWLEN),
        .PCI_AXI_awlock(channel_0_PCI_AXI_AWLOCK),
        .PCI_AXI_awprot(channel_0_PCI_AXI_AWPROT),
        .PCI_AXI_awqos(channel_0_PCI_AXI_AWQOS),
        .PCI_AXI_awready(channel_0_PCI_AXI_AWREADY),
        .PCI_AXI_awsize(channel_0_PCI_AXI_AWSIZE),
        .PCI_AXI_awvalid(channel_0_PCI_AXI_AWVALID),
        .PCI_AXI_bready(channel_0_PCI_AXI_BREADY),
        .PCI_AXI_bresp(channel_0_PCI_AXI_BRESP),
        .PCI_AXI_bvalid(channel_0_PCI_AXI_BVALID),
        .PCI_AXI_rdata(channel_0_PCI_AXI_RDATA),
        .PCI_AXI_rlast(channel_0_PCI_AXI_RLAST),
        .PCI_AXI_rready(channel_0_PCI_AXI_RREADY),
        .PCI_AXI_rresp(channel_0_PCI_AXI_RRESP),
        .PCI_AXI_rvalid(channel_0_PCI_AXI_RVALID),
        .PCI_AXI_wdata(channel_0_PCI_AXI_WDATA),
        .PCI_AXI_wlast(channel_0_PCI_AXI_WLAST),
        .PCI_AXI_wready(channel_0_PCI_AXI_WREADY),
        .PCI_AXI_wstrb(channel_0_PCI_AXI_WSTRB),
        .PCI_AXI_wvalid(channel_0_PCI_AXI_WVALID),
        .S_AXI_CTL_araddr(S_AXI_1_ARADDR),
        .S_AXI_CTL_arprot(S_AXI_1_ARPROT),
        .S_AXI_CTL_arready(S_AXI_1_ARREADY),
        .S_AXI_CTL_arvalid(S_AXI_1_ARVALID),
        .S_AXI_CTL_awaddr(S_AXI_1_AWADDR),
        .S_AXI_CTL_awprot(S_AXI_1_AWPROT),
        .S_AXI_CTL_awready(S_AXI_1_AWREADY),
        .S_AXI_CTL_awvalid(S_AXI_1_AWVALID),
        .S_AXI_CTL_bready(S_AXI_1_BREADY),
        .S_AXI_CTL_bresp(S_AXI_1_BRESP),
        .S_AXI_CTL_bvalid(S_AXI_1_BVALID),
        .S_AXI_CTL_rdata(S_AXI_1_RDATA),
        .S_AXI_CTL_rready(S_AXI_1_RREADY),
        .S_AXI_CTL_rresp(S_AXI_1_RRESP),
        .S_AXI_CTL_rvalid(S_AXI_1_RVALID),
        .S_AXI_CTL_wdata(S_AXI_1_WDATA),
        .S_AXI_CTL_wready(S_AXI_1_WREADY),
        .S_AXI_CTL_wstrb(S_AXI_1_WSTRB),
        .S_AXI_CTL_wvalid(S_AXI_1_WVALID),
        .S_AXI_PB_araddr(S_AXI_PB_1_ARADDR),
        .S_AXI_PB_arprot(S_AXI_PB_1_ARPROT),
        .S_AXI_PB_arready(S_AXI_PB_1_ARREADY),
        .S_AXI_PB_arvalid(S_AXI_PB_1_ARVALID),
        .S_AXI_PB_awaddr(S_AXI_PB_1_AWADDR),
        .S_AXI_PB_awprot(S_AXI_PB_1_AWPROT),
        .S_AXI_PB_awready(S_AXI_PB_1_AWREADY),
        .S_AXI_PB_awvalid(S_AXI_PB_1_AWVALID),
        .S_AXI_PB_bready(S_AXI_PB_1_BREADY),
        .S_AXI_PB_bresp(S_AXI_PB_1_BRESP),
        .S_AXI_PB_bvalid(S_AXI_PB_1_BVALID),
        .S_AXI_PB_rdata(S_AXI_PB_1_RDATA),
        .S_AXI_PB_rready(S_AXI_PB_1_RREADY),
        .S_AXI_PB_rresp(S_AXI_PB_1_RRESP),
        .S_AXI_PB_rvalid(S_AXI_PB_1_RVALID),
        .S_AXI_PB_wdata(S_AXI_PB_1_WDATA),
        .S_AXI_PB_wready(S_AXI_PB_1_WREADY),
        .S_AXI_PB_wstrb(S_AXI_PB_1_WSTRB),
        .S_AXI_PB_wvalid(S_AXI_PB_1_WVALID),
        .async_link_status(ethernet_link_status),
        .axis_in_tdata(ethernet_axis_rx0_TDATA),
        .axis_in_tkeep(ethernet_axis_rx0_TKEEP),
        .axis_in_tlast(ethernet_axis_rx0_TLAST),
        .axis_in_tvalid(ethernet_axis_rx0_TVALID),
        .axis_pb_out_tdata(channel_0_axis_pb_out_TDATA),
        .axis_pb_out_tkeep(channel_0_axis_pb_out_TKEEP),
        .axis_pb_out_tlast(channel_0_axis_pb_out_TLAST),
        .axis_pb_out_tready(channel_0_axis_pb_out_TREADY),
        .axis_pb_out_tvalid(channel_0_axis_pb_out_TVALID),
        .axis_pg_out_tdata(feeder_axis_out0_TDATA),
        .axis_pg_out_tkeep(feeder_axis_out0_TKEEP),
        .axis_pg_out_tlast(feeder_axis_out0_TLAST),
        .axis_pg_out_tready(feeder_axis_out0_TREADY),
        .axis_pg_out_tvalid(feeder_axis_out0_TVALID),
        .cmac_clk(cmac_clk_1),
        .hbm_cattrip(channel_0_hbm_cattrip),
        .hbm_refclk_clk_n(hbm0_refclk_clk_n),
        .hbm_refclk_clk_p(hbm0_refclk_clk_p),
        .pb_mux_sel(tx0_mux_sel_1),
        .resetn(pcie_axi_aresetn),
        .sys_clk(pcie_axi_aclk));
  channel_1_imp_1R4OFYV channel_1
       (.M_AXI_PCI_araddr(AXI_PCI11_1_ARADDR),
        .M_AXI_PCI_arburst(AXI_PCI11_1_ARBURST),
        .M_AXI_PCI_arcache(AXI_PCI11_1_ARCACHE),
        .M_AXI_PCI_arid(AXI_PCI11_1_ARID),
        .M_AXI_PCI_arlen(AXI_PCI11_1_ARLEN),
        .M_AXI_PCI_arlock(AXI_PCI11_1_ARLOCK),
        .M_AXI_PCI_arprot(AXI_PCI11_1_ARPROT),
        .M_AXI_PCI_arqos(AXI_PCI11_1_ARQOS),
        .M_AXI_PCI_arready(AXI_PCI11_1_ARREADY),
        .M_AXI_PCI_arsize(AXI_PCI11_1_ARSIZE),
        .M_AXI_PCI_arvalid(AXI_PCI11_1_ARVALID),
        .M_AXI_PCI_awaddr(AXI_PCI11_1_AWADDR),
        .M_AXI_PCI_awburst(AXI_PCI11_1_AWBURST),
        .M_AXI_PCI_awcache(AXI_PCI11_1_AWCACHE),
        .M_AXI_PCI_awid(AXI_PCI11_1_AWID),
        .M_AXI_PCI_awlen(AXI_PCI11_1_AWLEN),
        .M_AXI_PCI_awlock(AXI_PCI11_1_AWLOCK),
        .M_AXI_PCI_awprot(AXI_PCI11_1_AWPROT),
        .M_AXI_PCI_awqos(AXI_PCI11_1_AWQOS),
        .M_AXI_PCI_awready(AXI_PCI11_1_AWREADY),
        .M_AXI_PCI_awsize(AXI_PCI11_1_AWSIZE),
        .M_AXI_PCI_awvalid(AXI_PCI11_1_AWVALID),
        .M_AXI_PCI_bid(AXI_PCI11_1_BID),
        .M_AXI_PCI_bready(AXI_PCI11_1_BREADY),
        .M_AXI_PCI_bresp(AXI_PCI11_1_BRESP),
        .M_AXI_PCI_bvalid(AXI_PCI11_1_BVALID),
        .M_AXI_PCI_rdata(AXI_PCI11_1_RDATA),
        .M_AXI_PCI_rid(AXI_PCI11_1_RID),
        .M_AXI_PCI_rlast(AXI_PCI11_1_RLAST),
        .M_AXI_PCI_rready(AXI_PCI11_1_RREADY),
        .M_AXI_PCI_rresp(AXI_PCI11_1_RRESP),
        .M_AXI_PCI_rvalid(AXI_PCI11_1_RVALID),
        .M_AXI_PCI_wdata(AXI_PCI11_1_WDATA),
        .M_AXI_PCI_wlast(AXI_PCI11_1_WLAST),
        .M_AXI_PCI_wready(AXI_PCI11_1_WREADY),
        .M_AXI_PCI_wstrb(AXI_PCI11_1_WSTRB),
        .M_AXI_PCI_wvalid(AXI_PCI11_1_WVALID),
        .PCI_AXI_araddr(channel_1_PCI_AXI_ARADDR),
        .PCI_AXI_arburst(channel_1_PCI_AXI_ARBURST),
        .PCI_AXI_arcache(channel_1_PCI_AXI_ARCACHE),
        .PCI_AXI_arid(channel_1_PCI_AXI_ARID),
        .PCI_AXI_arlen(channel_1_PCI_AXI_ARLEN),
        .PCI_AXI_arlock(channel_1_PCI_AXI_ARLOCK),
        .PCI_AXI_arprot(channel_1_PCI_AXI_ARPROT),
        .PCI_AXI_arqos(channel_1_PCI_AXI_ARQOS),
        .PCI_AXI_arready(channel_1_PCI_AXI_ARREADY),
        .PCI_AXI_arsize(channel_1_PCI_AXI_ARSIZE),
        .PCI_AXI_arvalid(channel_1_PCI_AXI_ARVALID),
        .PCI_AXI_awaddr(channel_1_PCI_AXI_AWADDR),
        .PCI_AXI_awburst(channel_1_PCI_AXI_AWBURST),
        .PCI_AXI_awcache(channel_1_PCI_AXI_AWCACHE),
        .PCI_AXI_awid(channel_1_PCI_AXI_AWID),
        .PCI_AXI_awlen(channel_1_PCI_AXI_AWLEN),
        .PCI_AXI_awlock(channel_1_PCI_AXI_AWLOCK),
        .PCI_AXI_awprot(channel_1_PCI_AXI_AWPROT),
        .PCI_AXI_awqos(channel_1_PCI_AXI_AWQOS),
        .PCI_AXI_awready(channel_1_PCI_AXI_AWREADY),
        .PCI_AXI_awsize(channel_1_PCI_AXI_AWSIZE),
        .PCI_AXI_awvalid(channel_1_PCI_AXI_AWVALID),
        .PCI_AXI_bready(channel_1_PCI_AXI_BREADY),
        .PCI_AXI_bresp(channel_1_PCI_AXI_BRESP),
        .PCI_AXI_bvalid(channel_1_PCI_AXI_BVALID),
        .PCI_AXI_rdata(channel_1_PCI_AXI_RDATA),
        .PCI_AXI_rlast(channel_1_PCI_AXI_RLAST),
        .PCI_AXI_rready(channel_1_PCI_AXI_RREADY),
        .PCI_AXI_rresp(channel_1_PCI_AXI_RRESP),
        .PCI_AXI_rvalid(channel_1_PCI_AXI_RVALID),
        .PCI_AXI_wdata(channel_1_PCI_AXI_WDATA),
        .PCI_AXI_wlast(channel_1_PCI_AXI_WLAST),
        .PCI_AXI_wready(channel_1_PCI_AXI_WREADY),
        .PCI_AXI_wstrb(channel_1_PCI_AXI_WSTRB),
        .PCI_AXI_wvalid(channel_1_PCI_AXI_WVALID),
        .S_AXI_CTL_araddr(S_AXI_2_ARADDR),
        .S_AXI_CTL_arprot(S_AXI_2_ARPROT),
        .S_AXI_CTL_arready(S_AXI_2_ARREADY),
        .S_AXI_CTL_arvalid(S_AXI_2_ARVALID),
        .S_AXI_CTL_awaddr(S_AXI_2_AWADDR),
        .S_AXI_CTL_awprot(S_AXI_2_AWPROT),
        .S_AXI_CTL_awready(S_AXI_2_AWREADY),
        .S_AXI_CTL_awvalid(S_AXI_2_AWVALID),
        .S_AXI_CTL_bready(S_AXI_2_BREADY),
        .S_AXI_CTL_bresp(S_AXI_2_BRESP),
        .S_AXI_CTL_bvalid(S_AXI_2_BVALID),
        .S_AXI_CTL_rdata(S_AXI_2_RDATA),
        .S_AXI_CTL_rready(S_AXI_2_RREADY),
        .S_AXI_CTL_rresp(S_AXI_2_RRESP),
        .S_AXI_CTL_rvalid(S_AXI_2_RVALID),
        .S_AXI_CTL_wdata(S_AXI_2_WDATA),
        .S_AXI_CTL_wready(S_AXI_2_WREADY),
        .S_AXI_CTL_wstrb(S_AXI_2_WSTRB),
        .S_AXI_CTL_wvalid(S_AXI_2_WVALID),
        .S_AXI_PB_araddr(S_AXI_PB_2_ARADDR),
        .S_AXI_PB_arprot(S_AXI_PB_2_ARPROT),
        .S_AXI_PB_arready(S_AXI_PB_2_ARREADY),
        .S_AXI_PB_arvalid(S_AXI_PB_2_ARVALID),
        .S_AXI_PB_awaddr(S_AXI_PB_2_AWADDR),
        .S_AXI_PB_awprot(S_AXI_PB_2_AWPROT),
        .S_AXI_PB_awready(S_AXI_PB_2_AWREADY),
        .S_AXI_PB_awvalid(S_AXI_PB_2_AWVALID),
        .S_AXI_PB_bready(S_AXI_PB_2_BREADY),
        .S_AXI_PB_bresp(S_AXI_PB_2_BRESP),
        .S_AXI_PB_bvalid(S_AXI_PB_2_BVALID),
        .S_AXI_PB_rdata(S_AXI_PB_2_RDATA),
        .S_AXI_PB_rready(S_AXI_PB_2_RREADY),
        .S_AXI_PB_rresp(S_AXI_PB_2_RRESP),
        .S_AXI_PB_rvalid(S_AXI_PB_2_RVALID),
        .S_AXI_PB_wdata(S_AXI_PB_2_WDATA),
        .S_AXI_PB_wready(S_AXI_PB_2_WREADY),
        .S_AXI_PB_wstrb(S_AXI_PB_2_WSTRB),
        .S_AXI_PB_wvalid(S_AXI_PB_2_WVALID),
        .async_link_status(ethernet_link_status),
        .axis_in_tdata(axis_in_1_TDATA),
        .axis_in_tkeep(axis_in_1_TKEEP),
        .axis_in_tlast(axis_in_1_TLAST),
        .axis_in_tvalid(axis_in_1_TVALID),
        .axis_pb_out_tdata(channel_1_axis_pb_out_TDATA),
        .axis_pb_out_tkeep(channel_1_axis_pb_out_TKEEP),
        .axis_pb_out_tlast(channel_1_axis_pb_out_TLAST),
        .axis_pb_out_tready(channel_1_axis_pb_out_TREADY),
        .axis_pb_out_tvalid(channel_1_axis_pb_out_TVALID),
        .axis_pg_out_tdata(feeder_axis_out1_TDATA),
        .axis_pg_out_tkeep(feeder_axis_out1_TKEEP),
        .axis_pg_out_tlast(feeder_axis_out1_TLAST),
        .axis_pg_out_tready(feeder_axis_out1_TREADY),
        .axis_pg_out_tvalid(feeder_axis_out1_TVALID),
        .cmac_clk(cmac_clk_2),
        .hbm_cattrip(channel_1_hbm_cattrip),
        .hbm_refclk_clk_n(hbm1_refclk_clk_n),
        .hbm_refclk_clk_p(hbm1_refclk_clk_p),
        .pb_mux_sel(channel_1_pb_mux_sel),
        .resetn(pcie_axi_aresetn),
        .sys_clk(pcie_axi_aclk));
  ethernet_imp_1SW6PPD ethernet
       (.axis_pb0_tdata(channel_0_axis_pb_out_TDATA),
        .axis_pb0_tkeep(channel_0_axis_pb_out_TKEEP),
        .axis_pb0_tlast(channel_0_axis_pb_out_TLAST),
        .axis_pb0_tready(channel_0_axis_pb_out_TREADY),
        .axis_pb0_tvalid(channel_0_axis_pb_out_TVALID),
        .axis_pb1_tdata(channel_1_axis_pb_out_TDATA),
        .axis_pb1_tkeep(channel_1_axis_pb_out_TKEEP),
        .axis_pb1_tlast(channel_1_axis_pb_out_TLAST),
        .axis_pb1_tready(channel_1_axis_pb_out_TREADY),
        .axis_pb1_tvalid(channel_1_axis_pb_out_TVALID),
        .axis_rx0_tdata(ethernet_axis_rx0_TDATA),
        .axis_rx0_tkeep(ethernet_axis_rx0_TKEEP),
        .axis_rx0_tlast(ethernet_axis_rx0_TLAST),
        .axis_rx0_tvalid(ethernet_axis_rx0_TVALID),
        .axis_rx1_tdata(axis_in_1_TDATA),
        .axis_rx1_tkeep(axis_in_1_TKEEP),
        .axis_rx1_tlast(axis_in_1_TLAST),
        .axis_rx1_tvalid(axis_in_1_TVALID),
        .axis_tx0_tdata(feeder_axis_out0_TDATA),
        .axis_tx0_tkeep(feeder_axis_out0_TKEEP),
        .axis_tx0_tlast(feeder_axis_out0_TLAST),
        .axis_tx0_tready(feeder_axis_out0_TREADY),
        .axis_tx0_tvalid(feeder_axis_out0_TVALID),
        .axis_tx1_tdata(feeder_axis_out1_TDATA),
        .axis_tx1_tkeep(feeder_axis_out1_TKEEP),
        .axis_tx1_tlast(feeder_axis_out1_TLAST),
        .axis_tx1_tready(feeder_axis_out1_TREADY),
        .axis_tx1_tvalid(feeder_axis_out1_TVALID),
        .cmac0_clk(cmac_clk_1),
        .cmac1_clk(cmac_clk_2),
        .link_status(ethernet_link_status),
        .qsfp0_clk_clk_n(qsfp0_clk_clk_n),
        .qsfp0_clk_clk_p(qsfp0_clk_clk_p),
        .qsfp0_gt_grx_n(qsfp0_gt_grx_n),
        .qsfp0_gt_grx_p(qsfp0_gt_grx_p),
        .qsfp0_gt_gtx_n(qsfp0_gt_gtx_n),
        .qsfp0_gt_gtx_p(qsfp0_gt_gtx_p),
        .qsfp0_leds(qsfp0_leds),
        .qsfp1_clk_clk_n(qsfp1_clk_clk_n),
        .qsfp1_clk_clk_p(qsfp1_clk_clk_p),
        .qsfp1_gt_grx_n(qsfp1_gt_grx_n),
        .qsfp1_gt_grx_p(qsfp1_gt_grx_p),
        .qsfp1_gt_gtx_n(qsfp1_gt_gtx_n),
        .qsfp1_gt_gtx_p(qsfp1_gt_gtx_p),
        .qsfp1_leds(qsfp1_leds),
        .s0_axi_stat_araddr(s0_axi_stat_1_ARADDR),
        .s0_axi_stat_arprot(s0_axi_stat_1_ARPROT),
        .s0_axi_stat_arready(s0_axi_stat_1_ARREADY),
        .s0_axi_stat_arvalid(s0_axi_stat_1_ARVALID),
        .s0_axi_stat_awaddr(s0_axi_stat_1_AWADDR),
        .s0_axi_stat_awprot(s0_axi_stat_1_AWPROT),
        .s0_axi_stat_awready(s0_axi_stat_1_AWREADY),
        .s0_axi_stat_awvalid(s0_axi_stat_1_AWVALID),
        .s0_axi_stat_bready(s0_axi_stat_1_BREADY),
        .s0_axi_stat_bresp(s0_axi_stat_1_BRESP),
        .s0_axi_stat_bvalid(s0_axi_stat_1_BVALID),
        .s0_axi_stat_rdata(s0_axi_stat_1_RDATA),
        .s0_axi_stat_rready(s0_axi_stat_1_RREADY),
        .s0_axi_stat_rresp(s0_axi_stat_1_RRESP),
        .s0_axi_stat_rvalid(s0_axi_stat_1_RVALID),
        .s0_axi_stat_wdata(s0_axi_stat_1_WDATA),
        .s0_axi_stat_wready(s0_axi_stat_1_WREADY),
        .s0_axi_stat_wstrb(s0_axi_stat_1_WSTRB),
        .s0_axi_stat_wvalid(s0_axi_stat_1_WVALID),
        .s1_axi_stat_araddr(s1_axi_stat_1_ARADDR),
        .s1_axi_stat_arprot(s1_axi_stat_1_ARPROT),
        .s1_axi_stat_arready(s1_axi_stat_1_ARREADY),
        .s1_axi_stat_arvalid(s1_axi_stat_1_ARVALID),
        .s1_axi_stat_awaddr(s1_axi_stat_1_AWADDR),
        .s1_axi_stat_awprot(s1_axi_stat_1_AWPROT),
        .s1_axi_stat_awready(s1_axi_stat_1_AWREADY),
        .s1_axi_stat_awvalid(s1_axi_stat_1_AWVALID),
        .s1_axi_stat_bready(s1_axi_stat_1_BREADY),
        .s1_axi_stat_bresp(s1_axi_stat_1_BRESP),
        .s1_axi_stat_bvalid(s1_axi_stat_1_BVALID),
        .s1_axi_stat_rdata(s1_axi_stat_1_RDATA),
        .s1_axi_stat_rready(s1_axi_stat_1_RREADY),
        .s1_axi_stat_rresp(s1_axi_stat_1_RRESP),
        .s1_axi_stat_rvalid(s1_axi_stat_1_RVALID),
        .s1_axi_stat_wdata(s1_axi_stat_1_WDATA),
        .s1_axi_stat_wready(s1_axi_stat_1_WREADY),
        .s1_axi_stat_wstrb(s1_axi_stat_1_WSTRB),
        .s1_axi_stat_wvalid(s1_axi_stat_1_WVALID),
        .sys_clk(pcie_axi_aclk),
        .tx0_mux_sel(tx0_mux_sel_1),
        .tx1_mux_sel(channel_1_pb_mux_sel));
  assign hbm_cattrip = channel_0_hbm_cattrip | channel_1_hbm_cattrip;
  pcie_imp_P7FEFP pcie
       (.AXI_PCI00_araddr(channel_0_PCI_AXI_ARADDR),
        .AXI_PCI00_arburst(channel_0_PCI_AXI_ARBURST),
        .AXI_PCI00_arcache(channel_0_PCI_AXI_ARCACHE),
        .AXI_PCI00_arid(channel_0_PCI_AXI_ARID),
        .AXI_PCI00_arlen(channel_0_PCI_AXI_ARLEN),
        .AXI_PCI00_arlock(channel_0_PCI_AXI_ARLOCK),
        .AXI_PCI00_arprot(channel_0_PCI_AXI_ARPROT),
        .AXI_PCI00_arqos(channel_0_PCI_AXI_ARQOS),
        .AXI_PCI00_arready(channel_0_PCI_AXI_ARREADY),
        .AXI_PCI00_arsize(channel_0_PCI_AXI_ARSIZE),
        .AXI_PCI00_arvalid(channel_0_PCI_AXI_ARVALID),
        .AXI_PCI00_awaddr(channel_0_PCI_AXI_AWADDR),
        .AXI_PCI00_awburst(channel_0_PCI_AXI_AWBURST),
        .AXI_PCI00_awcache(channel_0_PCI_AXI_AWCACHE),
        .AXI_PCI00_awid(channel_0_PCI_AXI_AWID),
        .AXI_PCI00_awlen(channel_0_PCI_AXI_AWLEN),
        .AXI_PCI00_awlock(channel_0_PCI_AXI_AWLOCK),
        .AXI_PCI00_awprot(channel_0_PCI_AXI_AWPROT),
        .AXI_PCI00_awqos(channel_0_PCI_AXI_AWQOS),
        .AXI_PCI00_awready(channel_0_PCI_AXI_AWREADY),
        .AXI_PCI00_awsize(channel_0_PCI_AXI_AWSIZE),
        .AXI_PCI00_awvalid(channel_0_PCI_AXI_AWVALID),
        .AXI_PCI00_bready(channel_0_PCI_AXI_BREADY),
        .AXI_PCI00_bresp(channel_0_PCI_AXI_BRESP),
        .AXI_PCI00_bvalid(channel_0_PCI_AXI_BVALID),
        .AXI_PCI00_rdata(channel_0_PCI_AXI_RDATA),
        .AXI_PCI00_rlast(channel_0_PCI_AXI_RLAST),
        .AXI_PCI00_rready(channel_0_PCI_AXI_RREADY),
        .AXI_PCI00_rresp(channel_0_PCI_AXI_RRESP),
        .AXI_PCI00_rvalid(channel_0_PCI_AXI_RVALID),
        .AXI_PCI00_wdata(channel_0_PCI_AXI_WDATA),
        .AXI_PCI00_wlast(channel_0_PCI_AXI_WLAST),
        .AXI_PCI00_wready(channel_0_PCI_AXI_WREADY),
        .AXI_PCI00_wstrb(channel_0_PCI_AXI_WSTRB),
        .AXI_PCI00_wvalid(channel_0_PCI_AXI_WVALID),
        .AXI_PCI01_araddr(channel_0_M_AXI_PB_ARADDR),
        .AXI_PCI01_arburst(channel_0_M_AXI_PB_ARBURST),
        .AXI_PCI01_arcache(channel_0_M_AXI_PB_ARCACHE),
        .AXI_PCI01_arid(channel_0_M_AXI_PB_ARID),
        .AXI_PCI01_arlen(channel_0_M_AXI_PB_ARLEN),
        .AXI_PCI01_arlock(channel_0_M_AXI_PB_ARLOCK),
        .AXI_PCI01_arprot(channel_0_M_AXI_PB_ARPROT),
        .AXI_PCI01_arqos(channel_0_M_AXI_PB_ARQOS),
        .AXI_PCI01_arready(channel_0_M_AXI_PB_ARREADY),
        .AXI_PCI01_arsize(channel_0_M_AXI_PB_ARSIZE),
        .AXI_PCI01_arvalid(channel_0_M_AXI_PB_ARVALID),
        .AXI_PCI01_awaddr(channel_0_M_AXI_PB_AWADDR),
        .AXI_PCI01_awburst(channel_0_M_AXI_PB_AWBURST),
        .AXI_PCI01_awcache(channel_0_M_AXI_PB_AWCACHE),
        .AXI_PCI01_awid(channel_0_M_AXI_PB_AWID),
        .AXI_PCI01_awlen(channel_0_M_AXI_PB_AWLEN),
        .AXI_PCI01_awlock(channel_0_M_AXI_PB_AWLOCK),
        .AXI_PCI01_awprot(channel_0_M_AXI_PB_AWPROT),
        .AXI_PCI01_awqos(channel_0_M_AXI_PB_AWQOS),
        .AXI_PCI01_awready(channel_0_M_AXI_PB_AWREADY),
        .AXI_PCI01_awsize(channel_0_M_AXI_PB_AWSIZE),
        .AXI_PCI01_awvalid(channel_0_M_AXI_PB_AWVALID),
        .AXI_PCI01_bid(channel_0_M_AXI_PB_BID),
        .AXI_PCI01_bready(channel_0_M_AXI_PB_BREADY),
        .AXI_PCI01_bresp(channel_0_M_AXI_PB_BRESP),
        .AXI_PCI01_bvalid(channel_0_M_AXI_PB_BVALID),
        .AXI_PCI01_rdata(channel_0_M_AXI_PB_RDATA),
        .AXI_PCI01_rid(channel_0_M_AXI_PB_RID),
        .AXI_PCI01_rlast(channel_0_M_AXI_PB_RLAST),
        .AXI_PCI01_rready(channel_0_M_AXI_PB_RREADY),
        .AXI_PCI01_rresp(channel_0_M_AXI_PB_RRESP),
        .AXI_PCI01_rvalid(channel_0_M_AXI_PB_RVALID),
        .AXI_PCI01_wdata(channel_0_M_AXI_PB_WDATA),
        .AXI_PCI01_wlast(channel_0_M_AXI_PB_WLAST),
        .AXI_PCI01_wready(channel_0_M_AXI_PB_WREADY),
        .AXI_PCI01_wstrb(channel_0_M_AXI_PB_WSTRB),
        .AXI_PCI01_wvalid(channel_0_M_AXI_PB_WVALID),
        .AXI_PCI10_araddr(channel_1_PCI_AXI_ARADDR),
        .AXI_PCI10_arburst(channel_1_PCI_AXI_ARBURST),
        .AXI_PCI10_arcache(channel_1_PCI_AXI_ARCACHE),
        .AXI_PCI10_arid(channel_1_PCI_AXI_ARID),
        .AXI_PCI10_arlen(channel_1_PCI_AXI_ARLEN),
        .AXI_PCI10_arlock(channel_1_PCI_AXI_ARLOCK),
        .AXI_PCI10_arprot(channel_1_PCI_AXI_ARPROT),
        .AXI_PCI10_arqos(channel_1_PCI_AXI_ARQOS),
        .AXI_PCI10_arready(channel_1_PCI_AXI_ARREADY),
        .AXI_PCI10_arsize(channel_1_PCI_AXI_ARSIZE),
        .AXI_PCI10_arvalid(channel_1_PCI_AXI_ARVALID),
        .AXI_PCI10_awaddr(channel_1_PCI_AXI_AWADDR),
        .AXI_PCI10_awburst(channel_1_PCI_AXI_AWBURST),
        .AXI_PCI10_awcache(channel_1_PCI_AXI_AWCACHE),
        .AXI_PCI10_awid(channel_1_PCI_AXI_AWID),
        .AXI_PCI10_awlen(channel_1_PCI_AXI_AWLEN),
        .AXI_PCI10_awlock(channel_1_PCI_AXI_AWLOCK),
        .AXI_PCI10_awprot(channel_1_PCI_AXI_AWPROT),
        .AXI_PCI10_awqos(channel_1_PCI_AXI_AWQOS),
        .AXI_PCI10_awready(channel_1_PCI_AXI_AWREADY),
        .AXI_PCI10_awsize(channel_1_PCI_AXI_AWSIZE),
        .AXI_PCI10_awvalid(channel_1_PCI_AXI_AWVALID),
        .AXI_PCI10_bready(channel_1_PCI_AXI_BREADY),
        .AXI_PCI10_bresp(channel_1_PCI_AXI_BRESP),
        .AXI_PCI10_bvalid(channel_1_PCI_AXI_BVALID),
        .AXI_PCI10_rdata(channel_1_PCI_AXI_RDATA),
        .AXI_PCI10_rlast(channel_1_PCI_AXI_RLAST),
        .AXI_PCI10_rready(channel_1_PCI_AXI_RREADY),
        .AXI_PCI10_rresp(channel_1_PCI_AXI_RRESP),
        .AXI_PCI10_rvalid(channel_1_PCI_AXI_RVALID),
        .AXI_PCI10_wdata(channel_1_PCI_AXI_WDATA),
        .AXI_PCI10_wlast(channel_1_PCI_AXI_WLAST),
        .AXI_PCI10_wready(channel_1_PCI_AXI_WREADY),
        .AXI_PCI10_wstrb(channel_1_PCI_AXI_WSTRB),
        .AXI_PCI10_wvalid(channel_1_PCI_AXI_WVALID),
        .AXI_PCI11_araddr(AXI_PCI11_1_ARADDR),
        .AXI_PCI11_arburst(AXI_PCI11_1_ARBURST),
        .AXI_PCI11_arcache(AXI_PCI11_1_ARCACHE),
        .AXI_PCI11_arid(AXI_PCI11_1_ARID),
        .AXI_PCI11_arlen(AXI_PCI11_1_ARLEN),
        .AXI_PCI11_arlock(AXI_PCI11_1_ARLOCK),
        .AXI_PCI11_arprot(AXI_PCI11_1_ARPROT),
        .AXI_PCI11_arqos(AXI_PCI11_1_ARQOS),
        .AXI_PCI11_arready(AXI_PCI11_1_ARREADY),
        .AXI_PCI11_arsize(AXI_PCI11_1_ARSIZE),
        .AXI_PCI11_arvalid(AXI_PCI11_1_ARVALID),
        .AXI_PCI11_awaddr(AXI_PCI11_1_AWADDR),
        .AXI_PCI11_awburst(AXI_PCI11_1_AWBURST),
        .AXI_PCI11_awcache(AXI_PCI11_1_AWCACHE),
        .AXI_PCI11_awid(AXI_PCI11_1_AWID),
        .AXI_PCI11_awlen(AXI_PCI11_1_AWLEN),
        .AXI_PCI11_awlock(AXI_PCI11_1_AWLOCK),
        .AXI_PCI11_awprot(AXI_PCI11_1_AWPROT),
        .AXI_PCI11_awqos(AXI_PCI11_1_AWQOS),
        .AXI_PCI11_awready(AXI_PCI11_1_AWREADY),
        .AXI_PCI11_awsize(AXI_PCI11_1_AWSIZE),
        .AXI_PCI11_awvalid(AXI_PCI11_1_AWVALID),
        .AXI_PCI11_bid(AXI_PCI11_1_BID),
        .AXI_PCI11_bready(AXI_PCI11_1_BREADY),
        .AXI_PCI11_bresp(AXI_PCI11_1_BRESP),
        .AXI_PCI11_bvalid(AXI_PCI11_1_BVALID),
        .AXI_PCI11_rdata(AXI_PCI11_1_RDATA),
        .AXI_PCI11_rid(AXI_PCI11_1_RID),
        .AXI_PCI11_rlast(AXI_PCI11_1_RLAST),
        .AXI_PCI11_rready(AXI_PCI11_1_RREADY),
        .AXI_PCI11_rresp(AXI_PCI11_1_RRESP),
        .AXI_PCI11_rvalid(AXI_PCI11_1_RVALID),
        .AXI_PCI11_wdata(AXI_PCI11_1_WDATA),
        .AXI_PCI11_wlast(AXI_PCI11_1_WLAST),
        .AXI_PCI11_wready(AXI_PCI11_1_WREADY),
        .AXI_PCI11_wstrb(AXI_PCI11_1_WSTRB),
        .AXI_PCI11_wvalid(AXI_PCI11_1_WVALID),
        .CMAC0_STAT_araddr(s0_axi_stat_1_ARADDR),
        .CMAC0_STAT_arprot(s0_axi_stat_1_ARPROT),
        .CMAC0_STAT_arready(s0_axi_stat_1_ARREADY),
        .CMAC0_STAT_arvalid(s0_axi_stat_1_ARVALID),
        .CMAC0_STAT_awaddr(s0_axi_stat_1_AWADDR),
        .CMAC0_STAT_awprot(s0_axi_stat_1_AWPROT),
        .CMAC0_STAT_awready(s0_axi_stat_1_AWREADY),
        .CMAC0_STAT_awvalid(s0_axi_stat_1_AWVALID),
        .CMAC0_STAT_bready(s0_axi_stat_1_BREADY),
        .CMAC0_STAT_bresp(s0_axi_stat_1_BRESP),
        .CMAC0_STAT_bvalid(s0_axi_stat_1_BVALID),
        .CMAC0_STAT_rdata(s0_axi_stat_1_RDATA),
        .CMAC0_STAT_rready(s0_axi_stat_1_RREADY),
        .CMAC0_STAT_rresp(s0_axi_stat_1_RRESP),
        .CMAC0_STAT_rvalid(s0_axi_stat_1_RVALID),
        .CMAC0_STAT_wdata(s0_axi_stat_1_WDATA),
        .CMAC0_STAT_wready(s0_axi_stat_1_WREADY),
        .CMAC0_STAT_wstrb(s0_axi_stat_1_WSTRB),
        .CMAC0_STAT_wvalid(s0_axi_stat_1_WVALID),
        .CMAC1_STAT_araddr(s1_axi_stat_1_ARADDR),
        .CMAC1_STAT_arprot(s1_axi_stat_1_ARPROT),
        .CMAC1_STAT_arready(s1_axi_stat_1_ARREADY),
        .CMAC1_STAT_arvalid(s1_axi_stat_1_ARVALID),
        .CMAC1_STAT_awaddr(s1_axi_stat_1_AWADDR),
        .CMAC1_STAT_awprot(s1_axi_stat_1_AWPROT),
        .CMAC1_STAT_awready(s1_axi_stat_1_AWREADY),
        .CMAC1_STAT_awvalid(s1_axi_stat_1_AWVALID),
        .CMAC1_STAT_bready(s1_axi_stat_1_BREADY),
        .CMAC1_STAT_bresp(s1_axi_stat_1_BRESP),
        .CMAC1_STAT_bvalid(s1_axi_stat_1_BVALID),
        .CMAC1_STAT_rdata(s1_axi_stat_1_RDATA),
        .CMAC1_STAT_rready(s1_axi_stat_1_RREADY),
        .CMAC1_STAT_rresp(s1_axi_stat_1_RRESP),
        .CMAC1_STAT_rvalid(s1_axi_stat_1_RVALID),
        .CMAC1_STAT_wdata(s1_axi_stat_1_WDATA),
        .CMAC1_STAT_wready(s1_axi_stat_1_WREADY),
        .CMAC1_STAT_wstrb(s1_axi_stat_1_WSTRB),
        .CMAC1_STAT_wvalid(s1_axi_stat_1_WVALID),
        .M00_AXI_araddr(S_AXI_1_ARADDR),
        .M00_AXI_arprot(S_AXI_1_ARPROT),
        .M00_AXI_arready(S_AXI_1_ARREADY),
        .M00_AXI_arvalid(S_AXI_1_ARVALID),
        .M00_AXI_awaddr(S_AXI_1_AWADDR),
        .M00_AXI_awprot(S_AXI_1_AWPROT),
        .M00_AXI_awready(S_AXI_1_AWREADY),
        .M00_AXI_awvalid(S_AXI_1_AWVALID),
        .M00_AXI_bready(S_AXI_1_BREADY),
        .M00_AXI_bresp(S_AXI_1_BRESP),
        .M00_AXI_bvalid(S_AXI_1_BVALID),
        .M00_AXI_rdata(S_AXI_1_RDATA),
        .M00_AXI_rready(S_AXI_1_RREADY),
        .M00_AXI_rresp(S_AXI_1_RRESP),
        .M00_AXI_rvalid(S_AXI_1_RVALID),
        .M00_AXI_wdata(S_AXI_1_WDATA),
        .M00_AXI_wready(S_AXI_1_WREADY),
        .M00_AXI_wstrb(S_AXI_1_WSTRB),
        .M00_AXI_wvalid(S_AXI_1_WVALID),
        .M01_AXI_araddr(S_AXI_2_ARADDR),
        .M01_AXI_arprot(S_AXI_2_ARPROT),
        .M01_AXI_arready(S_AXI_2_ARREADY),
        .M01_AXI_arvalid(S_AXI_2_ARVALID),
        .M01_AXI_awaddr(S_AXI_2_AWADDR),
        .M01_AXI_awprot(S_AXI_2_AWPROT),
        .M01_AXI_awready(S_AXI_2_AWREADY),
        .M01_AXI_awvalid(S_AXI_2_AWVALID),
        .M01_AXI_bready(S_AXI_2_BREADY),
        .M01_AXI_bresp(S_AXI_2_BRESP),
        .M01_AXI_bvalid(S_AXI_2_BVALID),
        .M01_AXI_rdata(S_AXI_2_RDATA),
        .M01_AXI_rready(S_AXI_2_RREADY),
        .M01_AXI_rresp(S_AXI_2_RRESP),
        .M01_AXI_rvalid(S_AXI_2_RVALID),
        .M01_AXI_wdata(S_AXI_2_WDATA),
        .M01_AXI_wready(S_AXI_2_WREADY),
        .M01_AXI_wstrb(S_AXI_2_WSTRB),
        .M01_AXI_wvalid(S_AXI_2_WVALID),
        .M05_AXI_araddr(S_AXI_PB_1_ARADDR),
        .M05_AXI_arprot(S_AXI_PB_1_ARPROT),
        .M05_AXI_arready(S_AXI_PB_1_ARREADY),
        .M05_AXI_arvalid(S_AXI_PB_1_ARVALID),
        .M05_AXI_awaddr(S_AXI_PB_1_AWADDR),
        .M05_AXI_awprot(S_AXI_PB_1_AWPROT),
        .M05_AXI_awready(S_AXI_PB_1_AWREADY),
        .M05_AXI_awvalid(S_AXI_PB_1_AWVALID),
        .M05_AXI_bready(S_AXI_PB_1_BREADY),
        .M05_AXI_bresp(S_AXI_PB_1_BRESP),
        .M05_AXI_bvalid(S_AXI_PB_1_BVALID),
        .M05_AXI_rdata(S_AXI_PB_1_RDATA),
        .M05_AXI_rready(S_AXI_PB_1_RREADY),
        .M05_AXI_rresp(S_AXI_PB_1_RRESP),
        .M05_AXI_rvalid(S_AXI_PB_1_RVALID),
        .M05_AXI_wdata(S_AXI_PB_1_WDATA),
        .M05_AXI_wready(S_AXI_PB_1_WREADY),
        .M05_AXI_wstrb(S_AXI_PB_1_WSTRB),
        .M05_AXI_wvalid(S_AXI_PB_1_WVALID),
        .M06_AXI_araddr(S_AXI_PB_2_ARADDR),
        .M06_AXI_arprot(S_AXI_PB_2_ARPROT),
        .M06_AXI_arready(S_AXI_PB_2_ARREADY),
        .M06_AXI_arvalid(S_AXI_PB_2_ARVALID),
        .M06_AXI_awaddr(S_AXI_PB_2_AWADDR),
        .M06_AXI_awprot(S_AXI_PB_2_AWPROT),
        .M06_AXI_awready(S_AXI_PB_2_AWREADY),
        .M06_AXI_awvalid(S_AXI_PB_2_AWVALID),
        .M06_AXI_bready(S_AXI_PB_2_BREADY),
        .M06_AXI_bresp(S_AXI_PB_2_BRESP),
        .M06_AXI_bvalid(S_AXI_PB_2_BVALID),
        .M06_AXI_rdata(S_AXI_PB_2_RDATA),
        .M06_AXI_rready(S_AXI_PB_2_RREADY),
        .M06_AXI_rresp(S_AXI_PB_2_RRESP),
        .M06_AXI_rvalid(S_AXI_PB_2_RVALID),
        .M06_AXI_wdata(S_AXI_PB_2_WDATA),
        .M06_AXI_wready(S_AXI_PB_2_WREADY),
        .M06_AXI_wstrb(S_AXI_PB_2_WSTRB),
        .M06_AXI_wvalid(S_AXI_PB_2_WVALID),
        .axi_aclk(pcie_axi_aclk),
        .axi_aresetn(pcie_axi_aresetn),
        .pcie0_refclk_clk_n(pcie0_refclk_clk_n),
        .pcie0_refclk_clk_p(pcie0_refclk_clk_p),
        .pcie1_refclk_clk_n(pcie1_refclk_clk_n),
        .pcie1_refclk_clk_p(pcie1_refclk_clk_p),
        .pcie_mgt_0_rxn(pcie_mgt_0_rxn),
        .pcie_mgt_0_rxp(pcie_mgt_0_rxp),
        .pcie_mgt_0_txn(pcie_mgt_0_txn),
        .pcie_mgt_0_txp(pcie_mgt_0_txp),
        .pcie_mgt_1_rxn(pcie_mgt_1_rxn),
        .pcie_mgt_1_rxp(pcie_mgt_1_rxp),
        .pcie_mgt_1_txn(pcie_mgt_1_txn),
        .pcie_mgt_1_txp(pcie_mgt_1_txp),
        .pcie_perst_l(pcie_perst_l));
endmodule

module tx_mux_imp_1RVKZTS
   (async_source_select,
    axis_out_tdata,
    axis_out_tkeep,
    axis_out_tlast,
    axis_out_tready,
    axis_out_tvalid,
    axis_pb_tdata,
    axis_pb_tkeep,
    axis_pb_tlast,
    axis_pb_tready,
    axis_pb_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tvalid,
    cmac_clk,
    resetn,
    sys_clk);
  input async_source_select;
  output [511:0]axis_out_tdata;
  output [63:0]axis_out_tkeep;
  output axis_out_tlast;
  input axis_out_tready;
  output axis_out_tvalid;
  input [511:0]axis_pb_tdata;
  input [63:0]axis_pb_tkeep;
  input axis_pb_tlast;
  output axis_pb_tready;
  input axis_pb_tvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tvalid;
  input cmac_clk;
  input resetn;
  input sys_clk;

  wire async_source_select;
  wire [511:0]axis_out_tdata;
  wire [63:0]axis_out_tkeep;
  wire axis_out_tlast;
  wire axis_out_tready;
  wire axis_out_tvalid;
  wire [511:0]axis_pb_tdata;
  wire [63:0]axis_pb_tkeep;
  wire axis_pb_tlast;
  wire axis_pb_tready;
  wire axis_pb_tvalid;
  wire [511:0]axis_tx_tdata;
  wire [63:0]axis_tx_tkeep;
  wire axis_tx_tlast;
  wire axis_tx_tready;
  wire axis_tx_tvalid;
  wire cmac_clk;
  wire [511:0]cmac_tx_cdc_m_axis_TDATA;
  wire [63:0]cmac_tx_cdc_m_axis_TKEEP;
  wire cmac_tx_cdc_m_axis_TLAST;
  wire cmac_tx_cdc_m_axis_TREADY;
  wire cmac_tx_cdc_m_axis_TVALID;
  wire resetn;
  wire sys_clk;

  top_level_axis_mux_0_0 axis_mux
       (.async_source_select(async_source_select),
        .axis_in0_tdata(cmac_tx_cdc_m_axis_TDATA),
        .axis_in0_tkeep(cmac_tx_cdc_m_axis_TKEEP),
        .axis_in0_tlast(cmac_tx_cdc_m_axis_TLAST),
        .axis_in0_tready(cmac_tx_cdc_m_axis_TREADY),
        .axis_in0_tvalid(cmac_tx_cdc_m_axis_TVALID),
        .axis_in1_tdata(axis_pb_tdata),
        .axis_in1_tkeep(axis_pb_tkeep),
        .axis_in1_tlast(axis_pb_tlast),
        .axis_in1_tready(axis_pb_tready),
        .axis_in1_tvalid(axis_pb_tvalid),
        .axis_out_tdata(axis_out_tdata),
        .axis_out_tkeep(axis_out_tkeep),
        .axis_out_tlast(axis_out_tlast),
        .axis_out_tready(axis_out_tready),
        .axis_out_tvalid(axis_out_tvalid),
        .clk(cmac_clk));
  top_level_cmac_tx_cdc_0_0 cmac_tx_cdc
       (.cmac_clk(cmac_clk),
        .m_axis_tdata(cmac_tx_cdc_m_axis_TDATA),
        .m_axis_tkeep(cmac_tx_cdc_m_axis_TKEEP),
        .m_axis_tlast(cmac_tx_cdc_m_axis_TLAST),
        .m_axis_tready(cmac_tx_cdc_m_axis_TREADY),
        .m_axis_tvalid(cmac_tx_cdc_m_axis_TVALID),
        .resetn(resetn),
        .s_axis_tdata(axis_tx_tdata),
        .s_axis_tkeep(axis_tx_tkeep),
        .s_axis_tlast(axis_tx_tlast),
        .s_axis_tready(axis_tx_tready),
        .s_axis_tvalid(axis_tx_tvalid),
        .sys_clk(sys_clk));
endmodule

module tx_mux_imp_R2KBOJ
   (async_source_select,
    axis_out_tdata,
    axis_out_tkeep,
    axis_out_tlast,
    axis_out_tready,
    axis_out_tvalid,
    axis_pb_tdata,
    axis_pb_tkeep,
    axis_pb_tlast,
    axis_pb_tready,
    axis_pb_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tvalid,
    cmac_clk,
    resetn,
    sys_clk);
  input async_source_select;
  output [511:0]axis_out_tdata;
  output [63:0]axis_out_tkeep;
  output axis_out_tlast;
  input axis_out_tready;
  output axis_out_tvalid;
  input [511:0]axis_pb_tdata;
  input [63:0]axis_pb_tkeep;
  input axis_pb_tlast;
  output axis_pb_tready;
  input axis_pb_tvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tvalid;
  input cmac_clk;
  input resetn;
  input sys_clk;

  wire async_source_select;
  wire [511:0]axis_out_tdata;
  wire [63:0]axis_out_tkeep;
  wire axis_out_tlast;
  wire axis_out_tready;
  wire axis_out_tvalid;
  wire [511:0]axis_pb_tdata;
  wire [63:0]axis_pb_tkeep;
  wire axis_pb_tlast;
  wire axis_pb_tready;
  wire axis_pb_tvalid;
  wire [511:0]axis_tx_tdata;
  wire [63:0]axis_tx_tkeep;
  wire axis_tx_tlast;
  wire axis_tx_tready;
  wire axis_tx_tvalid;
  wire cmac_clk;
  wire [511:0]cmac_tx_cdc_m_axis_TDATA;
  wire [63:0]cmac_tx_cdc_m_axis_TKEEP;
  wire cmac_tx_cdc_m_axis_TLAST;
  wire cmac_tx_cdc_m_axis_TREADY;
  wire cmac_tx_cdc_m_axis_TVALID;
  wire resetn;
  wire sys_clk;

  top_level_axis_mux_1 axis_mux
       (.async_source_select(async_source_select),
        .axis_in0_tdata(cmac_tx_cdc_m_axis_TDATA),
        .axis_in0_tkeep(cmac_tx_cdc_m_axis_TKEEP),
        .axis_in0_tlast(cmac_tx_cdc_m_axis_TLAST),
        .axis_in0_tready(cmac_tx_cdc_m_axis_TREADY),
        .axis_in0_tvalid(cmac_tx_cdc_m_axis_TVALID),
        .axis_in1_tdata(axis_pb_tdata),
        .axis_in1_tkeep(axis_pb_tkeep),
        .axis_in1_tlast(axis_pb_tlast),
        .axis_in1_tready(axis_pb_tready),
        .axis_in1_tvalid(axis_pb_tvalid),
        .axis_out_tdata(axis_out_tdata),
        .axis_out_tkeep(axis_out_tkeep),
        .axis_out_tlast(axis_out_tlast),
        .axis_out_tready(axis_out_tready),
        .axis_out_tvalid(axis_out_tvalid),
        .clk(cmac_clk));
  top_level_cmac_tx_cdc_1 cmac_tx_cdc
       (.cmac_clk(cmac_clk),
        .m_axis_tdata(cmac_tx_cdc_m_axis_TDATA),
        .m_axis_tkeep(cmac_tx_cdc_m_axis_TKEEP),
        .m_axis_tlast(cmac_tx_cdc_m_axis_TLAST),
        .m_axis_tready(cmac_tx_cdc_m_axis_TREADY),
        .m_axis_tvalid(cmac_tx_cdc_m_axis_TVALID),
        .resetn(resetn),
        .s_axis_tdata(axis_tx_tdata),
        .s_axis_tkeep(axis_tx_tkeep),
        .s_axis_tlast(axis_tx_tlast),
        .s_axis_tready(axis_tx_tready),
        .s_axis_tvalid(axis_tx_tvalid),
        .sys_clk(sys_clk));
endmodule

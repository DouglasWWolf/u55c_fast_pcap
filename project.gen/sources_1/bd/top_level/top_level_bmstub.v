// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module top_level (
  pcie0_refclk_clk_p,
  pcie0_refclk_clk_n,
  pcie_mgt_0_rxn,
  pcie_mgt_0_rxp,
  pcie_mgt_0_txn,
  pcie_mgt_0_txp,
  qsfp0_gt_grx_n,
  qsfp0_gt_grx_p,
  qsfp0_gt_gtx_n,
  qsfp0_gt_gtx_p,
  qsfp0_clk_clk_n,
  qsfp0_clk_clk_p,
  qsfp1_clk_clk_n,
  qsfp1_clk_clk_p,
  qsfp1_gt_grx_n,
  qsfp1_gt_grx_p,
  qsfp1_gt_gtx_n,
  qsfp1_gt_gtx_p,
  hbm0_refclk_clk_n,
  hbm0_refclk_clk_p,
  hbm1_refclk_clk_n,
  hbm1_refclk_clk_p,
  pcie_mgt_1_rxn,
  pcie_mgt_1_rxp,
  pcie_mgt_1_txn,
  pcie_mgt_1_txp,
  pcie1_refclk_clk_n,
  pcie1_refclk_clk_p,
  hbm_cattrip,
  pcie_perst_l,
  qsfp0_leds,
  qsfp1_leds
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie0_refclk CLK_P" *)
  (* X_INTERFACE_MODE = "slave pcie0_refclk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie0_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *)
  input [0:0]pcie0_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie0_refclk CLK_N" *)
  input [0:0]pcie0_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_0 rxn" *)
  (* X_INTERFACE_MODE = "master pcie_mgt_0" *)
  input [7:0]pcie_mgt_0_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_0 rxp" *)
  input [7:0]pcie_mgt_0_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_0 txn" *)
  output [7:0]pcie_mgt_0_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_0 txp" *)
  output [7:0]pcie_mgt_0_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_N" *)
  (* X_INTERFACE_MODE = "master qsfp0_gt" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_gt, CAN_DEBUG false" *)
  input [3:0]qsfp0_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_P" *)
  input [3:0]qsfp0_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_N" *)
  output [3:0]qsfp0_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_P" *)
  output [3:0]qsfp0_gt_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_N" *)
  (* X_INTERFACE_MODE = "slave qsfp0_clk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_clk, CAN_DEBUG false, FREQ_HZ 161132812" *)
  input qsfp0_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_P" *)
  input qsfp0_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_N" *)
  (* X_INTERFACE_MODE = "slave qsfp1_clk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_clk, CAN_DEBUG false, FREQ_HZ 161132812" *)
  input qsfp1_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_P" *)
  input qsfp1_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_N" *)
  (* X_INTERFACE_MODE = "master qsfp1_gt" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_gt, CAN_DEBUG false" *)
  input [3:0]qsfp1_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_P" *)
  input [3:0]qsfp1_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_N" *)
  output [3:0]qsfp1_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_P" *)
  output [3:0]qsfp1_gt_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 hbm0_refclk CLK_N" *)
  (* X_INTERFACE_MODE = "slave hbm0_refclk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME hbm0_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *)
  input [0:0]hbm0_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 hbm0_refclk CLK_P" *)
  input [0:0]hbm0_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 hbm1_refclk CLK_N" *)
  (* X_INTERFACE_MODE = "slave hbm1_refclk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME hbm1_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *)
  input [0:0]hbm1_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 hbm1_refclk CLK_P" *)
  input [0:0]hbm1_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_1 rxn" *)
  (* X_INTERFACE_MODE = "master pcie_mgt_1" *)
  input [7:0]pcie_mgt_1_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_1 rxp" *)
  input [7:0]pcie_mgt_1_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_1 txn" *)
  output [7:0]pcie_mgt_1_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_1 txp" *)
  output [7:0]pcie_mgt_1_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie1_refclk CLK_N" *)
  (* X_INTERFACE_MODE = "slave pcie1_refclk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *)
  input [0:0]pcie1_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie1_refclk CLK_P" *)
  input [0:0]pcie1_refclk_clk_p;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]hbm_cattrip;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_PERST_L RST" *)
  (* X_INTERFACE_MODE = "slave RST.PCIE_PERST_L" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_PERST_L, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input pcie_perst_l;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]qsfp0_leds;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]qsfp1_leds;

  // stub module has no contents

endmodule

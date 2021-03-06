// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Apr  5 14:33:54 2021
// Host        : DESKTOP-7ASG104 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/KITCODE/Vivado_prj/PINE_A7_CAM_0V7670_HDMI/PINE_A7_CAM_0V7670_HDMI.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_125Mhz, clk_125Mhz_n, clk_50Mhz, clk_25Mhz, 
  clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_125Mhz,clk_125Mhz_n,clk_50Mhz,clk_25Mhz,clk_in1" */;
  output clk_125Mhz;
  output clk_125Mhz_n;
  output clk_50Mhz;
  output clk_25Mhz;
  input clk_in1;
endmodule

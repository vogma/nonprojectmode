// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Aug 23 17:05:15 2021
// Host        : marco running 64-bit Ubuntu 21.04
// Command     : write_verilog -force ./output/rop_impl_netlist.v
// Design      : rop
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "44ed29bf" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module rop
   (btn,
    led);
  input [3:0]btn;
  output [3:0]led;

  wire [3:0]btn;
  wire [1:1]btn_IBUF;
  wire [3:0]led;
  wire [0:0]led_OBUF;

  IBUF \btn_IBUF[1]_inst 
       (.I(btn[1]),
        .O(btn_IBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF),
        .O(led[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \led_OBUF[3]_inst_i_1 
       (.I0(btn_IBUF),
        .O(led_OBUF));
endmodule

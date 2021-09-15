// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Sep 15 14:30:45 2021
// Host        : marco running 64-bit Ubuntu 21.04
// Command     : write_verilog -force ./output/top_impl_netlist.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module sseg_controller
   (sseg_cs_out_OBUF,
    ja_OBUF,
    jb_OBUF,
    clk,
    sw_IBUF,
    sseg_decoder1_o);
  output sseg_cs_out_OBUF;
  output [3:0]ja_OBUF;
  output [2:0]jb_OBUF;
  input clk;
  input [3:0]sw_IBUF;
  input [6:0]sseg_decoder1_o;

  wire clk;
  wire [3:0]ja_OBUF;
  wire [2:0]jb_OBUF;
  wire sseg_cs_out_OBUF;
  wire [6:0]sseg_decoder1_o;
  wire [3:0]sw_IBUF;

  sseg_cs_generator chip_select_gen
       (.chip_select_reg_reg_0(sseg_cs_out_OBUF),
        .clk(clk),
        .ja_OBUF(ja_OBUF),
        .jb_OBUF(jb_OBUF),
        .sseg_decoder1_o(sseg_decoder1_o),
        .sw_IBUF(sw_IBUF));
endmodule

module sseg_cs_generator
   (chip_select_reg_reg_0,
    ja_OBUF,
    jb_OBUF,
    clk,
    sw_IBUF,
    sseg_decoder1_o);
  output chip_select_reg_reg_0;
  output [3:0]ja_OBUF;
  output [2:0]jb_OBUF;
  input clk;
  input [3:0]sw_IBUF;
  input [6:0]sseg_decoder1_o;

  wire \<const0> ;
  wire \<const1> ;
  wire chip_select_reg_i_1_n_0;
  wire chip_select_reg_i_2_n_0;
  wire chip_select_reg_i_3_n_0;
  wire chip_select_reg_i_4_n_0;
  wire chip_select_reg_i_5_n_0;
  wire chip_select_reg_i_6_n_0;
  wire chip_select_reg_reg_0;
  wire clk;
  wire \clkcnt_reg[0]_i_2_n_0 ;
  wire [19:0]clkcnt_reg_reg;
  wire \clkcnt_reg_reg[0]_i_1_n_0 ;
  wire \clkcnt_reg_reg[0]_i_1_n_4 ;
  wire \clkcnt_reg_reg[0]_i_1_n_5 ;
  wire \clkcnt_reg_reg[0]_i_1_n_6 ;
  wire \clkcnt_reg_reg[0]_i_1_n_7 ;
  wire \clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ;
  wire \clkcnt_reg_reg[12]_i_1_n_0 ;
  wire \clkcnt_reg_reg[12]_i_1_n_4 ;
  wire \clkcnt_reg_reg[12]_i_1_n_5 ;
  wire \clkcnt_reg_reg[12]_i_1_n_6 ;
  wire \clkcnt_reg_reg[12]_i_1_n_7 ;
  wire \clkcnt_reg_reg[16]_i_1_n_4 ;
  wire \clkcnt_reg_reg[16]_i_1_n_5 ;
  wire \clkcnt_reg_reg[16]_i_1_n_6 ;
  wire \clkcnt_reg_reg[16]_i_1_n_7 ;
  wire \clkcnt_reg_reg[4]_i_1_n_0 ;
  wire \clkcnt_reg_reg[4]_i_1_n_4 ;
  wire \clkcnt_reg_reg[4]_i_1_n_5 ;
  wire \clkcnt_reg_reg[4]_i_1_n_6 ;
  wire \clkcnt_reg_reg[4]_i_1_n_7 ;
  wire \clkcnt_reg_reg[8]_i_1_n_0 ;
  wire \clkcnt_reg_reg[8]_i_1_n_4 ;
  wire \clkcnt_reg_reg[8]_i_1_n_5 ;
  wire \clkcnt_reg_reg[8]_i_1_n_6 ;
  wire \clkcnt_reg_reg[8]_i_1_n_7 ;
  wire [3:0]ja_OBUF;
  wire [2:0]jb_OBUF;
  wire [6:0]sseg_decoder1_o;
  wire [3:0]sw_IBUF;
  wire [3:0]\NLW_clkcnt_reg_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clkcnt_reg_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clkcnt_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clkcnt_reg_reg[8]_i_1_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000100)) 
    chip_select_reg_i_1
       (.I0(chip_select_reg_i_2_n_0),
        .I1(chip_select_reg_i_3_n_0),
        .I2(chip_select_reg_i_4_n_0),
        .I3(chip_select_reg_i_5_n_0),
        .I4(chip_select_reg_i_6_n_0),
        .I5(chip_select_reg_reg_0),
        .O(chip_select_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    chip_select_reg_i_2
       (.I0(clkcnt_reg_reg[17]),
        .I1(clkcnt_reg_reg[9]),
        .I2(clkcnt_reg_reg[7]),
        .I3(clkcnt_reg_reg[3]),
        .O(chip_select_reg_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    chip_select_reg_i_3
       (.I0(clkcnt_reg_reg[2]),
        .I1(clkcnt_reg_reg[18]),
        .I2(clkcnt_reg_reg[19]),
        .I3(clkcnt_reg_reg[15]),
        .O(chip_select_reg_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    chip_select_reg_i_4
       (.I0(clkcnt_reg_reg[10]),
        .I1(clkcnt_reg_reg[0]),
        .I2(clkcnt_reg_reg[6]),
        .I3(clkcnt_reg_reg[16]),
        .O(chip_select_reg_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    chip_select_reg_i_5
       (.I0(clkcnt_reg_reg[12]),
        .I1(clkcnt_reg_reg[13]),
        .I2(clkcnt_reg_reg[1]),
        .I3(clkcnt_reg_reg[14]),
        .O(chip_select_reg_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    chip_select_reg_i_6
       (.I0(clkcnt_reg_reg[5]),
        .I1(clkcnt_reg_reg[8]),
        .I2(clkcnt_reg_reg[4]),
        .I3(clkcnt_reg_reg[11]),
        .O(chip_select_reg_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    chip_select_reg_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(chip_select_reg_i_1_n_0),
        .Q(chip_select_reg_reg_0),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \clkcnt_reg[0]_i_2 
       (.I0(clkcnt_reg_reg[0]),
        .O(\clkcnt_reg[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\clkcnt_reg_reg[0]_i_1_n_7 ),
        .Q(clkcnt_reg_reg[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP RETARGET" *) 
  CARRY4 \clkcnt_reg_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\clkcnt_reg_reg[0]_i_1_n_0 ,\NLW_clkcnt_reg_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\clkcnt_reg_reg[0]_i_1_n_4 ,\clkcnt_reg_reg[0]_i_1_n_5 ,\clkcnt_reg_reg[0]_i_1_n_6 ,\clkcnt_reg_reg[0]_i_1_n_7 }),
        .S({clkcnt_reg_reg[3:1],\clkcnt_reg[0]_i_2_n_0 }));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[10] 
       (.C(clk),
        .CE(\clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\clkcnt_reg_reg[8]_i_1_n_5 ),
        .Q(clkcnt_reg_reg[10]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \clkcnt_reg_reg[10]_CE_cooolgate_en_gate_1 
       (.I0(clkcnt_reg_reg[0]),
        .I1(\clkcnt_reg_reg[0]_i_1_n_0 ),
        .O(\clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[11] 
       (.C(clk),
        .CE(\clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\clkcnt_reg_reg[8]_i_1_n_4 ),
        .Q(clkcnt_reg_reg[11]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[12] 
       (.C(clk),
        .CE(\clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\clkcnt_reg_reg[12]_i_1_n_7 ),
        .Q(clkcnt_reg_reg[12]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clkcnt_reg_reg[12]_i_1 
       (.CI(\clkcnt_reg_reg[8]_i_1_n_0 ),
        .CO({\clkcnt_reg_reg[12]_i_1_n_0 ,\NLW_clkcnt_reg_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clkcnt_reg_reg[12]_i_1_n_4 ,\clkcnt_reg_reg[12]_i_1_n_5 ,\clkcnt_reg_reg[12]_i_1_n_6 ,\clkcnt_reg_reg[12]_i_1_n_7 }),
        .S(clkcnt_reg_reg[15:12]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[13] 
       (.C(clk),
        .CE(\clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\clkcnt_reg_reg[12]_i_1_n_6 ),
        .Q(clkcnt_reg_reg[13]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[14] 
       (.C(clk),
        .CE(\clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\clkcnt_reg_reg[12]_i_1_n_5 ),
        .Q(clkcnt_reg_reg[14]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[15] 
       (.C(clk),
        .CE(\clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\clkcnt_reg_reg[12]_i_1_n_4 ),
        .Q(clkcnt_reg_reg[15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\clkcnt_reg_reg[16]_i_1_n_7 ),
        .Q(clkcnt_reg_reg[16]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clkcnt_reg_reg[16]_i_1 
       (.CI(\clkcnt_reg_reg[12]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clkcnt_reg_reg[16]_i_1_n_4 ,\clkcnt_reg_reg[16]_i_1_n_5 ,\clkcnt_reg_reg[16]_i_1_n_6 ,\clkcnt_reg_reg[16]_i_1_n_7 }),
        .S(clkcnt_reg_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\clkcnt_reg_reg[16]_i_1_n_6 ),
        .Q(clkcnt_reg_reg[17]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\clkcnt_reg_reg[16]_i_1_n_5 ),
        .Q(clkcnt_reg_reg[18]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\clkcnt_reg_reg[16]_i_1_n_4 ),
        .Q(clkcnt_reg_reg[19]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[1] 
       (.C(clk),
        .CE(\clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\clkcnt_reg_reg[0]_i_1_n_6 ),
        .Q(clkcnt_reg_reg[1]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[2] 
       (.C(clk),
        .CE(\clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\clkcnt_reg_reg[0]_i_1_n_5 ),
        .Q(clkcnt_reg_reg[2]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[3] 
       (.C(clk),
        .CE(\clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\clkcnt_reg_reg[0]_i_1_n_4 ),
        .Q(clkcnt_reg_reg[3]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[4] 
       (.C(clk),
        .CE(\clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\clkcnt_reg_reg[4]_i_1_n_7 ),
        .Q(clkcnt_reg_reg[4]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clkcnt_reg_reg[4]_i_1 
       (.CI(\clkcnt_reg_reg[0]_i_1_n_0 ),
        .CO({\clkcnt_reg_reg[4]_i_1_n_0 ,\NLW_clkcnt_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clkcnt_reg_reg[4]_i_1_n_4 ,\clkcnt_reg_reg[4]_i_1_n_5 ,\clkcnt_reg_reg[4]_i_1_n_6 ,\clkcnt_reg_reg[4]_i_1_n_7 }),
        .S(clkcnt_reg_reg[7:4]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[5] 
       (.C(clk),
        .CE(\clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\clkcnt_reg_reg[4]_i_1_n_6 ),
        .Q(clkcnt_reg_reg[5]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[6] 
       (.C(clk),
        .CE(\clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\clkcnt_reg_reg[4]_i_1_n_5 ),
        .Q(clkcnt_reg_reg[6]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[7] 
       (.C(clk),
        .CE(\clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\clkcnt_reg_reg[4]_i_1_n_4 ),
        .Q(clkcnt_reg_reg[7]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[8] 
       (.C(clk),
        .CE(\clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\clkcnt_reg_reg[8]_i_1_n_7 ),
        .Q(clkcnt_reg_reg[8]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clkcnt_reg_reg[8]_i_1 
       (.CI(\clkcnt_reg_reg[4]_i_1_n_0 ),
        .CO({\clkcnt_reg_reg[8]_i_1_n_0 ,\NLW_clkcnt_reg_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clkcnt_reg_reg[8]_i_1_n_4 ,\clkcnt_reg_reg[8]_i_1_n_5 ,\clkcnt_reg_reg[8]_i_1_n_6 ,\clkcnt_reg_reg[8]_i_1_n_7 }),
        .S(clkcnt_reg_reg[11:8]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg_reg[9] 
       (.C(clk),
        .CE(\clkcnt_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\clkcnt_reg_reg[8]_i_1_n_6 ),
        .Q(clkcnt_reg_reg[9]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h3EDBFFFF3EDB0000)) 
    \ja_OBUF[0]_inst_i_1 
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(chip_select_reg_reg_0),
        .I5(sseg_decoder1_o[0]),
        .O(ja_OBUF[0]));
  LUT6 #(
    .INIT(64'hA8EFFFFFA8EF0000)) 
    \ja_OBUF[1]_inst_i_1 
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[0]),
        .I4(chip_select_reg_reg_0),
        .I5(sseg_decoder1_o[1]),
        .O(ja_OBUF[1]));
  LUT6 #(
    .INIT(64'hAE6FFFFFAE6F0000)) 
    \ja_OBUF[2]_inst_i_1 
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[1]),
        .I4(chip_select_reg_reg_0),
        .I5(sseg_decoder1_o[2]),
        .O(ja_OBUF[2]));
  LUT6 #(
    .INIT(64'hD6FBFFFFD6FB0000)) 
    \ja_OBUF[3]_inst_i_1 
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(chip_select_reg_reg_0),
        .I5(sseg_decoder1_o[3]),
        .O(ja_OBUF[3]));
  LUT6 #(
    .INIT(64'h617FFFFF617F0000)) 
    \jb_OBUF[0]_inst_i_1 
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[2]),
        .I4(chip_select_reg_reg_0),
        .I5(sseg_decoder1_o[4]),
        .O(jb_OBUF[0]));
  LUT6 #(
    .INIT(64'h7F67FFFF7F670000)) 
    \jb_OBUF[1]_inst_i_1 
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(chip_select_reg_reg_0),
        .I5(sseg_decoder1_o[5]),
        .O(jb_OBUF[1]));
  LUT6 #(
    .INIT(64'hBFDAFFFFBFDA0000)) 
    \jb_OBUF[2]_inst_i_1 
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[1]),
        .I4(chip_select_reg_reg_0),
        .I5(sseg_decoder1_o[6]),
        .O(jb_OBUF[2]));
endmodule

(* ECO_CHECKSUM = "d961153" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module top
   (clk,
    sw,
    btn,
    led,
    ja,
    jb,
    sseg_cs_out,
    uart_txd_in,
    uart_rxd_out);
  input clk;
  input [3:0]sw;
  input [3:0]btn;
  output [3:0]led;
  output [3:0]ja;
  output [2:0]jb;
  output sseg_cs_out;
  input uart_txd_in;
  output uart_rxd_out;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]btn;
  wire [3:0]btn_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]ja;
  wire [3:0]ja_OBUF;
  wire [2:0]jb;
  wire [2:0]jb_OBUF;
  wire [3:0]led;
  wire [3:0]led_OBUF;
  wire p_0_in;
  wire \r_counter[0]_i_2_n_0 ;
  wire [25:0]r_counter_reg;
  wire \r_counter_reg[0]_i_1_n_0 ;
  wire \r_counter_reg[0]_i_1_n_4 ;
  wire \r_counter_reg[0]_i_1_n_5 ;
  wire \r_counter_reg[0]_i_1_n_6 ;
  wire \r_counter_reg[0]_i_1_n_7 ;
  wire \r_counter_reg[12]_i_1_n_0 ;
  wire \r_counter_reg[12]_i_1_n_4 ;
  wire \r_counter_reg[12]_i_1_n_5 ;
  wire \r_counter_reg[12]_i_1_n_6 ;
  wire \r_counter_reg[12]_i_1_n_7 ;
  wire \r_counter_reg[16]_i_1_n_0 ;
  wire \r_counter_reg[16]_i_1_n_4 ;
  wire \r_counter_reg[16]_i_1_n_5 ;
  wire \r_counter_reg[16]_i_1_n_6 ;
  wire \r_counter_reg[16]_i_1_n_7 ;
  wire \r_counter_reg[20]_i_1_n_0 ;
  wire \r_counter_reg[20]_i_1_n_4 ;
  wire \r_counter_reg[20]_i_1_n_5 ;
  wire \r_counter_reg[20]_i_1_n_6 ;
  wire \r_counter_reg[20]_i_1_n_7 ;
  wire \r_counter_reg[24]_i_1_n_6 ;
  wire \r_counter_reg[24]_i_1_n_7 ;
  wire \r_counter_reg[4]_i_1_n_0 ;
  wire \r_counter_reg[4]_i_1_n_4 ;
  wire \r_counter_reg[4]_i_1_n_5 ;
  wire \r_counter_reg[4]_i_1_n_6 ;
  wire \r_counter_reg[4]_i_1_n_7 ;
  wire \r_counter_reg[5]_CE_cooolgate_en_sig_24 ;
  wire \r_counter_reg[6]_CE_cooolgate_en_sig_22 ;
  wire \r_counter_reg[8]_i_1_n_0 ;
  wire \r_counter_reg[8]_i_1_n_4 ;
  wire \r_counter_reg[8]_i_1_n_5 ;
  wire \r_counter_reg[8]_i_1_n_6 ;
  wire \r_counter_reg[8]_i_1_n_7 ;
  wire \r_led_counter[3]_i_3_n_0 ;
  wire \r_led_counter[3]_i_4_n_0 ;
  wire \r_led_counter[3]_i_5_n_0 ;
  wire \r_led_counter[3]_i_6_n_0 ;
  wire \r_led_counter[3]_i_7_n_0 ;
  wire [3:0]r_led_counter_next;
  wire sseg_cs_out;
  wire sseg_cs_out_OBUF;
  wire [6:0]sseg_decoder1_o;
  wire [3:0]sw;
  wire [3:0]sw_IBUF;
  wire uart_rxd_out;
  wire uart_rxd_out_OBUF;
  wire uart_txd_in;
  wire uart_txd_in_IBUF;
  wire [3:0]\NLW_r_counter_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_r_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_r_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_r_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_r_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_r_counter_reg[8]_i_1_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  IBUF \btn_IBUF[0]_inst 
       (.I(btn[0]),
        .O(btn_IBUF[0]));
  IBUF \btn_IBUF[1]_inst 
       (.I(btn[1]),
        .O(btn_IBUF[1]));
  IBUF \btn_IBUF[2]_inst 
       (.I(btn[2]),
        .O(btn_IBUF[2]));
  IBUF \btn_IBUF[3]_inst 
       (.I(btn[3]),
        .O(btn_IBUF[3]));
  (* LOPT_BUFG_CLOCK *) 
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  (* OPT_INSERTED *) 
  (* OPT_MODIFIED = "MLO BUFG_OPT" *) 
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \ja_OBUF[0]_inst 
       (.I(ja_OBUF[0]),
        .O(ja[0]));
  LUT4 #(
    .INIT(16'h3EDB)) 
    \ja_OBUF[0]_inst_i_2 
       (.I0(btn_IBUF[3]),
        .I1(btn_IBUF[2]),
        .I2(btn_IBUF[1]),
        .I3(btn_IBUF[0]),
        .O(sseg_decoder1_o[0]));
  OBUF \ja_OBUF[1]_inst 
       (.I(ja_OBUF[1]),
        .O(ja[1]));
  LUT4 #(
    .INIT(16'hA8EF)) 
    \ja_OBUF[1]_inst_i_2 
       (.I0(btn_IBUF[3]),
        .I1(btn_IBUF[1]),
        .I2(btn_IBUF[2]),
        .I3(btn_IBUF[0]),
        .O(sseg_decoder1_o[1]));
  OBUF \ja_OBUF[2]_inst 
       (.I(ja_OBUF[2]),
        .O(ja[2]));
  LUT4 #(
    .INIT(16'hAE6F)) 
    \ja_OBUF[2]_inst_i_2 
       (.I0(btn_IBUF[3]),
        .I1(btn_IBUF[2]),
        .I2(btn_IBUF[0]),
        .I3(btn_IBUF[1]),
        .O(sseg_decoder1_o[2]));
  OBUF \ja_OBUF[3]_inst 
       (.I(ja_OBUF[3]),
        .O(ja[3]));
  LUT4 #(
    .INIT(16'hD6FB)) 
    \ja_OBUF[3]_inst_i_2 
       (.I0(btn_IBUF[3]),
        .I1(btn_IBUF[2]),
        .I2(btn_IBUF[1]),
        .I3(btn_IBUF[0]),
        .O(sseg_decoder1_o[3]));
  OBUF \jb_OBUF[0]_inst 
       (.I(jb_OBUF[0]),
        .O(jb[0]));
  LUT4 #(
    .INIT(16'h617F)) 
    \jb_OBUF[0]_inst_i_2 
       (.I0(btn_IBUF[3]),
        .I1(btn_IBUF[1]),
        .I2(btn_IBUF[0]),
        .I3(btn_IBUF[2]),
        .O(sseg_decoder1_o[4]));
  OBUF \jb_OBUF[1]_inst 
       (.I(jb_OBUF[1]),
        .O(jb[1]));
  LUT4 #(
    .INIT(16'h7F67)) 
    \jb_OBUF[1]_inst_i_2 
       (.I0(btn_IBUF[3]),
        .I1(btn_IBUF[2]),
        .I2(btn_IBUF[1]),
        .I3(btn_IBUF[0]),
        .O(sseg_decoder1_o[5]));
  OBUF \jb_OBUF[2]_inst 
       (.I(jb_OBUF[2]),
        .O(jb[2]));
  LUT4 #(
    .INIT(16'hBFDA)) 
    \jb_OBUF[2]_inst_i_2 
       (.I0(btn_IBUF[3]),
        .I1(btn_IBUF[0]),
        .I2(btn_IBUF[2]),
        .I3(btn_IBUF[1]),
        .O(sseg_decoder1_o[6]));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \r_counter[0]_i_2 
       (.I0(r_counter_reg[0]),
        .O(\r_counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[0]_i_1_n_7 ),
        .Q(r_counter_reg[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP RETARGET" *) 
  CARRY4 \r_counter_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\r_counter_reg[0]_i_1_n_0 ,\NLW_r_counter_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\r_counter_reg[0]_i_1_n_4 ,\r_counter_reg[0]_i_1_n_5 ,\r_counter_reg[0]_i_1_n_6 ,\r_counter_reg[0]_i_1_n_7 }),
        .S({r_counter_reg[3:1],\r_counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[8]_i_1_n_5 ),
        .Q(r_counter_reg[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[8]_i_1_n_4 ),
        .Q(r_counter_reg[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[12]_i_1_n_7 ),
        .Q(r_counter_reg[12]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_counter_reg[12]_i_1 
       (.CI(\r_counter_reg[8]_i_1_n_0 ),
        .CO({\r_counter_reg[12]_i_1_n_0 ,\NLW_r_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\r_counter_reg[12]_i_1_n_4 ,\r_counter_reg[12]_i_1_n_5 ,\r_counter_reg[12]_i_1_n_6 ,\r_counter_reg[12]_i_1_n_7 }),
        .S(r_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[12]_i_1_n_6 ),
        .Q(r_counter_reg[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[12]_i_1_n_5 ),
        .Q(r_counter_reg[14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[12]_i_1_n_4 ),
        .Q(r_counter_reg[15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[16]_i_1_n_7 ),
        .Q(r_counter_reg[16]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_counter_reg[16]_i_1 
       (.CI(\r_counter_reg[12]_i_1_n_0 ),
        .CO({\r_counter_reg[16]_i_1_n_0 ,\NLW_r_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\r_counter_reg[16]_i_1_n_4 ,\r_counter_reg[16]_i_1_n_5 ,\r_counter_reg[16]_i_1_n_6 ,\r_counter_reg[16]_i_1_n_7 }),
        .S(r_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[16]_i_1_n_6 ),
        .Q(r_counter_reg[17]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[16]_i_1_n_5 ),
        .Q(r_counter_reg[18]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[16]_i_1_n_4 ),
        .Q(r_counter_reg[19]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(r_counter_reg[0]),
        .D(\r_counter_reg[0]_i_1_n_6 ),
        .Q(r_counter_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[20]_i_1_n_7 ),
        .Q(r_counter_reg[20]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_counter_reg[20]_i_1 
       (.CI(\r_counter_reg[16]_i_1_n_0 ),
        .CO({\r_counter_reg[20]_i_1_n_0 ,\NLW_r_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\r_counter_reg[20]_i_1_n_4 ,\r_counter_reg[20]_i_1_n_5 ,\r_counter_reg[20]_i_1_n_6 ,\r_counter_reg[20]_i_1_n_7 }),
        .S(r_counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[20]_i_1_n_6 ),
        .Q(r_counter_reg[21]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[20]_i_1_n_5 ),
        .Q(r_counter_reg[22]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[20]_i_1_n_4 ),
        .Q(r_counter_reg[23]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[24]_i_1_n_7 ),
        .Q(r_counter_reg[24]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_counter_reg[24]_i_1 
       (.CI(\r_counter_reg[20]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\r_counter_reg[24]_i_1_n_6 ,\r_counter_reg[24]_i_1_n_7 }),
        .S({\<const0> ,\<const0> ,r_counter_reg[25:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[24]_i_1_n_6 ),
        .Q(r_counter_reg[25]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[0]_i_1_n_5 ),
        .Q(r_counter_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[0]_i_1_n_4 ),
        .Q(r_counter_reg[3]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_counter_reg[0]_i_1_n_0 ),
        .D(\r_counter_reg[4]_i_1_n_7 ),
        .Q(r_counter_reg[4]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_counter_reg[4]_i_1 
       (.CI(\r_counter_reg[0]_i_1_n_0 ),
        .CO({\r_counter_reg[4]_i_1_n_0 ,\NLW_r_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\r_counter_reg[4]_i_1_n_4 ,\r_counter_reg[4]_i_1_n_5 ,\r_counter_reg[4]_i_1_n_6 ,\r_counter_reg[4]_i_1_n_7 }),
        .S(r_counter_reg[7:4]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_counter_reg[5]_CE_cooolgate_en_sig_24 ),
        .D(\r_counter_reg[4]_i_1_n_6 ),
        .Q(r_counter_reg[5]),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter_reg[5]_CE_cooolgate_en_gate_79 
       (.I0(r_counter_reg[4]),
        .I1(\r_counter_reg[0]_i_1_n_0 ),
        .O(\r_counter_reg[5]_CE_cooolgate_en_sig_24 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_counter_reg[6]_CE_cooolgate_en_sig_22 ),
        .D(\r_counter_reg[4]_i_1_n_5 ),
        .Q(r_counter_reg[6]),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h80)) 
    \r_counter_reg[6]_CE_cooolgate_en_gate_75 
       (.I0(r_counter_reg[5]),
        .I1(r_counter_reg[4]),
        .I2(\r_counter_reg[0]_i_1_n_0 ),
        .O(\r_counter_reg[6]_CE_cooolgate_en_sig_22 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[4]_i_1_n_4 ),
        .Q(r_counter_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[8]_i_1_n_7 ),
        .Q(r_counter_reg[8]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_counter_reg[8]_i_1 
       (.CI(\r_counter_reg[4]_i_1_n_0 ),
        .CO({\r_counter_reg[8]_i_1_n_0 ,\NLW_r_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\r_counter_reg[8]_i_1_n_4 ,\r_counter_reg[8]_i_1_n_5 ,\r_counter_reg[8]_i_1_n_6 ,\r_counter_reg[8]_i_1_n_7 }),
        .S(r_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r_counter_reg[8]_i_1_n_6 ),
        .Q(r_counter_reg[9]),
        .R(\<const0> ));
  (* \PinAttr:I0:HOLD_DETOUR  = "189" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_led_counter[0]_i_1 
       (.I0(led_OBUF[0]),
        .O(r_led_counter_next[0]));
  (* \PinAttr:I1:HOLD_DETOUR  = "189" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_led_counter[1]_i_1 
       (.I0(led_OBUF[1]),
        .I1(led_OBUF[0]),
        .O(r_led_counter_next[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_led_counter[2]_i_1 
       (.I0(led_OBUF[2]),
        .I1(led_OBUF[0]),
        .I2(led_OBUF[1]),
        .O(r_led_counter_next[2]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_led_counter[3]_i_1 
       (.I0(\r_led_counter[3]_i_3_n_0 ),
        .I1(r_counter_reg[25]),
        .I2(r_counter_reg[2]),
        .I3(r_counter_reg[16]),
        .I4(r_counter_reg[20]),
        .I5(\r_led_counter[3]_i_4_n_0 ),
        .O(p_0_in));
  (* \PinAttr:I2:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_led_counter[3]_i_2 
       (.I0(led_OBUF[3]),
        .I1(led_OBUF[1]),
        .I2(led_OBUF[0]),
        .I3(led_OBUF[2]),
        .O(r_led_counter_next[3]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_led_counter[3]_i_3 
       (.I0(r_counter_reg[10]),
        .I1(r_counter_reg[8]),
        .I2(r_counter_reg[14]),
        .I3(r_counter_reg[6]),
        .I4(\r_led_counter[3]_i_5_n_0 ),
        .O(\r_led_counter[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_led_counter[3]_i_4 
       (.I0(\r_led_counter[3]_i_6_n_0 ),
        .I1(\r_led_counter[3]_i_7_n_0 ),
        .I2(r_counter_reg[1]),
        .I3(r_counter_reg[0]),
        .I4(r_counter_reg[12]),
        .I5(r_counter_reg[18]),
        .O(\r_led_counter[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_led_counter[3]_i_5 
       (.I0(r_counter_reg[3]),
        .I1(r_counter_reg[23]),
        .I2(r_counter_reg[7]),
        .I3(r_counter_reg[15]),
        .O(\r_led_counter[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_led_counter[3]_i_6 
       (.I0(r_counter_reg[13]),
        .I1(r_counter_reg[21]),
        .I2(r_counter_reg[19]),
        .I3(r_counter_reg[17]),
        .I4(r_counter_reg[22]),
        .I5(r_counter_reg[24]),
        .O(\r_led_counter[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_led_counter[3]_i_7 
       (.I0(r_counter_reg[4]),
        .I1(r_counter_reg[5]),
        .I2(r_counter_reg[11]),
        .I3(r_counter_reg[9]),
        .O(\r_led_counter[3]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_led_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(r_led_counter_next[0]),
        .Q(led_OBUF[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_led_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(r_led_counter_next[1]),
        .Q(led_OBUF[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_led_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(r_led_counter_next[2]),
        .Q(led_OBUF[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_led_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(r_led_counter_next[3]),
        .Q(led_OBUF[3]),
        .R(\<const0> ));
  OBUF sseg_cs_out_OBUF_inst
       (.I(sseg_cs_out_OBUF),
        .O(sseg_cs_out));
  sseg_controller sseg_pmod_controller
       (.clk(clk_IBUF_BUFG),
        .ja_OBUF(ja_OBUF),
        .jb_OBUF(jb_OBUF),
        .sseg_cs_out_OBUF(sseg_cs_out_OBUF),
        .sseg_decoder1_o(sseg_decoder1_o),
        .sw_IBUF(sw_IBUF));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  uart_mirror uart_mirror2
       (.clk(clk_IBUF_BUFG),
        .uart_rxd_out_OBUF(uart_rxd_out_OBUF),
        .uart_txd_in_IBUF(uart_txd_in_IBUF));
  OBUF uart_rxd_out_OBUF_inst
       (.I(uart_rxd_out_OBUF),
        .O(uart_rxd_out));
  IBUF uart_txd_in_IBUF_inst
       (.I(uart_txd_in),
        .O(uart_txd_in_IBUF));
endmodule

module uart_mirror
   (uart_rxd_out_OBUF,
    clk,
    uart_txd_in_IBUF);
  output uart_rxd_out_OBUF;
  input clk;
  input uart_txd_in_IBUF;

  wire clk;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire pwropt_3;
  wire [7:0]rxbyte_reg;
  wire [2:2]state_reg;
  wire tx_controller_n_1;
  wire uart_receiver_n_1;
  wire uart_receiver_n_2;
  wire uart_rxd_out_OBUF;
  wire uart_txd_in_IBUF;

  uart_tx_controller tx_controller
       (.\FSM_sequential_state_reg_reg[0]_0 (tx_controller_n_1),
        .\FSM_sequential_state_reg_reg[0]_1 (uart_receiver_n_1),
        .\FSM_sequential_state_reg_reg[2]_0 (state_reg),
        .Q(rxbyte_reg),
        .clk(clk),
        .\clk_cnt_reg_reg[13]_0 (uart_receiver_n_2),
        .lopt(tx_controller_n_1),
        .lopt_1(state_reg),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .pwropt_2(pwropt_2),
        .pwropt_3(pwropt_3),
        .uart_rxd_out_OBUF(uart_rxd_out_OBUF));
  uart_rx_controller uart_receiver
       (.\FSM_sequential_state_reg_reg[1]_1 (uart_receiver_n_1),
        .\FSM_sequential_state_reg_reg[2]_0 (uart_receiver_n_2),
        .Q(rxbyte_reg),
        .clk(clk),
        .\clk_cnt_reg_reg[13]_0 (tx_controller_n_1),
        .\clk_cnt_reg_reg[13]_1 (state_reg),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .pwropt_2(pwropt_2),
        .pwropt_3(pwropt_3),
        .uart_txd_in_IBUF(uart_txd_in_IBUF));
endmodule

module uart_rx_controller
   (\FSM_sequential_state_reg_reg[1]_0 ,
    \FSM_sequential_state_reg_reg[1]_1 ,
    \FSM_sequential_state_reg_reg[2]_0 ,
    Q,
    clk,
    uart_txd_in_IBUF,
    \clk_cnt_reg_reg[13]_0 ,
    \clk_cnt_reg_reg[13]_1 ,
    .pwropt(\FSM_sequential_state_reg[2]_i_2_n_0 ),
    pwropt_1,
    pwropt_2,
    pwropt_3);
  output \FSM_sequential_state_reg_reg[1]_0 ;
  output \FSM_sequential_state_reg_reg[1]_1 ;
  output \FSM_sequential_state_reg_reg[2]_0 ;
  output [7:0]Q;
  input clk;
  input uart_txd_in_IBUF;
  input \clk_cnt_reg_reg[13]_0 ;
  input [0:0]\clk_cnt_reg_reg[13]_1 ;
  output pwropt_1;
  output pwropt_2;
  output pwropt_3;
  output \FSM_sequential_state_reg[2]_i_2_n_0 ;

  wire \<const0> ;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_2__0_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_6_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_7_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_8_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_2_n_0 ;
  wire \FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_16 ;
  wire \FSM_sequential_state_reg_reg[1]_1 ;
  wire \FSM_sequential_state_reg_reg[2]_0 ;
  wire [7:0]Q;
  wire [2:0]bitIndex_reg;
  wire \bitIndex_reg[0]_i_1_n_0 ;
  wire \bitIndex_reg[1]_i_1_n_0 ;
  wire \bitIndex_reg[2]_i_1_n_0 ;
  wire \bitIndex_reg[2]_i_2_n_0 ;
  wire clk;
  wire \clk_cnt_reg[0]_i_1_n_0 ;
  wire \clk_cnt_reg[0]_i_3__0_n_0 ;
  wire \clk_cnt_reg[0]_i_4__0_n_0 ;
  wire \clk_cnt_reg[0]_i_5__0_n_0 ;
  wire \clk_cnt_reg[0]_i_6__0_n_0 ;
  wire \clk_cnt_reg[0]_i_7__0_n_0 ;
  wire \clk_cnt_reg[12]_i_2__0_n_0 ;
  wire \clk_cnt_reg[12]_i_3__0_n_0 ;
  wire \clk_cnt_reg[4]_i_2__0_n_0 ;
  wire \clk_cnt_reg[4]_i_3__0_n_0 ;
  wire \clk_cnt_reg[4]_i_4__0_n_0 ;
  wire \clk_cnt_reg[4]_i_5__0_n_0 ;
  wire \clk_cnt_reg[8]_i_2__0_n_0 ;
  wire \clk_cnt_reg[8]_i_3__0_n_0 ;
  wire \clk_cnt_reg[8]_i_4__0_n_0 ;
  wire \clk_cnt_reg[8]_i_5__0_n_0 ;
  wire \clk_cnt_reg_reg[0]_i_2_n_0 ;
  wire \clk_cnt_reg_reg[0]_i_2_n_4 ;
  wire \clk_cnt_reg_reg[0]_i_2_n_5 ;
  wire \clk_cnt_reg_reg[0]_i_2_n_6 ;
  wire \clk_cnt_reg_reg[0]_i_2_n_7 ;
  wire \clk_cnt_reg_reg[12]_i_1_n_6 ;
  wire \clk_cnt_reg_reg[12]_i_1_n_7 ;
  wire \clk_cnt_reg_reg[13]_0 ;
  wire [0:0]\clk_cnt_reg_reg[13]_1 ;
  wire \clk_cnt_reg_reg[4]_i_1_n_0 ;
  wire \clk_cnt_reg_reg[4]_i_1_n_4 ;
  wire \clk_cnt_reg_reg[4]_i_1_n_5 ;
  wire \clk_cnt_reg_reg[4]_i_1_n_6 ;
  wire \clk_cnt_reg_reg[4]_i_1_n_7 ;
  wire \clk_cnt_reg_reg[8]_i_1_n_0 ;
  wire \clk_cnt_reg_reg[8]_i_1_n_4 ;
  wire \clk_cnt_reg_reg[8]_i_1_n_5 ;
  wire \clk_cnt_reg_reg[8]_i_1_n_6 ;
  wire \clk_cnt_reg_reg[8]_i_1_n_7 ;
  wire \clk_cnt_reg_reg_n_0_[0] ;
  wire \clk_cnt_reg_reg_n_0_[10] ;
  wire \clk_cnt_reg_reg_n_0_[11] ;
  wire \clk_cnt_reg_reg_n_0_[12] ;
  wire \clk_cnt_reg_reg_n_0_[13] ;
  wire \clk_cnt_reg_reg_n_0_[1] ;
  wire \clk_cnt_reg_reg_n_0_[2] ;
  wire \clk_cnt_reg_reg_n_0_[3] ;
  wire \clk_cnt_reg_reg_n_0_[4] ;
  wire \clk_cnt_reg_reg_n_0_[5] ;
  wire \clk_cnt_reg_reg_n_0_[6] ;
  wire \clk_cnt_reg_reg_n_0_[7] ;
  wire \clk_cnt_reg_reg_n_0_[8] ;
  wire \clk_cnt_reg_reg_n_0_[9] ;
  wire [7:0]rxbyte_next;
  wire \rxbyte_reg[7]_i_2_n_0 ;
  wire \rxbyte_reg[7]_i_3_n_0 ;
  wire \rxbyte_reg[7]_i_4_n_0 ;
  wire \rxbyte_reg[7]_i_5_n_0 ;
  wire \rxbyte_reg_reg[0]_CE_cooolgate_en_sig_5 ;
  wire \rxbyte_reg_reg[0]_CE_cooolgate_en_sig_6 ;
  wire \rxbyte_reg_reg[1]_CE_cooolgate_en_sig_7 ;
  wire \rxbyte_reg_reg[2]_CE_cooolgate_en_sig_8 ;
  wire \rxbyte_reg_reg[3]_CE_cooolgate_en_sig_9 ;
  wire \rxbyte_reg_reg[4]_CE_cooolgate_en_sig_10 ;
  wire \rxbyte_reg_reg[5]_CE_cooolgate_en_sig_11 ;
  wire \rxbyte_reg_reg[6]_CE_cooolgate_en_sig_12 ;
  wire \rxbyte_reg_reg[7]_CE_cooolgate_en_sig_13 ;
  wire [2:0]state_reg;
  wire uart_txd_in_IBUF;
  wire [3:0]\NLW_clk_cnt_reg_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_cnt_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_cnt_reg_reg[8]_i_1_CO_UNCONNECTED ;

  assign pwropt_1 = state_reg[0];
  assign pwropt_2 = state_reg[1];
  assign pwropt_3 = state_reg[2];
  LUT6 #(
    .INIT(64'h010101FF55555500)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg[2]),
        .I1(state_reg[1]),
        .I2(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I3(\FSM_sequential_state_reg[0]_i_3_n_0 ),
        .I4(rxbyte_next[7]),
        .I5(state_reg[0]),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \FSM_sequential_state_reg[0]_i_2 
       (.I0(\rxbyte_reg[7]_i_5_n_0 ),
        .I1(\rxbyte_reg[7]_i_4_n_0 ),
        .I2(\rxbyte_reg[7]_i_3_n_0 ),
        .I3(\rxbyte_reg[7]_i_2_n_0 ),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[1]_i_6_n_0 ),
        .O(\FSM_sequential_state_reg_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \FSM_sequential_state_reg[0]_i_2__0 
       (.I0(\rxbyte_reg[7]_i_2_n_0 ),
        .I1(\clk_cnt_reg_reg_n_0_[6] ),
        .I2(\clk_cnt_reg_reg_n_0_[0] ),
        .I3(\clk_cnt_reg_reg_n_0_[1] ),
        .I4(\clk_cnt_reg_reg_n_0_[4] ),
        .I5(\FSM_sequential_state_reg[1]_i_8_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h222222222222222A)) 
    \FSM_sequential_state_reg[0]_i_3 
       (.I0(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I1(state_reg[1]),
        .I2(\rxbyte_reg[7]_i_2_n_0 ),
        .I3(\rxbyte_reg[7]_i_3_n_0 ),
        .I4(\rxbyte_reg[7]_i_4_n_0 ),
        .I5(\rxbyte_reg[7]_i_5_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCECECFCFFACAC)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(state_reg[1]),
        .I2(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_5_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(\FSM_sequential_state_reg[1]_i_6_n_0 ),
        .I1(\rxbyte_reg[7]_i_2_n_0 ),
        .I2(\clk_cnt_reg_reg_n_0_[6] ),
        .I3(\FSM_sequential_state_reg[1]_i_7_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_8_n_0 ),
        .I5(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h11CD)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(uart_txd_in_IBUF),
        .I3(state_reg[2]),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(bitIndex_reg[2]),
        .I1(bitIndex_reg[0]),
        .I2(bitIndex_reg[1]),
        .O(\FSM_sequential_state_reg[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state_reg[1]_i_5 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .O(\FSM_sequential_state_reg[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state_reg[1]_i_6 
       (.I0(state_reg[2]),
        .I1(state_reg[0]),
        .O(\FSM_sequential_state_reg[1]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state_reg[1]_i_7 
       (.I0(\clk_cnt_reg_reg_n_0_[0] ),
        .I1(\clk_cnt_reg_reg_n_0_[1] ),
        .I2(\clk_cnt_reg_reg_n_0_[4] ),
        .O(\FSM_sequential_state_reg[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_sequential_state_reg[1]_i_8 
       (.I0(\clk_cnt_reg_reg_n_0_[12] ),
        .I1(\clk_cnt_reg_reg_n_0_[2] ),
        .I2(\clk_cnt_reg_reg_n_0_[10] ),
        .I3(\clk_cnt_reg_reg_n_0_[13] ),
        .O(\FSM_sequential_state_reg[1]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state_reg[1]_i_9 
       (.I0(state_reg[1]),
        .I1(uart_txd_in_IBUF),
        .O(\FSM_sequential_state_reg[1]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hA8E8)) 
    \FSM_sequential_state_reg[2]_i_1 
       (.I0(state_reg[2]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    \FSM_sequential_state_reg[2]_i_2 
       (.I0(\rxbyte_reg[7]_i_2_n_0 ),
        .I1(\rxbyte_reg[7]_i_3_n_0 ),
        .I2(\rxbyte_reg[7]_i_4_n_0 ),
        .I3(\clk_cnt_reg_reg_n_0_[8] ),
        .I4(\clk_cnt_reg_reg_n_0_[7] ),
        .I5(\clk_cnt_reg_reg_n_0_[6] ),
        .O(\FSM_sequential_state_reg[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "receive_stopbit:011,cleanup:100,receive_startbit:001,idle:000,receive_databits:010" *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_16 ),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hf222ffffffffffff)) 
    \FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_gate_61 
       (.I0(state_reg[0]),
        .I1(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I2(\clk_cnt_reg_reg_n_0_[1] ),
        .I3(\clk_cnt_reg_reg_n_0_[0] ),
        .I4(state_reg[2]),
        .I5(state_reg[1]),
        .O(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_16 ));
  (* FSM_ENCODED_STATES = "receive_stopbit:011,cleanup:100,receive_startbit:001,idle:000,receive_databits:010" *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_16 ),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "receive_stopbit:011,cleanup:100,receive_startbit:001,idle:000,receive_databits:010" *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_16 ),
        .D(\FSM_sequential_state_reg[2]_i_1_n_0 ),
        .Q(state_reg[2]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bitIndex_reg[0]_i_1 
       (.I0(\bitIndex_reg[2]_i_2_n_0 ),
        .I1(bitIndex_reg[0]),
        .O(\bitIndex_reg[0]_i_1_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bitIndex_reg[1]_i_1 
       (.I0(bitIndex_reg[0]),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(bitIndex_reg[1]),
        .O(\bitIndex_reg[1]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bitIndex_reg[2]_i_1 
       (.I0(bitIndex_reg[0]),
        .I1(bitIndex_reg[1]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .I3(bitIndex_reg[2]),
        .O(\bitIndex_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bitIndex_reg[2]_i_2 
       (.I0(\FSM_sequential_state_reg[1]_i_5_n_0 ),
        .I1(\rxbyte_reg[7]_i_5_n_0 ),
        .I2(\rxbyte_reg[7]_i_4_n_0 ),
        .I3(\rxbyte_reg[7]_i_3_n_0 ),
        .I4(\rxbyte_reg[7]_i_2_n_0 ),
        .O(\bitIndex_reg[2]_i_2_n_0 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bitIndex_reg_reg[0] 
       (.C(clk),
        .CE(\bitIndex_reg[2]_i_2_n_0 ),
        .D(\bitIndex_reg[0]_i_1_n_0 ),
        .Q(bitIndex_reg[0]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bitIndex_reg_reg[1] 
       (.C(clk),
        .CE(\bitIndex_reg[2]_i_2_n_0 ),
        .D(\bitIndex_reg[1]_i_1_n_0 ),
        .Q(bitIndex_reg[1]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bitIndex_reg_reg[2] 
       (.C(clk),
        .CE(\bitIndex_reg[2]_i_2_n_0 ),
        .D(\bitIndex_reg[2]_i_1_n_0 ),
        .Q(bitIndex_reg[2]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hAAAAFFFB)) 
    \clk_cnt_reg[0]_i_1 
       (.I0(\bitIndex_reg[2]_i_2_n_0 ),
        .I1(uart_txd_in_IBUF),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(state_reg[2]),
        .O(\clk_cnt_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1111151111111111)) 
    \clk_cnt_reg[0]_i_1__0 
       (.I0(\clk_cnt_reg_reg[13]_1 ),
        .I1(\clk_cnt_reg_reg[13]_0 ),
        .I2(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I3(state_reg[1]),
        .I4(state_reg[2]),
        .I5(state_reg[0]),
        .O(\FSM_sequential_state_reg_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h5555555555555504)) 
    \clk_cnt_reg[0]_i_3__0 
       (.I0(\bitIndex_reg[2]_i_2_n_0 ),
        .I1(state_reg[0]),
        .I2(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I3(state_reg[1]),
        .I4(uart_txd_in_IBUF),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDFFDF)) 
    \clk_cnt_reg[0]_i_4__0 
       (.I0(\clk_cnt_reg_reg_n_0_[3] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDFFDF)) 
    \clk_cnt_reg[0]_i_5__0 
       (.I0(\clk_cnt_reg_reg_n_0_[2] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDFFDF)) 
    \clk_cnt_reg[0]_i_6__0 
       (.I0(\clk_cnt_reg_reg_n_0_[1] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDFFDF)) 
    \clk_cnt_reg[0]_i_7__0 
       (.I0(\clk_cnt_reg_reg_n_0_[0] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[0]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAFBFFFFFFFF)) 
    \clk_cnt_reg[12]_i_2__0 
       (.I0(\bitIndex_reg[2]_i_2_n_0 ),
        .I1(state_reg[0]),
        .I2(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .I4(state_reg[2]),
        .I5(\clk_cnt_reg_reg_n_0_[13] ),
        .O(\clk_cnt_reg[12]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111110010)) 
    \clk_cnt_reg[12]_i_3__0 
       (.I0(\clk_cnt_reg_reg_n_0_[12] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[12]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDFFDF)) 
    \clk_cnt_reg[4]_i_2__0 
       (.I0(\clk_cnt_reg_reg_n_0_[7] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111110010)) 
    \clk_cnt_reg[4]_i_3__0 
       (.I0(\clk_cnt_reg_reg_n_0_[6] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDFFDF)) 
    \clk_cnt_reg[4]_i_4__0 
       (.I0(\clk_cnt_reg_reg_n_0_[5] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[4]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111110010)) 
    \clk_cnt_reg[4]_i_5__0 
       (.I0(\clk_cnt_reg_reg_n_0_[4] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDFFDF)) 
    \clk_cnt_reg[8]_i_2__0 
       (.I0(\clk_cnt_reg_reg_n_0_[11] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111110010)) 
    \clk_cnt_reg[8]_i_3__0 
       (.I0(\clk_cnt_reg_reg_n_0_[10] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[8]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111110010)) 
    \clk_cnt_reg[8]_i_4__0 
       (.I0(\clk_cnt_reg_reg_n_0_[9] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[8]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111110010)) 
    \clk_cnt_reg[8]_i_5__0 
       (.I0(\clk_cnt_reg_reg_n_0_[8] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[8]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[0] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_7 ),
        .Q(\clk_cnt_reg_reg_n_0_[0] ),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\clk_cnt_reg_reg[0]_i_2_n_0 ,\NLW_clk_cnt_reg_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[0]_i_3__0_n_0 ,\clk_cnt_reg[0]_i_3__0_n_0 ,\clk_cnt_reg[0]_i_3__0_n_0 ,\clk_cnt_reg[0]_i_3__0_n_0 }),
        .O({\clk_cnt_reg_reg[0]_i_2_n_4 ,\clk_cnt_reg_reg[0]_i_2_n_5 ,\clk_cnt_reg_reg[0]_i_2_n_6 ,\clk_cnt_reg_reg[0]_i_2_n_7 }),
        .S({\clk_cnt_reg[0]_i_4__0_n_0 ,\clk_cnt_reg[0]_i_5__0_n_0 ,\clk_cnt_reg[0]_i_6__0_n_0 ,\clk_cnt_reg[0]_i_7__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[10] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_5 ),
        .Q(\clk_cnt_reg_reg_n_0_[10] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[11] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_4 ),
        .Q(\clk_cnt_reg_reg_n_0_[11] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[12] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[12]_i_1_n_7 ),
        .Q(\clk_cnt_reg_reg_n_0_[12] ),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[12]_i_1 
       (.CI(\clk_cnt_reg_reg[8]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\clk_cnt_reg[0]_i_3__0_n_0 }),
        .O({\clk_cnt_reg_reg[12]_i_1_n_6 ,\clk_cnt_reg_reg[12]_i_1_n_7 }),
        .S({\<const0> ,\<const0> ,\clk_cnt_reg[12]_i_2__0_n_0 ,\clk_cnt_reg[12]_i_3__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[13] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[12]_i_1_n_6 ),
        .Q(\clk_cnt_reg_reg_n_0_[13] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[1] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_6 ),
        .Q(\clk_cnt_reg_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[2] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_5 ),
        .Q(\clk_cnt_reg_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[3] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_4 ),
        .Q(\clk_cnt_reg_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[4] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_7 ),
        .Q(\clk_cnt_reg_reg_n_0_[4] ),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[4]_i_1 
       (.CI(\clk_cnt_reg_reg[0]_i_2_n_0 ),
        .CO({\clk_cnt_reg_reg[4]_i_1_n_0 ,\NLW_clk_cnt_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[0]_i_3__0_n_0 ,\clk_cnt_reg[0]_i_3__0_n_0 ,\clk_cnt_reg[0]_i_3__0_n_0 ,\clk_cnt_reg[0]_i_3__0_n_0 }),
        .O({\clk_cnt_reg_reg[4]_i_1_n_4 ,\clk_cnt_reg_reg[4]_i_1_n_5 ,\clk_cnt_reg_reg[4]_i_1_n_6 ,\clk_cnt_reg_reg[4]_i_1_n_7 }),
        .S({\clk_cnt_reg[4]_i_2__0_n_0 ,\clk_cnt_reg[4]_i_3__0_n_0 ,\clk_cnt_reg[4]_i_4__0_n_0 ,\clk_cnt_reg[4]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[5] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_6 ),
        .Q(\clk_cnt_reg_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[6] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_5 ),
        .Q(\clk_cnt_reg_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[7] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_4 ),
        .Q(\clk_cnt_reg_reg_n_0_[7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[8] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_7 ),
        .Q(\clk_cnt_reg_reg_n_0_[8] ),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[8]_i_1 
       (.CI(\clk_cnt_reg_reg[4]_i_1_n_0 ),
        .CO({\clk_cnt_reg_reg[8]_i_1_n_0 ,\NLW_clk_cnt_reg_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[0]_i_3__0_n_0 ,\clk_cnt_reg[0]_i_3__0_n_0 ,\clk_cnt_reg[0]_i_3__0_n_0 ,\clk_cnt_reg[0]_i_3__0_n_0 }),
        .O({\clk_cnt_reg_reg[8]_i_1_n_4 ,\clk_cnt_reg_reg[8]_i_1_n_5 ,\clk_cnt_reg_reg[8]_i_1_n_6 ,\clk_cnt_reg_reg[8]_i_1_n_7 }),
        .S({\clk_cnt_reg[8]_i_2__0_n_0 ,\clk_cnt_reg[8]_i_3__0_n_0 ,\clk_cnt_reg[8]_i_4__0_n_0 ,\clk_cnt_reg[8]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[9] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_6 ),
        .Q(\clk_cnt_reg_reg_n_0_[9] ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \rxbyte_reg[7]_i_1 
       (.I0(\rxbyte_reg[7]_i_2_n_0 ),
        .I1(\rxbyte_reg[7]_i_3_n_0 ),
        .I2(\rxbyte_reg[7]_i_4_n_0 ),
        .I3(\rxbyte_reg[7]_i_5_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_5_n_0 ),
        .I5(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .O(rxbyte_next[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rxbyte_reg[7]_i_2 
       (.I0(\clk_cnt_reg_reg_n_0_[5] ),
        .I1(\clk_cnt_reg_reg_n_0_[11] ),
        .I2(\clk_cnt_reg_reg_n_0_[8] ),
        .I3(\clk_cnt_reg_reg_n_0_[9] ),
        .I4(\clk_cnt_reg_reg_n_0_[7] ),
        .I5(\clk_cnt_reg_reg_n_0_[3] ),
        .O(\rxbyte_reg[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \rxbyte_reg[7]_i_3 
       (.I0(\clk_cnt_reg_reg_n_0_[0] ),
        .I1(\clk_cnt_reg_reg_n_0_[10] ),
        .I2(\clk_cnt_reg_reg_n_0_[13] ),
        .O(\rxbyte_reg[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rxbyte_reg[7]_i_4 
       (.I0(\clk_cnt_reg_reg_n_0_[4] ),
        .I1(\clk_cnt_reg_reg_n_0_[2] ),
        .I2(\clk_cnt_reg_reg_n_0_[1] ),
        .I3(\clk_cnt_reg_reg_n_0_[12] ),
        .O(\rxbyte_reg[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \rxbyte_reg[7]_i_5 
       (.I0(\clk_cnt_reg_reg_n_0_[8] ),
        .I1(\clk_cnt_reg_reg_n_0_[7] ),
        .I2(\clk_cnt_reg_reg_n_0_[6] ),
        .O(\rxbyte_reg[7]_i_5_n_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rxbyte_reg_reg[0] 
       (.C(clk),
        .CE(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_6 ),
        .D(uart_txd_in_IBUF),
        .Q(Q[0]),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'hf8)) 
    \rxbyte_reg_reg[0]_CE_cooolgate_en_gate_41 
       (.I0(bitIndex_reg[1]),
        .I1(bitIndex_reg[0]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .O(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_5 ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \rxbyte_reg_reg[0]_CE_cooolgate_en_gate_42_LOPT_REMAP 
       (.I0(bitIndex_reg[0]),
        .I1(bitIndex_reg[1]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .I3(bitIndex_reg[2]),
        .I4(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_5 ),
        .O(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_6 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rxbyte_reg_reg[1] 
       (.C(clk),
        .CE(\rxbyte_reg_reg[1]_CE_cooolgate_en_sig_7 ),
        .D(uart_txd_in_IBUF),
        .Q(Q[1]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \rxbyte_reg_reg[1]_CE_cooolgate_en_gate_43_LOPT_REMAP 
       (.I0(bitIndex_reg[1]),
        .I1(bitIndex_reg[0]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .I3(bitIndex_reg[2]),
        .I4(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_5 ),
        .O(\rxbyte_reg_reg[1]_CE_cooolgate_en_sig_7 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rxbyte_reg_reg[2] 
       (.C(clk),
        .CE(\rxbyte_reg_reg[2]_CE_cooolgate_en_sig_8 ),
        .D(uart_txd_in_IBUF),
        .Q(Q[2]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \rxbyte_reg_reg[2]_CE_cooolgate_en_gate_44_LOPT_REMAP 
       (.I0(bitIndex_reg[0]),
        .I1(bitIndex_reg[1]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .I3(bitIndex_reg[2]),
        .I4(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_5 ),
        .O(\rxbyte_reg_reg[2]_CE_cooolgate_en_sig_8 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rxbyte_reg_reg[3] 
       (.C(clk),
        .CE(\rxbyte_reg_reg[3]_CE_cooolgate_en_sig_9 ),
        .D(uart_txd_in_IBUF),
        .Q(Q[3]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \rxbyte_reg_reg[3]_CE_cooolgate_en_gate_45_LOPT_REMAP 
       (.I0(bitIndex_reg[0]),
        .I1(bitIndex_reg[1]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .I3(bitIndex_reg[2]),
        .I4(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_5 ),
        .O(\rxbyte_reg_reg[3]_CE_cooolgate_en_sig_9 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rxbyte_reg_reg[4] 
       (.C(clk),
        .CE(\rxbyte_reg_reg[4]_CE_cooolgate_en_sig_10 ),
        .D(uart_txd_in_IBUF),
        .Q(Q[4]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \rxbyte_reg_reg[4]_CE_cooolgate_en_gate_46_LOPT_REMAP 
       (.I0(bitIndex_reg[0]),
        .I1(bitIndex_reg[1]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .I3(bitIndex_reg[2]),
        .I4(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_5 ),
        .O(\rxbyte_reg_reg[4]_CE_cooolgate_en_sig_10 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rxbyte_reg_reg[5] 
       (.C(clk),
        .CE(\rxbyte_reg_reg[5]_CE_cooolgate_en_sig_11 ),
        .D(uart_txd_in_IBUF),
        .Q(Q[5]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \rxbyte_reg_reg[5]_CE_cooolgate_en_gate_47_LOPT_REMAP 
       (.I0(bitIndex_reg[1]),
        .I1(bitIndex_reg[0]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .I3(bitIndex_reg[2]),
        .I4(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_5 ),
        .O(\rxbyte_reg_reg[5]_CE_cooolgate_en_sig_11 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rxbyte_reg_reg[6] 
       (.C(clk),
        .CE(\rxbyte_reg_reg[6]_CE_cooolgate_en_sig_12 ),
        .D(uart_txd_in_IBUF),
        .Q(Q[6]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \rxbyte_reg_reg[6]_CE_cooolgate_en_gate_48_LOPT_REMAP 
       (.I0(bitIndex_reg[0]),
        .I1(bitIndex_reg[1]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .I3(bitIndex_reg[2]),
        .I4(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_5 ),
        .O(\rxbyte_reg_reg[6]_CE_cooolgate_en_sig_12 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rxbyte_reg_reg[7] 
       (.C(clk),
        .CE(\rxbyte_reg_reg[7]_CE_cooolgate_en_sig_13 ),
        .D(uart_txd_in_IBUF),
        .Q(Q[7]),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    \rxbyte_reg_reg[7]_CE_cooolgate_en_gate_49 
       (.I0(rxbyte_next[7]),
        .I1(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_5 ),
        .O(\rxbyte_reg_reg[7]_CE_cooolgate_en_sig_13 ));
endmodule

module uart_tx_controller
   (\FSM_sequential_state_reg_reg[2]_0 ,
    \FSM_sequential_state_reg_reg[0]_0 ,
    uart_rxd_out_OBUF,
    \clk_cnt_reg_reg[13]_0 ,
    clk,
    \FSM_sequential_state_reg_reg[0]_1 ,
    \tx_data_reg_reg[7]_0 ,
    Q,
    pwropt,
    pwropt_1,
    pwropt_2,
    pwropt_3,
    lopt,
    lopt_1);
  output [0:0]\FSM_sequential_state_reg_reg[2]_0 ;
  output \FSM_sequential_state_reg_reg[0]_0 ;
  output uart_rxd_out_OBUF;
  input \clk_cnt_reg_reg[13]_0 ;
  input clk;
  input \FSM_sequential_state_reg_reg[0]_1 ;
  input \tx_data_reg_reg[7]_0 ;
  input [7:0]Q;
  input pwropt;
  input pwropt_1;
  input pwropt_2;
  input pwropt_3;
  input lopt;
  input lopt_1;

  wire \<const0> ;
  wire \FSM_sequential_state_reg[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_2__0_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_6_n_0 ;
  wire \FSM_sequential_state_reg_reg[0]_0 ;
  wire \FSM_sequential_state_reg_reg[0]_1 ;
  wire \FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_15 ;
  wire [0:0]\FSM_sequential_state_reg_reg[2]_0 ;
  wire [7:0]Q;
  wire [2:0]bit_index_reg;
  wire \bit_index_reg[0]_i_1_n_0 ;
  wire \bit_index_reg[1]_i_1_n_0 ;
  wire \bit_index_reg[2]_i_1_n_0 ;
  wire \bit_index_reg[2]_i_2_n_0 ;
  wire \bit_index_reg[2]_i_3_n_0 ;
  wire \bit_index_reg_reg[0]_CE_cooolgate_en_sig_14 ;
  wire clk;
  wire \clk_cnt_reg[0]_i_3_n_0 ;
  wire \clk_cnt_reg[0]_i_4_n_0 ;
  wire \clk_cnt_reg[0]_i_5_n_0 ;
  wire \clk_cnt_reg[0]_i_6_n_0 ;
  wire \clk_cnt_reg[0]_i_7_n_0 ;
  wire \clk_cnt_reg[12]_i_2_n_0 ;
  wire \clk_cnt_reg[12]_i_3_n_0 ;
  wire \clk_cnt_reg[4]_i_2_n_0 ;
  wire \clk_cnt_reg[4]_i_3_n_0 ;
  wire \clk_cnt_reg[4]_i_4_n_0 ;
  wire \clk_cnt_reg[4]_i_5_n_0 ;
  wire \clk_cnt_reg[8]_i_2_n_0 ;
  wire \clk_cnt_reg[8]_i_3_n_0 ;
  wire \clk_cnt_reg[8]_i_4_n_0 ;
  wire \clk_cnt_reg[8]_i_5_n_0 ;
  wire [13:0]clk_cnt_reg_reg;
  wire \clk_cnt_reg_reg[0]_i_2__0_n_0 ;
  wire \clk_cnt_reg_reg[0]_i_2__0_n_4 ;
  wire \clk_cnt_reg_reg[0]_i_2__0_n_5 ;
  wire \clk_cnt_reg_reg[0]_i_2__0_n_6 ;
  wire \clk_cnt_reg_reg[0]_i_2__0_n_7 ;
  wire \clk_cnt_reg_reg[12]_i_1__0_n_6 ;
  wire \clk_cnt_reg_reg[12]_i_1__0_n_7 ;
  wire \clk_cnt_reg_reg[13]_0 ;
  wire \clk_cnt_reg_reg[4]_i_1__0_n_0 ;
  wire \clk_cnt_reg_reg[4]_i_1__0_n_4 ;
  wire \clk_cnt_reg_reg[4]_i_1__0_n_5 ;
  wire \clk_cnt_reg_reg[4]_i_1__0_n_6 ;
  wire \clk_cnt_reg_reg[4]_i_1__0_n_7 ;
  wire \clk_cnt_reg_reg[8]_i_1__0_n_0 ;
  wire \clk_cnt_reg_reg[8]_i_1__0_n_4 ;
  wire \clk_cnt_reg_reg[8]_i_1__0_n_5 ;
  wire \clk_cnt_reg_reg[8]_i_1__0_n_6 ;
  wire \clk_cnt_reg_reg[8]_i_1__0_n_7 ;
  wire lopt;
  wire lopt_1;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire pwropt_3;
  wire [1:0]state_reg;
  wire [7:0]tx_data_reg;
  wire \tx_data_reg_reg[0]_CE_cooolgate_en_sig_4 ;
  wire uart_rxd_out_OBUF;
  wire uart_rxd_out_OBUF_inst_i_2_n_0;
  wire uart_rxd_out_OBUF_inst_i_3_n_0;
  wire [3:0]\NLW_clk_cnt_reg_reg[0]_i_2__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_cnt_reg_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_cnt_reg_reg[8]_i_1__0_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hCCCC0000CCCC3505)) 
    \FSM_sequential_state_reg[0]_i_1__0 
       (.I0(\FSM_sequential_state_reg_reg[0]_1 ),
        .I1(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I2(state_reg[1]),
        .I3(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I4(state_reg[0]),
        .I5(\FSM_sequential_state_reg_reg[2]_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h888C99CC)) 
    \FSM_sequential_state_reg[1]_i_1__0 
       (.I0(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I1(state_reg[1]),
        .I2(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .O(\FSM_sequential_state_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAA8C4400)) 
    \FSM_sequential_state_reg[2]_i_1__0 
       (.I0(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I1(state_reg[1]),
        .I2(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .O(\FSM_sequential_state_reg[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state_reg[2]_i_2__0 
       (.I0(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .I1(\FSM_sequential_state_reg[2]_i_5_n_0 ),
        .I2(clk_cnt_reg_reg[13]),
        .I3(clk_cnt_reg_reg[12]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_6_n_0 ),
        .O(\FSM_sequential_state_reg[2]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state_reg[2]_i_3 
       (.I0(bit_index_reg[2]),
        .I1(bit_index_reg[1]),
        .I2(bit_index_reg[0]),
        .O(\FSM_sequential_state_reg[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_reg[2]_i_4 
       (.I0(clk_cnt_reg_reg[8]),
        .I1(clk_cnt_reg_reg[6]),
        .I2(clk_cnt_reg_reg[9]),
        .I3(clk_cnt_reg_reg[7]),
        .O(\FSM_sequential_state_reg[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_reg[2]_i_5 
       (.I0(clk_cnt_reg_reg[10]),
        .I1(clk_cnt_reg_reg[3]),
        .I2(clk_cnt_reg_reg[4]),
        .I3(clk_cnt_reg_reg[0]),
        .O(\FSM_sequential_state_reg[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_reg[2]_i_6 
       (.I0(clk_cnt_reg_reg[5]),
        .I1(clk_cnt_reg_reg[2]),
        .I2(clk_cnt_reg_reg[11]),
        .I3(clk_cnt_reg_reg[1]),
        .O(\FSM_sequential_state_reg[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,send_start_bit:001,send_data_bits:010,send_stop_bit:011,cleanup:100," *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE \FSM_sequential_state_reg_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_15 ),
        .D(\FSM_sequential_state_reg[0]_i_1__0_n_0 ),
        .Q(state_reg[0]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h11110fffffffffff)) 
    \FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_gate_57 
       (.I0(clk_cnt_reg_reg[12]),
        .I1(\FSM_sequential_state_reg[2]_i_6_n_0 ),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg_reg[2]_0 ),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_15 ));
  (* FSM_ENCODED_STATES = "idle:000,send_start_bit:001,send_data_bits:010,send_stop_bit:011,cleanup:100," *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE \FSM_sequential_state_reg_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_15 ),
        .D(\FSM_sequential_state_reg[1]_i_1__0_n_0 ),
        .Q(state_reg[1]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "idle:000,send_start_bit:001,send_data_bits:010,send_stop_bit:011,cleanup:100," *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE \FSM_sequential_state_reg_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_15 ),
        .D(\FSM_sequential_state_reg[2]_i_1__0_n_0 ),
        .Q(\FSM_sequential_state_reg_reg[2]_0 ),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h6)) 
    \bit_index_reg[0]_i_1 
       (.I0(\bit_index_reg[2]_i_2_n_0 ),
        .I1(bit_index_reg[0]),
        .O(\bit_index_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bit_index_reg[1]_i_1 
       (.I0(bit_index_reg[0]),
        .I1(\bit_index_reg[2]_i_2_n_0 ),
        .I2(bit_index_reg[1]),
        .O(\bit_index_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bit_index_reg[2]_i_1 
       (.I0(bit_index_reg[0]),
        .I1(bit_index_reg[1]),
        .I2(\bit_index_reg[2]_i_2_n_0 ),
        .I3(bit_index_reg[2]),
        .O(\bit_index_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \bit_index_reg[2]_i_2 
       (.I0(\FSM_sequential_state_reg[2]_i_6_n_0 ),
        .I1(\bit_index_reg[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg[2]_i_5_n_0 ),
        .I3(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .I4(state_reg[1]),
        .I5(state_reg[0]),
        .O(\bit_index_reg[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bit_index_reg[2]_i_3 
       (.I0(clk_cnt_reg_reg[13]),
        .I1(clk_cnt_reg_reg[12]),
        .I2(\FSM_sequential_state_reg_reg[2]_0 ),
        .O(\bit_index_reg[2]_i_3_n_0 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg_reg[0] 
       (.C(clk),
        .CE(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_14 ),
        .D(\bit_index_reg[0]_i_1_n_0 ),
        .Q(bit_index_reg[0]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bit_index_reg_reg[0]_CE_cooolgate_en_gate_50 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(clk_cnt_reg_reg[12]),
        .I3(\FSM_sequential_state_reg_reg[2]_0 ),
        .I4(\FSM_sequential_state_reg[2]_i_6_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .O(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_14 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg_reg[1] 
       (.C(clk),
        .CE(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_14 ),
        .D(\bit_index_reg[1]_i_1_n_0 ),
        .Q(bit_index_reg[1]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg_reg[2] 
       (.C(clk),
        .CE(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_14 ),
        .D(\bit_index_reg[2]_i_1_n_0 ),
        .Q(bit_index_reg[2]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hAAAFAAAC)) 
    \clk_cnt_reg[0]_i_3 
       (.I0(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[2]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg_reg[0]_1 ),
        .O(\clk_cnt_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55555557FFF5FFF7)) 
    \clk_cnt_reg[0]_i_4 
       (.I0(clk_cnt_reg_reg[3]),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55555557FFF5FFF7)) 
    \clk_cnt_reg[0]_i_5 
       (.I0(clk_cnt_reg_reg[2]),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55555557FFF5FFF7)) 
    \clk_cnt_reg[0]_i_6 
       (.I0(clk_cnt_reg_reg[1]),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h55555557FFF5FFF7)) 
    \clk_cnt_reg[0]_i_7 
       (.I0(clk_cnt_reg_reg[0]),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h55555557FFF5FFF7)) 
    \clk_cnt_reg[12]_i_2 
       (.I0(clk_cnt_reg_reg[13]),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555400050004)) 
    \clk_cnt_reg[12]_i_3 
       (.I0(clk_cnt_reg_reg[12]),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55555557FFF5FFF7)) 
    \clk_cnt_reg[4]_i_2 
       (.I0(clk_cnt_reg_reg[7]),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555400050004)) 
    \clk_cnt_reg[4]_i_3 
       (.I0(clk_cnt_reg_reg[6]),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55555557FFF5FFF7)) 
    \clk_cnt_reg[4]_i_4 
       (.I0(clk_cnt_reg_reg[5]),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555555400050004)) 
    \clk_cnt_reg[4]_i_5 
       (.I0(clk_cnt_reg_reg[4]),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55555557FFF5FFF7)) 
    \clk_cnt_reg[8]_i_2 
       (.I0(clk_cnt_reg_reg[11]),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555400050004)) 
    \clk_cnt_reg[8]_i_3 
       (.I0(clk_cnt_reg_reg[10]),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555555400050004)) 
    \clk_cnt_reg[8]_i_4 
       (.I0(clk_cnt_reg_reg[9]),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555555400050004)) 
    \clk_cnt_reg[8]_i_5 
       (.I0(clk_cnt_reg_reg[8]),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[0] 
       (.C(clk),
        .CE(\clk_cnt_reg_reg[13]_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2__0_n_7 ),
        .Q(clk_cnt_reg_reg[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[0]_i_2__0 
       (.CI(\<const0> ),
        .CO({\clk_cnt_reg_reg[0]_i_2__0_n_0 ,\NLW_clk_cnt_reg_reg[0]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[0]_i_3_n_0 ,\clk_cnt_reg[0]_i_3_n_0 ,\clk_cnt_reg[0]_i_3_n_0 ,\clk_cnt_reg[0]_i_3_n_0 }),
        .O({\clk_cnt_reg_reg[0]_i_2__0_n_4 ,\clk_cnt_reg_reg[0]_i_2__0_n_5 ,\clk_cnt_reg_reg[0]_i_2__0_n_6 ,\clk_cnt_reg_reg[0]_i_2__0_n_7 }),
        .S({\clk_cnt_reg[0]_i_4_n_0 ,\clk_cnt_reg[0]_i_5_n_0 ,\clk_cnt_reg[0]_i_6_n_0 ,\clk_cnt_reg[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[10] 
       (.C(clk),
        .CE(\clk_cnt_reg_reg[13]_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1__0_n_5 ),
        .Q(clk_cnt_reg_reg[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[11] 
       (.C(clk),
        .CE(\clk_cnt_reg_reg[13]_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1__0_n_4 ),
        .Q(clk_cnt_reg_reg[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[12] 
       (.C(clk),
        .CE(\clk_cnt_reg_reg[13]_0 ),
        .D(\clk_cnt_reg_reg[12]_i_1__0_n_7 ),
        .Q(clk_cnt_reg_reg[12]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[12]_i_1__0 
       (.CI(\clk_cnt_reg_reg[8]_i_1__0_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\clk_cnt_reg[0]_i_3_n_0 }),
        .O({\clk_cnt_reg_reg[12]_i_1__0_n_6 ,\clk_cnt_reg_reg[12]_i_1__0_n_7 }),
        .S({\<const0> ,\<const0> ,\clk_cnt_reg[12]_i_2_n_0 ,\clk_cnt_reg[12]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[13] 
       (.C(clk),
        .CE(\clk_cnt_reg_reg[13]_0 ),
        .D(\clk_cnt_reg_reg[12]_i_1__0_n_6 ),
        .Q(clk_cnt_reg_reg[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[1] 
       (.C(clk),
        .CE(\clk_cnt_reg_reg[13]_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2__0_n_6 ),
        .Q(clk_cnt_reg_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[2] 
       (.C(clk),
        .CE(\clk_cnt_reg_reg[13]_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2__0_n_5 ),
        .Q(clk_cnt_reg_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[3] 
       (.C(clk),
        .CE(\clk_cnt_reg_reg[13]_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2__0_n_4 ),
        .Q(clk_cnt_reg_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[4] 
       (.C(clk),
        .CE(\clk_cnt_reg_reg[13]_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1__0_n_7 ),
        .Q(clk_cnt_reg_reg[4]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[4]_i_1__0 
       (.CI(\clk_cnt_reg_reg[0]_i_2__0_n_0 ),
        .CO({\clk_cnt_reg_reg[4]_i_1__0_n_0 ,\NLW_clk_cnt_reg_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[0]_i_3_n_0 ,\clk_cnt_reg[0]_i_3_n_0 ,\clk_cnt_reg[0]_i_3_n_0 ,\clk_cnt_reg[0]_i_3_n_0 }),
        .O({\clk_cnt_reg_reg[4]_i_1__0_n_4 ,\clk_cnt_reg_reg[4]_i_1__0_n_5 ,\clk_cnt_reg_reg[4]_i_1__0_n_6 ,\clk_cnt_reg_reg[4]_i_1__0_n_7 }),
        .S({\clk_cnt_reg[4]_i_2_n_0 ,\clk_cnt_reg[4]_i_3_n_0 ,\clk_cnt_reg[4]_i_4_n_0 ,\clk_cnt_reg[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[5] 
       (.C(clk),
        .CE(\clk_cnt_reg_reg[13]_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1__0_n_6 ),
        .Q(clk_cnt_reg_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[6] 
       (.C(clk),
        .CE(\clk_cnt_reg_reg[13]_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1__0_n_5 ),
        .Q(clk_cnt_reg_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[7] 
       (.C(clk),
        .CE(\clk_cnt_reg_reg[13]_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1__0_n_4 ),
        .Q(clk_cnt_reg_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[8] 
       (.C(clk),
        .CE(\clk_cnt_reg_reg[13]_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1__0_n_7 ),
        .Q(clk_cnt_reg_reg[8]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[8]_i_1__0 
       (.CI(\clk_cnt_reg_reg[4]_i_1__0_n_0 ),
        .CO({\clk_cnt_reg_reg[8]_i_1__0_n_0 ,\NLW_clk_cnt_reg_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[0]_i_3_n_0 ,\clk_cnt_reg[0]_i_3_n_0 ,\clk_cnt_reg[0]_i_3_n_0 ,\clk_cnt_reg[0]_i_3_n_0 }),
        .O({\clk_cnt_reg_reg[8]_i_1__0_n_4 ,\clk_cnt_reg_reg[8]_i_1__0_n_5 ,\clk_cnt_reg_reg[8]_i_1__0_n_6 ,\clk_cnt_reg_reg[8]_i_1__0_n_7 }),
        .S({\clk_cnt_reg[8]_i_2_n_0 ,\clk_cnt_reg[8]_i_3_n_0 ,\clk_cnt_reg[8]_i_4_n_0 ,\clk_cnt_reg[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[9] 
       (.C(clk),
        .CE(\clk_cnt_reg_reg[13]_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1__0_n_6 ),
        .Q(clk_cnt_reg_reg[9]),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h1)) 
    \tx_data_reg[7]_i_2 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .O(\FSM_sequential_state_reg_reg[0]_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[0] 
       (.C(clk),
        .CE(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(Q[0]),
        .Q(tx_data_reg[0]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \tx_data_reg_reg[0]_CE_cooolgate_en_gate_33_LOPT_REMAP 
       (.I0(pwropt),
        .I1(pwropt_2),
        .I2(pwropt_3),
        .I3(pwropt_1),
        .I4(lopt),
        .I5(lopt_1),
        .O(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_4 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[1] 
       (.C(clk),
        .CE(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(Q[1]),
        .Q(tx_data_reg[1]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[2] 
       (.C(clk),
        .CE(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(Q[2]),
        .Q(tx_data_reg[2]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[3] 
       (.C(clk),
        .CE(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(Q[3]),
        .Q(tx_data_reg[3]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[4] 
       (.C(clk),
        .CE(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(Q[4]),
        .Q(tx_data_reg[4]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[5] 
       (.C(clk),
        .CE(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(Q[5]),
        .Q(tx_data_reg[5]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[6] 
       (.C(clk),
        .CE(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(Q[6]),
        .Q(tx_data_reg[6]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[7] 
       (.C(clk),
        .CE(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(Q[7]),
        .Q(tx_data_reg[7]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h4444444477733373)) 
    uart_rxd_out_OBUF_inst_i_1
       (.I0(\FSM_sequential_state_reg_reg[2]_0 ),
        .I1(state_reg[1]),
        .I2(uart_rxd_out_OBUF_inst_i_2_n_0),
        .I3(bit_index_reg[2]),
        .I4(uart_rxd_out_OBUF_inst_i_3_n_0),
        .I5(state_reg[0]),
        .O(uart_rxd_out_OBUF));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    uart_rxd_out_OBUF_inst_i_2
       (.I0(tx_data_reg[3]),
        .I1(tx_data_reg[2]),
        .I2(bit_index_reg[1]),
        .I3(tx_data_reg[1]),
        .I4(bit_index_reg[0]),
        .I5(tx_data_reg[0]),
        .O(uart_rxd_out_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    uart_rxd_out_OBUF_inst_i_3
       (.I0(tx_data_reg[7]),
        .I1(tx_data_reg[6]),
        .I2(bit_index_reg[1]),
        .I3(tx_data_reg[5]),
        .I4(bit_index_reg[0]),
        .I5(tx_data_reg[4]),
        .O(uart_rxd_out_OBUF_inst_i_3_n_0));
endmodule

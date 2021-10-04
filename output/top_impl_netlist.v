// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Oct  4 11:20:38 2021
// Host        : marco running 64-bit Ubuntu Impish Indri (development branch)
// Command     : write_verilog -force ./output/top_impl_netlist.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "clk_wiz_test,clk_wiz_v6_0_6_0_0,{component_name=clk_wiz_test,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=MMCM,num_out_clk=1,clkin1_period=10.000,clkin2_period=10.000,use_power_down=false,use_reset=true,use_locked=true,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}" *) 
module clk_wiz_test
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  (* IBUF_LOW_PWR *) wire clk_in1;
  wire clk_out1;
  wire reset;

  clk_wiz_testclk_wiz_test_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_test_clk_wiz" *) 
module clk_wiz_testclk_wiz_test_clk_wiz
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire \<const0> ;
  wire \<const1> ;
  wire clk_in1;
  wire clk_out1;
  wire clk_out1_clk_wiz_test;
  wire clkfbout_buf_clk_wiz_test;
  wire clkfbout_clk_wiz_test;
  wire reset;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_test),
        .O(clkfbout_buf_clk_wiz_test));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_test),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO SWEEP" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(9.125000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(36.500000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_test),
        .CLKFBOUT(clkfbout_clk_wiz_test),
        .CLKIN1(clk_in1),
        .CLKIN2(\<const0> ),
        .CLKINSEL(\<const1> ),
        .CLKOUT0(clk_out1_clk_wiz_test),
        .DADDR({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DCLK(\<const0> ),
        .DEN(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DWE(\<const0> ),
        .PSCLK(\<const0> ),
        .PSEN(\<const0> ),
        .PSINCDEC(\<const0> ),
        .PWRDWN(\<const0> ),
        .RST(reset));
endmodule

module sseg_controller
   (sseg_cs_out_OBUF,
    clk);
  output sseg_cs_out_OBUF;
  input clk;

  wire clk;
  wire sseg_cs_out_OBUF;

  sseg_cs_generator chip_select_gen
       (.clk(clk),
        .sseg_cs_out_OBUF(sseg_cs_out_OBUF));
endmodule

module sseg_cs_generator
   (sseg_cs_out_OBUF,
    clk);
  output sseg_cs_out_OBUF;
  input clk;

  wire \<const0> ;
  wire \<const1> ;
  wire chip_select_reg_i_1_n_0;
  wire chip_select_reg_i_2_n_0;
  wire chip_select_reg_i_3_n_0;
  wire chip_select_reg_i_4_n_0;
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
  wire sseg_cs_out_OBUF;
  wire [3:0]\NLW_clkcnt_reg_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clkcnt_reg_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clkcnt_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clkcnt_reg_reg[8]_i_1_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hEFFFFFFF10000000)) 
    chip_select_reg_i_1
       (.I0(clkcnt_reg_reg[1]),
        .I1(clkcnt_reg_reg[0]),
        .I2(chip_select_reg_i_2_n_0),
        .I3(chip_select_reg_i_3_n_0),
        .I4(chip_select_reg_i_4_n_0),
        .I5(sseg_cs_out_OBUF),
        .O(chip_select_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    chip_select_reg_i_2
       (.I0(clkcnt_reg_reg[10]),
        .I1(clkcnt_reg_reg[11]),
        .I2(clkcnt_reg_reg[8]),
        .I3(clkcnt_reg_reg[9]),
        .I4(clkcnt_reg_reg[13]),
        .I5(clkcnt_reg_reg[12]),
        .O(chip_select_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    chip_select_reg_i_3
       (.I0(clkcnt_reg_reg[4]),
        .I1(clkcnt_reg_reg[5]),
        .I2(clkcnt_reg_reg[2]),
        .I3(clkcnt_reg_reg[3]),
        .I4(clkcnt_reg_reg[7]),
        .I5(clkcnt_reg_reg[6]),
        .O(chip_select_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    chip_select_reg_i_4
       (.I0(clkcnt_reg_reg[16]),
        .I1(clkcnt_reg_reg[17]),
        .I2(clkcnt_reg_reg[14]),
        .I3(clkcnt_reg_reg[15]),
        .I4(clkcnt_reg_reg[19]),
        .I5(clkcnt_reg_reg[18]),
        .O(chip_select_reg_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    chip_select_reg_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(chip_select_reg_i_1_n_0),
        .Q(sseg_cs_out_OBUF),
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
endmodule

(* ECO_CHECKSUM = "4ae20af3" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module top
   (clk,
    sw,
    sseg_cs_out,
    ck_a10_power,
    ck_a11_power,
    sseg,
    vga_red,
    vga_green,
    vga_blue,
    vga_hsync_o,
    vga_vsync_o);
  input clk;
  input [3:0]sw;
  output sseg_cs_out;
  output ck_a10_power;
  output ck_a11_power;
  output [6:0]sseg;
  output [3:0]vga_red;
  output [3:0]vga_green;
  output [3:0]vga_blue;
  output vga_hsync_o;
  output vga_vsync_o;

  wire \<const1> ;
  wire ck_a10_power;
  wire ck_a11_power;
  wire clk;
  wire clk_IBUF;
  wire lopt;
  wire lopt_1;
  wire lopt_10;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire [6:0]sseg;
  wire [6:0]sseg_OBUF;
  wire sseg_cs_out;
  wire sseg_cs_out_OBUF;
  wire [3:0]vga_blue;
  wire [0:0]vga_blue_OBUF;
  wire [3:0]vga_green;
  wire vga_hsync_o;
  wire vga_hsync_o_OBUF;
  wire [3:0]vga_red;
  wire vga_vsync_o;
  wire vga_vsync_o_OBUF;

  VCC VCC
       (.P(\<const1> ));
  OBUF ck_a10_power_OBUF_inst
       (.I(\<const1> ),
        .O(ck_a10_power));
  OBUF ck_a11_power_OBUF_inst
       (.I(\<const1> ),
        .O(ck_a11_power));
  (* OPT_INSERTED *) 
  (* OPT_MODIFIED = "MLO" *) 
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \sseg_OBUF[0]_inst 
       (.I(sseg_OBUF[0]),
        .O(sseg[0]));
  OBUF \sseg_OBUF[1]_inst 
       (.I(sseg_OBUF[1]),
        .O(sseg[1]));
  OBUF \sseg_OBUF[2]_inst 
       (.I(sseg_OBUF[2]),
        .O(sseg[2]));
  OBUF \sseg_OBUF[3]_inst 
       (.I(sseg_OBUF[3]),
        .O(sseg[3]));
  OBUF \sseg_OBUF[4]_inst 
       (.I(sseg_OBUF[4]),
        .O(sseg[4]));
  OBUF \sseg_OBUF[5]_inst 
       (.I(sseg_OBUF[5]),
        .O(sseg[5]));
  OBUF \sseg_OBUF[6]_inst 
       (.I(sseg_OBUF[6]),
        .O(sseg[6]));
  sseg_controller sseg_controller
       (.clk(clk_IBUF),
        .sseg_cs_out_OBUF(sseg_cs_out_OBUF));
  OBUF sseg_cs_out_OBUF_inst
       (.I(sseg_cs_out_OBUF),
        .O(sseg_cs_out));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \vga_blue_OBUF[0]_inst 
       (.I(lopt),
        .O(vga_blue[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \vga_blue_OBUF[1]_inst 
       (.I(lopt_1),
        .O(vga_blue[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \vga_blue_OBUF[2]_inst 
       (.I(lopt_2),
        .O(vga_blue[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \vga_blue_OBUF[3]_inst 
       (.I(lopt_3),
        .O(vga_blue[3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \vga_green_OBUF[0]_inst 
       (.I(lopt_4),
        .O(vga_green[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \vga_green_OBUF[1]_inst 
       (.I(lopt_5),
        .O(vga_green[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \vga_green_OBUF[2]_inst 
       (.I(lopt_6),
        .O(vga_green[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \vga_green_OBUF[3]_inst 
       (.I(lopt_7),
        .O(vga_green[3]));
  OBUF vga_hsync_o_OBUF_inst
       (.I(vga_hsync_o_OBUF),
        .O(vga_hsync_o));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \vga_red_OBUF[0]_inst 
       (.I(lopt_8),
        .O(vga_red[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \vga_red_OBUF[1]_inst 
       (.I(lopt_9),
        .O(vga_red[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \vga_red_OBUF[2]_inst 
       (.I(lopt_10),
        .O(vga_red[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \vga_red_OBUF[3]_inst 
       (.I(vga_blue_OBUF),
        .O(vga_red[3]));
  vga_template vga_templ
       (.clk(clk_IBUF),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_10(lopt_10),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .lopt_8(lopt_8),
        .lopt_9(lopt_9),
        .sseg_OBUF(sseg_OBUF),
        .sseg_cs_out_OBUF(sseg_cs_out_OBUF),
        .vga_blue_OBUF(vga_blue_OBUF),
        .vga_hsync_o_OBUF(vga_hsync_o_OBUF),
        .vga_vsync_o_OBUF(vga_vsync_o_OBUF));
  OBUF vga_vsync_o_OBUF_inst
       (.I(vga_vsync_o_OBUF),
        .O(vga_vsync_o));
endmodule

module vga_template
   (vga_hsync_o_OBUF,
    vga_vsync_o_OBUF,
    vga_blue_OBUF,
    sseg_OBUF,
    clk,
    sseg_cs_out_OBUF,
    .lopt(\vga_red_reg_reg[0]_lopt_replica_1 ),
    .lopt_1(\vga_red_reg_reg[0]_lopt_replica_2_1 ),
    .lopt_2(\vga_red_reg_reg[0]_lopt_replica_3_1 ),
    .lopt_3(\vga_red_reg_reg[0]_lopt_replica_4_1 ),
    .lopt_4(\vga_red_reg_reg[0]_lopt_replica_5_1 ),
    .lopt_5(\vga_red_reg_reg[0]_lopt_replica_6_1 ),
    .lopt_6(\vga_red_reg_reg[0]_lopt_replica_7_1 ),
    .lopt_7(\vga_red_reg_reg[0]_lopt_replica_8_1 ),
    .lopt_8(\vga_red_reg_reg[0]_lopt_replica_9_1 ),
    .lopt_9(\vga_red_reg_reg[0]_lopt_replica_10_1 ),
    .lopt_10(\vga_red_reg_reg[0]_lopt_replica_11_1 ),
    lopt_11);
  output vga_hsync_o_OBUF;
  output vga_vsync_o_OBUF;
  output [0:0]vga_blue_OBUF;
  output [6:0]sseg_OBUF;
  input clk;
  input sseg_cs_out_OBUF;
  output lopt_11;
  output \vga_red_reg_reg[0]_lopt_replica_1 ;
  output \vga_red_reg_reg[0]_lopt_replica_2_1 ;
  output \vga_red_reg_reg[0]_lopt_replica_3_1 ;
  output \vga_red_reg_reg[0]_lopt_replica_4_1 ;
  output \vga_red_reg_reg[0]_lopt_replica_5_1 ;
  output \vga_red_reg_reg[0]_lopt_replica_6_1 ;
  output \vga_red_reg_reg[0]_lopt_replica_7_1 ;
  output \vga_red_reg_reg[0]_lopt_replica_8_1 ;
  output \vga_red_reg_reg[0]_lopt_replica_9_1 ;
  output \vga_red_reg_reg[0]_lopt_replica_10_1 ;
  output \vga_red_reg_reg[0]_lopt_replica_11_1 ;

  wire \<const0> ;
  wire \<const1> ;
  wire __23_carry__0_i_1_n_0;
  wire __23_carry__0_i_2_n_0;
  wire __23_carry__0_i_3_n_0;
  wire __23_carry__0_i_4_n_0;
  wire __23_carry__0_i_5_n_0;
  wire __23_carry__0_i_5_n_4;
  wire __23_carry__0_i_5_n_5;
  wire __23_carry__0_i_5_n_6;
  wire __23_carry__0_i_5_n_7;
  wire __23_carry__0_n_0;
  wire __23_carry__1_i_1_n_0;
  wire __23_carry__1_i_2_n_0;
  wire __23_carry__1_i_3_n_0;
  wire __23_carry__1_i_4_n_0;
  wire __23_carry__1_i_5_n_4;
  wire __23_carry__1_i_5_n_5;
  wire __23_carry__1_i_5_n_6;
  wire __23_carry__1_i_5_n_7;
  wire __23_carry__1_n_0;
  wire __23_carry_i_1_n_0;
  wire __23_carry_i_2_n_0;
  wire __23_carry_i_3_n_0;
  wire __23_carry_i_4_n_0;
  wire __23_carry_i_5_n_0;
  wire __23_carry_i_5_n_4;
  wire __23_carry_i_5_n_5;
  wire __23_carry_i_5_n_6;
  wire __23_carry_i_5_n_7;
  wire __23_carry_i_6_n_0;
  wire __23_carry_i_7_n_0;
  wire __23_carry_n_0;
  wire _carry__0_i_1_n_0;
  wire _carry__0_i_2_n_0;
  wire _carry__0_i_3_n_0;
  wire _carry__0_i_4_n_0;
  wire _carry__0_i_5_n_0;
  wire _carry__0_i_5_n_4;
  wire _carry__0_i_5_n_5;
  wire _carry__0_i_5_n_6;
  wire _carry__0_i_5_n_7;
  wire _carry__0_n_0;
  wire _carry__1_i_1_n_0;
  wire _carry__1_i_2_n_0;
  wire _carry__1_i_3_n_0;
  wire _carry__1_i_4_n_0;
  wire _carry__1_i_5_n_4;
  wire _carry__1_i_5_n_5;
  wire _carry__1_i_5_n_6;
  wire _carry__1_i_5_n_7;
  wire _carry__1_n_0;
  wire _carry_i_1_n_0;
  wire _carry_i_2_n_0;
  wire _carry_i_3_n_0;
  wire _carry_i_4_n_0;
  wire _carry_i_5_n_0;
  wire _carry_i_5_n_4;
  wire _carry_i_5_n_5;
  wire _carry_i_5_n_6;
  wire _carry_i_5_n_7;
  wire _carry_i_6_n_0;
  wire _carry_i_7_n_0;
  wire _carry_n_0;
  wire \box_cntr_reg[0]_i_3_n_0 ;
  wire \box_cntr_reg[0]_i_4_n_0 ;
  wire \box_cntr_reg[0]_i_5_n_0 ;
  wire \box_cntr_reg[0]_i_6_n_0 ;
  wire \box_cntr_reg[0]_i_7_n_0 ;
  wire \box_cntr_reg[0]_i_8_n_0 ;
  wire \box_cntr_reg[0]_i_9_n_0 ;
  wire [24:0]box_cntr_reg_reg;
  wire \box_cntr_reg_reg[0]_i_2_n_0 ;
  wire \box_cntr_reg_reg[0]_i_2_n_4 ;
  wire \box_cntr_reg_reg[0]_i_2_n_5 ;
  wire \box_cntr_reg_reg[0]_i_2_n_6 ;
  wire \box_cntr_reg_reg[0]_i_2_n_7 ;
  wire \box_cntr_reg_reg[10]_CE_cooolgate_en_sig_8 ;
  wire \box_cntr_reg_reg[11]_CE_cooolgate_en_sig_9 ;
  wire \box_cntr_reg_reg[12]_CE_cooolgate_en_sig_18 ;
  wire \box_cntr_reg_reg[12]_i_1_n_0 ;
  wire \box_cntr_reg_reg[12]_i_1_n_4 ;
  wire \box_cntr_reg_reg[12]_i_1_n_5 ;
  wire \box_cntr_reg_reg[12]_i_1_n_6 ;
  wire \box_cntr_reg_reg[12]_i_1_n_7 ;
  wire \box_cntr_reg_reg[13]_CE_cooolgate_en_sig_10 ;
  wire \box_cntr_reg_reg[14]_CE_cooolgate_en_sig_17 ;
  wire \box_cntr_reg_reg[15]_CE_cooolgate_en_sig_19 ;
  wire \box_cntr_reg_reg[16]_CE_cooolgate_en_sig_20 ;
  wire \box_cntr_reg_reg[16]_i_1_n_0 ;
  wire \box_cntr_reg_reg[16]_i_1_n_4 ;
  wire \box_cntr_reg_reg[16]_i_1_n_5 ;
  wire \box_cntr_reg_reg[16]_i_1_n_6 ;
  wire \box_cntr_reg_reg[16]_i_1_n_7 ;
  wire \box_cntr_reg_reg[17]_CE_cooolgate_en_sig_24 ;
  wire \box_cntr_reg_reg[18]_CE_cooolgate_en_sig_11 ;
  wire \box_cntr_reg_reg[19]_CE_cooolgate_en_sig_5 ;
  wire \box_cntr_reg_reg[1]_CE_cooolgate_en_sig_26 ;
  wire \box_cntr_reg_reg[20]_i_1_n_0 ;
  wire \box_cntr_reg_reg[20]_i_1_n_4 ;
  wire \box_cntr_reg_reg[20]_i_1_n_5 ;
  wire \box_cntr_reg_reg[20]_i_1_n_6 ;
  wire \box_cntr_reg_reg[20]_i_1_n_7 ;
  wire \box_cntr_reg_reg[22]_CE_cooolgate_en_sig_6 ;
  wire \box_cntr_reg_reg[24]_i_1_n_7 ;
  wire \box_cntr_reg_reg[2]_CE_cooolgate_en_sig_25 ;
  wire \box_cntr_reg_reg[3]_CE_cooolgate_en_sig_21 ;
  wire \box_cntr_reg_reg[4]_i_1_n_0 ;
  wire \box_cntr_reg_reg[4]_i_1_n_4 ;
  wire \box_cntr_reg_reg[4]_i_1_n_5 ;
  wire \box_cntr_reg_reg[4]_i_1_n_6 ;
  wire \box_cntr_reg_reg[4]_i_1_n_7 ;
  wire \box_cntr_reg_reg[5]_CE_cooolgate_en_sig_23 ;
  wire \box_cntr_reg_reg[6]_CE_cooolgate_en_sig_16 ;
  wire \box_cntr_reg_reg[7]_CE_cooolgate_en_sig_22 ;
  wire \box_cntr_reg_reg[8]_CE_cooolgate_en_sig_13 ;
  wire \box_cntr_reg_reg[8]_i_1_n_0 ;
  wire \box_cntr_reg_reg[8]_i_1_n_4 ;
  wire \box_cntr_reg_reg[8]_i_1_n_5 ;
  wire \box_cntr_reg_reg[8]_i_1_n_6 ;
  wire \box_cntr_reg_reg[8]_i_1_n_7 ;
  wire \box_cntr_reg_reg[9]_CE_cooolgate_en_sig_12 ;
  wire box_x_dir_i_1_n_0;
  wire box_x_dir_reg_CE_cooolgate_en_sig_14;
  wire box_x_dir_reg_n_0;
  wire \box_x_reg[0]_i_2_n_0 ;
  wire \box_x_reg[0]_i_3_n_0 ;
  wire \box_x_reg[0]_i_4_n_0 ;
  wire \box_x_reg[0]_i_5_n_0 ;
  wire \box_x_reg[0]_i_6_n_0 ;
  wire \box_x_reg[0]_i_7_n_0 ;
  wire \box_x_reg[0]_i_8_n_0 ;
  wire \box_x_reg[0]_i_9_n_0 ;
  wire \box_x_reg[4]_i_2_n_0 ;
  wire \box_x_reg[4]_i_3_n_0 ;
  wire \box_x_reg[4]_i_4_n_0 ;
  wire \box_x_reg[4]_i_5_n_0 ;
  wire \box_x_reg[4]_i_6_n_0 ;
  wire \box_x_reg[4]_i_7_n_0 ;
  wire \box_x_reg[4]_i_8_n_0 ;
  wire \box_x_reg[4]_i_9_n_0 ;
  wire \box_x_reg[8]_i_2_n_0 ;
  wire \box_x_reg[8]_i_3_n_0 ;
  wire \box_x_reg[8]_i_4_n_0 ;
  wire \box_x_reg[8]_i_5_n_0 ;
  wire \box_x_reg[8]_i_6_n_0 ;
  wire \box_x_reg[8]_i_7_n_0 ;
  wire \box_x_reg[8]_i_8_n_0 ;
  wire [11:0]box_x_reg_reg;
  wire \box_x_reg_reg[0]_i_1_n_0 ;
  wire \box_x_reg_reg[0]_i_1_n_4 ;
  wire \box_x_reg_reg[0]_i_1_n_5 ;
  wire \box_x_reg_reg[0]_i_1_n_6 ;
  wire \box_x_reg_reg[0]_i_1_n_7 ;
  wire \box_x_reg_reg[4]_i_1_n_0 ;
  wire \box_x_reg_reg[4]_i_1_n_4 ;
  wire \box_x_reg_reg[4]_i_1_n_5 ;
  wire \box_x_reg_reg[4]_i_1_n_6 ;
  wire \box_x_reg_reg[4]_i_1_n_7 ;
  wire \box_x_reg_reg[8]_i_1_n_4 ;
  wire \box_x_reg_reg[8]_i_1_n_5 ;
  wire \box_x_reg_reg[8]_i_1_n_6 ;
  wire \box_x_reg_reg[8]_i_1_n_7 ;
  wire box_y_dir_i_1_n_0;
  wire box_y_dir_reg_CE_cooolgate_en_sig_15;
  wire box_y_dir_reg_n_0;
  wire \box_y_reg[0]_i_2_n_0 ;
  wire \box_y_reg[0]_i_3_n_0 ;
  wire \box_y_reg[0]_i_4_n_0 ;
  wire \box_y_reg[0]_i_5_n_0 ;
  wire \box_y_reg[0]_i_6_n_0 ;
  wire \box_y_reg[0]_i_7_n_0 ;
  wire \box_y_reg[0]_i_8_n_0 ;
  wire \box_y_reg[0]_i_9_n_0 ;
  wire \box_y_reg[4]_i_2_n_0 ;
  wire \box_y_reg[4]_i_3_n_0 ;
  wire \box_y_reg[4]_i_4_n_0 ;
  wire \box_y_reg[4]_i_5_n_0 ;
  wire \box_y_reg[4]_i_6_n_0 ;
  wire \box_y_reg[4]_i_7_n_0 ;
  wire \box_y_reg[4]_i_8_n_0 ;
  wire \box_y_reg[4]_i_9_n_0 ;
  wire \box_y_reg[8]_i_2_n_0 ;
  wire \box_y_reg[8]_i_3_n_0 ;
  wire \box_y_reg[8]_i_4_n_0 ;
  wire \box_y_reg[8]_i_5_n_0 ;
  wire \box_y_reg[8]_i_6_n_0 ;
  wire \box_y_reg[8]_i_7_n_0 ;
  wire \box_y_reg[8]_i_8_n_0 ;
  wire [11:0]box_y_reg_reg;
  wire \box_y_reg_reg[0]_i_1_n_0 ;
  wire \box_y_reg_reg[0]_i_1_n_4 ;
  wire \box_y_reg_reg[0]_i_1_n_5 ;
  wire \box_y_reg_reg[0]_i_1_n_6 ;
  wire \box_y_reg_reg[0]_i_1_n_7 ;
  wire \box_y_reg_reg[4]_i_1_n_0 ;
  wire \box_y_reg_reg[4]_i_1_n_4 ;
  wire \box_y_reg_reg[4]_i_1_n_5 ;
  wire \box_y_reg_reg[4]_i_1_n_6 ;
  wire \box_y_reg_reg[4]_i_1_n_7 ;
  wire \box_y_reg_reg[8]_i_1_n_4 ;
  wire \box_y_reg_reg[8]_i_1_n_5 ;
  wire \box_y_reg_reg[8]_i_1_n_6 ;
  wire \box_y_reg_reg[8]_i_1_n_7 ;
  wire clk;
  wire dir_cnt;
  wire \dir_cnt[0]_i_1_n_0 ;
  wire \dir_cnt[6]_i_2_n_0 ;
  wire \dir_cnt[7]_i_10_n_0 ;
  wire \dir_cnt[7]_i_11_n_0 ;
  wire \dir_cnt[7]_i_3_n_0 ;
  wire \dir_cnt[7]_i_4_n_0 ;
  wire \dir_cnt[7]_i_5_n_0 ;
  wire \dir_cnt[7]_i_6_n_0 ;
  wire \dir_cnt[7]_i_7_n_0 ;
  wire \dir_cnt[7]_i_8_n_0 ;
  wire \dir_cnt[7]_i_9_n_0 ;
  wire \dir_cnt_reg[0]_CE_cooolgate_en_sig_3 ;
  wire \dir_cnt_reg_n_0_[0] ;
  wire \dir_cnt_reg_n_0_[1] ;
  wire \dir_cnt_reg_n_0_[2] ;
  wire \dir_cnt_reg_n_0_[3] ;
  wire eqOp;
  wire eqOp8_in;
  wire geqOp;
  wire geqOp1_in;
  wire geqOp4_in;
  wire geqOp6_in;
  wire geqOp__11_carry__0_i_1_n_0;
  wire geqOp__11_carry__0_i_2_n_0;
  wire geqOp__11_carry__0_i_3_n_0;
  wire geqOp__11_carry__0_i_4_n_0;
  wire geqOp__11_carry_i_1_n_0;
  wire geqOp__11_carry_i_2_n_0;
  wire geqOp__11_carry_i_3_n_0;
  wire geqOp__11_carry_i_4_n_0;
  wire geqOp__11_carry_i_5_n_0;
  wire geqOp__11_carry_i_6_n_0;
  wire geqOp__11_carry_i_7_n_0;
  wire geqOp__11_carry_i_8_n_0;
  wire geqOp__11_carry_n_0;
  wire geqOp__17_carry__0_i_1_n_0;
  wire geqOp__17_carry__0_i_2_n_0;
  wire geqOp__17_carry__0_i_3_n_0;
  wire geqOp__17_carry__0_i_4_n_0;
  wire geqOp__17_carry_i_1_n_0;
  wire geqOp__17_carry_i_2_n_0;
  wire geqOp__17_carry_i_3_n_0;
  wire geqOp__17_carry_i_4_n_0;
  wire geqOp__17_carry_i_5_n_0;
  wire geqOp__17_carry_i_6_n_0;
  wire geqOp__17_carry_i_7_n_0;
  wire geqOp__17_carry_i_8_n_0;
  wire geqOp__17_carry_n_0;
  wire geqOp__5_carry__0_i_1_n_0;
  wire geqOp__5_carry__0_i_2_n_0;
  wire geqOp__5_carry__0_i_3_n_0;
  wire geqOp__5_carry_i_1_n_0;
  wire geqOp__5_carry_i_2_n_0;
  wire geqOp__5_carry_i_3_n_0;
  wire geqOp__5_carry_i_4_n_0;
  wire geqOp__5_carry_i_5_n_0;
  wire geqOp__5_carry_i_6_n_0;
  wire geqOp__5_carry_n_0;
  wire geqOp_carry__0_i_1_n_0;
  wire geqOp_carry__0_i_2_n_0;
  wire geqOp_carry__0_i_3_n_0;
  wire geqOp_carry__0_i_4_n_0;
  wire geqOp_carry_i_1_n_0;
  wire geqOp_carry_i_2_n_0;
  wire geqOp_carry_i_3_n_0;
  wire geqOp_carry_i_4_n_0;
  wire geqOp_carry_i_5_n_0;
  wire geqOp_carry_i_6_n_0;
  wire geqOp_carry_n_0;
  wire \h_cntr_reg[0]_i_3_n_0 ;
  wire \h_cntr_reg[0]_i_4_n_0 ;
  wire \h_cntr_reg[0]_i_5_n_0 ;
  wire \h_cntr_reg[0]_i_6_n_0 ;
  wire [11:0]h_cntr_reg_reg;
  wire \h_cntr_reg_reg[0]_i_2_n_0 ;
  wire \h_cntr_reg_reg[0]_i_2_n_4 ;
  wire \h_cntr_reg_reg[0]_i_2_n_5 ;
  wire \h_cntr_reg_reg[0]_i_2_n_6 ;
  wire \h_cntr_reg_reg[0]_i_2_n_7 ;
  wire \h_cntr_reg_reg[1]_CE_cooolgate_en_sig_4 ;
  wire \h_cntr_reg_reg[4]_i_1_n_0 ;
  wire \h_cntr_reg_reg[4]_i_1_n_4 ;
  wire \h_cntr_reg_reg[4]_i_1_n_5 ;
  wire \h_cntr_reg_reg[4]_i_1_n_6 ;
  wire \h_cntr_reg_reg[4]_i_1_n_7 ;
  wire \h_cntr_reg_reg[8]_i_1_n_4 ;
  wire \h_cntr_reg_reg[8]_i_1_n_5 ;
  wire \h_cntr_reg_reg[8]_i_1_n_6 ;
  wire \h_cntr_reg_reg[8]_i_1_n_7 ;
  wire h_sync_reg;
  wire h_sync_reg_i_1_n_0;
  wire ltOp15_in;
  wire ltOp16_in;
  wire ltOp3_in;
  wire ltOp5_in;
  wire ltOp__5_carry__0_i_1_n_0;
  wire ltOp__5_carry__0_i_2_n_0;
  wire ltOp__5_carry__0_i_3_n_0;
  wire ltOp__5_carry_i_1_n_0;
  wire ltOp__5_carry_i_2_n_0;
  wire ltOp__5_carry_i_3_n_0;
  wire ltOp__5_carry_i_4_n_0;
  wire ltOp__5_carry_i_5_n_0;
  wire ltOp__5_carry_i_6_n_0;
  wire ltOp__5_carry_i_7_n_0;
  wire ltOp__5_carry_i_8_n_0;
  wire ltOp__5_carry_n_0;
  wire ltOp_carry__0_i_1_n_0;
  wire ltOp_carry__0_i_2_n_0;
  wire ltOp_carry__0_i_3_n_0;
  wire ltOp_carry_i_1_n_0;
  wire ltOp_carry_i_2_n_0;
  wire ltOp_carry_i_3_n_0;
  wire ltOp_carry_i_4_n_0;
  wire ltOp_carry_i_5_n_0;
  wire ltOp_carry_i_6_n_0;
  wire ltOp_carry_i_7_n_0;
  wire ltOp_carry_i_8_n_0;
  wire ltOp_carry_n_0;
  wire [7:1]plusOp;
  wire pxl_clk;
  wire [3:0]sel0;
  wire [6:0]sseg_OBUF;
  wire \sseg_OBUF[0]_inst_i_2_n_0 ;
  wire \sseg_OBUF[1]_inst_i_2_n_0 ;
  wire \sseg_OBUF[2]_inst_i_2_n_0 ;
  wire \sseg_OBUF[3]_inst_i_2_n_0 ;
  wire \sseg_OBUF[4]_inst_i_2_n_0 ;
  wire \sseg_OBUF[5]_inst_i_2_n_0 ;
  wire \sseg_OBUF[6]_inst_i_2_n_0 ;
  wire sseg_cs_out_OBUF;
  wire v_cntr_reg0;
  wire \v_cntr_reg[0]_i_3_n_0 ;
  wire \v_cntr_reg[0]_i_4_n_0 ;
  wire \v_cntr_reg[0]_i_5_n_0 ;
  wire \v_cntr_reg[0]_i_6_n_0 ;
  wire \v_cntr_reg[0]_i_7_n_0 ;
  wire \v_cntr_reg[0]_i_8_n_0 ;
  wire [11:0]v_cntr_reg_reg;
  wire \v_cntr_reg_reg[0]_i_2_n_0 ;
  wire \v_cntr_reg_reg[0]_i_2_n_4 ;
  wire \v_cntr_reg_reg[0]_i_2_n_5 ;
  wire \v_cntr_reg_reg[0]_i_2_n_6 ;
  wire \v_cntr_reg_reg[0]_i_2_n_7 ;
  wire \v_cntr_reg_reg[4]_i_1_n_0 ;
  wire \v_cntr_reg_reg[4]_i_1_n_4 ;
  wire \v_cntr_reg_reg[4]_i_1_n_5 ;
  wire \v_cntr_reg_reg[4]_i_1_n_6 ;
  wire \v_cntr_reg_reg[4]_i_1_n_7 ;
  wire \v_cntr_reg_reg[8]_i_1_n_4 ;
  wire \v_cntr_reg_reg[8]_i_1_n_5 ;
  wire \v_cntr_reg_reg[8]_i_1_n_6 ;
  wire \v_cntr_reg_reg[8]_i_1_n_7 ;
  wire v_sync_reg;
  wire v_sync_reg_i_1_n_0;
  wire [0:0]vga_blue_OBUF;
  wire vga_hsync_o_OBUF;
  wire vga_red_reg0;
  wire \vga_red_reg[0]_i_10_n_0 ;
  wire \vga_red_reg[0]_i_11_n_0 ;
  wire \vga_red_reg[0]_i_12_n_0 ;
  wire \vga_red_reg[0]_i_13_n_0 ;
  wire \vga_red_reg[0]_i_14_n_0 ;
  wire \vga_red_reg[0]_i_15_n_0 ;
  wire \vga_red_reg[0]_i_4_n_0 ;
  wire \vga_red_reg[0]_i_5_n_0 ;
  wire \vga_red_reg[0]_i_6_n_0 ;
  wire \vga_red_reg[0]_i_7_n_0 ;
  wire \vga_red_reg[0]_i_8_n_0 ;
  wire \vga_red_reg[0]_i_9_n_0 ;
  wire \vga_red_reg_reg[0]_lopt_replica_1 ;
  wire \vga_red_reg_reg[0]_lopt_replica_10_1 ;
  wire \vga_red_reg_reg[0]_lopt_replica_11_1 ;
  wire \vga_red_reg_reg[0]_lopt_replica_2_1 ;
  wire \vga_red_reg_reg[0]_lopt_replica_3_1 ;
  wire \vga_red_reg_reg[0]_lopt_replica_4_1 ;
  wire \vga_red_reg_reg[0]_lopt_replica_5_1 ;
  wire \vga_red_reg_reg[0]_lopt_replica_6_1 ;
  wire \vga_red_reg_reg[0]_lopt_replica_7_1 ;
  wire \vga_red_reg_reg[0]_lopt_replica_8_1 ;
  wire \vga_red_reg_reg[0]_lopt_replica_9_1 ;
  wire vga_vsync_o_OBUF;
  wire [3:0]NLW___23_carry_CO_UNCONNECTED;
  wire [3:0]NLW___23_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW___23_carry__0_i_5_CO_UNCONNECTED;
  wire [3:0]NLW___23_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW___23_carry_i_5_CO_UNCONNECTED;
  wire [3:0]NLW__carry_CO_UNCONNECTED;
  wire [3:0]NLW__carry__0_CO_UNCONNECTED;
  wire [3:0]NLW__carry__0_i_5_CO_UNCONNECTED;
  wire [3:0]NLW__carry__1_CO_UNCONNECTED;
  wire [3:0]NLW__carry_i_5_CO_UNCONNECTED;
  wire [3:0]\NLW_box_cntr_reg_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_cntr_reg_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_cntr_reg_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_cntr_reg_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_cntr_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_cntr_reg_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_x_reg_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_x_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_y_reg_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_y_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_geqOp__11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp__11_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp__17_carry_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp__17_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp__5_carry_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp__5_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp_carry_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp_carry__0_CO_UNCONNECTED;
  wire [3:0]\NLW_h_cntr_reg_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_h_cntr_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_ltOp__5_carry_CO_UNCONNECTED;
  wire [3:0]NLW_ltOp__5_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry_CO_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__0_CO_UNCONNECTED;
  wire [3:0]\NLW_v_cntr_reg_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_v_cntr_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_red_reg_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_red_reg_reg[0]_i_3_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 __23_carry
       (.CI(\<const0> ),
        .CO({__23_carry_n_0,NLW___23_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI(h_cntr_reg_reg[3:0]),
        .S({__23_carry_i_1_n_0,__23_carry_i_2_n_0,__23_carry_i_3_n_0,__23_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 __23_carry__0
       (.CI(__23_carry_n_0),
        .CO({__23_carry__0_n_0,NLW___23_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(h_cntr_reg_reg[7:4]),
        .S({__23_carry__0_i_1_n_0,__23_carry__0_i_2_n_0,__23_carry__0_i_3_n_0,__23_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry__0_i_1
       (.I0(h_cntr_reg_reg[7]),
        .I1(__23_carry__0_i_5_n_4),
        .O(__23_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry__0_i_2
       (.I0(h_cntr_reg_reg[6]),
        .I1(__23_carry__0_i_5_n_5),
        .O(__23_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry__0_i_3
       (.I0(h_cntr_reg_reg[5]),
        .I1(__23_carry__0_i_5_n_6),
        .O(__23_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry__0_i_4
       (.I0(h_cntr_reg_reg[4]),
        .I1(__23_carry__0_i_5_n_7),
        .O(__23_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 __23_carry__0_i_5
       (.CI(__23_carry_i_5_n_0),
        .CO({__23_carry__0_i_5_n_0,NLW___23_carry__0_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({__23_carry__0_i_5_n_4,__23_carry__0_i_5_n_5,__23_carry__0_i_5_n_6,__23_carry__0_i_5_n_7}),
        .S(box_x_reg_reg[7:4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 __23_carry__1
       (.CI(__23_carry__0_n_0),
        .CO({__23_carry__1_n_0,NLW___23_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(h_cntr_reg_reg[11:8]),
        .S({__23_carry__1_i_1_n_0,__23_carry__1_i_2_n_0,__23_carry__1_i_3_n_0,__23_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry__1_i_1
       (.I0(h_cntr_reg_reg[11]),
        .I1(__23_carry__1_i_5_n_4),
        .O(__23_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry__1_i_2
       (.I0(h_cntr_reg_reg[10]),
        .I1(__23_carry__1_i_5_n_5),
        .O(__23_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry__1_i_3
       (.I0(h_cntr_reg_reg[9]),
        .I1(__23_carry__1_i_5_n_6),
        .O(__23_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry__1_i_4
       (.I0(h_cntr_reg_reg[8]),
        .I1(__23_carry__1_i_5_n_7),
        .O(__23_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 __23_carry__1_i_5
       (.CI(__23_carry__0_i_5_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({__23_carry__1_i_5_n_4,__23_carry__1_i_5_n_5,__23_carry__1_i_5_n_6,__23_carry__1_i_5_n_7}),
        .S(box_x_reg_reg[11:8]));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry_i_1
       (.I0(h_cntr_reg_reg[3]),
        .I1(__23_carry_i_5_n_4),
        .O(__23_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry_i_2
       (.I0(h_cntr_reg_reg[2]),
        .I1(__23_carry_i_5_n_5),
        .O(__23_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry_i_3
       (.I0(h_cntr_reg_reg[1]),
        .I1(__23_carry_i_5_n_6),
        .O(__23_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry_i_4
       (.I0(h_cntr_reg_reg[0]),
        .I1(__23_carry_i_5_n_7),
        .O(__23_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 __23_carry_i_5
       (.CI(\<const0> ),
        .CO({__23_carry_i_5_n_0,NLW___23_carry_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({box_x_reg_reg[3],\<const0> ,box_x_reg_reg[1],\<const0> }),
        .O({__23_carry_i_5_n_4,__23_carry_i_5_n_5,__23_carry_i_5_n_6,__23_carry_i_5_n_7}),
        .S({__23_carry_i_6_n_0,box_x_reg_reg[2],__23_carry_i_7_n_0,box_x_reg_reg[0]}));
  LUT1 #(
    .INIT(2'h1)) 
    __23_carry_i_6
       (.I0(box_x_reg_reg[3]),
        .O(__23_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    __23_carry_i_7
       (.I0(box_x_reg_reg[1]),
        .O(__23_carry_i_7_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 _carry
       (.CI(\<const0> ),
        .CO({_carry_n_0,NLW__carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI(v_cntr_reg_reg[3:0]),
        .S({_carry_i_1_n_0,_carry_i_2_n_0,_carry_i_3_n_0,_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,NLW__carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(v_cntr_reg_reg[7:4]),
        .S({_carry__0_i_1_n_0,_carry__0_i_2_n_0,_carry__0_i_3_n_0,_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_1
       (.I0(v_cntr_reg_reg[7]),
        .I1(_carry__0_i_5_n_4),
        .O(_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_2
       (.I0(v_cntr_reg_reg[6]),
        .I1(_carry__0_i_5_n_5),
        .O(_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_3
       (.I0(v_cntr_reg_reg[5]),
        .I1(_carry__0_i_5_n_6),
        .O(_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_4
       (.I0(v_cntr_reg_reg[4]),
        .I1(_carry__0_i_5_n_7),
        .O(_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 _carry__0_i_5
       (.CI(_carry_i_5_n_0),
        .CO({_carry__0_i_5_n_0,NLW__carry__0_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({_carry__0_i_5_n_4,_carry__0_i_5_n_5,_carry__0_i_5_n_6,_carry__0_i_5_n_7}),
        .S(box_y_reg_reg[7:4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({_carry__1_n_0,NLW__carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(v_cntr_reg_reg[11:8]),
        .S({_carry__1_i_1_n_0,_carry__1_i_2_n_0,_carry__1_i_3_n_0,_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_1
       (.I0(v_cntr_reg_reg[11]),
        .I1(_carry__1_i_5_n_4),
        .O(_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_2
       (.I0(v_cntr_reg_reg[10]),
        .I1(_carry__1_i_5_n_5),
        .O(_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_3
       (.I0(v_cntr_reg_reg[9]),
        .I1(_carry__1_i_5_n_6),
        .O(_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_4
       (.I0(v_cntr_reg_reg[8]),
        .I1(_carry__1_i_5_n_7),
        .O(_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 _carry__1_i_5
       (.CI(_carry__0_i_5_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({_carry__1_i_5_n_4,_carry__1_i_5_n_5,_carry__1_i_5_n_6,_carry__1_i_5_n_7}),
        .S(box_y_reg_reg[11:8]));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_1
       (.I0(v_cntr_reg_reg[3]),
        .I1(_carry_i_5_n_4),
        .O(_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_2
       (.I0(v_cntr_reg_reg[2]),
        .I1(_carry_i_5_n_5),
        .O(_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_3
       (.I0(v_cntr_reg_reg[1]),
        .I1(_carry_i_5_n_6),
        .O(_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_4
       (.I0(v_cntr_reg_reg[0]),
        .I1(_carry_i_5_n_7),
        .O(_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 _carry_i_5
       (.CI(\<const0> ),
        .CO({_carry_i_5_n_0,NLW__carry_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({box_y_reg_reg[3],\<const0> ,box_y_reg_reg[1],\<const0> }),
        .O({_carry_i_5_n_4,_carry_i_5_n_5,_carry_i_5_n_6,_carry_i_5_n_7}),
        .S({_carry_i_6_n_0,box_y_reg_reg[2],_carry_i_7_n_0,box_y_reg_reg[0]}));
  LUT1 #(
    .INIT(2'h1)) 
    _carry_i_6
       (.I0(box_y_reg_reg[3]),
        .O(_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    _carry_i_7
       (.I0(box_y_reg_reg[1]),
        .O(_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \box_cntr_reg[0]_i_1 
       (.I0(\box_cntr_reg[0]_i_3_n_0 ),
        .I1(\box_cntr_reg[0]_i_4_n_0 ),
        .I2(\box_cntr_reg[0]_i_5_n_0 ),
        .I3(\box_cntr_reg[0]_i_6_n_0 ),
        .I4(\box_cntr_reg[0]_i_7_n_0 ),
        .I5(\box_cntr_reg[0]_i_8_n_0 ),
        .O(eqOp));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \box_cntr_reg[0]_i_3 
       (.I0(box_cntr_reg_reg[22]),
        .I1(box_cntr_reg_reg[9]),
        .I2(box_cntr_reg_reg[17]),
        .I3(box_cntr_reg_reg[20]),
        .O(\box_cntr_reg[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \box_cntr_reg[0]_i_4 
       (.I0(box_cntr_reg_reg[23]),
        .I1(box_cntr_reg_reg[11]),
        .I2(box_cntr_reg_reg[24]),
        .I3(box_cntr_reg_reg[8]),
        .O(\box_cntr_reg[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \box_cntr_reg[0]_i_5 
       (.I0(box_cntr_reg_reg[7]),
        .I1(box_cntr_reg_reg[14]),
        .I2(box_cntr_reg_reg[4]),
        .O(\box_cntr_reg[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \box_cntr_reg[0]_i_6 
       (.I0(box_cntr_reg_reg[15]),
        .I1(box_cntr_reg_reg[16]),
        .I2(box_cntr_reg_reg[3]),
        .I3(box_cntr_reg_reg[19]),
        .O(\box_cntr_reg[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \box_cntr_reg[0]_i_7 
       (.I0(box_cntr_reg_reg[2]),
        .I1(box_cntr_reg_reg[6]),
        .I2(box_cntr_reg_reg[0]),
        .I3(box_cntr_reg_reg[18]),
        .O(\box_cntr_reg[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \box_cntr_reg[0]_i_8 
       (.I0(box_cntr_reg_reg[21]),
        .I1(box_cntr_reg_reg[5]),
        .I2(box_cntr_reg_reg[10]),
        .I3(box_cntr_reg_reg[1]),
        .I4(box_cntr_reg_reg[13]),
        .I5(box_cntr_reg_reg[12]),
        .O(\box_cntr_reg[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_cntr_reg[0]_i_9 
       (.I0(box_cntr_reg_reg[0]),
        .O(\box_cntr_reg[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[0] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[0]_i_2_n_7 ),
        .Q(box_cntr_reg_reg[0]),
        .R(eqOp));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP RETARGET" *) 
  CARRY4 \box_cntr_reg_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\box_cntr_reg_reg[0]_i_2_n_0 ,\NLW_box_cntr_reg_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\box_cntr_reg_reg[0]_i_2_n_4 ,\box_cntr_reg_reg[0]_i_2_n_5 ,\box_cntr_reg_reg[0]_i_2_n_6 ,\box_cntr_reg_reg[0]_i_2_n_7 }),
        .S({box_cntr_reg_reg[3:1],\box_cntr_reg[0]_i_9_n_0 }));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[10] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[10]_CE_cooolgate_en_sig_8 ),
        .D(\box_cntr_reg_reg[8]_i_1_n_5 ),
        .Q(box_cntr_reg_reg[10]),
        .R(eqOp));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \box_cntr_reg_reg[10]_CE_cooolgate_en_gate_43 
       (.I0(box_cntr_reg_reg[9]),
        .I1(box_cntr_reg_reg[8]),
        .I2(box_cntr_reg_reg[6]),
        .I3(box_cntr_reg_reg[5]),
        .I4(box_cntr_reg_reg[4]),
        .I5(\box_cntr_reg_reg[0]_i_2_n_0 ),
        .O(\box_cntr_reg_reg[10]_CE_cooolgate_en_sig_8 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[11] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[11]_CE_cooolgate_en_sig_9 ),
        .D(\box_cntr_reg_reg[8]_i_1_n_4 ),
        .Q(box_cntr_reg_reg[11]),
        .R(eqOp));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \box_cntr_reg_reg[11]_CE_cooolgate_en_gate_45 
       (.I0(box_cntr_reg_reg[8]),
        .I1(box_cntr_reg_reg[6]),
        .I2(box_cntr_reg_reg[5]),
        .I3(box_cntr_reg_reg[4]),
        .I4(box_cntr_reg_reg[10]),
        .I5(\box_cntr_reg_reg[0]_i_2_n_0 ),
        .O(\box_cntr_reg_reg[11]_CE_cooolgate_en_sig_9 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[12] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[12]_CE_cooolgate_en_sig_18 ),
        .D(\box_cntr_reg_reg[12]_i_1_n_7 ),
        .Q(box_cntr_reg_reg[12]),
        .R(eqOp));
  LUT6 #(
    .INIT(64'hff02020202020202)) 
    \box_cntr_reg_reg[12]_CE_cooolgate_en_gate_63 
       (.I0(\box_cntr_reg[0]_i_5_n_0 ),
        .I1(\box_cntr_reg[0]_i_4_n_0 ),
        .I2(\box_cntr_reg[0]_i_3_n_0 ),
        .I3(box_cntr_reg_reg[5]),
        .I4(box_cntr_reg_reg[10]),
        .I5(\box_cntr_reg_reg[0]_i_2_n_0 ),
        .O(\box_cntr_reg_reg[12]_CE_cooolgate_en_sig_18 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_cntr_reg_reg[12]_i_1 
       (.CI(\box_cntr_reg_reg[8]_i_1_n_0 ),
        .CO({\box_cntr_reg_reg[12]_i_1_n_0 ,\NLW_box_cntr_reg_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\box_cntr_reg_reg[12]_i_1_n_4 ,\box_cntr_reg_reg[12]_i_1_n_5 ,\box_cntr_reg_reg[12]_i_1_n_6 ,\box_cntr_reg_reg[12]_i_1_n_7 }),
        .S(box_cntr_reg_reg[15:12]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[13] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[13]_CE_cooolgate_en_sig_10 ),
        .D(\box_cntr_reg_reg[12]_i_1_n_6 ),
        .Q(box_cntr_reg_reg[13]),
        .R(eqOp));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \box_cntr_reg_reg[13]_CE_cooolgate_en_gate_47 
       (.I0(box_cntr_reg_reg[6]),
        .I1(box_cntr_reg_reg[5]),
        .I2(box_cntr_reg_reg[4]),
        .I3(box_cntr_reg_reg[12]),
        .I4(box_cntr_reg_reg[10]),
        .I5(\box_cntr_reg_reg[0]_i_2_n_0 ),
        .O(\box_cntr_reg_reg[13]_CE_cooolgate_en_sig_10 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[14] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[14]_CE_cooolgate_en_sig_17 ),
        .D(\box_cntr_reg_reg[12]_i_1_n_5 ),
        .Q(box_cntr_reg_reg[14]),
        .R(eqOp));
  LUT6 #(
    .INIT(64'h808080ff00000000)) 
    \box_cntr_reg_reg[14]_CE_cooolgate_en_gate_61 
       (.I0(box_cntr_reg_reg[5]),
        .I1(box_cntr_reg_reg[13]),
        .I2(box_cntr_reg_reg[10]),
        .I3(box_cntr_reg_reg[4]),
        .I4(\box_cntr_reg[0]_i_8_n_0 ),
        .I5(box_cntr_reg_reg[7]),
        .O(\box_cntr_reg_reg[14]_CE_cooolgate_en_sig_17 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[15] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[15]_CE_cooolgate_en_sig_19 ),
        .D(\box_cntr_reg_reg[12]_i_1_n_4 ),
        .Q(box_cntr_reg_reg[15]),
        .R(eqOp));
  LUT6 #(
    .INIT(64'hff04040404040404)) 
    \box_cntr_reg_reg[15]_CE_cooolgate_en_gate_65 
       (.I0(\box_cntr_reg[0]_i_7_n_0 ),
        .I1(\box_cntr_reg[0]_i_5_n_0 ),
        .I2(\box_cntr_reg[0]_i_4_n_0 ),
        .I3(box_cntr_reg_reg[5]),
        .I4(box_cntr_reg_reg[13]),
        .I5(box_cntr_reg_reg[10]),
        .O(\box_cntr_reg_reg[15]_CE_cooolgate_en_sig_19 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[16] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[16]_CE_cooolgate_en_sig_20 ),
        .D(\box_cntr_reg_reg[16]_i_1_n_7 ),
        .Q(box_cntr_reg_reg[16]),
        .R(eqOp));
  LUT6 #(
    .INIT(64'hff02020202020202)) 
    \box_cntr_reg_reg[16]_CE_cooolgate_en_gate_67 
       (.I0(\box_cntr_reg[0]_i_5_n_0 ),
        .I1(\box_cntr_reg[0]_i_4_n_0 ),
        .I2(\box_cntr_reg[0]_i_3_n_0 ),
        .I3(box_cntr_reg_reg[5]),
        .I4(box_cntr_reg_reg[13]),
        .I5(box_cntr_reg_reg[10]),
        .O(\box_cntr_reg_reg[16]_CE_cooolgate_en_sig_20 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_cntr_reg_reg[16]_i_1 
       (.CI(\box_cntr_reg_reg[12]_i_1_n_0 ),
        .CO({\box_cntr_reg_reg[16]_i_1_n_0 ,\NLW_box_cntr_reg_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\box_cntr_reg_reg[16]_i_1_n_4 ,\box_cntr_reg_reg[16]_i_1_n_5 ,\box_cntr_reg_reg[16]_i_1_n_6 ,\box_cntr_reg_reg[16]_i_1_n_7 }),
        .S(box_cntr_reg_reg[19:16]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[17] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[17]_CE_cooolgate_en_sig_24 ),
        .D(\box_cntr_reg_reg[16]_i_1_n_6 ),
        .Q(box_cntr_reg_reg[17]),
        .R(eqOp));
  LUT6 #(
    .INIT(64'h800080008000ffff)) 
    \box_cntr_reg_reg[17]_CE_cooolgate_en_gate_75 
       (.I0(box_cntr_reg_reg[5]),
        .I1(box_cntr_reg_reg[13]),
        .I2(box_cntr_reg_reg[12]),
        .I3(box_cntr_reg_reg[10]),
        .I4(box_cntr_reg_reg[9]),
        .I5(box_cntr_reg_reg[20]),
        .O(\box_cntr_reg_reg[17]_CE_cooolgate_en_sig_24 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[18] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[18]_CE_cooolgate_en_sig_11 ),
        .D(\box_cntr_reg_reg[16]_i_1_n_5 ),
        .Q(box_cntr_reg_reg[18]),
        .R(eqOp));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \box_cntr_reg_reg[18]_CE_cooolgate_en_gate_49 
       (.I0(box_cntr_reg_reg[5]),
        .I1(box_cntr_reg_reg[15]),
        .I2(box_cntr_reg_reg[13]),
        .I3(box_cntr_reg_reg[12]),
        .I4(box_cntr_reg_reg[10]),
        .I5(\box_cntr_reg_reg[0]_i_2_n_0 ),
        .O(\box_cntr_reg_reg[18]_CE_cooolgate_en_sig_11 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[19] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[19]_CE_cooolgate_en_sig_5 ),
        .D(\box_cntr_reg_reg[16]_i_1_n_4 ),
        .Q(box_cntr_reg_reg[19]),
        .R(eqOp));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \box_cntr_reg_reg[19]_CE_cooolgate_en_gate_34 
       (.I0(box_cntr_reg_reg[5]),
        .I1(box_cntr_reg_reg[18]),
        .I2(box_cntr_reg_reg[15]),
        .I3(box_cntr_reg_reg[13]),
        .I4(box_cntr_reg_reg[12]),
        .I5(box_cntr_reg_reg[10]),
        .O(\box_cntr_reg_reg[19]_CE_cooolgate_en_sig_5 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[1] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[1]_CE_cooolgate_en_sig_26 ),
        .D(\box_cntr_reg_reg[0]_i_2_n_6 ),
        .Q(box_cntr_reg_reg[1]),
        .R(eqOp));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    \box_cntr_reg_reg[1]_CE_cooolgate_en_gate_80 
       (.I0(\box_cntr_reg[0]_i_7_n_0 ),
        .I1(\box_cntr_reg[0]_i_6_n_0 ),
        .I2(\box_cntr_reg[0]_i_5_n_0 ),
        .I3(\box_cntr_reg[0]_i_4_n_0 ),
        .I4(\box_cntr_reg[0]_i_3_n_0 ),
        .I5(box_cntr_reg_reg[0]),
        .O(\box_cntr_reg_reg[1]_CE_cooolgate_en_sig_26 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[20] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[19]_CE_cooolgate_en_sig_5 ),
        .D(\box_cntr_reg_reg[20]_i_1_n_7 ),
        .Q(box_cntr_reg_reg[20]),
        .R(eqOp));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_cntr_reg_reg[20]_i_1 
       (.CI(\box_cntr_reg_reg[16]_i_1_n_0 ),
        .CO({\box_cntr_reg_reg[20]_i_1_n_0 ,\NLW_box_cntr_reg_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\box_cntr_reg_reg[20]_i_1_n_4 ,\box_cntr_reg_reg[20]_i_1_n_5 ,\box_cntr_reg_reg[20]_i_1_n_6 ,\box_cntr_reg_reg[20]_i_1_n_7 }),
        .S(box_cntr_reg_reg[23:20]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[21] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[19]_CE_cooolgate_en_sig_5 ),
        .D(\box_cntr_reg_reg[20]_i_1_n_6 ),
        .Q(box_cntr_reg_reg[21]),
        .R(eqOp));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[22] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[22]_CE_cooolgate_en_sig_6 ),
        .D(\box_cntr_reg_reg[20]_i_1_n_5 ),
        .Q(box_cntr_reg_reg[22]),
        .R(eqOp));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \box_cntr_reg_reg[22]_CE_cooolgate_en_gate_38 
       (.I0(box_cntr_reg_reg[5]),
        .I1(box_cntr_reg_reg[21]),
        .I2(box_cntr_reg_reg[18]),
        .I3(box_cntr_reg_reg[13]),
        .I4(box_cntr_reg_reg[12]),
        .I5(box_cntr_reg_reg[10]),
        .O(\box_cntr_reg_reg[22]_CE_cooolgate_en_sig_6 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[23] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[22]_CE_cooolgate_en_sig_6 ),
        .D(\box_cntr_reg_reg[20]_i_1_n_4 ),
        .Q(box_cntr_reg_reg[23]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[24] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[24]_i_1_n_7 ),
        .Q(box_cntr_reg_reg[24]),
        .R(eqOp));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \box_cntr_reg_reg[24]_i_1 
       (.CI(\box_cntr_reg_reg[20]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\box_cntr_reg_reg[24]_i_1_n_7 ),
        .S({\<const0> ,\<const0> ,\<const0> ,box_cntr_reg_reg[24]}));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[2] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[2]_CE_cooolgate_en_sig_25 ),
        .D(\box_cntr_reg_reg[0]_i_2_n_5 ),
        .Q(box_cntr_reg_reg[2]),
        .R(eqOp));
  (* OPT_MODIFIED = "RETARGET REMAP" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \box_cntr_reg_reg[2]_CE_cooolgate_en_gate_77 
       (.I0(box_cntr_reg_reg[1]),
        .I1(box_cntr_reg_reg[0]),
        .I2(box_cntr_reg_reg[18]),
        .O(\box_cntr_reg_reg[2]_CE_cooolgate_en_sig_25 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[3] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[3]_CE_cooolgate_en_sig_21 ),
        .D(\box_cntr_reg_reg[0]_i_2_n_4 ),
        .Q(box_cntr_reg_reg[3]),
        .R(eqOp));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h808080808080FF80)) 
    \box_cntr_reg_reg[3]_CE_cooolgate_en_gate_69 
       (.I0(box_cntr_reg_reg[2]),
        .I1(box_cntr_reg_reg[1]),
        .I2(box_cntr_reg_reg[0]),
        .I3(box_cntr_reg_reg[15]),
        .I4(\box_cntr_reg[0]_i_8_n_0 ),
        .I5(\box_cntr_reg[0]_i_7_n_0 ),
        .O(\box_cntr_reg_reg[3]_CE_cooolgate_en_sig_21 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[4] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[0]_i_2_n_0 ),
        .D(\box_cntr_reg_reg[4]_i_1_n_7 ),
        .Q(box_cntr_reg_reg[4]),
        .R(eqOp));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_cntr_reg_reg[4]_i_1 
       (.CI(\box_cntr_reg_reg[0]_i_2_n_0 ),
        .CO({\box_cntr_reg_reg[4]_i_1_n_0 ,\NLW_box_cntr_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\box_cntr_reg_reg[4]_i_1_n_4 ,\box_cntr_reg_reg[4]_i_1_n_5 ,\box_cntr_reg_reg[4]_i_1_n_6 ,\box_cntr_reg_reg[4]_i_1_n_7 }),
        .S(box_cntr_reg_reg[7:4]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[5] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[5]_CE_cooolgate_en_sig_23 ),
        .D(\box_cntr_reg_reg[4]_i_1_n_6 ),
        .Q(box_cntr_reg_reg[5]),
        .R(eqOp));
  LUT2 #(
    .INIT(4'h8)) 
    \box_cntr_reg_reg[5]_CE_cooolgate_en_gate_73 
       (.I0(box_cntr_reg_reg[4]),
        .I1(\box_cntr_reg_reg[0]_i_2_n_0 ),
        .O(\box_cntr_reg_reg[5]_CE_cooolgate_en_sig_23 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[6] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[6]_CE_cooolgate_en_sig_16 ),
        .D(\box_cntr_reg_reg[4]_i_1_n_5 ),
        .Q(box_cntr_reg_reg[6]),
        .R(eqOp));
  LUT3 #(
    .INIT(8'h80)) 
    \box_cntr_reg_reg[6]_CE_cooolgate_en_gate_59 
       (.I0(box_cntr_reg_reg[5]),
        .I1(box_cntr_reg_reg[4]),
        .I2(\box_cntr_reg_reg[0]_i_2_n_0 ),
        .O(\box_cntr_reg_reg[6]_CE_cooolgate_en_sig_16 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[7] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[7]_CE_cooolgate_en_sig_22 ),
        .D(\box_cntr_reg_reg[4]_i_1_n_4 ),
        .Q(box_cntr_reg_reg[7]),
        .R(eqOp));
  LUT6 #(
    .INIT(64'hff02020202020202)) 
    \box_cntr_reg_reg[7]_CE_cooolgate_en_gate_71 
       (.I0(box_cntr_reg_reg[14]),
        .I1(\box_cntr_reg[0]_i_8_n_0 ),
        .I2(\box_cntr_reg[0]_i_7_n_0 ),
        .I3(box_cntr_reg_reg[6]),
        .I4(box_cntr_reg_reg[5]),
        .I5(\box_cntr_reg_reg[0]_i_2_n_0 ),
        .O(\box_cntr_reg_reg[7]_CE_cooolgate_en_sig_22 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[8] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[8]_CE_cooolgate_en_sig_13 ),
        .D(\box_cntr_reg_reg[8]_i_1_n_7 ),
        .Q(box_cntr_reg_reg[8]),
        .R(eqOp));
  LUT5 #(
    .INIT(32'h80000000)) 
    \box_cntr_reg_reg[8]_CE_cooolgate_en_gate_53 
       (.I0(box_cntr_reg_reg[7]),
        .I1(box_cntr_reg_reg[6]),
        .I2(box_cntr_reg_reg[5]),
        .I3(box_cntr_reg_reg[4]),
        .I4(\box_cntr_reg_reg[0]_i_2_n_0 ),
        .O(\box_cntr_reg_reg[8]_CE_cooolgate_en_sig_13 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_cntr_reg_reg[8]_i_1 
       (.CI(\box_cntr_reg_reg[4]_i_1_n_0 ),
        .CO({\box_cntr_reg_reg[8]_i_1_n_0 ,\NLW_box_cntr_reg_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\box_cntr_reg_reg[8]_i_1_n_4 ,\box_cntr_reg_reg[8]_i_1_n_5 ,\box_cntr_reg_reg[8]_i_1_n_6 ,\box_cntr_reg_reg[8]_i_1_n_7 }),
        .S(box_cntr_reg_reg[11:8]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[9] 
       (.C(pxl_clk),
        .CE(\box_cntr_reg_reg[9]_CE_cooolgate_en_sig_12 ),
        .D(\box_cntr_reg_reg[8]_i_1_n_6 ),
        .Q(box_cntr_reg_reg[9]),
        .R(eqOp));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \box_cntr_reg_reg[9]_CE_cooolgate_en_gate_51 
       (.I0(box_cntr_reg_reg[8]),
        .I1(box_cntr_reg_reg[7]),
        .I2(box_cntr_reg_reg[6]),
        .I3(box_cntr_reg_reg[5]),
        .I4(box_cntr_reg_reg[4]),
        .I5(\box_cntr_reg_reg[0]_i_2_n_0 ),
        .O(\box_cntr_reg_reg[9]_CE_cooolgate_en_sig_12 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    box_x_dir_i_1
       (.I0(\dir_cnt[7]_i_4_n_0 ),
        .I1(eqOp),
        .I2(box_x_dir_reg_n_0),
        .O(box_x_dir_i_1_n_0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b1)) 
    box_x_dir_reg
       (.C(pxl_clk),
        .CE(box_x_dir_reg_CE_cooolgate_en_sig_14),
        .D(box_x_dir_i_1_n_0),
        .Q(box_x_dir_reg_n_0),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h00000002)) 
    box_x_dir_reg_CE_cooolgate_en_gate_55
       (.I0(eqOp),
        .I1(\dir_cnt[7]_i_10_n_0 ),
        .I2(box_x_reg_reg[8]),
        .I3(box_x_reg_reg[1]),
        .I4(box_x_reg_reg[10]),
        .O(box_x_dir_reg_CE_cooolgate_en_sig_14));
  LUT1 #(
    .INIT(2'h1)) 
    \box_x_reg[0]_i_2 
       (.I0(box_x_dir_reg_n_0),
        .O(\box_x_reg[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_x_reg[0]_i_3 
       (.I0(box_x_dir_reg_n_0),
        .O(\box_x_reg[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_x_reg[0]_i_4 
       (.I0(box_x_dir_reg_n_0),
        .O(\box_x_reg[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_x_reg[0]_i_5 
       (.I0(box_x_dir_reg_n_0),
        .O(\box_x_reg[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[0]_i_6 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[3]),
        .O(\box_x_reg[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[0]_i_7 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[2]),
        .O(\box_x_reg[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[0]_i_8 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[1]),
        .O(\box_x_reg[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \box_x_reg[0]_i_9 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[0]),
        .O(\box_x_reg[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_x_reg[4]_i_2 
       (.I0(box_x_dir_reg_n_0),
        .O(\box_x_reg[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_x_reg[4]_i_3 
       (.I0(box_x_dir_reg_n_0),
        .O(\box_x_reg[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_x_reg[4]_i_4 
       (.I0(box_x_dir_reg_n_0),
        .O(\box_x_reg[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_x_reg[4]_i_5 
       (.I0(box_x_dir_reg_n_0),
        .O(\box_x_reg[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[4]_i_6 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[7]),
        .O(\box_x_reg[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[4]_i_7 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[6]),
        .O(\box_x_reg[4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[4]_i_8 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[5]),
        .O(\box_x_reg[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[4]_i_9 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[4]),
        .O(\box_x_reg[4]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_x_reg[8]_i_2 
       (.I0(box_x_dir_reg_n_0),
        .O(\box_x_reg[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_x_reg[8]_i_3 
       (.I0(box_x_dir_reg_n_0),
        .O(\box_x_reg[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_x_reg[8]_i_4 
       (.I0(box_x_dir_reg_n_0),
        .O(\box_x_reg[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[8]_i_5 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[11]),
        .O(\box_x_reg[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[8]_i_6 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[10]),
        .O(\box_x_reg[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[8]_i_7 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[9]),
        .O(\box_x_reg[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[8]_i_8 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[8]),
        .O(\box_x_reg[8]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[0] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_x_reg_reg[0]_i_1_n_7 ),
        .Q(box_x_reg_reg[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_x_reg_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\box_x_reg_reg[0]_i_1_n_0 ,\NLW_box_x_reg_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\box_x_reg[0]_i_2_n_0 ),
        .DI({\box_x_reg[0]_i_3_n_0 ,\box_x_reg[0]_i_4_n_0 ,\box_x_reg[0]_i_5_n_0 ,box_x_dir_reg_n_0}),
        .O({\box_x_reg_reg[0]_i_1_n_4 ,\box_x_reg_reg[0]_i_1_n_5 ,\box_x_reg_reg[0]_i_1_n_6 ,\box_x_reg_reg[0]_i_1_n_7 }),
        .S({\box_x_reg[0]_i_6_n_0 ,\box_x_reg[0]_i_7_n_0 ,\box_x_reg[0]_i_8_n_0 ,\box_x_reg[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[10] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_x_reg_reg[8]_i_1_n_5 ),
        .Q(box_x_reg_reg[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[11] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_x_reg_reg[8]_i_1_n_4 ),
        .Q(box_x_reg_reg[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[1] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_x_reg_reg[0]_i_1_n_6 ),
        .Q(box_x_reg_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[2] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_x_reg_reg[0]_i_1_n_5 ),
        .Q(box_x_reg_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[3] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_x_reg_reg[0]_i_1_n_4 ),
        .Q(box_x_reg_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[4] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_x_reg_reg[4]_i_1_n_7 ),
        .Q(box_x_reg_reg[4]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_x_reg_reg[4]_i_1 
       (.CI(\box_x_reg_reg[0]_i_1_n_0 ),
        .CO({\box_x_reg_reg[4]_i_1_n_0 ,\NLW_box_x_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\box_x_reg[4]_i_2_n_0 ,\box_x_reg[4]_i_3_n_0 ,\box_x_reg[4]_i_4_n_0 ,\box_x_reg[4]_i_5_n_0 }),
        .O({\box_x_reg_reg[4]_i_1_n_4 ,\box_x_reg_reg[4]_i_1_n_5 ,\box_x_reg_reg[4]_i_1_n_6 ,\box_x_reg_reg[4]_i_1_n_7 }),
        .S({\box_x_reg[4]_i_6_n_0 ,\box_x_reg[4]_i_7_n_0 ,\box_x_reg[4]_i_8_n_0 ,\box_x_reg[4]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[5] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_x_reg_reg[4]_i_1_n_6 ),
        .Q(box_x_reg_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[6] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_x_reg_reg[4]_i_1_n_5 ),
        .Q(box_x_reg_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[7] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_x_reg_reg[4]_i_1_n_4 ),
        .Q(box_x_reg_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[8] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_x_reg_reg[8]_i_1_n_7 ),
        .Q(box_x_reg_reg[8]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_x_reg_reg[8]_i_1 
       (.CI(\box_x_reg_reg[4]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\box_x_reg[8]_i_2_n_0 ,\box_x_reg[8]_i_3_n_0 ,\box_x_reg[8]_i_4_n_0 }),
        .O({\box_x_reg_reg[8]_i_1_n_4 ,\box_x_reg_reg[8]_i_1_n_5 ,\box_x_reg_reg[8]_i_1_n_6 ,\box_x_reg_reg[8]_i_1_n_7 }),
        .S({\box_x_reg[8]_i_5_n_0 ,\box_x_reg[8]_i_6_n_0 ,\box_x_reg[8]_i_7_n_0 ,\box_x_reg[8]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[9] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_x_reg_reg[8]_i_1_n_6 ),
        .Q(box_x_reg_reg[9]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    box_y_dir_i_1
       (.I0(\dir_cnt[7]_i_3_n_0 ),
        .I1(eqOp),
        .I2(box_y_dir_reg_n_0),
        .O(box_y_dir_i_1_n_0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b1)) 
    box_y_dir_reg
       (.C(pxl_clk),
        .CE(box_y_dir_reg_CE_cooolgate_en_sig_15),
        .D(box_y_dir_i_1_n_0),
        .Q(box_y_dir_reg_n_0),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h00020000)) 
    box_y_dir_reg_CE_cooolgate_en_gate_57
       (.I0(eqOp),
        .I1(\dir_cnt[7]_i_7_n_0 ),
        .I2(box_y_reg_reg[9]),
        .I3(box_y_reg_reg[10]),
        .I4(box_y_reg_reg[0]),
        .O(box_y_dir_reg_CE_cooolgate_en_sig_15));
  LUT1 #(
    .INIT(2'h1)) 
    \box_y_reg[0]_i_2 
       (.I0(box_y_dir_reg_n_0),
        .O(\box_y_reg[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_y_reg[0]_i_3 
       (.I0(box_y_dir_reg_n_0),
        .O(\box_y_reg[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_y_reg[0]_i_4 
       (.I0(box_y_dir_reg_n_0),
        .O(\box_y_reg[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_y_reg[0]_i_5 
       (.I0(box_y_dir_reg_n_0),
        .O(\box_y_reg[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[0]_i_6 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[3]),
        .O(\box_y_reg[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[0]_i_7 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[2]),
        .O(\box_y_reg[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[0]_i_8 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[1]),
        .O(\box_y_reg[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \box_y_reg[0]_i_9 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[0]),
        .O(\box_y_reg[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_y_reg[4]_i_2 
       (.I0(box_y_dir_reg_n_0),
        .O(\box_y_reg[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_y_reg[4]_i_3 
       (.I0(box_y_dir_reg_n_0),
        .O(\box_y_reg[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_y_reg[4]_i_4 
       (.I0(box_y_dir_reg_n_0),
        .O(\box_y_reg[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_y_reg[4]_i_5 
       (.I0(box_y_dir_reg_n_0),
        .O(\box_y_reg[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[4]_i_6 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[7]),
        .O(\box_y_reg[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[4]_i_7 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[6]),
        .O(\box_y_reg[4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[4]_i_8 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[5]),
        .O(\box_y_reg[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[4]_i_9 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[4]),
        .O(\box_y_reg[4]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_y_reg[8]_i_2 
       (.I0(box_y_dir_reg_n_0),
        .O(\box_y_reg[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_y_reg[8]_i_3 
       (.I0(box_y_dir_reg_n_0),
        .O(\box_y_reg[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_y_reg[8]_i_4 
       (.I0(box_y_dir_reg_n_0),
        .O(\box_y_reg[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[8]_i_5 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[11]),
        .O(\box_y_reg[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[8]_i_6 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[10]),
        .O(\box_y_reg[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[8]_i_7 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[9]),
        .O(\box_y_reg[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[8]_i_8 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[8]),
        .O(\box_y_reg[8]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[0] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_y_reg_reg[0]_i_1_n_7 ),
        .Q(box_y_reg_reg[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_y_reg_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\box_y_reg_reg[0]_i_1_n_0 ,\NLW_box_y_reg_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\box_y_reg[0]_i_2_n_0 ),
        .DI({\box_y_reg[0]_i_3_n_0 ,\box_y_reg[0]_i_4_n_0 ,\box_y_reg[0]_i_5_n_0 ,box_y_dir_reg_n_0}),
        .O({\box_y_reg_reg[0]_i_1_n_4 ,\box_y_reg_reg[0]_i_1_n_5 ,\box_y_reg_reg[0]_i_1_n_6 ,\box_y_reg_reg[0]_i_1_n_7 }),
        .S({\box_y_reg[0]_i_6_n_0 ,\box_y_reg[0]_i_7_n_0 ,\box_y_reg[0]_i_8_n_0 ,\box_y_reg[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[10] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_y_reg_reg[8]_i_1_n_5 ),
        .Q(box_y_reg_reg[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[11] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_y_reg_reg[8]_i_1_n_4 ),
        .Q(box_y_reg_reg[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[1] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_y_reg_reg[0]_i_1_n_6 ),
        .Q(box_y_reg_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[2] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_y_reg_reg[0]_i_1_n_5 ),
        .Q(box_y_reg_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[3] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_y_reg_reg[0]_i_1_n_4 ),
        .Q(box_y_reg_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \box_y_reg_reg[4] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_y_reg_reg[4]_i_1_n_7 ),
        .Q(box_y_reg_reg[4]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_y_reg_reg[4]_i_1 
       (.CI(\box_y_reg_reg[0]_i_1_n_0 ),
        .CO({\box_y_reg_reg[4]_i_1_n_0 ,\NLW_box_y_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\box_y_reg[4]_i_2_n_0 ,\box_y_reg[4]_i_3_n_0 ,\box_y_reg[4]_i_4_n_0 ,\box_y_reg[4]_i_5_n_0 }),
        .O({\box_y_reg_reg[4]_i_1_n_4 ,\box_y_reg_reg[4]_i_1_n_5 ,\box_y_reg_reg[4]_i_1_n_6 ,\box_y_reg_reg[4]_i_1_n_7 }),
        .S({\box_y_reg[4]_i_6_n_0 ,\box_y_reg[4]_i_7_n_0 ,\box_y_reg[4]_i_8_n_0 ,\box_y_reg[4]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[5] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_y_reg_reg[4]_i_1_n_6 ),
        .Q(box_y_reg_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[6] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_y_reg_reg[4]_i_1_n_5 ),
        .Q(box_y_reg_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \box_y_reg_reg[7] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_y_reg_reg[4]_i_1_n_4 ),
        .Q(box_y_reg_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \box_y_reg_reg[8] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_y_reg_reg[8]_i_1_n_7 ),
        .Q(box_y_reg_reg[8]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_y_reg_reg[8]_i_1 
       (.CI(\box_y_reg_reg[4]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\box_y_reg[8]_i_2_n_0 ,\box_y_reg[8]_i_3_n_0 ,\box_y_reg[8]_i_4_n_0 }),
        .O({\box_y_reg_reg[8]_i_1_n_4 ,\box_y_reg_reg[8]_i_1_n_5 ,\box_y_reg_reg[8]_i_1_n_6 ,\box_y_reg_reg[8]_i_1_n_7 }),
        .S({\box_y_reg[8]_i_5_n_0 ,\box_y_reg[8]_i_6_n_0 ,\box_y_reg[8]_i_7_n_0 ,\box_y_reg[8]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[9] 
       (.C(pxl_clk),
        .CE(eqOp),
        .D(\box_y_reg_reg[8]_i_1_n_6 ),
        .Q(box_y_reg_reg[9]),
        .R(\<const0> ));
  (* IMPORTED_FROM = "/home/marco/entwicklung/projekte/ArtyA7-Projects/nonprojectmode/src/ip/clk_wiz_test_5/clk_wiz_test.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_test clk_div_inst
       (.clk_in1(clk),
        .clk_out1(pxl_clk),
        .reset(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \dir_cnt[0]_i_1 
       (.I0(\dir_cnt_reg_n_0_[0] ),
        .O(\dir_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dir_cnt[1]_i_1 
       (.I0(\dir_cnt_reg_n_0_[1] ),
        .I1(\dir_cnt_reg_n_0_[0] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \dir_cnt[2]_i_1 
       (.I0(\dir_cnt_reg_n_0_[2] ),
        .I1(\dir_cnt_reg_n_0_[0] ),
        .I2(\dir_cnt_reg_n_0_[1] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \dir_cnt[3]_i_1 
       (.I0(\dir_cnt_reg_n_0_[3] ),
        .I1(\dir_cnt_reg_n_0_[2] ),
        .I2(\dir_cnt_reg_n_0_[1] ),
        .I3(\dir_cnt_reg_n_0_[0] ),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \dir_cnt[4]_i_1 
       (.I0(sel0[0]),
        .I1(\dir_cnt_reg_n_0_[3] ),
        .I2(\dir_cnt_reg_n_0_[0] ),
        .I3(\dir_cnt_reg_n_0_[1] ),
        .I4(\dir_cnt_reg_n_0_[2] ),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \dir_cnt[5]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\dir_cnt_reg_n_0_[2] ),
        .I3(\dir_cnt_reg_n_0_[1] ),
        .I4(\dir_cnt_reg_n_0_[0] ),
        .I5(\dir_cnt_reg_n_0_[3] ),
        .O(plusOp[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \dir_cnt[6]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(\dir_cnt_reg_n_0_[2] ),
        .I4(\dir_cnt[6]_i_2_n_0 ),
        .I5(\dir_cnt_reg_n_0_[3] ),
        .O(plusOp[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \dir_cnt[6]_i_2 
       (.I0(\dir_cnt_reg_n_0_[1] ),
        .I1(\dir_cnt_reg_n_0_[0] ),
        .O(\dir_cnt[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \dir_cnt[7]_i_1 
       (.I0(\dir_cnt[7]_i_3_n_0 ),
        .I1(\dir_cnt[7]_i_4_n_0 ),
        .I2(eqOp),
        .O(dir_cnt));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \dir_cnt[7]_i_10 
       (.I0(box_x_reg_reg[0]),
        .I1(box_x_reg_reg[3]),
        .I2(box_x_reg_reg[7]),
        .I3(box_x_reg_reg[11]),
        .O(\dir_cnt[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \dir_cnt[7]_i_11 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[4]),
        .I2(box_x_reg_reg[6]),
        .I3(box_x_reg_reg[5]),
        .I4(box_x_reg_reg[2]),
        .I5(box_x_reg_reg[9]),
        .O(\dir_cnt[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \dir_cnt[7]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\dir_cnt[7]_i_5_n_0 ),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \dir_cnt[7]_i_3 
       (.I0(\dir_cnt[7]_i_6_n_0 ),
        .I1(box_y_reg_reg[10]),
        .I2(box_y_reg_reg[0]),
        .I3(box_y_reg_reg[9]),
        .I4(\dir_cnt[7]_i_7_n_0 ),
        .I5(\dir_cnt[7]_i_8_n_0 ),
        .O(\dir_cnt[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \dir_cnt[7]_i_4 
       (.I0(\dir_cnt[7]_i_9_n_0 ),
        .I1(box_x_reg_reg[8]),
        .I2(box_x_reg_reg[10]),
        .I3(box_x_reg_reg[1]),
        .I4(\dir_cnt[7]_i_10_n_0 ),
        .I5(\dir_cnt[7]_i_11_n_0 ),
        .O(\dir_cnt[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \dir_cnt[7]_i_5 
       (.I0(\dir_cnt_reg_n_0_[2] ),
        .I1(\dir_cnt_reg_n_0_[1] ),
        .I2(\dir_cnt_reg_n_0_[0] ),
        .I3(\dir_cnt_reg_n_0_[3] ),
        .O(\dir_cnt[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \dir_cnt[7]_i_6 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[6]),
        .I2(box_y_reg_reg[7]),
        .I3(box_y_reg_reg[2]),
        .I4(box_y_reg_reg[4]),
        .I5(box_y_reg_reg[8]),
        .O(\dir_cnt[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dir_cnt[7]_i_7 
       (.I0(box_y_reg_reg[3]),
        .I1(box_y_reg_reg[11]),
        .I2(box_y_reg_reg[5]),
        .I3(box_y_reg_reg[1]),
        .O(\dir_cnt[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \dir_cnt[7]_i_8 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[6]),
        .I2(box_y_reg_reg[7]),
        .I3(box_y_reg_reg[2]),
        .I4(box_y_reg_reg[4]),
        .I5(box_y_reg_reg[8]),
        .O(\dir_cnt[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \dir_cnt[7]_i_9 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[4]),
        .I2(box_x_reg_reg[6]),
        .I3(box_x_reg_reg[5]),
        .I4(box_x_reg_reg[2]),
        .I5(box_x_reg_reg[9]),
        .O(\dir_cnt[7]_i_9_n_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dir_cnt_reg[0] 
       (.C(pxl_clk),
        .CE(\dir_cnt_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(\dir_cnt[0]_i_1_n_0 ),
        .Q(\dir_cnt_reg_n_0_[0] ),
        .R(\<const0> ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT4 #(
    .INIT(16'h7000)) 
    \dir_cnt_reg[0]_CE_cooolgate_en_gate_18_LOPT_REMAP 
       (.I0(\dir_cnt[7]_i_4_n_0 ),
        .I1(\dir_cnt[7]_i_3_n_0 ),
        .I2(eqOp),
        .I3(dir_cnt),
        .O(\dir_cnt_reg[0]_CE_cooolgate_en_sig_3 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dir_cnt_reg[1] 
       (.C(pxl_clk),
        .CE(\dir_cnt_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(plusOp[1]),
        .Q(\dir_cnt_reg_n_0_[1] ),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dir_cnt_reg[2] 
       (.C(pxl_clk),
        .CE(\dir_cnt_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(plusOp[2]),
        .Q(\dir_cnt_reg_n_0_[2] ),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dir_cnt_reg[3] 
       (.C(pxl_clk),
        .CE(\dir_cnt_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(plusOp[3]),
        .Q(\dir_cnt_reg_n_0_[3] ),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dir_cnt_reg[4] 
       (.C(pxl_clk),
        .CE(\dir_cnt_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(plusOp[4]),
        .Q(sel0[0]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dir_cnt_reg[5] 
       (.C(pxl_clk),
        .CE(\dir_cnt_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(plusOp[5]),
        .Q(sel0[1]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dir_cnt_reg[6] 
       (.C(pxl_clk),
        .CE(\dir_cnt_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(plusOp[6]),
        .Q(sel0[2]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dir_cnt_reg[7] 
       (.C(pxl_clk),
        .CE(\dir_cnt_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(plusOp[7]),
        .Q(sel0[3]),
        .R(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 geqOp__11_carry
       (.CI(\<const0> ),
        .CO({geqOp__11_carry_n_0,NLW_geqOp__11_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI({geqOp__11_carry_i_1_n_0,geqOp__11_carry_i_2_n_0,geqOp__11_carry_i_3_n_0,geqOp__11_carry_i_4_n_0}),
        .S({geqOp__11_carry_i_5_n_0,geqOp__11_carry_i_6_n_0,geqOp__11_carry_i_7_n_0,geqOp__11_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 geqOp__11_carry__0
       (.CI(geqOp__11_carry_n_0),
        .CO({geqOp,NLW_geqOp__11_carry__0_CO_UNCONNECTED[0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,geqOp__11_carry__0_i_1_n_0,geqOp__11_carry__0_i_2_n_0}),
        .S({\<const0> ,\<const0> ,geqOp__11_carry__0_i_3_n_0,geqOp__11_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp__11_carry__0_i_1
       (.I0(v_cntr_reg_reg[11]),
        .I1(box_y_reg_reg[11]),
        .I2(v_cntr_reg_reg[10]),
        .I3(box_y_reg_reg[10]),
        .O(geqOp__11_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp__11_carry__0_i_2
       (.I0(v_cntr_reg_reg[9]),
        .I1(box_y_reg_reg[9]),
        .I2(v_cntr_reg_reg[8]),
        .I3(box_y_reg_reg[8]),
        .O(geqOp__11_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__11_carry__0_i_3
       (.I0(box_y_reg_reg[11]),
        .I1(v_cntr_reg_reg[11]),
        .I2(box_y_reg_reg[10]),
        .I3(v_cntr_reg_reg[10]),
        .O(geqOp__11_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__11_carry__0_i_4
       (.I0(box_y_reg_reg[9]),
        .I1(v_cntr_reg_reg[9]),
        .I2(box_y_reg_reg[8]),
        .I3(v_cntr_reg_reg[8]),
        .O(geqOp__11_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp__11_carry_i_1
       (.I0(v_cntr_reg_reg[7]),
        .I1(box_y_reg_reg[7]),
        .I2(v_cntr_reg_reg[6]),
        .I3(box_y_reg_reg[6]),
        .O(geqOp__11_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp__11_carry_i_2
       (.I0(v_cntr_reg_reg[5]),
        .I1(box_y_reg_reg[5]),
        .I2(v_cntr_reg_reg[4]),
        .I3(box_y_reg_reg[4]),
        .O(geqOp__11_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp__11_carry_i_3
       (.I0(v_cntr_reg_reg[3]),
        .I1(box_y_reg_reg[3]),
        .I2(v_cntr_reg_reg[2]),
        .I3(box_y_reg_reg[2]),
        .O(geqOp__11_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp__11_carry_i_4
       (.I0(v_cntr_reg_reg[1]),
        .I1(box_y_reg_reg[1]),
        .I2(v_cntr_reg_reg[0]),
        .I3(box_y_reg_reg[0]),
        .O(geqOp__11_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__11_carry_i_5
       (.I0(box_y_reg_reg[7]),
        .I1(v_cntr_reg_reg[7]),
        .I2(box_y_reg_reg[6]),
        .I3(v_cntr_reg_reg[6]),
        .O(geqOp__11_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__11_carry_i_6
       (.I0(box_y_reg_reg[5]),
        .I1(v_cntr_reg_reg[5]),
        .I2(box_y_reg_reg[4]),
        .I3(v_cntr_reg_reg[4]),
        .O(geqOp__11_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__11_carry_i_7
       (.I0(box_y_reg_reg[3]),
        .I1(v_cntr_reg_reg[3]),
        .I2(box_y_reg_reg[2]),
        .I3(v_cntr_reg_reg[2]),
        .O(geqOp__11_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__11_carry_i_8
       (.I0(box_y_reg_reg[1]),
        .I1(v_cntr_reg_reg[1]),
        .I2(box_y_reg_reg[0]),
        .I3(v_cntr_reg_reg[0]),
        .O(geqOp__11_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 geqOp__17_carry
       (.CI(\<const0> ),
        .CO({geqOp__17_carry_n_0,NLW_geqOp__17_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI({geqOp__17_carry_i_1_n_0,geqOp__17_carry_i_2_n_0,geqOp__17_carry_i_3_n_0,geqOp__17_carry_i_4_n_0}),
        .S({geqOp__17_carry_i_5_n_0,geqOp__17_carry_i_6_n_0,geqOp__17_carry_i_7_n_0,geqOp__17_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 geqOp__17_carry__0
       (.CI(geqOp__17_carry_n_0),
        .CO({geqOp1_in,NLW_geqOp__17_carry__0_CO_UNCONNECTED[0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,geqOp__17_carry__0_i_1_n_0,geqOp__17_carry__0_i_2_n_0}),
        .S({\<const0> ,\<const0> ,geqOp__17_carry__0_i_3_n_0,geqOp__17_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp__17_carry__0_i_1
       (.I0(h_cntr_reg_reg[11]),
        .I1(box_x_reg_reg[11]),
        .I2(h_cntr_reg_reg[10]),
        .I3(box_x_reg_reg[10]),
        .O(geqOp__17_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp__17_carry__0_i_2
       (.I0(h_cntr_reg_reg[9]),
        .I1(box_x_reg_reg[9]),
        .I2(h_cntr_reg_reg[8]),
        .I3(box_x_reg_reg[8]),
        .O(geqOp__17_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__17_carry__0_i_3
       (.I0(box_x_reg_reg[11]),
        .I1(h_cntr_reg_reg[11]),
        .I2(box_x_reg_reg[10]),
        .I3(h_cntr_reg_reg[10]),
        .O(geqOp__17_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__17_carry__0_i_4
       (.I0(box_x_reg_reg[9]),
        .I1(h_cntr_reg_reg[9]),
        .I2(box_x_reg_reg[8]),
        .I3(h_cntr_reg_reg[8]),
        .O(geqOp__17_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp__17_carry_i_1
       (.I0(h_cntr_reg_reg[7]),
        .I1(box_x_reg_reg[7]),
        .I2(h_cntr_reg_reg[6]),
        .I3(box_x_reg_reg[6]),
        .O(geqOp__17_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp__17_carry_i_2
       (.I0(h_cntr_reg_reg[5]),
        .I1(box_x_reg_reg[5]),
        .I2(h_cntr_reg_reg[4]),
        .I3(box_x_reg_reg[4]),
        .O(geqOp__17_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp__17_carry_i_3
       (.I0(h_cntr_reg_reg[3]),
        .I1(box_x_reg_reg[3]),
        .I2(h_cntr_reg_reg[2]),
        .I3(box_x_reg_reg[2]),
        .O(geqOp__17_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp__17_carry_i_4
       (.I0(h_cntr_reg_reg[1]),
        .I1(box_x_reg_reg[1]),
        .I2(h_cntr_reg_reg[0]),
        .I3(box_x_reg_reg[0]),
        .O(geqOp__17_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__17_carry_i_5
       (.I0(box_x_reg_reg[7]),
        .I1(h_cntr_reg_reg[7]),
        .I2(box_x_reg_reg[6]),
        .I3(h_cntr_reg_reg[6]),
        .O(geqOp__17_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__17_carry_i_6
       (.I0(box_x_reg_reg[5]),
        .I1(h_cntr_reg_reg[5]),
        .I2(box_x_reg_reg[4]),
        .I3(h_cntr_reg_reg[4]),
        .O(geqOp__17_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__17_carry_i_7
       (.I0(box_x_reg_reg[3]),
        .I1(h_cntr_reg_reg[3]),
        .I2(box_x_reg_reg[2]),
        .I3(h_cntr_reg_reg[2]),
        .O(geqOp__17_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__17_carry_i_8
       (.I0(box_x_reg_reg[1]),
        .I1(h_cntr_reg_reg[1]),
        .I2(box_x_reg_reg[0]),
        .I3(h_cntr_reg_reg[0]),
        .O(geqOp__17_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 geqOp__5_carry
       (.CI(\<const0> ),
        .CO({geqOp__5_carry_n_0,NLW_geqOp__5_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,geqOp__5_carry_i_1_n_0,geqOp__5_carry_i_2_n_0,v_cntr_reg_reg[1]}),
        .S({geqOp__5_carry_i_3_n_0,geqOp__5_carry_i_4_n_0,geqOp__5_carry_i_5_n_0,geqOp__5_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 geqOp__5_carry__0
       (.CI(geqOp__5_carry_n_0),
        .CO({geqOp4_in,NLW_geqOp__5_carry__0_CO_UNCONNECTED[0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,geqOp__5_carry__0_i_1_n_0,v_cntr_reg_reg[9]}),
        .S({\<const0> ,\<const0> ,geqOp__5_carry__0_i_2_n_0,geqOp__5_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    geqOp__5_carry__0_i_1
       (.I0(v_cntr_reg_reg[10]),
        .I1(v_cntr_reg_reg[11]),
        .O(geqOp__5_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    geqOp__5_carry__0_i_2
       (.I0(v_cntr_reg_reg[11]),
        .I1(v_cntr_reg_reg[10]),
        .O(geqOp__5_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp__5_carry__0_i_3
       (.I0(v_cntr_reg_reg[8]),
        .I1(v_cntr_reg_reg[9]),
        .O(geqOp__5_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp__5_carry_i_1
       (.I0(v_cntr_reg_reg[5]),
        .I1(v_cntr_reg_reg[4]),
        .O(geqOp__5_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp__5_carry_i_2
       (.I0(v_cntr_reg_reg[2]),
        .I1(v_cntr_reg_reg[3]),
        .O(geqOp__5_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp__5_carry_i_3
       (.I0(v_cntr_reg_reg[6]),
        .I1(v_cntr_reg_reg[7]),
        .O(geqOp__5_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp__5_carry_i_4
       (.I0(v_cntr_reg_reg[5]),
        .I1(v_cntr_reg_reg[4]),
        .O(geqOp__5_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp__5_carry_i_5
       (.I0(v_cntr_reg_reg[3]),
        .I1(v_cntr_reg_reg[2]),
        .O(geqOp__5_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp__5_carry_i_6
       (.I0(v_cntr_reg_reg[0]),
        .I1(v_cntr_reg_reg[1]),
        .O(geqOp__5_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 geqOp_carry
       (.CI(\<const0> ),
        .CO({geqOp_carry_n_0,NLW_geqOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI({geqOp_carry_i_1_n_0,geqOp_carry_i_2_n_0,\<const0> ,\<const0> }),
        .S({geqOp_carry_i_3_n_0,geqOp_carry_i_4_n_0,geqOp_carry_i_5_n_0,geqOp_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 geqOp_carry__0
       (.CI(geqOp_carry_n_0),
        .CO({geqOp6_in,NLW_geqOp_carry__0_CO_UNCONNECTED[0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,geqOp_carry__0_i_1_n_0,geqOp_carry__0_i_2_n_0}),
        .S({\<const0> ,\<const0> ,geqOp_carry__0_i_3_n_0,geqOp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    geqOp_carry__0_i_1
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(geqOp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp_carry__0_i_2
       (.I0(h_cntr_reg_reg[8]),
        .I1(h_cntr_reg_reg[9]),
        .O(geqOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    geqOp_carry__0_i_3
       (.I0(h_cntr_reg_reg[11]),
        .I1(h_cntr_reg_reg[10]),
        .O(geqOp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp_carry__0_i_4
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(geqOp_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp_carry_i_1
       (.I0(h_cntr_reg_reg[6]),
        .I1(h_cntr_reg_reg[7]),
        .O(geqOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    geqOp_carry_i_2
       (.I0(h_cntr_reg_reg[4]),
        .I1(h_cntr_reg_reg[5]),
        .O(geqOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp_carry_i_3
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(geqOp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    geqOp_carry_i_4
       (.I0(h_cntr_reg_reg[5]),
        .I1(h_cntr_reg_reg[4]),
        .O(geqOp_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp_carry_i_5
       (.I0(h_cntr_reg_reg[3]),
        .I1(h_cntr_reg_reg[2]),
        .O(geqOp_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp_carry_i_6
       (.I0(h_cntr_reg_reg[0]),
        .I1(h_cntr_reg_reg[1]),
        .O(geqOp_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    \h_cntr_reg[0]_i_1 
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[4]),
        .I2(h_cntr_reg_reg[5]),
        .I3(h_cntr_reg_reg[6]),
        .I4(\h_cntr_reg[0]_i_3_n_0 ),
        .O(eqOp8_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \h_cntr_reg[0]_i_3 
       (.I0(\h_cntr_reg[0]_i_5_n_0 ),
        .I1(h_cntr_reg_reg[1]),
        .I2(h_cntr_reg_reg[0]),
        .I3(h_cntr_reg_reg[9]),
        .I4(h_cntr_reg_reg[8]),
        .I5(\h_cntr_reg[0]_i_6_n_0 ),
        .O(\h_cntr_reg[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \h_cntr_reg[0]_i_4 
       (.I0(h_cntr_reg_reg[0]),
        .O(\h_cntr_reg[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_cntr_reg[0]_i_5 
       (.I0(h_cntr_reg_reg[10]),
        .I1(h_cntr_reg_reg[11]),
        .O(\h_cntr_reg[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \h_cntr_reg[0]_i_6 
       (.I0(h_cntr_reg_reg[2]),
        .I1(h_cntr_reg_reg[3]),
        .O(\h_cntr_reg[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[0] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[0]_i_2_n_7 ),
        .Q(h_cntr_reg_reg[0]),
        .R(eqOp8_in));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP RETARGET" *) 
  CARRY4 \h_cntr_reg_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\h_cntr_reg_reg[0]_i_2_n_0 ,\NLW_h_cntr_reg_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\h_cntr_reg_reg[0]_i_2_n_4 ,\h_cntr_reg_reg[0]_i_2_n_5 ,\h_cntr_reg_reg[0]_i_2_n_6 ,\h_cntr_reg_reg[0]_i_2_n_7 }),
        .S({h_cntr_reg_reg[3:1],\h_cntr_reg[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[10] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[8]_i_1_n_5 ),
        .Q(h_cntr_reg_reg[10]),
        .R(eqOp8_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[11] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[8]_i_1_n_4 ),
        .Q(h_cntr_reg_reg[11]),
        .R(eqOp8_in));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[1] 
       (.C(pxl_clk),
        .CE(\h_cntr_reg_reg[1]_CE_cooolgate_en_sig_4 ),
        .D(\h_cntr_reg_reg[0]_i_2_n_6 ),
        .Q(h_cntr_reg_reg[1]),
        .R(eqOp8_in));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFF0000004F)) 
    \h_cntr_reg_reg[1]_CE_cooolgate_en_gate_26 
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[1]),
        .I2(\h_cntr_reg[0]_i_3_n_0 ),
        .I3(h_cntr_reg_reg[6]),
        .I4(h_cntr_reg_reg[5]),
        .I5(h_cntr_reg_reg[0]),
        .O(\h_cntr_reg_reg[1]_CE_cooolgate_en_sig_4 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[2] 
       (.C(pxl_clk),
        .CE(\h_cntr_reg_reg[1]_CE_cooolgate_en_sig_4 ),
        .D(\h_cntr_reg_reg[0]_i_2_n_5 ),
        .Q(h_cntr_reg_reg[2]),
        .R(eqOp8_in));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[3] 
       (.C(pxl_clk),
        .CE(\h_cntr_reg_reg[1]_CE_cooolgate_en_sig_4 ),
        .D(\h_cntr_reg_reg[0]_i_2_n_4 ),
        .Q(h_cntr_reg_reg[3]),
        .R(eqOp8_in));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[4] 
       (.C(pxl_clk),
        .CE(\h_cntr_reg_reg[1]_CE_cooolgate_en_sig_4 ),
        .D(\h_cntr_reg_reg[4]_i_1_n_7 ),
        .Q(h_cntr_reg_reg[4]),
        .R(eqOp8_in));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \h_cntr_reg_reg[4]_i_1 
       (.CI(\h_cntr_reg_reg[0]_i_2_n_0 ),
        .CO({\h_cntr_reg_reg[4]_i_1_n_0 ,\NLW_h_cntr_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\h_cntr_reg_reg[4]_i_1_n_4 ,\h_cntr_reg_reg[4]_i_1_n_5 ,\h_cntr_reg_reg[4]_i_1_n_6 ,\h_cntr_reg_reg[4]_i_1_n_7 }),
        .S(h_cntr_reg_reg[7:4]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[5] 
       (.C(pxl_clk),
        .CE(\h_cntr_reg_reg[1]_CE_cooolgate_en_sig_4 ),
        .D(\h_cntr_reg_reg[4]_i_1_n_6 ),
        .Q(h_cntr_reg_reg[5]),
        .R(eqOp8_in));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[6] 
       (.C(pxl_clk),
        .CE(\h_cntr_reg_reg[1]_CE_cooolgate_en_sig_4 ),
        .D(\h_cntr_reg_reg[4]_i_1_n_5 ),
        .Q(h_cntr_reg_reg[6]),
        .R(eqOp8_in));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[7] 
       (.C(pxl_clk),
        .CE(\h_cntr_reg_reg[1]_CE_cooolgate_en_sig_4 ),
        .D(\h_cntr_reg_reg[4]_i_1_n_4 ),
        .Q(h_cntr_reg_reg[7]),
        .R(eqOp8_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[8] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[8]_i_1_n_7 ),
        .Q(h_cntr_reg_reg[8]),
        .R(eqOp8_in));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \h_cntr_reg_reg[8]_i_1 
       (.CI(\h_cntr_reg_reg[4]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\h_cntr_reg_reg[8]_i_1_n_4 ,\h_cntr_reg_reg[8]_i_1_n_5 ,\h_cntr_reg_reg[8]_i_1_n_6 ,\h_cntr_reg_reg[8]_i_1_n_7 }),
        .S(h_cntr_reg_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[9] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[8]_i_1_n_6 ),
        .Q(h_cntr_reg_reg[9]),
        .R(eqOp8_in));
  FDRE #(
    .INIT(1'b1)) 
    h_sync_dly_reg_reg
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(h_sync_reg),
        .Q(vga_hsync_o_OBUF),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h7)) 
    h_sync_reg_i_1
       (.I0(ltOp5_in),
        .I1(geqOp6_in),
        .O(h_sync_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    h_sync_reg_reg
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(h_sync_reg_i_1_n_0),
        .Q(h_sync_reg),
        .R(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ltOp__5_carry
       (.CI(\<const0> ),
        .CO({ltOp__5_carry_n_0,NLW_ltOp__5_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({ltOp__5_carry_i_1_n_0,ltOp__5_carry_i_2_n_0,ltOp__5_carry_i_3_n_0,ltOp__5_carry_i_4_n_0}),
        .S({ltOp__5_carry_i_5_n_0,ltOp__5_carry_i_6_n_0,ltOp__5_carry_i_7_n_0,ltOp__5_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ltOp__5_carry__0
       (.CI(ltOp__5_carry_n_0),
        .CO({ltOp3_in,NLW_ltOp__5_carry__0_CO_UNCONNECTED[0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,ltOp__5_carry__0_i_1_n_0}),
        .S({\<const0> ,\<const0> ,ltOp__5_carry__0_i_2_n_0,ltOp__5_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp__5_carry__0_i_1
       (.I0(v_cntr_reg_reg[8]),
        .I1(v_cntr_reg_reg[9]),
        .O(ltOp__5_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp__5_carry__0_i_2
       (.I0(v_cntr_reg_reg[11]),
        .I1(v_cntr_reg_reg[10]),
        .O(ltOp__5_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp__5_carry__0_i_3
       (.I0(v_cntr_reg_reg[8]),
        .I1(v_cntr_reg_reg[9]),
        .O(ltOp__5_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp__5_carry_i_1
       (.I0(v_cntr_reg_reg[7]),
        .I1(v_cntr_reg_reg[6]),
        .O(ltOp__5_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ltOp__5_carry_i_2
       (.I0(v_cntr_reg_reg[5]),
        .O(ltOp__5_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ltOp__5_carry_i_3
       (.I0(v_cntr_reg_reg[3]),
        .O(ltOp__5_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp__5_carry_i_4
       (.I0(v_cntr_reg_reg[0]),
        .I1(v_cntr_reg_reg[1]),
        .O(ltOp__5_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp__5_carry_i_5
       (.I0(v_cntr_reg_reg[6]),
        .I1(v_cntr_reg_reg[7]),
        .O(ltOp__5_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp__5_carry_i_6
       (.I0(v_cntr_reg_reg[5]),
        .I1(v_cntr_reg_reg[4]),
        .O(ltOp__5_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp__5_carry_i_7
       (.I0(v_cntr_reg_reg[3]),
        .I1(v_cntr_reg_reg[2]),
        .O(ltOp__5_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp__5_carry_i_8
       (.I0(v_cntr_reg_reg[1]),
        .I1(v_cntr_reg_reg[0]),
        .O(ltOp__5_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ltOp_carry
       (.CI(\<const0> ),
        .CO({ltOp_carry_n_0,NLW_ltOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({ltOp_carry_i_1_n_0,ltOp_carry_i_2_n_0,ltOp_carry_i_3_n_0,ltOp_carry_i_4_n_0}),
        .S({ltOp_carry_i_5_n_0,ltOp_carry_i_6_n_0,ltOp_carry_i_7_n_0,ltOp_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ltOp_carry__0
       (.CI(ltOp_carry_n_0),
        .CO({ltOp5_in,NLW_ltOp_carry__0_CO_UNCONNECTED[0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,ltOp_carry__0_i_1_n_0}),
        .S({\<const0> ,\<const0> ,ltOp_carry__0_i_2_n_0,ltOp_carry__0_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    ltOp_carry__0_i_1
       (.I0(h_cntr_reg_reg[9]),
        .O(ltOp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__0_i_2
       (.I0(h_cntr_reg_reg[11]),
        .I1(h_cntr_reg_reg[10]),
        .O(ltOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp_carry__0_i_3
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(ltOp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp_carry_i_1
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(ltOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ltOp_carry_i_2
       (.I0(h_cntr_reg_reg[5]),
        .O(ltOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp_carry_i_3
       (.I0(h_cntr_reg_reg[2]),
        .I1(h_cntr_reg_reg[3]),
        .O(ltOp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp_carry_i_4
       (.I0(h_cntr_reg_reg[1]),
        .I1(h_cntr_reg_reg[0]),
        .O(ltOp_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp_carry_i_5
       (.I0(h_cntr_reg_reg[6]),
        .I1(h_cntr_reg_reg[7]),
        .O(ltOp_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp_carry_i_6
       (.I0(h_cntr_reg_reg[5]),
        .I1(h_cntr_reg_reg[4]),
        .O(ltOp_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp_carry_i_7
       (.I0(h_cntr_reg_reg[3]),
        .I1(h_cntr_reg_reg[2]),
        .O(ltOp_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp_carry_i_8
       (.I0(h_cntr_reg_reg[0]),
        .I1(h_cntr_reg_reg[1]),
        .O(ltOp_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h3EDBFFFF3EDB0000)) 
    \sseg_OBUF[0]_inst_i_1 
       (.I0(\dir_cnt_reg_n_0_[3] ),
        .I1(\dir_cnt_reg_n_0_[0] ),
        .I2(\dir_cnt_reg_n_0_[1] ),
        .I3(\dir_cnt_reg_n_0_[2] ),
        .I4(sseg_cs_out_OBUF),
        .I5(\sseg_OBUF[0]_inst_i_2_n_0 ),
        .O(sseg_OBUF[0]));
  LUT4 #(
    .INIT(16'h3EDB)) 
    \sseg_OBUF[0]_inst_i_2 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\sseg_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFD45FFFFFD450000)) 
    \sseg_OBUF[1]_inst_i_1 
       (.I0(\dir_cnt_reg_n_0_[0] ),
        .I1(\dir_cnt_reg_n_0_[1] ),
        .I2(\dir_cnt_reg_n_0_[2] ),
        .I3(\dir_cnt_reg_n_0_[3] ),
        .I4(sseg_cs_out_OBUF),
        .I5(\sseg_OBUF[1]_inst_i_2_n_0 ),
        .O(sseg_OBUF[1]));
  LUT4 #(
    .INIT(16'hFD45)) 
    \sseg_OBUF[1]_inst_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .O(\sseg_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAE6FFFFFAE6F0000)) 
    \sseg_OBUF[2]_inst_i_1 
       (.I0(\dir_cnt_reg_n_0_[3] ),
        .I1(\dir_cnt_reg_n_0_[2] ),
        .I2(\dir_cnt_reg_n_0_[0] ),
        .I3(\dir_cnt_reg_n_0_[1] ),
        .I4(sseg_cs_out_OBUF),
        .I5(\sseg_OBUF[2]_inst_i_2_n_0 ),
        .O(sseg_OBUF[2]));
  LUT4 #(
    .INIT(16'hAE6F)) 
    \sseg_OBUF[2]_inst_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\sseg_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF67BFFFFF67B0000)) 
    \sseg_OBUF[3]_inst_i_1 
       (.I0(\dir_cnt_reg_n_0_[3] ),
        .I1(\dir_cnt_reg_n_0_[0] ),
        .I2(\dir_cnt_reg_n_0_[1] ),
        .I3(\dir_cnt_reg_n_0_[2] ),
        .I4(sseg_cs_out_OBUF),
        .I5(\sseg_OBUF[3]_inst_i_2_n_0 ),
        .O(sseg_OBUF[3]));
  LUT4 #(
    .INIT(16'h9FED)) 
    \sseg_OBUF[3]_inst_i_2 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .O(\sseg_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h53B7FFFF53B70000)) 
    \sseg_OBUF[4]_inst_i_1 
       (.I0(\dir_cnt_reg_n_0_[3] ),
        .I1(\dir_cnt_reg_n_0_[2] ),
        .I2(\dir_cnt_reg_n_0_[0] ),
        .I3(\dir_cnt_reg_n_0_[1] ),
        .I4(sseg_cs_out_OBUF),
        .I5(\sseg_OBUF[4]_inst_i_2_n_0 ),
        .O(sseg_OBUF[4]));
  LUT4 #(
    .INIT(16'h5B37)) 
    \sseg_OBUF[4]_inst_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(\sseg_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F67FFFF7F670000)) 
    \sseg_OBUF[5]_inst_i_1 
       (.I0(\dir_cnt_reg_n_0_[3] ),
        .I1(\dir_cnt_reg_n_0_[2] ),
        .I2(\dir_cnt_reg_n_0_[1] ),
        .I3(\dir_cnt_reg_n_0_[0] ),
        .I4(sseg_cs_out_OBUF),
        .I5(\sseg_OBUF[5]_inst_i_2_n_0 ),
        .O(sseg_OBUF[5]));
  LUT4 #(
    .INIT(16'h5DEF)) 
    \sseg_OBUF[5]_inst_i_2 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\sseg_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFDAFFFFBFDA0000)) 
    \sseg_OBUF[6]_inst_i_1 
       (.I0(\dir_cnt_reg_n_0_[3] ),
        .I1(\dir_cnt_reg_n_0_[0] ),
        .I2(\dir_cnt_reg_n_0_[2] ),
        .I3(\dir_cnt_reg_n_0_[1] ),
        .I4(sseg_cs_out_OBUF),
        .I5(\sseg_OBUF[6]_inst_i_2_n_0 ),
        .O(sseg_OBUF[6]));
  LUT4 #(
    .INIT(16'hBFDA)) 
    \sseg_OBUF[6]_inst_i_2 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(\sseg_OBUF[6]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \v_cntr_reg[0]_i_1 
       (.I0(\h_cntr_reg[0]_i_3_n_0 ),
        .I1(\v_cntr_reg[0]_i_3_n_0 ),
        .I2(\v_cntr_reg[0]_i_4_n_0 ),
        .I3(\v_cntr_reg[0]_i_5_n_0 ),
        .O(v_cntr_reg0));
  LUT4 #(
    .INIT(16'h0010)) 
    \v_cntr_reg[0]_i_3 
       (.I0(h_cntr_reg_reg[6]),
        .I1(h_cntr_reg_reg[5]),
        .I2(h_cntr_reg_reg[4]),
        .I3(h_cntr_reg_reg[7]),
        .O(\v_cntr_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \v_cntr_reg[0]_i_4 
       (.I0(v_cntr_reg_reg[1]),
        .I1(v_cntr_reg_reg[6]),
        .I2(v_cntr_reg_reg[7]),
        .I3(v_cntr_reg_reg[8]),
        .I4(\v_cntr_reg[0]_i_7_n_0 ),
        .I5(\v_cntr_reg[0]_i_8_n_0 ),
        .O(\v_cntr_reg[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \v_cntr_reg[0]_i_5 
       (.I0(v_cntr_reg_reg[5]),
        .I1(v_cntr_reg_reg[0]),
        .I2(v_cntr_reg_reg[9]),
        .I3(v_cntr_reg_reg[4]),
        .O(\v_cntr_reg[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v_cntr_reg[0]_i_6 
       (.I0(v_cntr_reg_reg[0]),
        .O(\v_cntr_reg[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \v_cntr_reg[0]_i_7 
       (.I0(v_cntr_reg_reg[3]),
        .I1(v_cntr_reg_reg[2]),
        .O(\v_cntr_reg[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \v_cntr_reg[0]_i_8 
       (.I0(v_cntr_reg_reg[10]),
        .I1(v_cntr_reg_reg[11]),
        .O(\v_cntr_reg[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[0] 
       (.C(pxl_clk),
        .CE(eqOp8_in),
        .D(\v_cntr_reg_reg[0]_i_2_n_7 ),
        .Q(v_cntr_reg_reg[0]),
        .R(v_cntr_reg0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \v_cntr_reg_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\v_cntr_reg_reg[0]_i_2_n_0 ,\NLW_v_cntr_reg_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\v_cntr_reg_reg[0]_i_2_n_4 ,\v_cntr_reg_reg[0]_i_2_n_5 ,\v_cntr_reg_reg[0]_i_2_n_6 ,\v_cntr_reg_reg[0]_i_2_n_7 }),
        .S({v_cntr_reg_reg[3:1],\v_cntr_reg[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[10] 
       (.C(pxl_clk),
        .CE(eqOp8_in),
        .D(\v_cntr_reg_reg[8]_i_1_n_5 ),
        .Q(v_cntr_reg_reg[10]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[11] 
       (.C(pxl_clk),
        .CE(eqOp8_in),
        .D(\v_cntr_reg_reg[8]_i_1_n_4 ),
        .Q(v_cntr_reg_reg[11]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[1] 
       (.C(pxl_clk),
        .CE(eqOp8_in),
        .D(\v_cntr_reg_reg[0]_i_2_n_6 ),
        .Q(v_cntr_reg_reg[1]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[2] 
       (.C(pxl_clk),
        .CE(eqOp8_in),
        .D(\v_cntr_reg_reg[0]_i_2_n_5 ),
        .Q(v_cntr_reg_reg[2]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[3] 
       (.C(pxl_clk),
        .CE(eqOp8_in),
        .D(\v_cntr_reg_reg[0]_i_2_n_4 ),
        .Q(v_cntr_reg_reg[3]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[4] 
       (.C(pxl_clk),
        .CE(eqOp8_in),
        .D(\v_cntr_reg_reg[4]_i_1_n_7 ),
        .Q(v_cntr_reg_reg[4]),
        .R(v_cntr_reg0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \v_cntr_reg_reg[4]_i_1 
       (.CI(\v_cntr_reg_reg[0]_i_2_n_0 ),
        .CO({\v_cntr_reg_reg[4]_i_1_n_0 ,\NLW_v_cntr_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\v_cntr_reg_reg[4]_i_1_n_4 ,\v_cntr_reg_reg[4]_i_1_n_5 ,\v_cntr_reg_reg[4]_i_1_n_6 ,\v_cntr_reg_reg[4]_i_1_n_7 }),
        .S(v_cntr_reg_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[5] 
       (.C(pxl_clk),
        .CE(eqOp8_in),
        .D(\v_cntr_reg_reg[4]_i_1_n_6 ),
        .Q(v_cntr_reg_reg[5]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[6] 
       (.C(pxl_clk),
        .CE(eqOp8_in),
        .D(\v_cntr_reg_reg[4]_i_1_n_5 ),
        .Q(v_cntr_reg_reg[6]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[7] 
       (.C(pxl_clk),
        .CE(eqOp8_in),
        .D(\v_cntr_reg_reg[4]_i_1_n_4 ),
        .Q(v_cntr_reg_reg[7]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[8] 
       (.C(pxl_clk),
        .CE(eqOp8_in),
        .D(\v_cntr_reg_reg[8]_i_1_n_7 ),
        .Q(v_cntr_reg_reg[8]),
        .R(v_cntr_reg0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \v_cntr_reg_reg[8]_i_1 
       (.CI(\v_cntr_reg_reg[4]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\v_cntr_reg_reg[8]_i_1_n_4 ,\v_cntr_reg_reg[8]_i_1_n_5 ,\v_cntr_reg_reg[8]_i_1_n_6 ,\v_cntr_reg_reg[8]_i_1_n_7 }),
        .S(v_cntr_reg_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[9] 
       (.C(pxl_clk),
        .CE(eqOp8_in),
        .D(\v_cntr_reg_reg[8]_i_1_n_6 ),
        .Q(v_cntr_reg_reg[9]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b1)) 
    v_sync_dly_reg_reg
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(v_sync_reg),
        .Q(vga_vsync_o_OBUF),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h7)) 
    v_sync_reg_i_1
       (.I0(ltOp3_in),
        .I1(geqOp4_in),
        .O(v_sync_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    v_sync_reg_reg
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(v_sync_reg_i_1_n_0),
        .Q(v_sync_reg),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \vga_red_reg[0]_i_1 
       (.I0(geqOp1_in),
        .I1(geqOp),
        .I2(_carry__1_n_0),
        .I3(ltOp15_in),
        .I4(__23_carry__1_n_0),
        .I5(ltOp16_in),
        .O(vga_red_reg0));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[0]_i_10 
       (.I0(v_cntr_reg_reg[5]),
        .I1(v_cntr_reg_reg[4]),
        .O(\vga_red_reg[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[0]_i_11 
       (.I0(h_cntr_reg_reg[9]),
        .O(\vga_red_reg[0]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[0]_i_12 
       (.I0(h_cntr_reg_reg[7]),
        .O(\vga_red_reg[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[0]_i_13 
       (.I0(h_cntr_reg_reg[11]),
        .I1(h_cntr_reg_reg[10]),
        .O(\vga_red_reg[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[0]_i_14 
       (.I0(h_cntr_reg_reg[9]),
        .I1(h_cntr_reg_reg[8]),
        .O(\vga_red_reg[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[0]_i_15 
       (.I0(h_cntr_reg_reg[7]),
        .I1(h_cntr_reg_reg[6]),
        .O(\vga_red_reg[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[0]_i_4 
       (.I0(v_cntr_reg_reg[8]),
        .I1(v_cntr_reg_reg[9]),
        .O(\vga_red_reg[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \vga_red_reg[0]_i_5 
       (.I0(v_cntr_reg_reg[7]),
        .I1(v_cntr_reg_reg[6]),
        .O(\vga_red_reg[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[0]_i_6 
       (.I0(v_cntr_reg_reg[5]),
        .O(\vga_red_reg[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[0]_i_7 
       (.I0(v_cntr_reg_reg[11]),
        .I1(v_cntr_reg_reg[10]),
        .O(\vga_red_reg[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[0]_i_8 
       (.I0(v_cntr_reg_reg[8]),
        .I1(v_cntr_reg_reg[9]),
        .O(\vga_red_reg[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_red_reg[0]_i_9 
       (.I0(v_cntr_reg_reg[6]),
        .I1(v_cntr_reg_reg[7]),
        .O(\vga_red_reg[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[0] 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(vga_red_reg0),
        .Q(vga_blue_OBUF),
        .R(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \vga_red_reg_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({ltOp15_in,\NLW_vga_red_reg_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\vga_red_reg[0]_i_4_n_0 ,\vga_red_reg[0]_i_5_n_0 ,\vga_red_reg[0]_i_6_n_0 }),
        .S({\vga_red_reg[0]_i_7_n_0 ,\vga_red_reg[0]_i_8_n_0 ,\vga_red_reg[0]_i_9_n_0 ,\vga_red_reg[0]_i_10_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \vga_red_reg_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({ltOp16_in,\NLW_vga_red_reg_reg[0]_i_3_CO_UNCONNECTED [1:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\vga_red_reg[0]_i_11_n_0 ,\vga_red_reg[0]_i_12_n_0 }),
        .S({\<const0> ,\vga_red_reg[0]_i_13_n_0 ,\vga_red_reg[0]_i_14_n_0 ,\vga_red_reg[0]_i_15_n_0 }));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[0]_lopt_replica 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(vga_red_reg0),
        .Q(\vga_red_reg_reg[0]_lopt_replica_1 ),
        .R(\<const0> ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[0]_lopt_replica_10 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(vga_red_reg0),
        .Q(\vga_red_reg_reg[0]_lopt_replica_10_1 ),
        .R(\<const0> ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[0]_lopt_replica_11 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(vga_red_reg0),
        .Q(\vga_red_reg_reg[0]_lopt_replica_11_1 ),
        .R(\<const0> ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[0]_lopt_replica_2 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(vga_red_reg0),
        .Q(\vga_red_reg_reg[0]_lopt_replica_2_1 ),
        .R(\<const0> ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[0]_lopt_replica_3 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(vga_red_reg0),
        .Q(\vga_red_reg_reg[0]_lopt_replica_3_1 ),
        .R(\<const0> ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[0]_lopt_replica_4 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(vga_red_reg0),
        .Q(\vga_red_reg_reg[0]_lopt_replica_4_1 ),
        .R(\<const0> ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[0]_lopt_replica_5 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(vga_red_reg0),
        .Q(\vga_red_reg_reg[0]_lopt_replica_5_1 ),
        .R(\<const0> ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[0]_lopt_replica_6 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(vga_red_reg0),
        .Q(\vga_red_reg_reg[0]_lopt_replica_6_1 ),
        .R(\<const0> ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[0]_lopt_replica_7 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(vga_red_reg0),
        .Q(\vga_red_reg_reg[0]_lopt_replica_7_1 ),
        .R(\<const0> ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[0]_lopt_replica_8 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(vga_red_reg0),
        .Q(\vga_red_reg_reg[0]_lopt_replica_8_1 ),
        .R(\<const0> ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[0]_lopt_replica_9 
       (.C(pxl_clk),
        .CE(\<const1> ),
        .D(vga_red_reg0),
        .Q(\vga_red_reg_reg[0]_lopt_replica_9_1 ),
        .R(\<const0> ));
endmodule

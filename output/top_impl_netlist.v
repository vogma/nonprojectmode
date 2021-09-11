// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat Sep 11 16:06:12 2021
// Host        : marco running 64-bit Ubuntu 21.04
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
    .CLKFBOUT_MULT_F(49.875000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(33.250000),
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
    .COMPENSATION("BUF_IN"),
    .DIVCLK_DIVIDE(5),
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

module debounce
   (c1,
    c2,
    btn_IBUF,
    clk,
    pwropt,
    pwropt_1);
  output [0:0]c1;
  output [0:0]c2;
  input [0:0]btn_IBUF;
  input clk;
  input pwropt;
  input pwropt_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]btn_IBUF;
  wire [0:0]c0;
  wire [0:0]c1;
  wire [0:0]c2;
  wire \c2_reg[0]_CE_cooolgate_en_sig_7 ;
  wire clk;
  wire pwropt;
  wire pwropt_1;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \c0_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(btn_IBUF),
        .Q(c0),
        .R(\<const0> ));
  FDRE \c1_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(c0),
        .Q(c1),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE \c2_reg[0] 
       (.C(clk),
        .CE(\c2_reg[0]_CE_cooolgate_en_sig_7 ),
        .D(c1),
        .Q(c2),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h02)) 
    \c2_reg[0]_CE_cooolgate_en_gate_30 
       (.I0(pwropt_1),
        .I1(pwropt),
        .I2(c0),
        .O(\c2_reg[0]_CE_cooolgate_en_sig_7 ));
endmodule

(* ECO_CHECKSUM = "735890a1" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module top
   (clk,
    btn,
    led,
    uart_rxd_out);
  input clk;
  input [3:0]btn;
  output [3:0]led;
  output uart_rxd_out;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]btn;
  wire [0:0]btn_IBUF;
  wire [0:0]c1;
  wire [0:0]c2;
  wire clk;
  wire clk10;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]led;
  wire [3:0]led_OBUF;
  wire p_0_in;
  wire pwropt;
  wire pwropt_1;
  wire \r_counter[0]_i_2_n_0 ;
  wire [25:0]r_counter_reg;
  wire \r_counter_reg[0]_i_1_n_0 ;
  wire \r_counter_reg[0]_i_1_n_4 ;
  wire \r_counter_reg[0]_i_1_n_5 ;
  wire \r_counter_reg[0]_i_1_n_6 ;
  wire \r_counter_reg[0]_i_1_n_7 ;
  wire \r_counter_reg[10]_CE_cooolgate_en_sig_1 ;
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
  wire \r_counter_reg[2]_CE_cooolgate_en_sig_10 ;
  wire \r_counter_reg[3]_CE_cooolgate_en_sig_8 ;
  wire \r_counter_reg[4]_i_1_n_0 ;
  wire \r_counter_reg[4]_i_1_n_4 ;
  wire \r_counter_reg[4]_i_1_n_5 ;
  wire \r_counter_reg[4]_i_1_n_6 ;
  wire \r_counter_reg[4]_i_1_n_7 ;
  wire \r_counter_reg[5]_CE_cooolgate_en_sig_11 ;
  wire \r_counter_reg[6]_CE_cooolgate_en_sig_9 ;
  wire \r_counter_reg[7]_CE_cooolgate_en_sig_6 ;
  wire \r_counter_reg[8]_CE_cooolgate_en_sig_5 ;
  wire \r_counter_reg[8]_i_1_n_0 ;
  wire \r_counter_reg[8]_i_1_n_4 ;
  wire \r_counter_reg[8]_i_1_n_5 ;
  wire \r_counter_reg[8]_i_1_n_6 ;
  wire \r_counter_reg[8]_i_1_n_7 ;
  wire \r_counter_reg[9]_CE_cooolgate_en_sig_4 ;
  wire \r_led_counter[3]_i_3_n_0 ;
  wire \r_led_counter[3]_i_4_n_0 ;
  wire \r_led_counter[3]_i_5_n_0 ;
  wire \r_led_counter[3]_i_6_n_0 ;
  wire [3:0]r_led_counter_next;
  wire uart_rxd_out;
  wire uart_rxd_out_OBUF;
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
        .O(btn_IBUF));
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
  (* IMPORTED_FROM = "/home/marco/entwicklung/projekte/ArtyA7-Projects/nonprojectmode/src/ip/clk_wiz_test/clk_wiz_test.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_test clk_div
       (.clk_in1(clk_IBUF_BUFG),
        .clk_out1(clk10),
        .reset(\<const0> ));
  debounce debouncer
       (.btn_IBUF(btn_IBUF),
        .c1(c1),
        .c2(c2),
        .clk(clk_IBUF_BUFG),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
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
       (.C(clk10),
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
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[10] 
       (.C(clk10),
        .CE(\r_counter_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\r_counter_reg[8]_i_1_n_5 ),
        .Q(r_counter_reg[10]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_counter_reg[10]_CE_cooolgate_en_gate_1 
       (.I0(r_counter_reg[9]),
        .I1(r_counter_reg[8]),
        .I2(r_counter_reg[6]),
        .I3(r_counter_reg[5]),
        .I4(r_counter_reg[4]),
        .I5(\r_counter_reg[0]_i_1_n_0 ),
        .O(\r_counter_reg[10]_CE_cooolgate_en_sig_1 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[11] 
       (.C(clk10),
        .CE(\r_counter_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\r_counter_reg[8]_i_1_n_4 ),
        .Q(r_counter_reg[11]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[12] 
       (.C(clk10),
        .CE(\r_counter_reg[10]_CE_cooolgate_en_sig_1 ),
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
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[13] 
       (.C(clk10),
        .CE(\r_counter_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\r_counter_reg[12]_i_1_n_6 ),
        .Q(r_counter_reg[13]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[14] 
       (.C(clk10),
        .CE(\r_counter_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\r_counter_reg[12]_i_1_n_5 ),
        .Q(r_counter_reg[14]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[15] 
       (.C(clk10),
        .CE(\r_counter_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\r_counter_reg[12]_i_1_n_4 ),
        .Q(r_counter_reg[15]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[16] 
       (.C(clk10),
        .CE(\r_counter_reg[10]_CE_cooolgate_en_sig_1 ),
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
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[17] 
       (.C(clk10),
        .CE(\r_counter_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\r_counter_reg[16]_i_1_n_6 ),
        .Q(r_counter_reg[17]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[18] 
       (.C(clk10),
        .CE(\r_counter_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\r_counter_reg[16]_i_1_n_5 ),
        .Q(r_counter_reg[18]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[19] 
       (.C(clk10),
        .CE(\r_counter_reg[10]_CE_cooolgate_en_sig_1 ),
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
       (.C(clk10),
        .CE(r_counter_reg[0]),
        .D(\r_counter_reg[0]_i_1_n_6 ),
        .Q(r_counter_reg[1]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[20] 
       (.C(clk10),
        .CE(\r_counter_reg[10]_CE_cooolgate_en_sig_1 ),
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
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[21] 
       (.C(clk10),
        .CE(\r_counter_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\r_counter_reg[20]_i_1_n_6 ),
        .Q(r_counter_reg[21]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[22] 
       (.C(clk10),
        .CE(\r_counter_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\r_counter_reg[20]_i_1_n_5 ),
        .Q(r_counter_reg[22]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[23] 
       (.C(clk10),
        .CE(\r_counter_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\r_counter_reg[20]_i_1_n_4 ),
        .Q(r_counter_reg[23]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[24] 
       (.C(clk10),
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
       (.C(clk10),
        .CE(\<const1> ),
        .D(\r_counter_reg[24]_i_1_n_6 ),
        .Q(r_counter_reg[25]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[2] 
       (.C(clk10),
        .CE(\r_counter_reg[2]_CE_cooolgate_en_sig_10 ),
        .D(\r_counter_reg[0]_i_1_n_5 ),
        .Q(r_counter_reg[2]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter_reg[2]_CE_cooolgate_en_gate_36 
       (.I0(r_counter_reg[1]),
        .I1(r_counter_reg[0]),
        .O(\r_counter_reg[2]_CE_cooolgate_en_sig_10 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[3] 
       (.C(clk10),
        .CE(\r_counter_reg[3]_CE_cooolgate_en_sig_8 ),
        .D(\r_counter_reg[0]_i_1_n_4 ),
        .Q(r_counter_reg[3]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r_counter_reg[3]_CE_cooolgate_en_gate_32 
       (.I0(r_counter_reg[2]),
        .I1(r_counter_reg[1]),
        .I2(r_counter_reg[0]),
        .O(\r_counter_reg[3]_CE_cooolgate_en_sig_8 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[4] 
       (.C(clk10),
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
       (.C(clk10),
        .CE(\r_counter_reg[5]_CE_cooolgate_en_sig_11 ),
        .D(\r_counter_reg[4]_i_1_n_6 ),
        .Q(r_counter_reg[5]),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter_reg[5]_CE_cooolgate_en_gate_38 
       (.I0(r_counter_reg[4]),
        .I1(\r_counter_reg[0]_i_1_n_0 ),
        .O(\r_counter_reg[5]_CE_cooolgate_en_sig_11 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[6] 
       (.C(clk10),
        .CE(\r_counter_reg[6]_CE_cooolgate_en_sig_9 ),
        .D(\r_counter_reg[4]_i_1_n_5 ),
        .Q(r_counter_reg[6]),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h80)) 
    \r_counter_reg[6]_CE_cooolgate_en_gate_34 
       (.I0(r_counter_reg[5]),
        .I1(r_counter_reg[4]),
        .I2(\r_counter_reg[0]_i_1_n_0 ),
        .O(\r_counter_reg[6]_CE_cooolgate_en_sig_9 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[7] 
       (.C(clk10),
        .CE(\r_counter_reg[7]_CE_cooolgate_en_sig_6 ),
        .D(\r_counter_reg[4]_i_1_n_4 ),
        .Q(r_counter_reg[7]),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h8000)) 
    \r_counter_reg[7]_CE_cooolgate_en_gate_28 
       (.I0(r_counter_reg[6]),
        .I1(r_counter_reg[5]),
        .I2(r_counter_reg[4]),
        .I3(\r_counter_reg[0]_i_1_n_0 ),
        .O(\r_counter_reg[7]_CE_cooolgate_en_sig_6 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[8] 
       (.C(clk10),
        .CE(\r_counter_reg[8]_CE_cooolgate_en_sig_5 ),
        .D(\r_counter_reg[8]_i_1_n_7 ),
        .Q(r_counter_reg[8]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_counter_reg[8]_CE_cooolgate_en_gate_26 
       (.I0(r_counter_reg[7]),
        .I1(r_counter_reg[6]),
        .I2(r_counter_reg[5]),
        .I3(r_counter_reg[4]),
        .I4(\r_counter_reg[0]_i_1_n_0 ),
        .O(\r_counter_reg[8]_CE_cooolgate_en_sig_5 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_counter_reg[8]_i_1 
       (.CI(\r_counter_reg[4]_i_1_n_0 ),
        .CO({\r_counter_reg[8]_i_1_n_0 ,\NLW_r_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\r_counter_reg[8]_i_1_n_4 ,\r_counter_reg[8]_i_1_n_5 ,\r_counter_reg[8]_i_1_n_6 ,\r_counter_reg[8]_i_1_n_7 }),
        .S(r_counter_reg[11:8]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[9] 
       (.C(clk10),
        .CE(\r_counter_reg[9]_CE_cooolgate_en_sig_4 ),
        .D(\r_counter_reg[8]_i_1_n_6 ),
        .Q(r_counter_reg[9]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_counter_reg[9]_CE_cooolgate_en_gate_24 
       (.I0(r_counter_reg[8]),
        .I1(r_counter_reg[7]),
        .I2(r_counter_reg[6]),
        .I3(r_counter_reg[5]),
        .I4(r_counter_reg[4]),
        .I5(\r_counter_reg[0]_i_1_n_0 ),
        .O(\r_counter_reg[9]_CE_cooolgate_en_sig_4 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "191" *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_led_counter[0]_i_1 
       (.I0(led_OBUF[0]),
        .O(r_led_counter_next[0]));
  (* \PinAttr:I0:HOLD_DETOUR  = "191" *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_led_counter[1]_i_1 
       (.I0(led_OBUF[0]),
        .I1(led_OBUF[1]),
        .O(r_led_counter_next[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_led_counter[2]_i_1 
       (.I0(led_OBUF[1]),
        .I1(led_OBUF[0]),
        .I2(led_OBUF[2]),
        .O(r_led_counter_next[2]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \r_led_counter[3]_i_1 
       (.I0(\r_led_counter[3]_i_3_n_0 ),
        .I1(\r_led_counter[3]_i_4_n_0 ),
        .I2(\r_led_counter[3]_i_5_n_0 ),
        .I3(\r_led_counter[3]_i_6_n_0 ),
        .I4(r_counter_reg[0]),
        .I5(r_counter_reg[1]),
        .O(p_0_in));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_led_counter[3]_i_2 
       (.I0(led_OBUF[2]),
        .I1(led_OBUF[0]),
        .I2(led_OBUF[1]),
        .I3(led_OBUF[3]),
        .O(r_led_counter_next[3]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_led_counter[3]_i_3 
       (.I0(r_counter_reg[4]),
        .I1(r_counter_reg[5]),
        .I2(r_counter_reg[2]),
        .I3(r_counter_reg[3]),
        .I4(r_counter_reg[7]),
        .I5(r_counter_reg[6]),
        .O(\r_led_counter[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_led_counter[3]_i_4 
       (.I0(r_counter_reg[22]),
        .I1(r_counter_reg[23]),
        .I2(r_counter_reg[20]),
        .I3(r_counter_reg[21]),
        .I4(r_counter_reg[25]),
        .I5(r_counter_reg[24]),
        .O(\r_led_counter[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_led_counter[3]_i_5 
       (.I0(r_counter_reg[16]),
        .I1(r_counter_reg[17]),
        .I2(r_counter_reg[14]),
        .I3(r_counter_reg[15]),
        .I4(r_counter_reg[19]),
        .I5(r_counter_reg[18]),
        .O(\r_led_counter[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_led_counter[3]_i_6 
       (.I0(r_counter_reg[10]),
        .I1(r_counter_reg[11]),
        .I2(r_counter_reg[8]),
        .I3(r_counter_reg[9]),
        .I4(r_counter_reg[13]),
        .I5(r_counter_reg[12]),
        .O(\r_led_counter[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_led_counter_reg[0] 
       (.C(clk10),
        .CE(p_0_in),
        .D(r_led_counter_next[0]),
        .Q(led_OBUF[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_led_counter_reg[1] 
       (.C(clk10),
        .CE(p_0_in),
        .D(r_led_counter_next[1]),
        .Q(led_OBUF[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_led_counter_reg[2] 
       (.C(clk10),
        .CE(p_0_in),
        .D(r_led_counter_next[2]),
        .Q(led_OBUF[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \r_led_counter_reg[3] 
       (.C(clk10),
        .CE(p_0_in),
        .D(r_led_counter_next[3]),
        .Q(led_OBUF[3]),
        .R(\<const0> ));
  uart_transmitter uart_demo
       (.c1(c1),
        .c2(c2),
        .clk(clk_IBUF_BUFG),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .uart_rxd_out_OBUF(uart_rxd_out_OBUF));
  OBUF uart_rxd_out_OBUF_inst
       (.I(uart_rxd_out_OBUF),
        .O(uart_rxd_out));
endmodule

module uart_transmitter
   (uart_rxd_out_OBUF,
    clk,
    c2,
    c1,
    .pwropt(tx_controller_n_1),
    .pwropt_1(tx_controller_n_3));
  output uart_rxd_out_OBUF;
  input clk;
  input [0:0]c2;
  input [0:0]c1;
  output tx_controller_n_1;
  output tx_controller_n_3;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_onehot_state_reg_reg[0]_CE_cooolgate_en_sig_13 ;
  wire \FSM_onehot_state_reg_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_reg_n_0_[2] ;
  wire [0:0]c1;
  wire [0:0]c2;
  wire [4:0]char_index_next;
  wire [4:0]char_index_reg;
  wire clk;
  wire \^pwropt ;
  wire tx_controller_n_1;
  wire tx_controller_n_2;
  wire tx_controller_n_3;
  wire tx_controller_n_4;
  wire tx_start;
  wire uart_rxd_out_OBUF;

  (* FSM_ENCODED_STATES = "idle:001,finished:100,transmit_byte:010" *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_reg[0]_CE_cooolgate_en_sig_13 ),
        .D(tx_controller_n_3),
        .Q(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hffff22f2)) 
    \FSM_onehot_state_reg_reg[0]_CE_cooolgate_en_gate_43 
       (.I0(tx_start),
        .I1(\^pwropt ),
        .I2(c2),
        .I3(c1),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(\FSM_onehot_state_reg_reg[0]_CE_cooolgate_en_sig_13 ));
  (* FSM_ENCODED_STATES = "idle:001,finished:100,transmit_byte:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tx_controller_n_2),
        .Q(tx_start),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "idle:001,finished:100,transmit_byte:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tx_controller_n_1),
        .Q(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* \PinAttr:I1:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \char_index_reg[0]_i_1 
       (.I0(tx_start),
        .I1(char_index_reg[0]),
        .O(char_index_next[0]));
  (* \PinAttr:I1:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \char_index_reg[1]_i_1 
       (.I0(tx_start),
        .I1(char_index_reg[0]),
        .I2(char_index_reg[1]),
        .O(char_index_next[1]));
  (* \PinAttr:I3:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \char_index_reg[2]_i_1 
       (.I0(char_index_reg[1]),
        .I1(char_index_reg[0]),
        .I2(tx_start),
        .I3(char_index_reg[2]),
        .O(char_index_next[2]));
  (* \PinAttr:I0:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \char_index_reg[3]_i_1 
       (.I0(char_index_reg[2]),
        .I1(char_index_reg[0]),
        .I2(char_index_reg[1]),
        .I3(tx_start),
        .I4(char_index_reg[3]),
        .O(char_index_next[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \char_index_reg[4]_i_2 
       (.I0(char_index_reg[3]),
        .I1(char_index_reg[1]),
        .I2(char_index_reg[0]),
        .I3(char_index_reg[2]),
        .I4(tx_start),
        .I5(char_index_reg[4]),
        .O(char_index_next[4]));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_reg_reg[0] 
       (.C(clk),
        .CE(tx_controller_n_4),
        .D(char_index_next[0]),
        .Q(char_index_reg[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_reg_reg[1] 
       (.C(clk),
        .CE(tx_controller_n_4),
        .D(char_index_next[1]),
        .Q(char_index_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_reg_reg[2] 
       (.C(clk),
        .CE(tx_controller_n_4),
        .D(char_index_next[2]),
        .Q(char_index_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_reg_reg[3] 
       (.C(clk),
        .CE(tx_controller_n_4),
        .D(char_index_next[3]),
        .Q(char_index_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_reg_reg[4] 
       (.C(clk),
        .CE(tx_controller_n_4),
        .D(char_index_next[4]),
        .Q(char_index_reg[4]),
        .R(\<const0> ));
  uart_tx_controller tx_controller
       (.E(tx_controller_n_4),
        .\FSM_onehot_state_reg_reg[1] (tx_controller_n_1),
        .\FSM_onehot_state_reg_reg[1]_0 (\FSM_onehot_state_reg_reg_n_0_[0] ),
        .\FSM_onehot_state_reg_reg[2] (tx_controller_n_3),
        .\FSM_onehot_state_reg_reg[2]_0 (\FSM_onehot_state_reg_reg_n_0_[2] ),
        .Q(char_index_reg),
        .c1(c1),
        .c2(c2),
        .\char_index_reg_reg[3] (tx_controller_n_2),
        .clk(clk),
        .pwropt(\^pwropt ),
        .tx_start(tx_start),
        .uart_rxd_out_OBUF(uart_rxd_out_OBUF));
endmodule

module uart_tx_controller
   (uart_rxd_out_OBUF,
    \FSM_onehot_state_reg_reg[1] ,
    \char_index_reg_reg[3] ,
    \FSM_onehot_state_reg_reg[2] ,
    E,
    clk,
    tx_start,
    Q,
    \FSM_onehot_state_reg_reg[2]_0 ,
    \FSM_onehot_state_reg_reg[1]_0 ,
    c2,
    c1,
    .pwropt(state_reg[1]));
  output uart_rxd_out_OBUF;
  output \FSM_onehot_state_reg_reg[1] ;
  output \char_index_reg_reg[3] ;
  output \FSM_onehot_state_reg_reg[2] ;
  output [0:0]E;
  input clk;
  input tx_start;
  input [4:0]Q;
  input \FSM_onehot_state_reg_reg[2]_0 ;
  input \FSM_onehot_state_reg_reg[1]_0 ;
  input [0:0]c2;
  input [0:0]c1;
     output [2:0]state_reg;

  wire \<const0> ;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_reg[1] ;
  wire \FSM_onehot_state_reg_reg[1]_0 ;
  wire \FSM_onehot_state_reg_reg[2] ;
  wire \FSM_onehot_state_reg_reg[2]_0 ;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_6_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_7_n_0 ;
  wire \FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_3 ;
  wire [4:0]Q;
  wire [2:0]bit_index_reg;
  wire \bit_index_reg[0]_i_1_n_0 ;
  wire \bit_index_reg[1]_i_1_n_0 ;
  wire \bit_index_reg[2]_i_1_n_0 ;
  wire \bit_index_reg_reg[0]_CE_cooolgate_en_sig_2 ;
  wire [0:0]c1;
  wire [0:0]c2;
  wire \char_index_reg_reg[3] ;
  wire clk;
  wire \clk_cnt_reg[0]_i_10_n_0 ;
  wire \clk_cnt_reg[0]_i_1_n_0 ;
  wire \clk_cnt_reg[0]_i_3_n_0 ;
  wire \clk_cnt_reg[0]_i_4_n_0 ;
  wire \clk_cnt_reg[0]_i_5_n_0 ;
  wire \clk_cnt_reg[0]_i_6_n_0 ;
  wire \clk_cnt_reg[0]_i_7_n_0 ;
  wire \clk_cnt_reg[0]_i_8_n_0 ;
  wire \clk_cnt_reg[0]_i_9_n_0 ;
  wire \clk_cnt_reg[12]_i_2_n_0 ;
  wire \clk_cnt_reg[12]_i_3_n_0 ;
  wire \clk_cnt_reg[12]_i_4_n_0 ;
  wire \clk_cnt_reg[4]_i_2_n_0 ;
  wire \clk_cnt_reg[4]_i_3_n_0 ;
  wire \clk_cnt_reg[4]_i_4_n_0 ;
  wire \clk_cnt_reg[4]_i_5_n_0 ;
  wire \clk_cnt_reg[4]_i_6_n_0 ;
  wire \clk_cnt_reg[4]_i_7_n_0 ;
  wire \clk_cnt_reg[4]_i_8_n_0 ;
  wire \clk_cnt_reg[4]_i_9_n_0 ;
  wire \clk_cnt_reg[8]_i_2_n_0 ;
  wire \clk_cnt_reg[8]_i_3_n_0 ;
  wire \clk_cnt_reg[8]_i_4_n_0 ;
  wire \clk_cnt_reg[8]_i_5_n_0 ;
  wire \clk_cnt_reg[8]_i_6_n_0 ;
  wire \clk_cnt_reg[8]_i_7_n_0 ;
  wire \clk_cnt_reg[8]_i_8_n_0 ;
  wire \clk_cnt_reg[8]_i_9_n_0 ;
  wire [13:0]clk_cnt_reg_reg;
  wire \clk_cnt_reg_reg[0]_i_2_n_0 ;
  wire \clk_cnt_reg_reg[0]_i_2_n_4 ;
  wire \clk_cnt_reg_reg[0]_i_2_n_5 ;
  wire \clk_cnt_reg_reg[0]_i_2_n_6 ;
  wire \clk_cnt_reg_reg[0]_i_2_n_7 ;
  wire \clk_cnt_reg_reg[12]_i_1_n_6 ;
  wire \clk_cnt_reg_reg[12]_i_1_n_7 ;
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
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire [2:0]state_reg;
  wire [6:0]tx_data_reg;
  wire \tx_data_reg[6]_i_1_n_0 ;
  wire tx_start;
  wire uart_rxd_out_OBUF;
  wire uart_rxd_out_OBUF_inst_i_2_n_0;
  wire uart_rxd_out_OBUF_inst_i_3_n_0;
  wire [3:0]\NLW_clk_cnt_reg_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_cnt_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_cnt_reg_reg[8]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hB8B8A8B8)) 
    \FSM_onehot_state_reg[0]_i_1 
       (.I0(\FSM_onehot_state_reg_reg[2]_0 ),
        .I1(E),
        .I2(\FSM_onehot_state_reg_reg[1]_0 ),
        .I3(c2),
        .I4(c1),
        .O(\FSM_onehot_state_reg_reg[2] ));
  LUT5 #(
    .INIT(32'hF7FFF000)) 
    \FSM_onehot_state_reg[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(\FSM_onehot_state_reg_reg[1]_0 ),
        .I3(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I4(tx_start),
        .O(\char_index_reg_reg[3] ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \FSM_onehot_state_reg[2]_i_1 
       (.I0(tx_start),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_reg[2]_0 ),
        .O(\FSM_onehot_state_reg_reg[1] ));
  LUT4 #(
    .INIT(16'hAAEA)) 
    \FSM_onehot_state_reg[2]_i_2 
       (.I0(E),
        .I1(\FSM_onehot_state_reg_reg[1]_0 ),
        .I2(c2),
        .I3(c1),
        .O(\FSM_onehot_state_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00AA10BA11AA10BA)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg[0]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5F201F20)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(state_reg[0]),
        .I1(state_reg[2]),
        .I2(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6C082C08)) 
    \FSM_sequential_state_reg[2]_i_1 
       (.I0(state_reg[0]),
        .I1(state_reg[2]),
        .I2(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \FSM_sequential_state_reg[2]_i_2 
       (.I0(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .I1(\FSM_sequential_state_reg[2]_i_5_n_0 ),
        .I2(\FSM_sequential_state_reg[2]_i_6_n_0 ),
        .I3(\FSM_sequential_state_reg[2]_i_7_n_0 ),
        .I4(state_reg[2]),
        .O(\FSM_sequential_state_reg[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state_reg[2]_i_3 
       (.I0(bit_index_reg[0]),
        .I1(bit_index_reg[1]),
        .I2(bit_index_reg[2]),
        .O(\FSM_sequential_state_reg[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state_reg[2]_i_4 
       (.I0(clk_cnt_reg_reg[13]),
        .I1(clk_cnt_reg_reg[12]),
        .I2(clk_cnt_reg_reg[11]),
        .I3(clk_cnt_reg_reg[10]),
        .O(\FSM_sequential_state_reg[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state_reg[2]_i_5 
       (.I0(clk_cnt_reg_reg[8]),
        .I1(clk_cnt_reg_reg[7]),
        .I2(clk_cnt_reg_reg[5]),
        .I3(clk_cnt_reg_reg[4]),
        .O(\FSM_sequential_state_reg[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000230000002323)) 
    \FSM_sequential_state_reg[2]_i_6 
       (.I0(clk_cnt_reg_reg[10]),
        .I1(clk_cnt_reg_reg[11]),
        .I2(clk_cnt_reg_reg[9]),
        .I3(clk_cnt_reg_reg[7]),
        .I4(clk_cnt_reg_reg[8]),
        .I5(clk_cnt_reg_reg[6]),
        .O(\FSM_sequential_state_reg[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000023)) 
    \FSM_sequential_state_reg[2]_i_7 
       (.I0(clk_cnt_reg_reg[4]),
        .I1(clk_cnt_reg_reg[5]),
        .I2(clk_cnt_reg_reg[3]),
        .I3(clk_cnt_reg_reg[0]),
        .I4(clk_cnt_reg_reg[1]),
        .I5(clk_cnt_reg_reg[2]),
        .O(\FSM_sequential_state_reg[2]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,send_start_bit:001,send_data_bits:010,send_stop_bit:011,cleanup:100," *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE \FSM_sequential_state_reg_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hffffc5ff)) 
    \FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_gate_20 
       (.I0(state_reg[1]),
        .I1(\FSM_sequential_state_reg[2]_i_6_n_0 ),
        .I2(state_reg[0]),
        .I3(state_reg[2]),
        .I4(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_3 ));
  (* FSM_ENCODED_STATES = "idle:000,send_start_bit:001,send_data_bits:010,send_stop_bit:011,cleanup:100," *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE \FSM_sequential_state_reg_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "idle:000,send_start_bit:001,send_data_bits:010,send_stop_bit:011,cleanup:100," *) 
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE \FSM_sequential_state_reg_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(\FSM_sequential_state_reg[2]_i_1_n_0 ),
        .Q(state_reg[2]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \bit_index_reg[0]_i_1 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I3(bit_index_reg[0]),
        .O(\bit_index_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \bit_index_reg[1]_i_1 
       (.I0(bit_index_reg[0]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I4(bit_index_reg[1]),
        .O(\bit_index_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \bit_index_reg[2]_i_1 
       (.I0(bit_index_reg[0]),
        .I1(bit_index_reg[1]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I5(bit_index_reg[2]),
        .O(\bit_index_reg[2]_i_1_n_0 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg_reg[0] 
       (.C(clk),
        .CE(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\bit_index_reg[0]_i_1_n_0 ),
        .Q(bit_index_reg[0]),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h20)) 
    \bit_index_reg_reg[0]_CE_cooolgate_en_gate_16 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_2 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg_reg[1] 
       (.C(clk),
        .CE(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_2 ),
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
        .CE(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\bit_index_reg[2]_i_1_n_0 ),
        .Q(bit_index_reg[2]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    \char_index_reg[4]_i_1 
       (.I0(\FSM_onehot_state_reg_reg[2]_0 ),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(tx_start),
        .I4(state_reg[2]),
        .O(E));
  LUT5 #(
    .INIT(32'hFFF45554)) 
    \clk_cnt_reg[0]_i_1 
       (.I0(state_reg[2]),
        .I1(tx_start),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7555555575)) 
    \clk_cnt_reg[0]_i_10 
       (.I0(clk_cnt_reg_reg[0]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF40004)) 
    \clk_cnt_reg[0]_i_3 
       (.I0(state_reg[2]),
        .I1(tx_start),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I5(clk_cnt_reg_reg[3]),
        .O(\clk_cnt_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF40004)) 
    \clk_cnt_reg[0]_i_4 
       (.I0(state_reg[2]),
        .I1(tx_start),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I5(clk_cnt_reg_reg[2]),
        .O(\clk_cnt_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF40004)) 
    \clk_cnt_reg[0]_i_5 
       (.I0(state_reg[2]),
        .I1(tx_start),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I5(clk_cnt_reg_reg[1]),
        .O(\clk_cnt_reg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF40004)) 
    \clk_cnt_reg[0]_i_6 
       (.I0(state_reg[2]),
        .I1(tx_start),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I5(clk_cnt_reg_reg[0]),
        .O(\clk_cnt_reg[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7555555575)) 
    \clk_cnt_reg[0]_i_7 
       (.I0(clk_cnt_reg_reg[3]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7555555575)) 
    \clk_cnt_reg[0]_i_8 
       (.I0(clk_cnt_reg_reg[2]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7555555575)) 
    \clk_cnt_reg[0]_i_9 
       (.I0(clk_cnt_reg_reg[1]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000008AAAAAAA8A)) 
    \clk_cnt_reg[12]_i_2 
       (.I0(clk_cnt_reg_reg[12]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7555555575)) 
    \clk_cnt_reg[12]_i_3 
       (.I0(clk_cnt_reg_reg[13]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000004555555545)) 
    \clk_cnt_reg[12]_i_4 
       (.I0(clk_cnt_reg_reg[12]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF40004)) 
    \clk_cnt_reg[4]_i_2 
       (.I0(state_reg[2]),
        .I1(tx_start),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I5(clk_cnt_reg_reg[7]),
        .O(\clk_cnt_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000008AAAAAAA8A)) 
    \clk_cnt_reg[4]_i_3 
       (.I0(clk_cnt_reg_reg[6]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF40004)) 
    \clk_cnt_reg[4]_i_4 
       (.I0(state_reg[2]),
        .I1(tx_start),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I5(clk_cnt_reg_reg[5]),
        .O(\clk_cnt_reg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000008AAAAAAA8A)) 
    \clk_cnt_reg[4]_i_5 
       (.I0(clk_cnt_reg_reg[4]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7555555575)) 
    \clk_cnt_reg[4]_i_6 
       (.I0(clk_cnt_reg_reg[7]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000004555555545)) 
    \clk_cnt_reg[4]_i_7 
       (.I0(clk_cnt_reg_reg[6]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7555555575)) 
    \clk_cnt_reg[4]_i_8 
       (.I0(clk_cnt_reg_reg[5]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000004555555545)) 
    \clk_cnt_reg[4]_i_9 
       (.I0(clk_cnt_reg_reg[4]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF40004)) 
    \clk_cnt_reg[8]_i_2 
       (.I0(state_reg[2]),
        .I1(tx_start),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I5(clk_cnt_reg_reg[11]),
        .O(\clk_cnt_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000008AAAAAAA8A)) 
    \clk_cnt_reg[8]_i_3 
       (.I0(clk_cnt_reg_reg[10]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000008AAAAAAA8A)) 
    \clk_cnt_reg[8]_i_4 
       (.I0(clk_cnt_reg_reg[9]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000008AAAAAAA8A)) 
    \clk_cnt_reg[8]_i_5 
       (.I0(clk_cnt_reg_reg[8]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7555555575)) 
    \clk_cnt_reg[8]_i_6 
       (.I0(clk_cnt_reg_reg[11]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000004555555545)) 
    \clk_cnt_reg[8]_i_7 
       (.I0(clk_cnt_reg_reg[10]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000004555555545)) 
    \clk_cnt_reg[8]_i_8 
       (.I0(clk_cnt_reg_reg[9]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000004555555545)) 
    \clk_cnt_reg[8]_i_9 
       (.I0(clk_cnt_reg_reg[8]),
        .I1(state_reg[2]),
        .I2(tx_start),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[0] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_7 ),
        .Q(clk_cnt_reg_reg[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\clk_cnt_reg_reg[0]_i_2_n_0 ,\NLW_clk_cnt_reg_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[0]_i_3_n_0 ,\clk_cnt_reg[0]_i_4_n_0 ,\clk_cnt_reg[0]_i_5_n_0 ,\clk_cnt_reg[0]_i_6_n_0 }),
        .O({\clk_cnt_reg_reg[0]_i_2_n_4 ,\clk_cnt_reg_reg[0]_i_2_n_5 ,\clk_cnt_reg_reg[0]_i_2_n_6 ,\clk_cnt_reg_reg[0]_i_2_n_7 }),
        .S({\clk_cnt_reg[0]_i_7_n_0 ,\clk_cnt_reg[0]_i_8_n_0 ,\clk_cnt_reg[0]_i_9_n_0 ,\clk_cnt_reg[0]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[10] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_5 ),
        .Q(clk_cnt_reg_reg[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[11] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_4 ),
        .Q(clk_cnt_reg_reg[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[12] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[12]_i_1_n_7 ),
        .Q(clk_cnt_reg_reg[12]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[12]_i_1 
       (.CI(\clk_cnt_reg_reg[8]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\clk_cnt_reg[12]_i_2_n_0 }),
        .O({\clk_cnt_reg_reg[12]_i_1_n_6 ,\clk_cnt_reg_reg[12]_i_1_n_7 }),
        .S({\<const0> ,\<const0> ,\clk_cnt_reg[12]_i_3_n_0 ,\clk_cnt_reg[12]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[13] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[12]_i_1_n_6 ),
        .Q(clk_cnt_reg_reg[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[1] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_6 ),
        .Q(clk_cnt_reg_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[2] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_5 ),
        .Q(clk_cnt_reg_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[3] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_4 ),
        .Q(clk_cnt_reg_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[4] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_7 ),
        .Q(clk_cnt_reg_reg[4]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[4]_i_1 
       (.CI(\clk_cnt_reg_reg[0]_i_2_n_0 ),
        .CO({\clk_cnt_reg_reg[4]_i_1_n_0 ,\NLW_clk_cnt_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[4]_i_2_n_0 ,\clk_cnt_reg[4]_i_3_n_0 ,\clk_cnt_reg[4]_i_4_n_0 ,\clk_cnt_reg[4]_i_5_n_0 }),
        .O({\clk_cnt_reg_reg[4]_i_1_n_4 ,\clk_cnt_reg_reg[4]_i_1_n_5 ,\clk_cnt_reg_reg[4]_i_1_n_6 ,\clk_cnt_reg_reg[4]_i_1_n_7 }),
        .S({\clk_cnt_reg[4]_i_6_n_0 ,\clk_cnt_reg[4]_i_7_n_0 ,\clk_cnt_reg[4]_i_8_n_0 ,\clk_cnt_reg[4]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[5] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_6 ),
        .Q(clk_cnt_reg_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[6] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_5 ),
        .Q(clk_cnt_reg_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[7] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_4 ),
        .Q(clk_cnt_reg_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[8] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_7 ),
        .Q(clk_cnt_reg_reg[8]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[8]_i_1 
       (.CI(\clk_cnt_reg_reg[4]_i_1_n_0 ),
        .CO({\clk_cnt_reg_reg[8]_i_1_n_0 ,\NLW_clk_cnt_reg_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[8]_i_2_n_0 ,\clk_cnt_reg[8]_i_3_n_0 ,\clk_cnt_reg[8]_i_4_n_0 ,\clk_cnt_reg[8]_i_5_n_0 }),
        .O({\clk_cnt_reg_reg[8]_i_1_n_4 ,\clk_cnt_reg_reg[8]_i_1_n_5 ,\clk_cnt_reg_reg[8]_i_1_n_6 ,\clk_cnt_reg_reg[8]_i_1_n_7 }),
        .S({\clk_cnt_reg[8]_i_6_n_0 ,\clk_cnt_reg[8]_i_7_n_0 ,\clk_cnt_reg[8]_i_8_n_0 ,\clk_cnt_reg[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[9] 
       (.C(clk),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_6 ),
        .Q(clk_cnt_reg_reg[9]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00AB4E12)) 
    g0_b0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00420D31)) 
    g0_b1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h009DE23E)) 
    g0_b2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b2_n_0));
  LUT4 #(
    .INIT(16'h0804)) 
    g0_b3
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(g0_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00048D8E)) 
    g0_b4
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h003FFFFE)) 
    g0_b5
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h001FEFBF)) 
    g0_b6
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b6_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    \tx_data_reg[6]_i_1 
       (.I0(state_reg[2]),
        .I1(tx_start),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .O(\tx_data_reg[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[0] 
       (.C(clk),
        .CE(\tx_data_reg[6]_i_1_n_0 ),
        .D(g0_b0_n_0),
        .Q(tx_data_reg[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[1] 
       (.C(clk),
        .CE(\tx_data_reg[6]_i_1_n_0 ),
        .D(g0_b1_n_0),
        .Q(tx_data_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[2] 
       (.C(clk),
        .CE(\tx_data_reg[6]_i_1_n_0 ),
        .D(g0_b2_n_0),
        .Q(tx_data_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[3] 
       (.C(clk),
        .CE(\tx_data_reg[6]_i_1_n_0 ),
        .D(g0_b3_n_0),
        .Q(tx_data_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[4] 
       (.C(clk),
        .CE(\tx_data_reg[6]_i_1_n_0 ),
        .D(g0_b4_n_0),
        .Q(tx_data_reg[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[5] 
       (.C(clk),
        .CE(\tx_data_reg[6]_i_1_n_0 ),
        .D(g0_b5_n_0),
        .Q(tx_data_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[6] 
       (.C(clk),
        .CE(\tx_data_reg[6]_i_1_n_0 ),
        .D(g0_b6_n_0),
        .Q(tx_data_reg[6]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h00005555FAEE5555)) 
    uart_rxd_out_OBUF_inst_i_1
       (.I0(state_reg[0]),
        .I1(uart_rxd_out_OBUF_inst_i_2_n_0),
        .I2(uart_rxd_out_OBUF_inst_i_3_n_0),
        .I3(bit_index_reg[2]),
        .I4(state_reg[1]),
        .I5(state_reg[2]),
        .O(uart_rxd_out_OBUF));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    uart_rxd_out_OBUF_inst_i_2
       (.I0(tx_data_reg[1]),
        .I1(tx_data_reg[3]),
        .I2(bit_index_reg[1]),
        .I3(tx_data_reg[0]),
        .I4(bit_index_reg[0]),
        .I5(tx_data_reg[2]),
        .O(uart_rxd_out_OBUF_inst_i_2_n_0));
  LUT5 #(
    .INIT(32'h0C0CFA0A)) 
    uart_rxd_out_OBUF_inst_i_3
       (.I0(tx_data_reg[4]),
        .I1(tx_data_reg[6]),
        .I2(bit_index_reg[0]),
        .I3(tx_data_reg[5]),
        .I4(bit_index_reg[1]),
        .O(uart_rxd_out_OBUF_inst_i_3_n_0));
endmodule

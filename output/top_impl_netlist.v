// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Aug 25 13:45:02 2021
// Host        : marco running 64-bit Ubuntu 21.04
// Command     : write_verilog -force ./output/top_impl_netlist.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module debounce
   (c1,
    c2,
    btn_IBUF,
    clk_IBUF_BUFG,
    pwropt,
    pwropt_1);
  output [0:0]c1;
  output [0:0]c2;
  input [0:0]btn_IBUF;
  input clk_IBUF_BUFG;
  input pwropt;
  input pwropt_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]btn_IBUF;
  wire [0:0]c0;
  wire [0:0]c1;
  wire [0:0]c2;
  wire \c2_reg[0]_CE_cooolgate_en_sig_3 ;
  wire clk_IBUF_BUFG;
  wire pwropt;
  wire pwropt_1;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \c0_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(btn_IBUF),
        .Q(c0),
        .R(\<const0> ));
  FDRE \c1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(c0),
        .Q(c1),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE \c2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\c2_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(c1),
        .Q(c2),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h02)) 
    \c2_reg[0]_CE_cooolgate_en_gate_9 
       (.I0(pwropt_1),
        .I1(pwropt),
        .I2(c0),
        .O(\c2_reg[0]_CE_cooolgate_en_sig_3 ));
endmodule

(* ECO_CHECKSUM = "e641b981" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
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
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]led;
  wire pwropt;
  wire pwropt_1;
  wire uart_rxd_out;
  wire uart_rxd_out_OBUF;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  IBUF \btn_IBUF[0]_inst 
       (.I(btn[0]),
        .O(btn_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  debounce debouncer
       (.btn_IBUF(btn_IBUF),
        .c1(c1),
        .c2(c2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  OBUFT \led_OBUF[0]_inst 
       (.I(\<const0> ),
        .O(led[0]),
        .T(\<const1> ));
  OBUFT \led_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(led[1]),
        .T(\<const1> ));
  OBUFT \led_OBUF[2]_inst 
       (.I(\<const0> ),
        .O(led[2]),
        .T(\<const1> ));
  OBUFT \led_OBUF[3]_inst 
       (.I(\<const0> ),
        .O(led[3]),
        .T(\<const1> ));
  uart_transmitter uart_demo
       (.c1(c1),
        .c2(c2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .uart_rxd_out_OBUF(uart_rxd_out_OBUF));
  OBUF uart_rxd_out_OBUF_inst
       (.I(uart_rxd_out_OBUF),
        .O(uart_rxd_out));
endmodule

module uart_transmitter
   (uart_rxd_out_OBUF,
    clk_IBUF_BUFG,
    c2,
    c1,
    .pwropt(tx_controller_n_1),
    .pwropt_1(tx_controller_n_3));
  output uart_rxd_out_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]c2;
  input [0:0]c1;
  output tx_controller_n_1;
  output tx_controller_n_3;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_onehot_state_reg_reg[0]_CE_cooolgate_en_sig_4 ;
  wire \FSM_onehot_state_reg_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_reg_n_0_[2] ;
  wire [0:0]c1;
  wire [0:0]c2;
  wire [4:0]char_index_next;
  wire [4:0]char_index_reg;
  wire clk_IBUF_BUFG;
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
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(tx_controller_n_3),
        .Q(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hffff22f2)) 
    \FSM_onehot_state_reg_reg[0]_CE_cooolgate_en_gate_11 
       (.I0(tx_start),
        .I1(\^pwropt ),
        .I2(c2),
        .I3(c1),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(\FSM_onehot_state_reg_reg[0]_CE_cooolgate_en_sig_4 ));
  (* FSM_ENCODED_STATES = "idle:001,finished:100,transmit_byte:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tx_controller_n_2),
        .Q(tx_start),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "idle:001,finished:100,transmit_byte:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tx_controller_n_1),
        .Q(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \char_index_reg[0]_i_1 
       (.I0(tx_start),
        .I1(char_index_reg[0]),
        .O(char_index_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \char_index_reg[1]_i_1 
       (.I0(tx_start),
        .I1(char_index_reg[0]),
        .I2(char_index_reg[1]),
        .O(char_index_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \char_index_reg[2]_i_1 
       (.I0(char_index_reg[1]),
        .I1(char_index_reg[0]),
        .I2(tx_start),
        .I3(char_index_reg[2]),
        .O(char_index_next[2]));
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
       (.C(clk_IBUF_BUFG),
        .CE(tx_controller_n_4),
        .D(char_index_next[0]),
        .Q(char_index_reg[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_controller_n_4),
        .D(char_index_next[1]),
        .Q(char_index_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_controller_n_4),
        .D(char_index_next[2]),
        .Q(char_index_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_controller_n_4),
        .D(char_index_next[3]),
        .Q(char_index_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
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
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
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
    clk_IBUF_BUFG,
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
  input clk_IBUF_BUFG;
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
  wire \FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_2 ;
  wire [4:0]Q;
  wire [2:0]bit_index_reg;
  wire \bit_index_reg[0]_i_1_n_0 ;
  wire \bit_index_reg[1]_i_1_n_0 ;
  wire \bit_index_reg[2]_i_1_n_0 ;
  wire \bit_index_reg_reg[0]_CE_cooolgate_en_sig_1 ;
  wire [0:0]c1;
  wire [0:0]c2;
  wire \char_index_reg_reg[3] ;
  wire clk_IBUF_BUFG;
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
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hffffc5ff)) 
    \FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_gate_5 
       (.I0(state_reg[1]),
        .I1(\FSM_sequential_state_reg[2]_i_6_n_0 ),
        .I2(state_reg[0]),
        .I3(state_reg[2]),
        .I4(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_2 ));
  (* FSM_ENCODED_STATES = "idle:000,send_start_bit:001,send_data_bits:010,send_stop_bit:011,cleanup:100," *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "idle:000,send_start_bit:001,send_data_bits:010,send_stop_bit:011,cleanup:100," *) 
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE \FSM_sequential_state_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_2 ),
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
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_1 ),
        .D(\bit_index_reg[0]_i_1_n_0 ),
        .Q(bit_index_reg[0]),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h20)) 
    \bit_index_reg_reg[0]_CE_cooolgate_en_gate_1 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_1 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_1 ),
        .D(\bit_index_reg[1]_i_1_n_0 ),
        .Q(bit_index_reg[1]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_1 ),
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
       (.C(clk_IBUF_BUFG),
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
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_5 ),
        .Q(clk_cnt_reg_reg[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_4 ),
        .Q(clk_cnt_reg_reg[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
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
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[12]_i_1_n_6 ),
        .Q(clk_cnt_reg_reg[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_6 ),
        .Q(clk_cnt_reg_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_5 ),
        .Q(clk_cnt_reg_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_4 ),
        .Q(clk_cnt_reg_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
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
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_6 ),
        .Q(clk_cnt_reg_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_5 ),
        .Q(clk_cnt_reg_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_4 ),
        .Q(clk_cnt_reg_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
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
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_6 ),
        .Q(clk_cnt_reg_reg[9]),
        .R(\<const0> ));
  (* \PinAttr:I2:HOLD_DETOUR  = "181" *) 
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
  (* \PinAttr:I2:HOLD_DETOUR  = "181" *) 
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
  (* \PinAttr:I2:HOLD_DETOUR  = "179" *) 
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
  (* \PinAttr:I2:HOLD_DETOUR  = "179" *) 
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
  (* \PinAttr:I4:HOLD_DETOUR  = "171" *) 
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
  (* \PinAttr:I4:HOLD_DETOUR  = "171" *) 
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
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_reg[6]_i_1_n_0 ),
        .D(g0_b0_n_0),
        .Q(tx_data_reg[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_reg[6]_i_1_n_0 ),
        .D(g0_b1_n_0),
        .Q(tx_data_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_reg[6]_i_1_n_0 ),
        .D(g0_b2_n_0),
        .Q(tx_data_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_reg[6]_i_1_n_0 ),
        .D(g0_b3_n_0),
        .Q(tx_data_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_reg[6]_i_1_n_0 ),
        .D(g0_b4_n_0),
        .Q(tx_data_reg[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_reg[6]_i_1_n_0 ),
        .D(g0_b5_n_0),
        .Q(tx_data_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
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

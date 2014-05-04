// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (lin64) Build 353583 Mon Dec  9 17:26:26 MST 2013
// Date        : Sun Mar  9 16:49:28 2014
// Host        : andrew-dv4t running 64-bit Ubuntu 13.10
// Design      : piano
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Part        : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module piano
   (clk,
    hush,
    speaker,
    vcc,
    note);
  input clk;
  input hush;
  output speaker;
  output vcc;
  input [3:0]note;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire d;
  wire [16:0]freq_count_reg;
  wire hush;
  wire hush_IBUF;
  wire \n_0_freq_count[0]_i_1 ;
  wire \n_0_freq_count[0]_i_3 ;
  wire \n_0_freq_count[0]_i_4 ;
  wire \n_0_freq_count[0]_i_5 ;
  wire \n_0_freq_count[0]_i_6 ;
  wire \n_0_freq_count[12]_i_2 ;
  wire \n_0_freq_count[12]_i_3 ;
  wire \n_0_freq_count[12]_i_4 ;
  wire \n_0_freq_count[12]_i_5 ;
  wire \n_0_freq_count[16]_i_2 ;
  wire \n_0_freq_count[4]_i_2 ;
  wire \n_0_freq_count[4]_i_3 ;
  wire \n_0_freq_count[4]_i_4 ;
  wire \n_0_freq_count[4]_i_5 ;
  wire \n_0_freq_count[8]_i_2 ;
  wire \n_0_freq_count[8]_i_3 ;
  wire \n_0_freq_count[8]_i_4 ;
  wire \n_0_freq_count[8]_i_5 ;
  wire \n_0_freq_count_reg[0]_i_2 ;
  wire \n_0_freq_count_reg[12]_i_1 ;
  wire \n_0_freq_count_reg[4]_i_1 ;
  wire \n_0_freq_count_reg[8]_i_1 ;
  wire n_0_q_i_10;
  wire n_0_q_i_11;
  wire n_0_q_i_12;
  wire n_0_q_i_13;
  wire n_0_q_i_14;
  wire n_0_q_i_15;
  wire n_0_q_i_16;
  wire n_0_q_i_17;
  wire n_0_q_i_18;
  wire n_0_q_i_19;
  wire n_0_q_i_20;
  wire n_0_q_i_21;
  wire n_0_q_i_22;
  wire n_0_q_i_23;
  wire n_0_q_i_24;
  wire n_0_q_i_25;
  wire n_0_q_i_26;
  wire n_0_q_i_27;
  wire n_0_q_i_28;
  wire n_0_q_i_29;
  wire n_0_q_i_3;
  wire n_0_q_i_30;
  wire n_0_q_i_31;
  wire n_0_q_i_32;
  wire n_0_q_i_33;
  wire n_0_q_i_34;
  wire n_0_q_i_35;
  wire n_0_q_i_36;
  wire n_0_q_i_37;
  wire n_0_q_i_38;
  wire n_0_q_i_39;
  wire n_0_q_i_4;
  wire n_0_q_i_40;
  wire n_0_q_i_41;
  wire n_0_q_i_42;
  wire n_0_q_i_43;
  wire n_0_q_i_5;
  wire n_0_q_i_6;
  wire n_0_q_i_7;
  wire n_0_q_i_8;
  wire n_0_q_i_9;
  wire n_0_q_reg;
  wire \n_1_freq_count_reg[0]_i_2 ;
  wire \n_1_freq_count_reg[12]_i_1 ;
  wire \n_1_freq_count_reg[4]_i_1 ;
  wire \n_1_freq_count_reg[8]_i_1 ;
  wire \n_2_freq_count_reg[0]_i_2 ;
  wire \n_2_freq_count_reg[12]_i_1 ;
  wire \n_2_freq_count_reg[4]_i_1 ;
  wire \n_2_freq_count_reg[8]_i_1 ;
  wire \n_3_freq_count_reg[0]_i_2 ;
  wire \n_3_freq_count_reg[12]_i_1 ;
  wire \n_3_freq_count_reg[4]_i_1 ;
  wire \n_3_freq_count_reg[8]_i_1 ;
  wire \n_4_freq_count_reg[0]_i_2 ;
  wire \n_4_freq_count_reg[12]_i_1 ;
  wire \n_4_freq_count_reg[4]_i_1 ;
  wire \n_4_freq_count_reg[8]_i_1 ;
  wire \n_5_freq_count_reg[0]_i_2 ;
  wire \n_5_freq_count_reg[12]_i_1 ;
  wire \n_5_freq_count_reg[4]_i_1 ;
  wire \n_5_freq_count_reg[8]_i_1 ;
  wire \n_6_freq_count_reg[0]_i_2 ;
  wire \n_6_freq_count_reg[12]_i_1 ;
  wire \n_6_freq_count_reg[4]_i_1 ;
  wire \n_6_freq_count_reg[8]_i_1 ;
  wire \n_7_freq_count_reg[0]_i_2 ;
  wire \n_7_freq_count_reg[12]_i_1 ;
  wire \n_7_freq_count_reg[16]_i_1 ;
  wire \n_7_freq_count_reg[4]_i_1 ;
  wire \n_7_freq_count_reg[8]_i_1 ;
  wire [3:0]note;
  wire \note_IBUF[0] ;
  wire \note_IBUF[1] ;
  wire \note_IBUF[2] ;
  wire \note_IBUF[3] ;
  wire speaker;
  wire tc_en;
  wire vcc;
  wire [3:0]\NLW_freq_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_freq_count_reg[16]_i_1_O_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
VCC VCC_1
       (.P(\<const1> ));
BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
     \freq_count[0]_i_1 
       (.I0(hush_IBUF),
        .I1(n_0_q_i_7),
        .I2(n_0_q_i_6),
        .I3(n_0_q_i_5),
        .I4(n_0_q_i_4),
        .I5(n_0_q_i_3),
        .O(\n_0_freq_count[0]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \freq_count[0]_i_3 
       (.I0(freq_count_reg[3]),
        .O(\n_0_freq_count[0]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \freq_count[0]_i_4 
       (.I0(freq_count_reg[2]),
        .O(\n_0_freq_count[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \freq_count[0]_i_5 
       (.I0(freq_count_reg[1]),
        .O(\n_0_freq_count[0]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \freq_count[0]_i_6 
       (.I0(freq_count_reg[0]),
        .O(\n_0_freq_count[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \freq_count[12]_i_2 
       (.I0(freq_count_reg[15]),
        .O(\n_0_freq_count[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \freq_count[12]_i_3 
       (.I0(freq_count_reg[14]),
        .O(\n_0_freq_count[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \freq_count[12]_i_4 
       (.I0(freq_count_reg[13]),
        .O(\n_0_freq_count[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \freq_count[12]_i_5 
       (.I0(freq_count_reg[12]),
        .O(\n_0_freq_count[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \freq_count[16]_i_2 
       (.I0(freq_count_reg[16]),
        .O(\n_0_freq_count[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \freq_count[4]_i_2 
       (.I0(freq_count_reg[7]),
        .O(\n_0_freq_count[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \freq_count[4]_i_3 
       (.I0(freq_count_reg[6]),
        .O(\n_0_freq_count[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \freq_count[4]_i_4 
       (.I0(freq_count_reg[5]),
        .O(\n_0_freq_count[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \freq_count[4]_i_5 
       (.I0(freq_count_reg[4]),
        .O(\n_0_freq_count[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \freq_count[8]_i_2 
       (.I0(freq_count_reg[11]),
        .O(\n_0_freq_count[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \freq_count[8]_i_3 
       (.I0(freq_count_reg[10]),
        .O(\n_0_freq_count[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \freq_count[8]_i_4 
       (.I0(freq_count_reg[9]),
        .O(\n_0_freq_count[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \freq_count[8]_i_5 
       (.I0(freq_count_reg[8]),
        .O(\n_0_freq_count[8]_i_5 ));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_7_freq_count_reg[0]_i_2 ),
        .Q(freq_count_reg[0]),
        .R(\n_0_freq_count[0]_i_1 ));
CARRY4 \freq_count_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\n_0_freq_count_reg[0]_i_2 ,\n_1_freq_count_reg[0]_i_2 ,\n_2_freq_count_reg[0]_i_2 ,\n_3_freq_count_reg[0]_i_2 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\n_4_freq_count_reg[0]_i_2 ,\n_5_freq_count_reg[0]_i_2 ,\n_6_freq_count_reg[0]_i_2 ,\n_7_freq_count_reg[0]_i_2 }),
        .S({\n_0_freq_count[0]_i_3 ,\n_0_freq_count[0]_i_4 ,\n_0_freq_count[0]_i_5 ,\n_0_freq_count[0]_i_6 }));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_5_freq_count_reg[8]_i_1 ),
        .Q(freq_count_reg[10]),
        .R(\n_0_freq_count[0]_i_1 ));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_4_freq_count_reg[8]_i_1 ),
        .Q(freq_count_reg[11]),
        .R(\n_0_freq_count[0]_i_1 ));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_7_freq_count_reg[12]_i_1 ),
        .Q(freq_count_reg[12]),
        .R(\n_0_freq_count[0]_i_1 ));
CARRY4 \freq_count_reg[12]_i_1 
       (.CI(\n_0_freq_count_reg[8]_i_1 ),
        .CO({\n_0_freq_count_reg[12]_i_1 ,\n_1_freq_count_reg[12]_i_1 ,\n_2_freq_count_reg[12]_i_1 ,\n_3_freq_count_reg[12]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_freq_count_reg[12]_i_1 ,\n_5_freq_count_reg[12]_i_1 ,\n_6_freq_count_reg[12]_i_1 ,\n_7_freq_count_reg[12]_i_1 }),
        .S({\n_0_freq_count[12]_i_2 ,\n_0_freq_count[12]_i_3 ,\n_0_freq_count[12]_i_4 ,\n_0_freq_count[12]_i_5 }));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_6_freq_count_reg[12]_i_1 ),
        .Q(freq_count_reg[13]),
        .R(\n_0_freq_count[0]_i_1 ));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_5_freq_count_reg[12]_i_1 ),
        .Q(freq_count_reg[14]),
        .R(\n_0_freq_count[0]_i_1 ));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_4_freq_count_reg[12]_i_1 ),
        .Q(freq_count_reg[15]),
        .R(\n_0_freq_count[0]_i_1 ));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_7_freq_count_reg[16]_i_1 ),
        .Q(freq_count_reg[16]),
        .R(\n_0_freq_count[0]_i_1 ));
CARRY4 \freq_count_reg[16]_i_1 
       (.CI(\n_0_freq_count_reg[12]_i_1 ),
        .CO(\NLW_freq_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\NLW_freq_count_reg[16]_i_1_O_UNCONNECTED [3:1],\n_7_freq_count_reg[16]_i_1 }),
        .S({\<const0> ,\<const0> ,\<const0> ,\n_0_freq_count[16]_i_2 }));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_6_freq_count_reg[0]_i_2 ),
        .Q(freq_count_reg[1]),
        .R(\n_0_freq_count[0]_i_1 ));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_5_freq_count_reg[0]_i_2 ),
        .Q(freq_count_reg[2]),
        .R(\n_0_freq_count[0]_i_1 ));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_4_freq_count_reg[0]_i_2 ),
        .Q(freq_count_reg[3]),
        .R(\n_0_freq_count[0]_i_1 ));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_7_freq_count_reg[4]_i_1 ),
        .Q(freq_count_reg[4]),
        .R(\n_0_freq_count[0]_i_1 ));
CARRY4 \freq_count_reg[4]_i_1 
       (.CI(\n_0_freq_count_reg[0]_i_2 ),
        .CO({\n_0_freq_count_reg[4]_i_1 ,\n_1_freq_count_reg[4]_i_1 ,\n_2_freq_count_reg[4]_i_1 ,\n_3_freq_count_reg[4]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_freq_count_reg[4]_i_1 ,\n_5_freq_count_reg[4]_i_1 ,\n_6_freq_count_reg[4]_i_1 ,\n_7_freq_count_reg[4]_i_1 }),
        .S({\n_0_freq_count[4]_i_2 ,\n_0_freq_count[4]_i_3 ,\n_0_freq_count[4]_i_4 ,\n_0_freq_count[4]_i_5 }));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_6_freq_count_reg[4]_i_1 ),
        .Q(freq_count_reg[5]),
        .R(\n_0_freq_count[0]_i_1 ));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_5_freq_count_reg[4]_i_1 ),
        .Q(freq_count_reg[6]),
        .R(\n_0_freq_count[0]_i_1 ));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_4_freq_count_reg[4]_i_1 ),
        .Q(freq_count_reg[7]),
        .R(\n_0_freq_count[0]_i_1 ));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_7_freq_count_reg[8]_i_1 ),
        .Q(freq_count_reg[8]),
        .R(\n_0_freq_count[0]_i_1 ));
CARRY4 \freq_count_reg[8]_i_1 
       (.CI(\n_0_freq_count_reg[4]_i_1 ),
        .CO({\n_0_freq_count_reg[8]_i_1 ,\n_1_freq_count_reg[8]_i_1 ,\n_2_freq_count_reg[8]_i_1 ,\n_3_freq_count_reg[8]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_freq_count_reg[8]_i_1 ,\n_5_freq_count_reg[8]_i_1 ,\n_6_freq_count_reg[8]_i_1 ,\n_7_freq_count_reg[8]_i_1 }),
        .S({\n_0_freq_count[8]_i_2 ,\n_0_freq_count[8]_i_3 ,\n_0_freq_count[8]_i_4 ,\n_0_freq_count[8]_i_5 }));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \freq_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\n_6_freq_count_reg[8]_i_1 ),
        .Q(freq_count_reg[9]),
        .R(\n_0_freq_count[0]_i_1 ));
IBUF hush_IBUF_inst
       (.I(hush),
        .O(hush_IBUF));
IBUF \note_IBUF[0]_inst 
       (.I(note[0]),
        .O(\note_IBUF[0] ));
IBUF \note_IBUF[1]_inst 
       (.I(note[1]),
        .O(\note_IBUF[1] ));
IBUF \note_IBUF[2]_inst 
       (.I(note[2]),
        .O(\note_IBUF[2] ));
IBUF \note_IBUF[3]_inst 
       (.I(note[3]),
        .O(\note_IBUF[3] ));
LUT1 #(
    .INIT(2'h1)) 
     q_i_1
       (.I0(n_0_q_reg),
        .O(d));
LUT5 #(
    .INIT(32'h01000000)) 
     q_i_10
       (.I0(freq_count_reg[10]),
        .I1(\note_IBUF[3] ),
        .I2(freq_count_reg[12]),
        .I3(freq_count_reg[16]),
        .I4(freq_count_reg[6]),
        .O(n_0_q_i_10));
LUT6 #(
    .INIT(64'hF888000000000000)) 
     q_i_11
       (.I0(n_0_q_i_27),
        .I1(freq_count_reg[1]),
        .I2(n_0_q_i_28),
        .I3(n_0_q_i_29),
        .I4(n_0_q_i_30),
        .I5(n_0_q_i_31),
        .O(n_0_q_i_11));
LUT6 #(
    .INIT(64'h5540404000000000)) 
     q_i_12
       (.I0(freq_count_reg[5]),
        .I1(n_0_q_i_32),
        .I2(n_0_q_i_33),
        .I3(n_0_q_i_34),
        .I4(n_0_q_i_35),
        .I5(n_0_q_i_36),
        .O(n_0_q_i_12));
LUT4 #(
    .INIT(16'h0400)) 
     q_i_13
       (.I0(freq_count_reg[2]),
        .I1(freq_count_reg[10]),
        .I2(freq_count_reg[9]),
        .I3(freq_count_reg[14]),
        .O(n_0_q_i_13));
LUT5 #(
    .INIT(32'h10000000)) 
     q_i_14
       (.I0(freq_count_reg[1]),
        .I1(freq_count_reg[3]),
        .I2(n_0_q_i_37),
        .I3(freq_count_reg[9]),
        .I4(freq_count_reg[5]),
        .O(n_0_q_i_14));
LUT6 #(
    .INIT(64'h8F88888888888888)) 
     q_i_15
       (.I0(freq_count_reg[2]),
        .I1(n_0_q_i_38),
        .I2(freq_count_reg[8]),
        .I3(\note_IBUF[2] ),
        .I4(freq_count_reg[12]),
        .I5(n_0_q_i_39),
        .O(n_0_q_i_15));
LUT6 #(
    .INIT(64'h0040000000000000)) 
     q_i_16
       (.I0(freq_count_reg[9]),
        .I1(freq_count_reg[4]),
        .I2(freq_count_reg[3]),
        .I3(freq_count_reg[7]),
        .I4(freq_count_reg[12]),
        .I5(freq_count_reg[8]),
        .O(n_0_q_i_16));
LUT5 #(
    .INIT(32'h0A0000C0)) 
     q_i_17
       (.I0(n_0_q_i_40),
        .I1(n_0_q_i_41),
        .I2(freq_count_reg[5]),
        .I3(freq_count_reg[1]),
        .I4(freq_count_reg[0]),
        .O(n_0_q_i_17));
LUT6 #(
    .INIT(64'h0040000000000200)) 
     q_i_18
       (.I0(\note_IBUF[2] ),
        .I1(freq_count_reg[0]),
        .I2(freq_count_reg[1]),
        .I3(\note_IBUF[1] ),
        .I4(freq_count_reg[15]),
        .I5(freq_count_reg[9]),
        .O(n_0_q_i_18));
LUT6 #(
    .INIT(64'h0008000000000000)) 
     q_i_19
       (.I0(freq_count_reg[13]),
        .I1(freq_count_reg[11]),
        .I2(\note_IBUF[0] ),
        .I3(\note_IBUF[3] ),
        .I4(freq_count_reg[12]),
        .I5(freq_count_reg[6]),
        .O(n_0_q_i_19));
LUT5 #(
    .INIT(32'hFFEAEAEA)) 
     q_i_2
       (.I0(n_0_q_i_3),
        .I1(n_0_q_i_4),
        .I2(n_0_q_i_5),
        .I3(n_0_q_i_6),
        .I4(n_0_q_i_7),
        .O(tc_en));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h00800000)) 
     q_i_20
       (.I0(n_0_q_i_42),
        .I1(n_0_q_i_43),
        .I2(freq_count_reg[10]),
        .I3(freq_count_reg[15]),
        .I4(freq_count_reg[9]),
        .O(n_0_q_i_20));
LUT6 #(
    .INIT(64'h0000000000010000)) 
     q_i_21
       (.I0(freq_count_reg[5]),
        .I1(freq_count_reg[2]),
        .I2(freq_count_reg[3]),
        .I3(freq_count_reg[7]),
        .I4(freq_count_reg[13]),
        .I5(freq_count_reg[8]),
        .O(n_0_q_i_21));
LUT6 #(
    .INIT(64'h0000080000100000)) 
     q_i_22
       (.I0(freq_count_reg[1]),
        .I1(\note_IBUF[1] ),
        .I2(freq_count_reg[4]),
        .I3(\note_IBUF[0] ),
        .I4(freq_count_reg[14]),
        .I5(freq_count_reg[11]),
        .O(n_0_q_i_22));
LUT6 #(
    .INIT(64'h0000000000400000)) 
     q_i_23
       (.I0(freq_count_reg[7]),
        .I1(freq_count_reg[11]),
        .I2(\note_IBUF[1] ),
        .I3(\note_IBUF[0] ),
        .I4(freq_count_reg[8]),
        .I5(freq_count_reg[3]),
        .O(n_0_q_i_23));
LUT6 #(
    .INIT(64'h0000000000400000)) 
     q_i_24
       (.I0(freq_count_reg[11]),
        .I1(freq_count_reg[7]),
        .I2(\note_IBUF[0] ),
        .I3(\note_IBUF[1] ),
        .I4(freq_count_reg[3]),
        .I5(freq_count_reg[8]),
        .O(n_0_q_i_24));
LUT6 #(
    .INIT(64'h0000000000400000)) 
     q_i_25
       (.I0(freq_count_reg[14]),
        .I1(freq_count_reg[0]),
        .I2(freq_count_reg[4]),
        .I3(\note_IBUF[2] ),
        .I4(freq_count_reg[5]),
        .I5(freq_count_reg[1]),
        .O(n_0_q_i_25));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT2 #(
    .INIT(4'h8)) 
     q_i_26
       (.I0(freq_count_reg[9]),
        .I1(freq_count_reg[15]),
        .O(n_0_q_i_26));
LUT6 #(
    .INIT(64'h0000000000100000)) 
     q_i_27
       (.I0(freq_count_reg[0]),
        .I1(freq_count_reg[12]),
        .I2(\note_IBUF[1] ),
        .I3(freq_count_reg[11]),
        .I4(freq_count_reg[3]),
        .I5(freq_count_reg[6]),
        .O(n_0_q_i_27));
LUT4 #(
    .INIT(16'h1000)) 
     q_i_28
       (.I0(freq_count_reg[1]),
        .I1(freq_count_reg[3]),
        .I2(freq_count_reg[0]),
        .I3(freq_count_reg[12]),
        .O(n_0_q_i_28));
LUT3 #(
    .INIT(8'h40)) 
     q_i_29
       (.I0(\note_IBUF[1] ),
        .I1(freq_count_reg[6]),
        .I2(freq_count_reg[11]),
        .O(n_0_q_i_29));
LUT6 #(
    .INIT(64'hFFFFFFE0E0E0E0E0)) 
     q_i_3
       (.I0(n_0_q_i_8),
        .I1(n_0_q_i_9),
        .I2(n_0_q_i_10),
        .I3(n_0_q_i_11),
        .I4(n_0_q_i_12),
        .I5(n_0_q_i_13),
        .O(n_0_q_i_3));
LUT6 #(
    .INIT(64'h0000000000800000)) 
     q_i_30
       (.I0(freq_count_reg[8]),
        .I1(freq_count_reg[4]),
        .I2(\note_IBUF[2] ),
        .I3(\note_IBUF[0] ),
        .I4(\note_IBUF[3] ),
        .I5(freq_count_reg[13]),
        .O(n_0_q_i_30));
LUT4 #(
    .INIT(16'h0800)) 
     q_i_31
       (.I0(freq_count_reg[5]),
        .I1(freq_count_reg[7]),
        .I2(freq_count_reg[16]),
        .I3(freq_count_reg[15]),
        .O(n_0_q_i_31));
LUT6 #(
    .INIT(64'h0000000000400000)) 
     q_i_32
       (.I0(freq_count_reg[3]),
        .I1(freq_count_reg[8]),
        .I2(\note_IBUF[1] ),
        .I3(\note_IBUF[2] ),
        .I4(freq_count_reg[6]),
        .I5(freq_count_reg[11]),
        .O(n_0_q_i_32));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     q_i_33
       (.I0(freq_count_reg[7]),
        .I1(freq_count_reg[0]),
        .I2(freq_count_reg[13]),
        .I3(freq_count_reg[12]),
        .O(n_0_q_i_33));
LUT6 #(
    .INIT(64'h0000000000400000)) 
     q_i_34
       (.I0(freq_count_reg[8]),
        .I1(freq_count_reg[3]),
        .I2(\note_IBUF[2] ),
        .I3(\note_IBUF[1] ),
        .I4(freq_count_reg[11]),
        .I5(freq_count_reg[6]),
        .O(n_0_q_i_34));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     q_i_35
       (.I0(freq_count_reg[0]),
        .I1(freq_count_reg[7]),
        .I2(freq_count_reg[13]),
        .I3(freq_count_reg[12]),
        .O(n_0_q_i_35));
LUT6 #(
    .INIT(64'h0000000000400000)) 
     q_i_36
       (.I0(freq_count_reg[15]),
        .I1(freq_count_reg[16]),
        .I2(\note_IBUF[0] ),
        .I3(\note_IBUF[3] ),
        .I4(freq_count_reg[1]),
        .I5(freq_count_reg[4]),
        .O(n_0_q_i_36));
LUT6 #(
    .INIT(64'h0000000040000000)) 
     q_i_37
       (.I0(freq_count_reg[4]),
        .I1(freq_count_reg[11]),
        .I2(\note_IBUF[1] ),
        .I3(\note_IBUF[0] ),
        .I4(freq_count_reg[13]),
        .I5(freq_count_reg[6]),
        .O(n_0_q_i_37));
LUT6 #(
    .INIT(64'h0000000000040000)) 
     q_i_38
       (.I0(freq_count_reg[0]),
        .I1(freq_count_reg[14]),
        .I2(freq_count_reg[7]),
        .I3(\note_IBUF[2] ),
        .I4(freq_count_reg[8]),
        .I5(freq_count_reg[12]),
        .O(n_0_q_i_38));
LUT4 #(
    .INIT(16'h0400)) 
     q_i_39
       (.I0(freq_count_reg[2]),
        .I1(freq_count_reg[7]),
        .I2(freq_count_reg[14]),
        .I3(freq_count_reg[0]),
        .O(n_0_q_i_39));
LUT4 #(
    .INIT(16'h0400)) 
     q_i_4
       (.I0(freq_count_reg[16]),
        .I1(freq_count_reg[15]),
        .I2(freq_count_reg[10]),
        .I3(\note_IBUF[3] ),
        .O(n_0_q_i_4));
LUT6 #(
    .INIT(64'h0004000000000000)) 
     q_i_40
       (.I0(freq_count_reg[6]),
        .I1(freq_count_reg[13]),
        .I2(\note_IBUF[0] ),
        .I3(\note_IBUF[2] ),
        .I4(freq_count_reg[11]),
        .I5(\note_IBUF[1] ),
        .O(n_0_q_i_40));
LUT6 #(
    .INIT(64'h0000000000004000)) 
     q_i_41
       (.I0(freq_count_reg[13]),
        .I1(freq_count_reg[6]),
        .I2(\note_IBUF[0] ),
        .I3(\note_IBUF[2] ),
        .I4(freq_count_reg[11]),
        .I5(\note_IBUF[1] ),
        .O(n_0_q_i_41));
LUT5 #(
    .INIT(32'h02000040)) 
     q_i_42
       (.I0(freq_count_reg[6]),
        .I1(freq_count_reg[0]),
        .I2(freq_count_reg[12]),
        .I3(freq_count_reg[4]),
        .I4(\note_IBUF[0] ),
        .O(n_0_q_i_42));
LUT6 #(
    .INIT(64'h0000000000010000)) 
     q_i_43
       (.I0(freq_count_reg[11]),
        .I1(freq_count_reg[1]),
        .I2(\note_IBUF[1] ),
        .I3(\note_IBUF[2] ),
        .I4(\note_IBUF[3] ),
        .I5(freq_count_reg[13]),
        .O(n_0_q_i_43));
LUT6 #(
    .INIT(64'hF888888888888888)) 
     q_i_5
       (.I0(n_0_q_i_14),
        .I1(n_0_q_i_15),
        .I2(freq_count_reg[14]),
        .I3(freq_count_reg[2]),
        .I4(n_0_q_i_16),
        .I5(n_0_q_i_17),
        .O(n_0_q_i_5));
LUT6 #(
    .INIT(64'h00000000FFFF0008)) 
     q_i_6
       (.I0(n_0_q_i_18),
        .I1(n_0_q_i_19),
        .I2(freq_count_reg[10]),
        .I3(freq_count_reg[4]),
        .I4(n_0_q_i_20),
        .I5(freq_count_reg[2]),
        .O(n_0_q_i_6));
LUT6 #(
    .INIT(64'h0040000000000000)) 
     q_i_7
       (.I0(freq_count_reg[14]),
        .I1(freq_count_reg[5]),
        .I2(freq_count_reg[7]),
        .I3(freq_count_reg[3]),
        .I4(freq_count_reg[16]),
        .I5(freq_count_reg[8]),
        .O(n_0_q_i_7));
LUT6 #(
    .INIT(64'h0002000000000000)) 
     q_i_8
       (.I0(\note_IBUF[2] ),
        .I1(freq_count_reg[0]),
        .I2(freq_count_reg[9]),
        .I3(freq_count_reg[15]),
        .I4(n_0_q_i_21),
        .I5(n_0_q_i_22),
        .O(n_0_q_i_8));
LUT6 #(
    .INIT(64'h6240000000000000)) 
     q_i_9
       (.I0(freq_count_reg[13]),
        .I1(freq_count_reg[2]),
        .I2(n_0_q_i_23),
        .I3(n_0_q_i_24),
        .I4(n_0_q_i_25),
        .I5(n_0_q_i_26),
        .O(n_0_q_i_9));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     q_reg
       (.C(tc_en),
        .CE(\<const1> ),
        .D(d),
        .Q(n_0_q_reg),
        .R(\<const0> ));
OBUF speaker_OBUF_inst
       (.I(n_0_q_reg),
        .O(speaker));
OBUF vcc_OBUF_inst
       (.I(\<const1> ),
        .O(vcc));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

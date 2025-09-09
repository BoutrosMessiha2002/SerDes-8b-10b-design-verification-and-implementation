/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Tue Aug 26 08:02:23 2025
/////////////////////////////////////////////////////////////


module mux2to1_1 ( A, B, sel, out );
  input A, B, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MUX21X2 U1 ( .IN1(A), .IN2(B), .S(N0), .Q(out) );
endmodule


module mux2to1_0 ( A, B, sel, out );
  input A, B, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MUX21X2 U3 ( .IN1(A), .IN2(B), .S(N0), .Q(out) );
endmodule


module serializer ( data_in, clk, data_out, reset_n, valid, test_si, test_se
 );
  input [9:0] data_in;
  input clk, reset_n, valid, test_si, test_se;
  output data_out;
  wire   n5, n8, n30, n31, n32, n33, n34, n35, n37, n9, n10, n11, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n36, n38, n39, n40, n41, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n250,
         n251, n252, n253;

  OA22X1 U26 ( .IN1(n13), .IN2(n35), .IN3(n14), .IN4(n243), .Q(n11) );
  AND4X1 U27 ( .IN1(n15), .IN2(n16), .IN3(n17), .IN4(n18), .Q(n14) );
  AND4X1 U30 ( .IN1(n23), .IN2(n24), .IN3(n25), .IN4(n26), .Q(n13) );
  NAND4X0 U37 ( .IN1(n190), .IN2(n215), .IN3(n244), .IN4(n217), .QN(n41) );
  SDFFARX1 data_out_reg ( .D(n37), .SI(n9), .SE(test_se), .CLK(clk), .RSTB(
        n202), .Q(data_out), .QN(n250) );
  SDFFARX1 \counter_reg[1]  ( .D(n32), .SI(n251), .SE(test_se), .CLK(clk), 
        .RSTB(n192), .Q(n8), .QN(n252) );
  SDFFARX1 \counter_reg[0]  ( .D(n34), .SI(test_si), .SE(test_se), .CLK(clk), 
        .RSTB(n203), .Q(n251), .QN(n35) );
  SDFFARX1 \counter_reg[2]  ( .D(n31), .SI(n8), .SE(test_se), .CLK(clk), 
        .RSTB(n204), .Q(n5), .QN(n253) );
  SDFFARX1 \counter_reg[3]  ( .D(n33), .SI(n5), .SE(test_se), .CLK(clk), 
        .RSTB(n201), .Q(n9), .QN(n30) );
  INVX0 U3 ( .INP(n195), .ZN(n189) );
  INVX0 U4 ( .INP(n189), .ZN(n190) );
  INVX0 U5 ( .INP(valid), .ZN(n191) );
  INVX0 U6 ( .INP(n200), .ZN(n192) );
  INVX0 U7 ( .INP(valid), .ZN(n193) );
  INVX0 U8 ( .INP(n191), .ZN(n194) );
  INVX0 U9 ( .INP(n193), .ZN(n195) );
  INVX0 U10 ( .INP(n193), .ZN(n196) );
  INVX0 U11 ( .INP(n200), .ZN(n197) );
  INVX0 U12 ( .INP(n197), .ZN(n198) );
  INVX0 U13 ( .INP(n197), .ZN(n199) );
  INVX0 U14 ( .INP(reset_n), .ZN(n200) );
  INVX0 U15 ( .INP(n199), .ZN(n201) );
  INVX0 U16 ( .INP(n198), .ZN(n202) );
  INVX0 U17 ( .INP(n199), .ZN(n203) );
  INVX0 U18 ( .INP(n198), .ZN(n204) );
  AND2X4 U19 ( .IN1(n223), .IN2(n246), .Q(n36) );
  INVX0 U20 ( .INP(n36), .ZN(n205) );
  AND3X4 U21 ( .IN1(n205), .IN2(n29), .IN3(n195), .Q(n210) );
  AND4X4 U22 ( .IN1(n214), .IN2(n194), .IN3(n219), .IN4(n239), .Q(n38) );
  OAI21X2 U23 ( .IN1(n40), .IN2(n238), .IN3(n41), .QN(n32) );
  INVX0 U24 ( .INP(n205), .ZN(n206) );
  INVX0 U25 ( .INP(n219), .ZN(n207) );
  INVX0 U28 ( .INP(n239), .ZN(n208) );
  INVX0 U29 ( .INP(n38), .ZN(n209) );
  NAND3X1 U31 ( .IN1(n30), .IN2(data_in[0]), .IN3(n19), .QN(n18) );
  OAI22X1 U32 ( .IN1(n250), .IN2(n210), .IN3(n11), .IN4(n228), .QN(n37) );
  OAI222X1 U33 ( .IN1(n221), .IN2(n209), .IN3(n248), .IN4(n226), .IN5(n40), 
        .IN6(n225), .QN(n31) );
  INVX0 U34 ( .INP(n230), .ZN(n211) );
  INVX0 U35 ( .INP(n211), .ZN(n212) );
  INVX0 U36 ( .INP(n242), .ZN(n213) );
  INVX0 U38 ( .INP(n213), .ZN(n214) );
  INVX0 U39 ( .INP(n206), .ZN(n215) );
  INVX0 U40 ( .INP(n237), .ZN(n216) );
  INVX0 U41 ( .INP(n216), .ZN(n217) );
  INVX0 U42 ( .INP(n207), .ZN(n218) );
  INVX0 U43 ( .INP(n252), .ZN(n219) );
  INVX0 U44 ( .INP(n240), .ZN(n220) );
  INVX0 U45 ( .INP(n224), .ZN(n221) );
  INVX0 U46 ( .INP(n241), .ZN(n222) );
  INVX0 U47 ( .INP(n253), .ZN(n223) );
  INVX0 U48 ( .INP(n222), .ZN(n224) );
  INVX0 U49 ( .INP(n223), .ZN(n225) );
  INVX0 U50 ( .INP(n22), .ZN(n226) );
  INVX0 U51 ( .INP(n226), .ZN(n227) );
  INVX0 U52 ( .INP(n210), .ZN(n228) );
  INVX0 U53 ( .INP(n19), .ZN(n229) );
  INVX0 U54 ( .INP(n229), .ZN(n230) );
  INVX0 U55 ( .INP(n245), .ZN(n231) );
  INVX0 U56 ( .INP(n231), .ZN(n232) );
  INVX0 U57 ( .INP(n231), .ZN(n233) );
  INVX0 U58 ( .INP(n251), .ZN(n234) );
  INVX0 U59 ( .INP(n214), .ZN(n235) );
  INVX0 U60 ( .INP(n252), .ZN(n236) );
  INVX0 U61 ( .INP(n236), .ZN(n237) );
  INVX0 U62 ( .INP(n236), .ZN(n238) );
  INVX0 U63 ( .INP(n9), .ZN(n239) );
  NAND3X1 U64 ( .IN1(n230), .IN2(data_in[1]), .IN3(n30), .QN(n26) );
  INVX0 U65 ( .INP(n253), .ZN(n240) );
  INVX0 U66 ( .INP(n240), .ZN(n241) );
  INVX0 U67 ( .INP(n234), .ZN(n242) );
  INVX0 U68 ( .INP(n235), .ZN(n243) );
  INVX0 U69 ( .INP(n234), .ZN(n244) );
  INVX0 U70 ( .INP(n208), .ZN(n245) );
  INVX0 U71 ( .INP(n232), .ZN(n246) );
  INVX0 U72 ( .INP(n233), .ZN(n247) );
  INVX0 U73 ( .INP(n232), .ZN(n248) );
  OAI22X2 U75 ( .IN1(n235), .IN2(n196), .IN3(n243), .IN4(n228), .QN(n34) );
  AO21X2 U76 ( .IN1(n27), .IN2(n28), .IN3(n237), .Q(n25) );
  AO21X2 U77 ( .IN1(n20), .IN2(n21), .IN3(n238), .Q(n17) );
  OAI22X2 U78 ( .IN1(n225), .IN2(n209), .IN3(n39), .IN4(n245), .QN(n33) );
  NOR2X0 U79 ( .IN1(n220), .IN2(n218), .QN(n22) );
  NAND2X0 U80 ( .IN1(data_in[9]), .IN2(n248), .QN(n23) );
  NAND2X0 U81 ( .IN1(data_in[8]), .IN2(n246), .QN(n15) );
  NAND2X0 U82 ( .IN1(data_in[4]), .IN2(n227), .QN(n16) );
  NAND2X0 U83 ( .IN1(data_in[5]), .IN2(n227), .QN(n24) );
  NAND2X0 U84 ( .IN1(data_in[2]), .IN2(n224), .QN(n21) );
  NAND2X0 U85 ( .IN1(data_in[3]), .IN2(n241), .QN(n28) );
  NAND2X0 U86 ( .IN1(n216), .IN2(n247), .QN(n29) );
  NOR2X0 U87 ( .IN1(n212), .IN2(n10), .QN(n39) );
  INVX0 U88 ( .INP(n194), .ZN(n10) );
  NOR2X0 U89 ( .IN1(n5), .IN2(n8), .QN(n19) );
  OA21X1 U90 ( .IN1(n242), .IN2(n247), .IN3(n196), .Q(n40) );
  NAND2X0 U91 ( .IN1(data_in[6]), .IN2(n222), .QN(n20) );
  NAND2X0 U92 ( .IN1(data_in[7]), .IN2(n221), .QN(n27) );
endmodule


module dff_enc_0 ( rst_n, d, clk, q, test_si, test_se );
  input [0:0] d;
  output [0:0] q;
  input rst_n, clk, test_si, test_se;


  SDFFARX1 \q_reg[0]  ( .D(d[0]), .SI(test_si), .SE(test_se), .CLK(clk), 
        .RSTB(rst_n), .Q(q[0]) );
endmodule


module dff_enc_WIDTH8 ( rst_n, d, clk, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input rst_n, clk, test_si, test_se;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29;

  SDFFARX1 \q_reg[7]  ( .D(d[7]), .SI(q[6]), .SE(test_se), .CLK(clk), .RSTB(
        n21), .Q(q[7]) );
  SDFFARX1 \q_reg[0]  ( .D(d[0]), .SI(test_si), .SE(test_se), .CLK(clk), 
        .RSTB(n29), .Q(q[0]) );
  SDFFARX1 \q_reg[6]  ( .D(d[6]), .SI(q[5]), .SE(test_se), .CLK(clk), .RSTB(
        n26), .Q(q[6]) );
  SDFFARX1 \q_reg[5]  ( .D(d[5]), .SI(q[4]), .SE(test_se), .CLK(clk), .RSTB(
        n24), .Q(q[5]) );
  SDFFARX1 \q_reg[2]  ( .D(d[2]), .SI(q[1]), .SE(test_se), .CLK(clk), .RSTB(
        n20), .Q(q[2]) );
  SDFFARX1 \q_reg[3]  ( .D(d[3]), .SI(q[2]), .SE(test_se), .CLK(clk), .RSTB(
        n28), .Q(q[3]) );
  SDFFARX1 \q_reg[4]  ( .D(d[4]), .SI(q[3]), .SE(test_se), .CLK(clk), .RSTB(
        n27), .Q(q[4]) );
  SDFFARX1 \q_reg[1]  ( .D(d[1]), .SI(q[0]), .SE(test_se), .CLK(clk), .RSTB(
        n23), .Q(q[1]) );
  INVX0 U3 ( .INP(n25), .ZN(n15) );
  INVX0 U4 ( .INP(n25), .ZN(n16) );
  INVX0 U5 ( .INP(n16), .ZN(n17) );
  INVX0 U6 ( .INP(n15), .ZN(n18) );
  INVX0 U7 ( .INP(n16), .ZN(n19) );
  INVX0 U8 ( .INP(n18), .ZN(n20) );
  INVX0 U9 ( .INP(n17), .ZN(n21) );
  INVX0 U10 ( .INP(rst_n), .ZN(n22) );
  INVX0 U11 ( .INP(n22), .ZN(n23) );
  INVX0 U12 ( .INP(n22), .ZN(n24) );
  INVX0 U13 ( .INP(rst_n), .ZN(n25) );
  INVX0 U14 ( .INP(n19), .ZN(n26) );
  INVX0 U15 ( .INP(n18), .ZN(n27) );
  INVX0 U16 ( .INP(n17), .ZN(n28) );
  INVX0 U17 ( .INP(n19), .ZN(n29) );
endmodule


module dff_enc_WIDTH10 ( rst_n, d, clk, q, test_si2, test_si1, test_se );
  input [9:0] d;
  output [9:0] q;
  input rst_n, clk, test_si2, test_si1, test_se;
  wire   n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36;

  SDFFARX1 \q_reg[9]  ( .D(d[9]), .SI(q[8]), .SE(test_se), .CLK(clk), .RSTB(
        n20), .Q(q[9]) );
  SDFFARX1 \q_reg[8]  ( .D(d[8]), .SI(q[7]), .SE(test_se), .CLK(clk), .RSTB(
        n29), .Q(q[8]) );
  SDFFARX1 \q_reg[7]  ( .D(d[7]), .SI(q[6]), .SE(test_se), .CLK(clk), .RSTB(
        n33), .Q(q[7]) );
  SDFFARX1 \q_reg[6]  ( .D(d[6]), .SI(q[5]), .SE(test_se), .CLK(clk), .RSTB(
        n34), .Q(q[6]) );
  SDFFARX1 \q_reg[5]  ( .D(d[5]), .SI(q[4]), .SE(test_se), .CLK(clk), .RSTB(
        n31), .Q(q[5]) );
  SDFFARX1 \q_reg[4]  ( .D(d[4]), .SI(q[3]), .SE(test_se), .CLK(clk), .RSTB(
        n27), .Q(q[4]) );
  SDFFARX1 \q_reg[3]  ( .D(d[3]), .SI(test_si2), .SE(test_se), .CLK(clk), 
        .RSTB(n26), .Q(q[3]) );
  SDFFARX1 \q_reg[2]  ( .D(d[2]), .SI(q[1]), .SE(test_se), .CLK(clk), .RSTB(
        n25), .Q(q[2]) );
  SDFFARX1 \q_reg[1]  ( .D(d[1]), .SI(q[0]), .SE(test_se), .CLK(clk), .RSTB(
        n35), .Q(q[1]) );
  SDFFARX1 \q_reg[0]  ( .D(d[0]), .SI(test_si1), .SE(test_se), .CLK(clk), 
        .RSTB(n30), .Q(q[0]) );
  INVX0 U3 ( .INP(n36), .ZN(n19) );
  INVX0 U4 ( .INP(n32), .ZN(n20) );
  INVX0 U5 ( .INP(n32), .ZN(n21) );
  INVX0 U6 ( .INP(n21), .ZN(n22) );
  INVX0 U7 ( .INP(n21), .ZN(n23) );
  INVX0 U8 ( .INP(rst_n), .ZN(n24) );
  INVX0 U9 ( .INP(n24), .ZN(n25) );
  INVX0 U10 ( .INP(n19), .ZN(n26) );
  INVX0 U11 ( .INP(n24), .ZN(n27) );
  INVX0 U12 ( .INP(n36), .ZN(n28) );
  INVX0 U13 ( .INP(n28), .ZN(n29) );
  INVX0 U14 ( .INP(n19), .ZN(n30) );
  INVX0 U15 ( .INP(n28), .ZN(n31) );
  INVX0 U16 ( .INP(rst_n), .ZN(n32) );
  INVX0 U17 ( .INP(n23), .ZN(n33) );
  INVX0 U18 ( .INP(n22), .ZN(n34) );
  INVX0 U19 ( .INP(n23), .ZN(n35) );
  INVX0 U20 ( .INP(n22), .ZN(n36) );
endmodule


module enc_3b ( datain, rdispin, kin, disparity_6b, ones_counter_4b, 
        disparity_4b, dataout );
  input [2:0] datain;
  input [2:0] disparity_6b;
  output [1:0] ones_counter_4b;
  output [2:0] disparity_4b;
  output [3:0] dataout;
  input rdispin, kin;
  wire   n435, n437, n436, n433, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n388, n390, n393, n394, n395, n396, n397, n398, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431;

  OA221X1 U32 ( .IN1(n354), .IN2(n3), .IN3(n393), .IN4(n363), .IN5(n4), .Q(
        disparity_4b[2]) );
  OA22X1 U37 ( .IN1(n24), .IN2(n410), .IN3(n7), .IN4(n398), .Q(n22) );
  NAND4X0 U39 ( .IN1(n28), .IN2(n29), .IN3(n30), .IN4(n383), .QN(n435) );
  NOR3X0 U48 ( .IN1(n331), .IN2(n332), .IN3(n381), .QN(n41) );
  OA221X1 U57 ( .IN1(n16), .IN2(n12), .IN3(n51), .IN4(n421), .IN5(n431), .Q(
        n50) );
  NOR3X0 U59 ( .IN1(disparity_6b[2]), .IN2(disparity_6b[1]), .IN3(
        disparity_6b[0]), .QN(n26) );
  INVX0 U3 ( .INP(1'b1), .ZN(disparity_4b[0]) );
  INVX0 U5 ( .INP(n336), .ZN(n328) );
  INVX0 U6 ( .INP(n328), .ZN(n329) );
  INVX0 U7 ( .INP(n346), .ZN(n330) );
  INVX0 U8 ( .INP(n330), .ZN(n331) );
  INVX0 U9 ( .INP(n333), .ZN(n332) );
  INVX0 U10 ( .INP(n404), .ZN(n333) );
  INVX0 U11 ( .INP(rdispin), .ZN(n334) );
  INVX0 U12 ( .INP(n334), .ZN(n335) );
  INVX0 U13 ( .INP(n334), .ZN(n336) );
  INVX0 U14 ( .INP(datain[2]), .ZN(n337) );
  INVX0 U15 ( .INP(n337), .ZN(n338) );
  INVX0 U16 ( .INP(n337), .ZN(n339) );
  INVX0 U17 ( .INP(kin), .ZN(n340) );
  INVX0 U18 ( .INP(n340), .ZN(n341) );
  INVX0 U19 ( .INP(n340), .ZN(n342) );
  INVX0 U20 ( .INP(datain[0]), .ZN(n343) );
  INVX0 U21 ( .INP(n11), .ZN(n344) );
  INVX0 U22 ( .INP(n343), .ZN(n345) );
  INVX0 U23 ( .INP(n343), .ZN(n346) );
  INVX0 U24 ( .INP(datain[1]), .ZN(n347) );
  INVX0 U25 ( .INP(n347), .ZN(n348) );
  INVX0 U26 ( .INP(n347), .ZN(n349) );
  INVX0 U27 ( .INP(n333), .ZN(n350) );
  NAND3X1 U28 ( .IN1(n431), .IN2(n39), .IN3(n344), .QN(n38) );
  AND3X4 U29 ( .IN1(n360), .IN2(n44), .IN3(n358), .Q(n437) );
  INVX0 U30 ( .INP(n377), .ZN(n351) );
  AND3X4 U31 ( .IN1(n357), .IN2(n22), .IN3(n358), .Q(n371) );
  INVX0 U33 ( .INP(n384), .ZN(n352) );
  XOR2X2 U34 ( .IN1(n396), .IN2(n27), .Q(n24) );
  INVX0 U35 ( .INP(n388), .ZN(n353) );
  INVX0 U36 ( .INP(n388), .ZN(n354) );
  NAND3X4 U38 ( .IN1(n8), .IN2(n415), .IN3(n366), .QN(n29) );
  AND4X4 U40 ( .IN1(n349), .IN2(n38), .IN3(n37), .IN4(n339), .Q(n372) );
  OAI221X1 U41 ( .IN1(n365), .IN2(n397), .IN3(n50), .IN4(n364), .IN5(n359), 
        .QN(n49) );
  INVX0 U42 ( .INP(n49), .ZN(n355) );
  XNOR2X2 U43 ( .IN1(n395), .IN2(n394), .Q(n433) );
  INVX0 U44 ( .INP(n433), .ZN(n356) );
  OAI21X2 U45 ( .IN1(n373), .IN2(n361), .IN3(n43), .QN(n20) );
  INVX0 U46 ( .INP(n20), .ZN(n357) );
  OAI21X2 U47 ( .IN1(n361), .IN2(n382), .IN3(n45), .QN(n21) );
  INVX0 U49 ( .INP(n21), .ZN(n358) );
  AND3X1 U50 ( .IN1(n418), .IN2(n427), .IN3(n429), .Q(n32) );
  INVX0 U51 ( .INP(n32), .ZN(n359) );
  AND4X4 U52 ( .IN1(n338), .IN2(n47), .IN3(n48), .IN4(n428), .Q(n33) );
  INVX0 U53 ( .INP(n33), .ZN(n360) );
  AND3X1 U54 ( .IN1(n422), .IN2(n417), .IN3(n349), .Q(n42) );
  INVX0 U55 ( .INP(n42), .ZN(n361) );
  AOI21X1 U56 ( .IN1(n348), .IN2(n412), .IN3(n41), .QN(n25) );
  INVX0 U58 ( .INP(n25), .ZN(n362) );
  AOI21X1 U61 ( .IN1(n377), .IN2(n6), .IN3(n374), .QN(n17) );
  INVX0 U62 ( .INP(n17), .ZN(n363) );
  AND2X4 U63 ( .IN1(n339), .IN2(n345), .Q(n23) );
  INVX0 U64 ( .INP(n23), .ZN(n364) );
  AND2X4 U65 ( .IN1(n344), .IN2(n9), .Q(n46) );
  INVX0 U66 ( .INP(n46), .ZN(n365) );
  AND2X4 U67 ( .IN1(n359), .IN2(n360), .Q(n30) );
  INVX0 U68 ( .INP(n375), .ZN(n366) );
  AND2X4 U69 ( .IN1(n342), .IN2(n421), .Q(n40) );
  INVX0 U70 ( .INP(n40), .ZN(n367) );
  INVX0 U71 ( .INP(disparity_4b[1]), .ZN(n368) );
  NBUFFX4 U72 ( .INP(n356), .Z(disparity_4b[1]) );
  AND4X4 U73 ( .IN1(n357), .IN2(n35), .IN3(n36), .IN4(n384), .Q(n436) );
  INVX0 U74 ( .INP(n436), .ZN(n369) );
  INVX0 U75 ( .INP(n363), .ZN(n370) );
  INVX0 U76 ( .INP(n382), .ZN(n373) );
  INVX0 U77 ( .INP(n4), .ZN(n374) );
  INVX0 U78 ( .INP(n407), .ZN(n375) );
  XNOR2X2 U79 ( .IN1(n353), .IN2(n413), .Q(n19) );
  INVX0 U80 ( .INP(n351), .ZN(n376) );
  INVX0 U81 ( .INP(n19), .ZN(n377) );
  INVX0 U82 ( .INP(n6), .ZN(n378) );
  INVX0 U83 ( .INP(n378), .ZN(n379) );
  INVX0 U84 ( .INP(n426), .ZN(n380) );
  INVX0 U85 ( .INP(n373), .ZN(n381) );
  INVX0 U86 ( .INP(n380), .ZN(n382) );
  INVX0 U87 ( .INP(n352), .ZN(n383) );
  INVX0 U88 ( .INP(n372), .ZN(n384) );
  INVX0 U89 ( .INP(n420), .ZN(n385) );
  INVX0 U90 ( .INP(n435), .ZN(n386) );
  INVX0 U91 ( .INP(n3), .ZN(dataout[2]) );
  INVX0 U92 ( .INP(n371), .ZN(n388) );
  INVX0 U93 ( .INP(n354), .ZN(dataout[3]) );
  INVX0 U94 ( .INP(n437), .ZN(n390) );
  INVX0 U95 ( .INP(n437), .ZN(dataout[0]) );
  INVX0 U96 ( .INP(n393), .ZN(dataout[1]) );
  INVX0 U97 ( .INP(n369), .ZN(n393) );
  INVX0 U98 ( .INP(n369), .ZN(n394) );
  INVX0 U99 ( .INP(n370), .ZN(n395) );
  INVX0 U100 ( .INP(n16), .ZN(n396) );
  INVX0 U101 ( .INP(n13), .ZN(n397) );
  INVX0 U102 ( .INP(n397), .ZN(n398) );
  INVX0 U103 ( .INP(n368), .ZN(ones_counter_4b[0]) );
  INVX0 U104 ( .INP(n367), .ZN(n400) );
  INVX0 U105 ( .INP(n14), .ZN(n401) );
  INVX0 U106 ( .INP(n14), .ZN(n402) );
  INVX0 U107 ( .INP(n427), .ZN(n403) );
  INVX0 U108 ( .INP(n428), .ZN(n404) );
  INVX0 U109 ( .INP(n366), .ZN(n405) );
  INVX0 U110 ( .INP(n404), .ZN(n406) );
  INVX0 U111 ( .INP(n10), .ZN(n407) );
  INVX0 U112 ( .INP(n364), .ZN(n408) );
  INVX0 U113 ( .INP(n408), .ZN(n409) );
  INVX0 U114 ( .INP(n408), .ZN(n410) );
  INVX0 U115 ( .INP(n8), .ZN(n411) );
  INVX0 U116 ( .INP(n411), .ZN(n412) );
  INVX0 U117 ( .INP(n386), .ZN(n413) );
  INVX0 U118 ( .INP(n34), .ZN(n414) );
  INVX0 U119 ( .INP(n414), .ZN(n415) );
  INVX0 U120 ( .INP(n11), .ZN(n416) );
  INVX0 U121 ( .INP(n416), .ZN(n417) );
  INVX0 U122 ( .INP(n416), .ZN(n418) );
  INVX0 U123 ( .INP(n26), .ZN(n419) );
  INVX0 U124 ( .INP(n419), .ZN(n420) );
  INVX0 U125 ( .INP(n419), .ZN(n421) );
  INVX0 U126 ( .INP(n401), .ZN(n422) );
  INVX0 U127 ( .INP(n401), .ZN(n423) );
  INVX0 U128 ( .INP(n402), .ZN(n424) );
  INVX0 U129 ( .INP(n9), .ZN(n425) );
  INVX0 U130 ( .INP(n403), .ZN(n426) );
  INVX0 U131 ( .INP(n425), .ZN(n427) );
  INVX0 U132 ( .INP(n407), .ZN(n428) );
  OR2X4 U133 ( .IN1(n355), .IN2(n406), .Q(n44) );
  NAND3X4 U134 ( .IN1(n430), .IN2(n375), .IN3(n46), .QN(n45) );
  NAND3X4 U135 ( .IN1(n412), .IN2(n405), .IN3(n423), .QN(n36) );
  NAND3X4 U136 ( .IN1(n405), .IN2(n426), .IN3(n422), .QN(n28) );
  INVX0 U137 ( .INP(n400), .ZN(n429) );
  INVX0 U138 ( .INP(n40), .ZN(n430) );
  INVX0 U139 ( .INP(n400), .ZN(n431) );
  XNOR2X2 U140 ( .IN1(n335), .IN2(n385), .Q(n34) );
  OR3X2 U141 ( .IN1(n350), .IN2(n424), .IN3(n409), .Q(n43) );
  NOR2X0 U142 ( .IN1(n376), .IN2(n379), .QN(n18) );
  INVX0 U143 ( .INP(n390), .ZN(n6) );
  INVX0 U144 ( .INP(n362), .ZN(n7) );
  INVX0 U145 ( .INP(n429), .ZN(n14) );
  INVX0 U146 ( .INP(disparity_4b[2]), .ZN(ones_counter_4b[1]) );
  INVX0 U147 ( .INP(n435), .ZN(n3) );
  INVX0 U148 ( .INP(n18), .ZN(n4) );
  NAND2X0 U149 ( .IN1(n398), .IN2(n362), .QN(n35) );
  INVX0 U150 ( .INP(n420), .ZN(n16) );
  INVX0 U151 ( .INP(n415), .ZN(n13) );
  NAND2X0 U152 ( .IN1(n15), .IN2(n12), .QN(n51) );
  INVX0 U153 ( .INP(n365), .ZN(n8) );
  NAND2X0 U154 ( .IN1(n423), .IN2(n417), .QN(n37) );
  NAND2X0 U155 ( .IN1(n34), .IN2(n15), .QN(n39) );
  NAND2X0 U156 ( .IN1(n414), .IN2(n418), .QN(n47) );
  NAND2X0 U157 ( .IN1(n430), .IN2(n345), .QN(n48) );
  INVX0 U158 ( .INP(n336), .ZN(n12) );
  NOR2X0 U159 ( .IN1(n341), .IN2(n329), .QN(n27) );
  INVX0 U160 ( .INP(n346), .ZN(n11) );
  INVX0 U161 ( .INP(n348), .ZN(n10) );
  INVX0 U162 ( .INP(n338), .ZN(n9) );
  INVX0 U163 ( .INP(n342), .ZN(n15) );
endmodule


module enc_5b ( datain, kin, rdispin, ones_counter_6b, disparity_6b, dout );
  input [4:0] datain;
  output [2:0] ones_counter_6b;
  output [2:0] disparity_6b;
  output [5:0] dout;
  input kin, rdispin;
  wire   n998, n1000, n1001, n996, n997, n2, n4, n6, n7, n9, n10, n11, n12,
         n14, n15, n16, n19, n20, n22, n23, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n59, n60, n61, n62, n64, n65, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n748, n749, n750, n751, n752, n753,
         n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, n764,
         n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775,
         n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, n786,
         n787, n788, n789, n790, n791, n792, n793, n794, n795, n796, n797,
         n798, n799, n800, n801, n802, n803, n804, n805, n806, n807, n808,
         n809, n810, n811, n812, n813, n814, n815, n816, n817, n818, n819,
         n820, n821, n822, n823, n824, n825, n826, n827, n828, n829, n830,
         n831, n832, n833, n834, n835, n836, n837, n838, n839, n840, n841,
         n842, n843, n844, n845, n846, n847, n848, n849, n850, n851, n852,
         n853, n854, n855, n856, n857, n858, n859, n861, n863, n865, n867,
         n868, n870, n872, n873, n874, n875, n876, n877, n878, n879, n880,
         n881, n882, n883, n884, n885, n886, n887, n888, n889, n890, n891,
         n892, n893, n894, n895, n896, n897, n898, n899, n900, n901, n902,
         n903, n904, n905, n906, n907, n908, n909, n910, n911, n912, n913,
         n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924,
         n925, n926, n927, n928, n929, n930, n931, n932, n934, n935, n936,
         n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947,
         n948, n949, n950, n951, n952, n953, n954, n955, n956, n957, n958,
         n959, n960, n961, n962, n963, n964, n965, n967, n968, n969, n970,
         n971, n972, n973, n974, n976, n977, n978, n979, n980, n981, n982,
         n983, n984, n985, n986, n987, n988, n989, n990, n991, n992, n993,
         n994, n995;

  NOR4X1 U20 ( .IN1(n785), .IN2(n935), .IN3(n842), .IN4(n874), .QN(n90) );
  NOR3X0 U81 ( .IN1(n886), .IN2(n894), .IN3(n883), .QN(n27) );
  OA221X1 U90 ( .IN1(n803), .IN2(n798), .IN3(n39), .IN4(n897), .IN5(n40), .Q(
        n37) );
  OAI22X1 U93 ( .IN1(n48), .IN2(n773), .IN3(n15), .IN4(n50), .QN(n1000) );
  OA221X1 U94 ( .IN1(n945), .IN2(n895), .IN3(n53), .IN4(n54), .IN5(n55), .Q(
        n50) );
  OA221X1 U99 ( .IN1(n61), .IN2(n898), .IN3(n62), .IN4(n901), .IN5(n801), .Q(
        n60) );
  OA22X1 U104 ( .IN1(n928), .IN2(n23), .IN3(n799), .IN4(n777), .Q(n75) );
  OA22X1 U105 ( .IN1(n79), .IN2(n830), .IN3(n930), .IN4(n972), .Q(n72) );
  OA221X1 U112 ( .IN1(n897), .IN2(n98), .IN3(n99), .IN4(n977), .IN5(n100), .Q(
        n97) );
  AO21X1 U114 ( .IN1(n841), .IN2(n920), .IN3(n800), .Q(n101) );
  OA221X1 U117 ( .IN1(n107), .IN2(n899), .IN3(n108), .IN4(n987), .IN5(n109), 
        .Q(n106) );
  AO21X1 U119 ( .IN1(n985), .IN2(n911), .IN3(n993), .Q(n110) );
  INVX0 U3 ( .INP(1'b1), .ZN(disparity_6b[0]) );
  AND2X4 U5 ( .IN1(n801), .IN2(n791), .Q(n748) );
  AND2X1 U6 ( .IN1(n70), .IN2(n71), .Q(n749) );
  NAND2X0 U7 ( .IN1(n750), .IN2(n751), .QN(n28) );
  NAND2X0 U8 ( .IN1(n34), .IN2(n2), .QN(n750) );
  INVX0 U9 ( .INP(n32), .ZN(n751) );
  INVX0 U10 ( .INP(n751), .ZN(n752) );
  INVX0 U11 ( .INP(n765), .ZN(n753) );
  INVX0 U12 ( .INP(n753), .ZN(n754) );
  INVX0 U13 ( .INP(n768), .ZN(n755) );
  INVX0 U14 ( .INP(n755), .ZN(n756) );
  INVX0 U15 ( .INP(datain[4]), .ZN(n757) );
  INVX0 U16 ( .INP(n757), .ZN(n758) );
  INVX0 U17 ( .INP(n757), .ZN(n759) );
  INVX0 U18 ( .INP(datain[3]), .ZN(n760) );
  INVX0 U19 ( .INP(n760), .ZN(n761) );
  INVX0 U21 ( .INP(n760), .ZN(n762) );
  INVX0 U22 ( .INP(datain[2]), .ZN(n763) );
  INVX0 U23 ( .INP(n763), .ZN(n764) );
  INVX0 U24 ( .INP(n763), .ZN(n765) );
  INVX0 U25 ( .INP(datain[0]), .ZN(n766) );
  INVX0 U26 ( .INP(n766), .ZN(n767) );
  INVX0 U27 ( .INP(n766), .ZN(n768) );
  AND2X4 U28 ( .IN1(n908), .IN2(n938), .Q(n73) );
  INVX0 U29 ( .INP(n73), .ZN(n769) );
  AND2X4 U30 ( .IN1(n955), .IN2(n6), .Q(n84) );
  INVX0 U31 ( .INP(n84), .ZN(n770) );
  AND2X4 U32 ( .IN1(n923), .IN2(n991), .Q(n94) );
  INVX0 U33 ( .INP(n94), .ZN(n771) );
  AND4X4 U34 ( .IN1(n793), .IN2(n770), .IN3(n802), .IN4(n792), .Q(n775) );
  AND2X4 U35 ( .IN1(n930), .IN2(n985), .Q(n104) );
  INVX0 U36 ( .INP(n104), .ZN(n772) );
  AND2X4 U37 ( .IN1(n846), .IN2(n764), .Q(n49) );
  INVX0 U38 ( .INP(n49), .ZN(n773) );
  AND3X4 U39 ( .IN1(n769), .IN2(n75), .IN3(n789), .Q(n61) );
  AOI21X1 U40 ( .IN1(n865), .IN2(n940), .IN3(n752), .QN(n25) );
  INVX0 U41 ( .INP(n25), .ZN(n774) );
  INVX0 U42 ( .INP(n775), .ZN(n776) );
  AND2X4 U43 ( .IN1(n82), .IN2(n891), .Q(n78) );
  INVX0 U44 ( .INP(n78), .ZN(n777) );
  AOI21X1 U45 ( .IN1(n69), .IN2(n837), .IN3(n779), .QN(n30) );
  INVX0 U46 ( .INP(n30), .ZN(n778) );
  INVX0 U47 ( .INP(n797), .ZN(n779) );
  NAND2X0 U48 ( .IN1(n748), .IN2(n749), .QN(n1001) );
  OA222X2 U49 ( .IN1(n775), .IN2(n898), .IN3(n72), .IN4(n890), .IN5(n988), 
        .IN6(n61), .Q(n71) );
  AND3X4 U50 ( .IN1(n35), .IN2(n36), .IN3(n37), .Q(n780) );
  INVX0 U51 ( .INP(n2), .ZN(n781) );
  INVX0 U52 ( .INP(n837), .ZN(n782) );
  INVX0 U53 ( .INP(n867), .ZN(n783) );
  NAND3X1 U54 ( .IN1(n762), .IN2(n110), .IN3(n980), .QN(n109) );
  OA222X2 U55 ( .IN1(n755), .IN2(n900), .IN3(n795), .IN4(n767), .IN5(n903), 
        .IN6(n23), .Q(n48) );
  INVX0 U56 ( .INP(n803), .ZN(n784) );
  AND3X4 U57 ( .IN1(n881), .IN2(n92), .IN3(n771), .Q(n91) );
  INVX0 U58 ( .INP(n91), .ZN(n785) );
  INVX0 U59 ( .INP(n929), .ZN(n786) );
  OR2X4 U60 ( .IN1(n786), .IN2(n843), .Q(n70) );
  AND3X4 U61 ( .IN1(n878), .IN2(n105), .IN3(n106), .Q(n787) );
  INVX0 U62 ( .INP(n787), .ZN(n788) );
  XNOR2X2 U63 ( .IN1(n951), .IN2(n953), .Q(n998) );
  AND2X4 U64 ( .IN1(n956), .IN2(n81), .Q(n74) );
  INVX0 U65 ( .INP(n74), .ZN(n789) );
  XNOR2X2 U66 ( .IN1(n939), .IN2(n948), .Q(n34) );
  AND3X1 U67 ( .IN1(n964), .IN2(n944), .IN3(n980), .Q(n89) );
  INVX0 U68 ( .INP(n89), .ZN(n790) );
  AND2X4 U69 ( .IN1(n20), .IN2(n938), .Q(n68) );
  INVX0 U70 ( .INP(n68), .ZN(n791) );
  AND2X4 U71 ( .IN1(n955), .IN2(n914), .Q(n86) );
  INVX0 U72 ( .INP(n86), .ZN(n792) );
  AND2X4 U73 ( .IN1(n20), .IN2(n958), .Q(n83) );
  INVX0 U74 ( .INP(n83), .ZN(n793) );
  AND2X4 U75 ( .IN1(n964), .IN2(n937), .Q(n45) );
  INVX0 U76 ( .INP(n45), .ZN(n794) );
  AND2X4 U77 ( .IN1(n973), .IN2(n900), .Q(n52) );
  INVX0 U78 ( .INP(n52), .ZN(n795) );
  NAND2X0 U79 ( .IN1(n796), .IN2(n797), .QN(n26) );
  NAND2X0 U80 ( .IN1(n867), .IN2(n941), .QN(n796) );
  INVX0 U82 ( .INP(n33), .ZN(n797) );
  AND2X4 U83 ( .IN1(n764), .IN2(n968), .Q(n38) );
  INVX0 U84 ( .INP(n38), .ZN(n798) );
  INVX0 U85 ( .INP(n992), .ZN(n799) );
  INVX0 U86 ( .INP(n799), .ZN(n800) );
  AND3X4 U87 ( .IN1(n789), .IN2(n116), .IN3(n802), .Q(n47) );
  AOI21X1 U88 ( .IN1(n987), .IN2(n790), .IN3(n90), .QN(n64) );
  INVX0 U89 ( .INP(n64), .ZN(n801) );
  AND2X4 U91 ( .IN1(n932), .IN2(n997), .Q(disparity_6b[2]) );
  AND3X1 U92 ( .IN1(n888), .IN2(n943), .IN3(n908), .Q(n85) );
  INVX0 U95 ( .INP(n85), .ZN(n802) );
  AND2X4 U96 ( .IN1(n65), .IN2(n895), .Q(n803) );
  INVX0 U97 ( .INP(rdispin), .ZN(n994) );
  AND2X4 U98 ( .IN1(datain[2]), .IN2(n768), .Q(n804) );
  INVX0 U100 ( .INP(n995), .ZN(n805) );
  INVX0 U101 ( .INP(n805), .ZN(n806) );
  AND2X4 U102 ( .IN1(n920), .IN2(n911), .Q(n807) );
  INVX0 U103 ( .INP(n997), .ZN(n808) );
  XNOR2X2 U106 ( .IN1(n893), .IN2(n31), .Q(n997) );
  AND3X4 U107 ( .IN1(n878), .IN2(n96), .IN3(n97), .Q(n809) );
  AND3X4 U108 ( .IN1(n35), .IN2(n59), .IN3(n60), .Q(n810) );
  AND2X4 U109 ( .IN1(n905), .IN2(n978), .Q(n87) );
  AND2X4 U110 ( .IN1(n19), .IN2(n22), .Q(n811) );
  AND2X4 U111 ( .IN1(n943), .IN2(n890), .Q(n812) );
  INVX0 U113 ( .INP(n905), .ZN(n813) );
  AND2X4 U115 ( .IN1(datain[4]), .IN2(datain[3]), .Q(n814) );
  AND2X4 U116 ( .IN1(n19), .IN2(n767), .Q(n815) );
  INVX0 U118 ( .INP(n795), .ZN(n816) );
  XNOR2X2 U120 ( .IN1(n848), .IN2(n877), .Q(n29) );
  AND2X4 U121 ( .IN1(n769), .IN2(n111), .Q(n817) );
  AND2X4 U122 ( .IN1(n770), .IN2(n771), .Q(n818) );
  INVX0 U123 ( .INP(n774), .ZN(n819) );
  INVX0 U124 ( .INP(n888), .ZN(n820) );
  NOR2X0 U125 ( .IN1(n880), .IN2(n876), .QN(n821) );
  AND3X4 U126 ( .IN1(n881), .IN2(n112), .IN3(n792), .Q(n822) );
  INVX0 U127 ( .INP(n26), .ZN(n823) );
  INVX0 U128 ( .INP(n846), .ZN(n824) );
  INVX0 U130 ( .INP(n926), .ZN(n825) );
  XNOR2X2 U131 ( .IN1(n788), .IN2(n949), .Q(n69) );
  INVX0 U132 ( .INP(n989), .ZN(n826) );
  INVX0 U133 ( .INP(n914), .ZN(n827) );
  NOR2X0 U134 ( .IN1(n754), .IN2(n845), .QN(n51) );
  INVX0 U135 ( .INP(n51), .ZN(n828) );
  INVX0 U136 ( .INP(n989), .ZN(n829) );
  INVX0 U137 ( .INP(n829), .ZN(n830) );
  INVX0 U138 ( .INP(n827), .ZN(n831) );
  INVX0 U139 ( .INP(n69), .ZN(n832) );
  INVX0 U140 ( .INP(n832), .ZN(n833) );
  INVX0 U141 ( .INP(n34), .ZN(n834) );
  INVX0 U142 ( .INP(n834), .ZN(n835) );
  INVX0 U143 ( .INP(n782), .ZN(n836) );
  INVX0 U144 ( .INP(n1001), .ZN(n837) );
  INVX0 U145 ( .INP(n781), .ZN(n838) );
  INVX0 U146 ( .INP(n983), .ZN(n839) );
  INVX0 U147 ( .INP(n839), .ZN(n840) );
  INVX0 U148 ( .INP(n839), .ZN(n841) );
  INVX0 U149 ( .INP(n899), .ZN(n842) );
  INVX0 U150 ( .INP(n825), .ZN(n843) );
  INVX0 U151 ( .INP(n981), .ZN(n844) );
  INVX0 U152 ( .INP(n824), .ZN(n845) );
  INVX0 U153 ( .INP(n844), .ZN(n846) );
  AND2X4 U154 ( .IN1(n990), .IN2(n12), .Q(n46) );
  INVX0 U155 ( .INP(n46), .ZN(n847) );
  NAND3X4 U156 ( .IN1(n794), .IN2(n847), .IN3(n47), .QN(n44) );
  INVX0 U157 ( .INP(n823), .ZN(n848) );
  INVX0 U158 ( .INP(n4), .ZN(n849) );
  INVX0 U159 ( .INP(n849), .ZN(n850) );
  INVX0 U160 ( .INP(n849), .ZN(n851) );
  INVX0 U161 ( .INP(n821), .ZN(n852) );
  INVX0 U162 ( .INP(n821), .ZN(n853) );
  INVX0 U163 ( .INP(n822), .ZN(n854) );
  INVX0 U164 ( .INP(n822), .ZN(n855) );
  INVX0 U165 ( .INP(n974), .ZN(n856) );
  INVX0 U166 ( .INP(n820), .ZN(n857) );
  INVX0 U167 ( .INP(n856), .ZN(n858) );
  INVX0 U168 ( .INP(n940), .ZN(n859) );
  INVX0 U169 ( .INP(n859), .ZN(dout[5]) );
  INVX0 U170 ( .INP(n941), .ZN(n861) );
  INVX0 U171 ( .INP(n861), .ZN(dout[2]) );
  INVX0 U172 ( .INP(n1000), .ZN(n863) );
  INVX0 U173 ( .INP(n863), .ZN(dout[4]) );
  INVX0 U174 ( .INP(n863), .ZN(n865) );
  INVX0 U175 ( .INP(n809), .ZN(dout[1]) );
  INVX0 U176 ( .INP(n809), .ZN(n867) );
  INVX0 U177 ( .INP(n780), .ZN(n868) );
  INVX0 U178 ( .INP(n780), .ZN(dout[3]) );
  INVX0 U179 ( .INP(n1001), .ZN(n870) );
  INVX0 U180 ( .INP(n870), .ZN(dout[0]) );
  INVX0 U181 ( .INP(n11), .ZN(n872) );
  INVX0 U182 ( .INP(n872), .ZN(n873) );
  INVX0 U183 ( .INP(n872), .ZN(n874) );
  INVX0 U184 ( .INP(n818), .ZN(n875) );
  INVX0 U185 ( .INP(n818), .ZN(n876) );
  INVX0 U186 ( .INP(n819), .ZN(n877) );
  OAI221X1 U187 ( .IN1(n988), .IN2(n47), .IN3(n903), .IN4(n901), .IN5(n40), 
        .QN(n95) );
  INVX0 U188 ( .INP(n95), .ZN(n878) );
  INVX0 U189 ( .INP(n817), .ZN(n879) );
  INVX0 U190 ( .INP(n817), .ZN(n880) );
  AND2X4 U191 ( .IN1(n956), .IN2(n944), .Q(n93) );
  INVX0 U192 ( .INP(n93), .ZN(n881) );
  INVX0 U193 ( .INP(n30), .ZN(n882) );
  INVX0 U194 ( .INP(n950), .ZN(n883) );
  INVX0 U195 ( .INP(n28), .ZN(n884) );
  INVX0 U196 ( .INP(n884), .ZN(n885) );
  INVX0 U197 ( .INP(n884), .ZN(n886) );
  INVX0 U198 ( .INP(n856), .ZN(n887) );
  INVX0 U199 ( .INP(n806), .ZN(n888) );
  INVX0 U200 ( .INP(n978), .ZN(n889) );
  INVX0 U201 ( .INP(n889), .ZN(n890) );
  INVX0 U202 ( .INP(n889), .ZN(n891) );
  INVX0 U203 ( .INP(n29), .ZN(n892) );
  INVX0 U204 ( .INP(n892), .ZN(n893) );
  INVX0 U205 ( .INP(n892), .ZN(n894) );
  INVX0 U206 ( .INP(n816), .ZN(n895) );
  INVX0 U207 ( .INP(n986), .ZN(n896) );
  INVX0 U208 ( .INP(n896), .ZN(n897) );
  INVX0 U209 ( .INP(n986), .ZN(n898) );
  INVX0 U210 ( .INP(n976), .ZN(n899) );
  INVX0 U211 ( .INP(n814), .ZN(n900) );
  INVX0 U212 ( .INP(n815), .ZN(n901) );
  INVX0 U213 ( .INP(n812), .ZN(n902) );
  INVX0 U214 ( .INP(n812), .ZN(n903) );
  INVX0 U215 ( .INP(n81), .ZN(n904) );
  INVX0 U216 ( .INP(n904), .ZN(n905) );
  INVX0 U217 ( .INP(n813), .ZN(n906) );
  INVX0 U218 ( .INP(n815), .ZN(n907) );
  INVX0 U219 ( .INP(n907), .ZN(n908) );
  INVX0 U220 ( .INP(n907), .ZN(n909) );
  INVX0 U221 ( .INP(n10), .ZN(n910) );
  INVX0 U222 ( .INP(n910), .ZN(n911) );
  INVX0 U223 ( .INP(n910), .ZN(n912) );
  INVX0 U224 ( .INP(n82), .ZN(n913) );
  INVX0 U225 ( .INP(n913), .ZN(n914) );
  INVX0 U226 ( .INP(n9), .ZN(n915) );
  INVX0 U227 ( .INP(n915), .ZN(n916) );
  INVX0 U228 ( .INP(n841), .ZN(n917) );
  INVX0 U229 ( .INP(n982), .ZN(n918) );
  INVX0 U230 ( .INP(n14), .ZN(n919) );
  INVX0 U231 ( .INP(n919), .ZN(n920) );
  INVX0 U232 ( .INP(n919), .ZN(n921) );
  INVX0 U233 ( .INP(n87), .ZN(n922) );
  INVX0 U234 ( .INP(n922), .ZN(n923) );
  INVX0 U235 ( .INP(n922), .ZN(n924) );
  INVX0 U236 ( .INP(n65), .ZN(n925) );
  INVX0 U237 ( .INP(n925), .ZN(n926) );
  AND2X4 U238 ( .IN1(n958), .IN2(n16), .Q(n76) );
  INVX0 U239 ( .INP(n76), .ZN(n927) );
  INVX0 U240 ( .INP(n76), .ZN(n928) );
  INVX0 U241 ( .INP(n80), .ZN(n929) );
  INVX0 U242 ( .INP(n929), .ZN(n930) );
  NAND3X4 U243 ( .IN1(n793), .IN2(n927), .IN3(n790), .QN(n115) );
  INVX0 U244 ( .INP(n998), .ZN(n931) );
  INVX0 U245 ( .INP(n931), .ZN(n932) );
  INVX0 U246 ( .INP(n931), .ZN(disparity_6b[1]) );
  INVX0 U247 ( .INP(n4), .ZN(n934) );
  INVX0 U248 ( .INP(n934), .ZN(n935) );
  INVX0 U249 ( .INP(n88), .ZN(n936) );
  INVX0 U250 ( .INP(n936), .ZN(n937) );
  INVX0 U251 ( .INP(n936), .ZN(n938) );
  INVX0 U252 ( .INP(n810), .ZN(n939) );
  INVX0 U253 ( .INP(n810), .ZN(n940) );
  INVX0 U254 ( .INP(n787), .ZN(n941) );
  INVX0 U255 ( .INP(n814), .ZN(n942) );
  INVX0 U256 ( .INP(n942), .ZN(n943) );
  INVX0 U257 ( .INP(n942), .ZN(n944) );
  INVX0 U258 ( .INP(n828), .ZN(n945) );
  INVX0 U259 ( .INP(n828), .ZN(n946) );
  NAND3X4 U260 ( .IN1(n971), .IN2(n968), .IN3(n945), .QN(n55) );
  INVX0 U261 ( .INP(n865), .ZN(n947) );
  INVX0 U262 ( .INP(n947), .ZN(n948) );
  INVX0 U263 ( .INP(n783), .ZN(n949) );
  INVX0 U264 ( .INP(n778), .ZN(n950) );
  INVX0 U265 ( .INP(n950), .ZN(n951) );
  INVX0 U266 ( .INP(n28), .ZN(n952) );
  INVX0 U267 ( .INP(n952), .ZN(n953) );
  INVX0 U268 ( .INP(n113), .ZN(n954) );
  INVX0 U269 ( .INP(n954), .ZN(n955) );
  INVX0 U270 ( .INP(n954), .ZN(n956) );
  INVX0 U271 ( .INP(n12), .ZN(n957) );
  INVX0 U272 ( .INP(n957), .ZN(n958) );
  INVX0 U273 ( .INP(n957), .ZN(n959) );
  INVX0 U274 ( .INP(n6), .ZN(n960) );
  INVX0 U275 ( .INP(n960), .ZN(n961) );
  INVX0 U276 ( .INP(n960), .ZN(n962) );
  INVX0 U277 ( .INP(n16), .ZN(n963) );
  INVX0 U278 ( .INP(n963), .ZN(n964) );
  INVX0 U279 ( .INP(n963), .ZN(n965) );
  INVX0 U280 ( .INP(n808), .ZN(ones_counter_6b[1]) );
  INVX0 U281 ( .INP(n22), .ZN(n967) );
  INVX0 U282 ( .INP(n967), .ZN(n968) );
  INVX0 U283 ( .INP(n826), .ZN(n969) );
  INVX0 U284 ( .INP(n811), .ZN(n970) );
  INVX0 U285 ( .INP(n807), .ZN(n971) );
  INVX0 U286 ( .INP(n807), .ZN(n972) );
  INVX0 U287 ( .INP(n995), .ZN(n973) );
  INVX0 U288 ( .INP(n891), .ZN(n974) );
  AOI21X1 U289 ( .IN1(n774), .IN2(n26), .IN3(n27), .QN(n996) );
  INVX0 U290 ( .INP(n996), .ZN(ones_counter_6b[2]) );
  INVX0 U291 ( .INP(n994), .ZN(n976) );
  INVX0 U292 ( .INP(n976), .ZN(n977) );
  INVX0 U293 ( .INP(n973), .ZN(n978) );
  INVX0 U294 ( .INP(n805), .ZN(n979) );
  INVX0 U295 ( .INP(datain[1]), .ZN(n995) );
  INVX0 U296 ( .INP(n806), .ZN(n980) );
  INVX0 U297 ( .INP(n918), .ZN(n981) );
  INVX0 U298 ( .INP(n994), .ZN(n982) );
  NAND3X1 U299 ( .IN1(n759), .IN2(n101), .IN3(n887), .QN(n100) );
  NAND3X4 U300 ( .IN1(n887), .IN2(n961), .IN3(n829), .QN(n111) );
  OAI21X2 U301 ( .IN1(n927), .IN2(kin), .IN3(n981), .QN(n114) );
  INVX0 U302 ( .INP(n804), .ZN(n983) );
  INVX0 U303 ( .INP(n917), .ZN(n984) );
  INVX0 U304 ( .INP(n804), .ZN(n985) );
  INVX0 U305 ( .INP(n824), .ZN(n986) );
  INVX0 U306 ( .INP(n918), .ZN(n987) );
  INVX0 U307 ( .INP(n844), .ZN(n988) );
  XOR2X2 U308 ( .IN1(n756), .IN2(n946), .Q(n54) );
  INVX0 U309 ( .INP(n811), .ZN(n989) );
  INVX0 U310 ( .INP(n969), .ZN(n990) );
  INVX0 U311 ( .INP(n970), .ZN(n991) );
  INVX0 U312 ( .INP(n970), .ZN(n992) );
  INVX0 U313 ( .INP(n969), .ZN(n993) );
  INVX0 U314 ( .INP(n932), .ZN(ones_counter_6b[0]) );
  INVX0 U315 ( .INP(n847), .ZN(n11) );
  NOR2X0 U316 ( .IN1(n875), .IN2(n7), .QN(n107) );
  INVX0 U317 ( .INP(n98), .ZN(n7) );
  NOR2X0 U318 ( .IN1(n882), .IN2(n885), .QN(n31) );
  NOR2X0 U319 ( .IN1(n854), .IN2(n873), .QN(n98) );
  NOR2X0 U320 ( .IN1(n850), .IN2(n852), .QN(n99) );
  NOR2X0 U321 ( .IN1(n853), .IN2(n855), .QN(n39) );
  INVX0 U322 ( .INP(n902), .ZN(n12) );
  INVX0 U323 ( .INP(n794), .ZN(n4) );
  NOR2X0 U324 ( .IN1(n835), .IN2(n838), .QN(n32) );
  NAND2X0 U325 ( .IN1(n78), .IN2(n992), .QN(n112) );
  NOR2X0 U326 ( .IN1(n833), .IN2(n836), .QN(n33) );
  INVX0 U327 ( .INP(n868), .ZN(n2) );
  NAND2X0 U328 ( .IN1(n991), .IN2(n937), .QN(n116) );
  NOR2X0 U329 ( .IN1(n851), .IN2(n879), .QN(n108) );
  INVX0 U330 ( .INP(n777), .ZN(n9) );
  NOR2X0 U331 ( .IN1(n916), .IN2(n924), .QN(n65) );
  INVX0 U332 ( .INP(n972), .ZN(n6) );
  NOR2X0 U333 ( .IN1(n965), .IN2(n909), .QN(n80) );
  NAND2X0 U334 ( .IN1(n776), .IN2(n977), .QN(n59) );
  NOR2X0 U335 ( .IN1(n959), .IN2(n784), .QN(n62) );
  NAND2X0 U336 ( .IN1(n990), .IN2(n961), .QN(n92) );
  NAND2X0 U337 ( .IN1(n44), .IN2(rdispin), .QN(n36) );
  NOR2X0 U338 ( .IN1(n979), .IN2(n840), .QN(n113) );
  INVX0 U339 ( .INP(n984), .ZN(n20) );
  OA21X1 U340 ( .IN1(n984), .IN2(n926), .IN3(n791), .Q(n35) );
  NOR2X0 U341 ( .IN1(n971), .IN2(n857), .QN(n88) );
  INVX0 U342 ( .INP(n798), .ZN(n16) );
  NOR2X0 U343 ( .IN1(n906), .IN2(n831), .QN(n79) );
  NAND2X0 U344 ( .IN1(n9), .IN2(n772), .QN(n96) );
  INVX0 U345 ( .INP(datain[0]), .ZN(n22) );
  INVX0 U346 ( .INP(n765), .ZN(n19) );
  INVX0 U347 ( .INP(n773), .ZN(n15) );
  NAND2X0 U348 ( .IN1(n923), .IN2(n772), .QN(n105) );
  NOR2X0 U349 ( .IN1(n962), .IN2(n858), .QN(n53) );
  NAND2X0 U350 ( .IN1(n114), .IN2(n115), .QN(n40) );
  INVX0 U351 ( .INP(n762), .ZN(n14) );
  NOR2X0 U352 ( .IN1(n921), .IN2(n758), .QN(n81) );
  INVX0 U353 ( .INP(n759), .ZN(n10) );
  NOR2X0 U354 ( .IN1(n912), .IN2(n761), .QN(n82) );
  INVX0 U355 ( .INP(kin), .ZN(n23) );
endmodule


module control_enc ( kin, data_4b, data_6b, datain, rdispin, ones_counter_4b, 
        ones_counter_6b, rdispout, dataout, k_err, valid );
  input [3:0] data_4b;
  input [5:0] data_6b;
  input [7:0] datain;
  input [1:0] ones_counter_4b;
  input [2:0] ones_counter_6b;
  output [9:0] dataout;
  input kin, rdispin;
  output rdispout, k_err, valid;
  wire   n1, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99;

  AO21X1 U12 ( .IN1(n9), .IN2(n10), .IN3(n93), .Q(n8) );
  OA221X1 U15 ( .IN1(ones_counter_6b[1]), .IN2(n98), .IN3(ones_counter_6b[2]), 
        .IN4(ones_counter_4b[1]), .IN5(n12), .Q(n7) );
  AOI21X1 U16 ( .IN1(ones_counter_6b[2]), .IN2(ones_counter_6b[1]), .IN3(n92), 
        .QN(n12) );
  AND3X1 U18 ( .IN1(n13), .IN2(n14), .IN3(kin), .Q(k_err) );
  NAND4X0 U19 ( .IN1(n84), .IN2(datain[5]), .IN3(datain[7]), .IN4(datain[6]), 
        .QN(n14) );
  NAND4X0 U22 ( .IN1(n96), .IN2(n88), .IN3(datain[4]), .IN4(n83), .QN(n13) );
  OAI22X1 U3 ( .IN1(n7), .IN2(rdispin), .IN3(n4), .IN4(n8), .QN(rdispout) );
  INVX0 U4 ( .INP(datain[1]), .ZN(n83) );
  OAI221X1 U5 ( .IN1(datain[3]), .IN2(datain[2]), .IN3(n1), .IN4(datain[0]), 
        .IN5(n16), .QN(n15) );
  INVX0 U6 ( .INP(n15), .ZN(n84) );
  XNOR2X2 U7 ( .IN1(n97), .IN2(n17), .Q(n16) );
  INVX0 U8 ( .INP(n6), .ZN(n85) );
  AND2X4 U9 ( .IN1(datain[3]), .IN2(datain[2]), .Q(n86) );
  XNOR2X2 U10 ( .IN1(ones_counter_6b[0]), .IN2(ones_counter_4b[0]), .Q(n11) );
  INVX0 U11 ( .INP(n1), .ZN(n87) );
  INVX0 U13 ( .INP(n87), .ZN(n88) );
  INVX0 U14 ( .INP(n86), .ZN(n89) );
  INVX0 U17 ( .INP(n86), .ZN(n90) );
  INVX0 U20 ( .INP(n11), .ZN(n91) );
  INVX0 U21 ( .INP(n91), .ZN(n92) );
  INVX0 U23 ( .INP(n91), .ZN(n93) );
  INVX0 U24 ( .INP(n85), .ZN(n94) );
  INVX0 U25 ( .INP(datain[0]), .ZN(n95) );
  INVX0 U26 ( .INP(datain[0]), .ZN(n96) );
  INVX0 U27 ( .INP(datain[1]), .ZN(n97) );
  INVX0 U28 ( .INP(ones_counter_4b[1]), .ZN(n98) );
  INVX0 U29 ( .INP(ones_counter_4b[1]), .ZN(n99) );
  NAND3X4 U30 ( .IN1(n98), .IN2(n6), .IN3(ones_counter_6b[2]), .QN(n10) );
  OR3X2 U31 ( .IN1(n99), .IN2(ones_counter_6b[2]), .IN3(n94), .Q(n9) );
  INVX0 U32 ( .INP(ones_counter_6b[1]), .ZN(n6) );
  NOR2X0 U33 ( .IN1(n89), .IN2(n95), .QN(n17) );
  INVX0 U34 ( .INP(n90), .ZN(n1) );
  INVX0 U35 ( .INP(rdispin), .ZN(n4) );
  NBUFFX4 U36 ( .INP(data_6b[5]), .Z(dataout[9]) );
  NBUFFX4 U37 ( .INP(data_6b[4]), .Z(dataout[8]) );
  NBUFFX4 U38 ( .INP(data_6b[3]), .Z(dataout[7]) );
  NBUFFX4 U39 ( .INP(data_6b[2]), .Z(dataout[6]) );
  NBUFFX4 U40 ( .INP(data_6b[1]), .Z(dataout[5]) );
  NBUFFX4 U41 ( .INP(data_6b[0]), .Z(dataout[4]) );
  NBUFFX4 U42 ( .INP(data_4b[3]), .Z(dataout[3]) );
  NBUFFX4 U43 ( .INP(data_4b[2]), .Z(dataout[2]) );
  NBUFFX4 U44 ( .INP(data_4b[1]), .Z(dataout[1]) );
  NBUFFX4 U45 ( .INP(data_4b[0]), .Z(dataout[0]) );
endmodule


module dff_enc_1 ( rst_n, d, clk, q, test_si, test_se );
  input [0:0] d;
  output [0:0] q;
  input rst_n, clk, test_si, test_se;


  SDFFARX1 \q_reg[0]  ( .D(d[0]), .SI(test_si), .SE(test_se), .CLK(clk), 
        .RSTB(rst_n), .Q(q[0]) );
endmodule


module dff_enc_2 ( rst_n, d, clk, q, test_si, test_se );
  input [0:0] d;
  output [0:0] q;
  input rst_n, clk, test_si, test_se;


  SDFFARX1 \q_reg[0]  ( .D(d[0]), .SI(test_si), .SE(test_se), .CLK(clk), 
        .RSTB(rst_n), .Q(q[0]) );
endmodule


module encoder ( clk, rest_n, datain_8b, kin, dataout_10b, rdispout, k_err, 
        valid, test_si3, test_si2, test_si1, test_so1, test_se );
  input [7:0] datain_8b;
  output [9:0] dataout_10b;
  input clk, rest_n, kin, test_si3, test_si2, test_si1, test_se;
  output rdispout, k_err, valid, test_so1;
  wire   kin_reg, k_err_in, rdispout_in, n2, n4, n105, n43, n106, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n90, n91, n92, n93, n94, n95, n96, n97,
         n99, n100;
  wire   [7:0] data_reg;
  wire   [9:0] dataout_10b_in;
  wire   [2:0] disparity_6b;
  wire   [1:0] ones_counter_4b;
  wire   [3:0] dataout_4b;
  wire   [2:0] ones_counter_6b;
  wire   [5:0] dataout_6b;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign test_so1 = n106;

  dff_enc_0 kin_ff ( .rst_n(n83), .d(kin), .clk(clk), .q(kin_reg), .test_si(
        dataout_10b[9]), .test_se(test_se) );
  dff_enc_2 k_err_ff ( .rst_n(n93), .d(k_err_in), .clk(clk), .q(k_err), 
        .test_si(test_si3), .test_se(test_se) );
  dff_enc_1 curr_dis_ff ( .rst_n(n94), .d(rdispout_in), .clk(clk), .q(n105), 
        .test_si(n43), .test_se(test_se) );
  dff_enc_WIDTH8 data_ff ( .rst_n(n72), .d(datain_8b), .clk(clk), .q(data_reg), 
        .test_si(n105), .test_se(test_se) );
  dff_enc_WIDTH10 dataout_ff ( .rst_n(n75), .d(dataout_10b_in), .clk(clk), .q(
        dataout_10b), .test_si2(test_si2), .test_si1(data_reg[7]), .test_se(
        test_se) );
  enc_3b enc_inst_3b ( .datain(data_reg[7:5]), .rdispin(rdispout), .kin(n79), 
        .disparity_6b({disparity_6b[2:1], 1'b0}), .ones_counter_4b(
        ones_counter_4b), .dataout(dataout_4b) );
  enc_5b enc_inst_5b ( .datain({n56, n63, n66, data_reg[1], n81}), .kin(n78), 
        .rdispin(n88), .ones_counter_6b(ones_counter_6b), .disparity_6b({
        disparity_6b[2:1], SYNOPSYS_UNCONNECTED__0}), .dout(dataout_6b) );
  control_enc controller ( .kin(n79), .data_4b(dataout_4b), .data_6b(
        dataout_6b), .datain({n61, n54, n59, n57, n64, n67, n69, n82}), 
        .rdispin(n90), .ones_counter_4b(ones_counter_4b), .ones_counter_6b(
        ones_counter_6b), .rdispout(rdispout_in), .dataout(dataout_10b_in), 
        .k_err(k_err_in) );
  SDFFARX1 valid_reg ( .D(n2), .SI(kin_reg), .SE(test_se), .CLK(clk), .RSTB(
        n73), .Q(n106), .QN(n100) );
  SDFFARX1 counter_reg ( .D(n4), .SI(test_si1), .SE(test_se), .CLK(clk), 
        .RSTB(n76), .Q(n43), .QN(n95) );
  INVX0 U3 ( .INP(data_reg[6]), .ZN(n53) );
  INVX0 U4 ( .INP(n53), .ZN(n54) );
  INVX0 U5 ( .INP(data_reg[4]), .ZN(n55) );
  INVX0 U6 ( .INP(n55), .ZN(n56) );
  INVX0 U7 ( .INP(n55), .ZN(n57) );
  INVX0 U8 ( .INP(data_reg[5]), .ZN(n58) );
  INVX0 U9 ( .INP(n58), .ZN(n59) );
  INVX0 U10 ( .INP(data_reg[7]), .ZN(n60) );
  INVX0 U11 ( .INP(n60), .ZN(n61) );
  INVX0 U12 ( .INP(data_reg[3]), .ZN(n62) );
  INVX0 U13 ( .INP(n62), .ZN(n63) );
  INVX0 U14 ( .INP(n62), .ZN(n64) );
  INVX0 U15 ( .INP(data_reg[2]), .ZN(n65) );
  INVX0 U16 ( .INP(n65), .ZN(n66) );
  INVX0 U17 ( .INP(n65), .ZN(n67) );
  INVX0 U18 ( .INP(data_reg[1]), .ZN(n68) );
  INVX0 U19 ( .INP(n68), .ZN(n69) );
  INVX0 U20 ( .INP(n105), .ZN(n70) );
  INVX0 U21 ( .INP(n92), .ZN(n71) );
  INVX0 U22 ( .INP(n71), .ZN(n72) );
  INVX0 U23 ( .INP(n71), .ZN(n73) );
  INVX0 U24 ( .INP(n92), .ZN(n74) );
  INVX0 U25 ( .INP(n74), .ZN(n75) );
  INVX0 U26 ( .INP(n74), .ZN(n76) );
  INVX0 U27 ( .INP(kin_reg), .ZN(n77) );
  INVX0 U28 ( .INP(n77), .ZN(n78) );
  INVX0 U29 ( .INP(n77), .ZN(n79) );
  INVX0 U30 ( .INP(data_reg[0]), .ZN(n80) );
  INVX0 U31 ( .INP(n80), .ZN(n81) );
  INVX0 U32 ( .INP(n80), .ZN(n82) );
  INVX0 U33 ( .INP(n91), .ZN(n83) );
  INVX0 U34 ( .INP(n91), .ZN(n84) );
  INVX0 U35 ( .INP(n84), .ZN(n85) );
  INVX0 U36 ( .INP(n84), .ZN(n86) );
  INVX0 U37 ( .INP(n105), .ZN(n87) );
  INVX0 U38 ( .INP(n70), .ZN(n88) );
  INVX0 U39 ( .INP(n87), .ZN(rdispout) );
  INVX0 U40 ( .INP(n87), .ZN(n90) );
  INVX0 U41 ( .INP(rest_n), .ZN(n91) );
  INVX0 U42 ( .INP(n86), .ZN(n92) );
  INVX0 U43 ( .INP(n86), .ZN(n93) );
  INVX0 U44 ( .INP(n85), .ZN(n94) );
  INVX0 U45 ( .INP(n95), .ZN(n96) );
  OR2X4 U46 ( .IN1(n100), .IN2(n96), .Q(n4) );
  OR2X4 U47 ( .IN1(n99), .IN2(n43), .Q(n2) );
  INVX0 U48 ( .INP(n106), .ZN(n97) );
  INVX0 U49 ( .INP(n97), .ZN(valid) );
  INVX0 U51 ( .INP(n97), .ZN(n99) );
endmodule


module transmitter ( sclk, pclk, reset_n, data_in_8b, kin, rdispout, k_err, 
        data_out_s, test_si2, test_si1, test_so1, test_se );
  input [7:0] data_in_8b;
  input sclk, pclk, reset_n, kin, test_si2, test_si1, test_se;
  output rdispout, k_err, data_out_s, test_so1;
  wire   valid, n4, n5, n7;
  wire   [9:0] dataout_10b;
  assign test_so1 = dataout_10b[2];

  serializer serial ( .data_in(dataout_10b), .clk(sclk), .data_out(data_out_s), 
        .reset_n(n5), .valid(valid), .test_si(n7), .test_se(test_se) );
  encoder enc ( .clk(pclk), .rest_n(n5), .datain_8b(data_in_8b), .kin(kin), 
        .dataout_10b(dataout_10b), .rdispout(rdispout), .k_err(k_err), .valid(
        valid), .test_si3(data_out_s), .test_si2(test_si2), .test_si1(test_si1), .test_so1(n7), .test_se(test_se) );
  INVX0 U1 ( .INP(reset_n), .ZN(n4) );
  INVX0 U2 ( .INP(n4), .ZN(n5) );
endmodule


module dff_width10 ( d, reset_n, clk, q, test_si, test_se );
  input [9:0] d;
  output [9:0] q;
  input reset_n, clk, test_si, test_se;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39;

  SDFFARX1 \q_reg[6]  ( .D(d[6]), .SI(q[5]), .SE(test_se), .CLK(clk), .RSTB(
        n26), .Q(q[6]) );
  SDFFARX1 \q_reg[2]  ( .D(d[2]), .SI(q[1]), .SE(test_se), .CLK(clk), .RSTB(
        n30), .Q(q[2]) );
  SDFFARX1 \q_reg[3]  ( .D(d[3]), .SI(q[2]), .SE(test_se), .CLK(clk), .RSTB(
        n34), .Q(q[3]) );
  SDFFARX1 \q_reg[1]  ( .D(d[1]), .SI(q[0]), .SE(test_se), .CLK(clk), .RSTB(
        n22), .Q(q[1]) );
  SDFFARX1 \q_reg[9]  ( .D(d[9]), .SI(q[8]), .SE(test_se), .CLK(clk), .RSTB(
        n28), .Q(q[9]) );
  SDFFARX1 \q_reg[7]  ( .D(d[7]), .SI(q[6]), .SE(test_se), .CLK(clk), .RSTB(
        n32), .Q(q[7]) );
  SDFFARX1 \q_reg[5]  ( .D(d[5]), .SI(q[4]), .SE(test_se), .CLK(clk), .RSTB(
        n35), .Q(q[5]) );
  SDFFARX1 \q_reg[4]  ( .D(d[4]), .SI(q[3]), .SE(test_se), .CLK(clk), .RSTB(
        n27), .Q(q[4]) );
  SDFFARX1 \q_reg[8]  ( .D(d[8]), .SI(q[7]), .SE(test_se), .CLK(clk), .RSTB(
        n23), .Q(q[8]) );
  SDFFARX1 \q_reg[0]  ( .D(d[0]), .SI(test_si), .SE(test_se), .CLK(clk), 
        .RSTB(n31), .Q(q[0]) );
  INVX0 U3 ( .INP(n36), .ZN(n20) );
  INVX0 U4 ( .INP(n37), .ZN(n21) );
  INVX0 U5 ( .INP(n21), .ZN(n22) );
  INVX0 U6 ( .INP(n38), .ZN(n23) );
  INVX0 U7 ( .INP(n39), .ZN(n24) );
  INVX0 U8 ( .INP(n36), .ZN(n25) );
  INVX0 U9 ( .INP(n25), .ZN(n26) );
  INVX0 U10 ( .INP(n20), .ZN(n27) );
  INVX0 U11 ( .INP(n25), .ZN(n28) );
  INVX0 U12 ( .INP(n37), .ZN(n29) );
  INVX0 U13 ( .INP(n29), .ZN(n30) );
  INVX0 U14 ( .INP(n29), .ZN(n31) );
  INVX0 U15 ( .INP(n20), .ZN(n32) );
  INVX0 U16 ( .INP(n39), .ZN(n33) );
  INVX0 U17 ( .INP(n24), .ZN(n34) );
  INVX0 U18 ( .INP(n33), .ZN(n35) );
  INVX0 U19 ( .INP(n24), .ZN(n36) );
  INVX0 U20 ( .INP(n33), .ZN(n37) );
  INVX0 U21 ( .INP(reset_n), .ZN(n38) );
  INVX0 U22 ( .INP(n38), .ZN(n39) );
endmodule


module dff_width1_0 ( d, reset_n, clk, q, test_si, test_se );
  input [0:0] d;
  output [0:0] q;
  input reset_n, clk, test_si, test_se;


  SDFFARX1 \q_reg[0]  ( .D(d[0]), .SI(test_si), .SE(test_se), .CLK(clk), 
        .RSTB(reset_n), .Q(q[0]) );
endmodule


module dec4b ( clk, reset_n, datin, code_err1, kout1, datout, test_si, test_se
 );
  input [3:0] datin;
  output [2:0] datout;
  input clk, reset_n, test_si, test_se;
  output code_err1, kout1;
  wire   N53, N54, N55, N56, N57, n1, n2, n3, n4, n5, n7, n8, n9, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192;

  NAND4X0 U22 ( .IN1(n142), .IN2(n140), .IN3(n152), .IN4(n174), .QN(n16) );
  AND2X1 U27 ( .IN1(n23), .IN2(n24), .Q(n17) );
  NAND4X0 U28 ( .IN1(n141), .IN2(n151), .IN3(n155), .IN4(n173), .QN(n24) );
  SDFFARX1 code_err1_reg ( .D(N56), .SI(test_si), .SE(test_se), .CLK(clk), 
        .RSTB(n166), .Q(code_err1) );
  SDFFARX1 kout1_reg ( .D(N57), .SI(datout[2]), .SE(test_se), .CLK(clk), 
        .RSTB(n167), .Q(kout1) );
  SDFFARX1 \datout_reg[1]  ( .D(N54), .SI(datout[0]), .SE(test_se), .CLK(clk), 
        .RSTB(n168), .Q(datout[1]) );
  SDFFARX1 \datout_reg[0]  ( .D(N53), .SI(code_err1), .SE(test_se), .CLK(clk), 
        .RSTB(n148), .Q(datout[0]) );
  SDFFARX1 \datout_reg[2]  ( .D(N55), .SI(datout[1]), .SE(test_se), .CLK(clk), 
        .RSTB(n149), .Q(datout[2]) );
  INVX0 U3 ( .INP(n164), .ZN(n139) );
  INVX0 U4 ( .INP(n139), .ZN(n140) );
  INVX0 U5 ( .INP(n139), .ZN(n141) );
  INVX0 U6 ( .INP(n143), .ZN(n142) );
  INVX0 U7 ( .INP(n171), .ZN(n143) );
  INVX0 U8 ( .INP(n169), .ZN(n144) );
  INVX0 U9 ( .INP(n165), .ZN(n145) );
  INVX0 U10 ( .INP(n145), .ZN(n146) );
  INVX0 U11 ( .INP(n145), .ZN(n147) );
  INVX0 U12 ( .INP(n147), .ZN(n148) );
  INVX0 U13 ( .INP(n165), .ZN(n149) );
  INVX0 U14 ( .INP(datin[0]), .ZN(n150) );
  INVX0 U15 ( .INP(n150), .ZN(n151) );
  INVX0 U16 ( .INP(n150), .ZN(n152) );
  INVX0 U17 ( .INP(datin[1]), .ZN(n153) );
  INVX0 U18 ( .INP(n144), .ZN(n154) );
  INVX0 U19 ( .INP(n153), .ZN(n155) );
  INVX0 U20 ( .INP(n153), .ZN(n156) );
  INVX0 U21 ( .INP(datin[3]), .ZN(n157) );
  INVX0 U23 ( .INP(n157), .ZN(n158) );
  INVX0 U24 ( .INP(n143), .ZN(n159) );
  INVX0 U25 ( .INP(n157), .ZN(n160) );
  INVX0 U26 ( .INP(datin[2]), .ZN(n161) );
  INVX0 U29 ( .INP(n161), .ZN(n162) );
  INVX0 U30 ( .INP(n161), .ZN(n163) );
  INVX0 U31 ( .INP(n4), .ZN(n164) );
  INVX0 U32 ( .INP(reset_n), .ZN(n165) );
  INVX0 U33 ( .INP(n146), .ZN(n166) );
  INVX0 U34 ( .INP(n147), .ZN(n167) );
  INVX0 U35 ( .INP(n146), .ZN(n168) );
  AND3X4 U36 ( .IN1(n170), .IN2(n21), .IN3(n17), .Q(n18) );
  INVX0 U37 ( .INP(n5), .ZN(n169) );
  NAND3X4 U38 ( .IN1(n181), .IN2(n3), .IN3(n160), .QN(n12) );
  NAND3X4 U39 ( .IN1(n192), .IN2(n189), .IN3(n159), .QN(n25) );
  NAND3X4 U40 ( .IN1(n2), .IN2(n183), .IN3(n158), .QN(n9) );
  NAND3X4 U41 ( .IN1(n177), .IN2(n189), .IN3(n159), .QN(n20) );
  NAND3X4 U42 ( .IN1(n162), .IN2(n192), .IN3(n160), .QN(n21) );
  NAND3X4 U43 ( .IN1(n177), .IN2(n179), .IN3(n164), .QN(n19) );
  AND3X1 U44 ( .IN1(n188), .IN2(n1), .IN3(n185), .Q(n22) );
  INVX0 U45 ( .INP(n22), .ZN(n170) );
  INVX0 U46 ( .INP(n179), .ZN(n171) );
  OAI22X2 U47 ( .IN1(n5), .IN2(n191), .IN3(n176), .IN4(n188), .QN(n172) );
  INVX0 U48 ( .INP(n171), .ZN(n173) );
  INVX0 U49 ( .INP(n169), .ZN(n174) );
  INVX0 U50 ( .INP(n14), .ZN(n175) );
  INVX0 U51 ( .INP(n14), .ZN(n176) );
  INVX0 U52 ( .INP(n176), .ZN(n177) );
  INVX0 U53 ( .INP(n186), .ZN(n178) );
  INVX0 U54 ( .INP(n186), .ZN(n179) );
  INVX0 U55 ( .INP(n11), .ZN(n180) );
  INVX0 U56 ( .INP(n180), .ZN(n181) );
  INVX0 U57 ( .INP(n172), .ZN(n182) );
  INVX0 U58 ( .INP(n172), .ZN(n183) );
  INVX0 U59 ( .INP(n7), .ZN(n184) );
  INVX0 U60 ( .INP(n7), .ZN(n185) );
  INVX0 U61 ( .INP(n1), .ZN(n186) );
  NAND3X1 U62 ( .IN1(n15), .IN2(n16), .IN3(n17), .QN(N55) );
  INVX0 U63 ( .INP(n4), .ZN(n187) );
  INVX0 U64 ( .INP(n187), .ZN(n188) );
  INVX0 U65 ( .INP(n187), .ZN(n189) );
  INVX0 U66 ( .INP(n184), .ZN(n190) );
  INVX0 U67 ( .INP(n184), .ZN(n191) );
  INVX0 U68 ( .INP(n185), .ZN(n192) );
  AO21X2 U69 ( .IN1(n25), .IN2(n170), .IN3(n156), .Q(n23) );
  XNOR2X2 U70 ( .IN1(n154), .IN2(n190), .Q(n14) );
  NAND3X4 U71 ( .IN1(n2), .IN2(n178), .IN3(n183), .QN(n13) );
  NAND3X4 U72 ( .IN1(n3), .IN2(n178), .IN3(n11), .QN(n8) );
  XNOR2X2 U73 ( .IN1(n163), .IN2(n175), .Q(n11) );
  INVX0 U74 ( .INP(n182), .ZN(n3) );
  INVX0 U75 ( .INP(n181), .ZN(n2) );
  INVX0 U76 ( .INP(n158), .ZN(n1) );
  NAND2X0 U77 ( .IN1(n20), .IN2(n18), .QN(N53) );
  NAND2X0 U78 ( .IN1(n19), .IN2(n18), .QN(N54) );
  INVX0 U79 ( .INP(datin[0]), .ZN(n7) );
  NAND2X0 U80 ( .IN1(n191), .IN2(n156), .QN(n15) );
  NAND2X0 U81 ( .IN1(n8), .IN2(n9), .QN(N57) );
  NAND2X0 U82 ( .IN1(n12), .IN2(n13), .QN(N56) );
  INVX0 U83 ( .INP(n162), .ZN(n4) );
  INVX0 U84 ( .INP(datin[1]), .ZN(n5) );
endmodule


module dec6b ( clk, reset_n, rdispin, datin, code_err2, disp_err, kout2, 
        datout, test_si, test_se );
  input [5:0] datin;
  output [4:0] datout;
  input clk, reset_n, rdispin, test_si, test_se;
  output code_err2, disp_err, kout2;
  wire   N210, N211, N212, N213, N214, N215, N217, n1, n2, n3, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n18, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n54,
         n55, n56, n59, n60, n61, n62, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n91, n92, n93, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670,
         n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681,
         n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692,
         n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703,
         n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714,
         n715, n716, n717, n718, n719, n720, n721, n722, n723, n724, n725,
         n726, n727, n728, n729, n730, n731, n732, n733, n734, n735, n736,
         n737, n738, n739, n740, n741, n742, n743, n744, n745, n746, n747,
         n748, n749, n750, n751, n752, n753, n754, n755, n756, n757, n758,
         n759, n760, n761, n762, n763, n764, n765, n766, n767, n768, n769,
         n770, n771, n772, n773, n774, n775, n776, n777, n778, n779, n780,
         n781, n782, n783, n784, n785, n786, n787, n788, n789, n790, n791,
         n792, n793, n794, n795, n796, n797, n798, n799, n800, n801, n802,
         n803, n804, n805, n806, n807, n808, n809, n810, n811, n812, n813,
         n814, n815, n816, n817, n818, n819, n820, n821, n822, n823, n824,
         n825, n826, n827, n828, n829, n830, n831, n832, n833, n834, n835,
         n836, n837, n838, n839, n840, n841, n842, n843, n844, n845;

  NOR4X1 U8 ( .IN1(n734), .IN2(n733), .IN3(n7), .IN4(n735), .QN(n47) );
  OA22X1 U62 ( .IN1(n22), .IN2(n782), .IN3(n23), .IN4(n831), .Q(n21) );
  AND3X1 U63 ( .IN1(n827), .IN2(n12), .IN3(n744), .Q(n25) );
  OA22X1 U65 ( .IN1(n732), .IN2(n29), .IN3(n23), .IN4(n763), .Q(n20) );
  AND2X1 U66 ( .IN1(n31), .IN2(n32), .Q(n23) );
  AND2X1 U69 ( .IN1(n33), .IN2(n34), .Q(n29) );
  OAI22X1 U72 ( .IN1(n35), .IN2(n731), .IN3(n36), .IN4(n781), .QN(N215) );
  OA22X1 U73 ( .IN1(n37), .IN2(n694), .IN3(n845), .IN4(n834), .Q(n36) );
  OA22X1 U74 ( .IN1(n622), .IN2(n40), .IN3(n827), .IN4(n830), .Q(n35) );
  OA222X1 U77 ( .IN1(n823), .IN2(n47), .IN3(n49), .IN4(n747), .IN5(n806), 
        .IN6(n51), .Q(n46) );
  OA22X1 U80 ( .IN1(n5), .IN2(n722), .IN3(n759), .IN4(n784), .Q(n44) );
  NAND4X0 U81 ( .IN1(n688), .IN2(n730), .IN3(n61), .IN4(n62), .QN(N213) );
  AND4X1 U82 ( .IN1(n802), .IN2(n801), .IN3(n64), .IN4(n65), .Q(n62) );
  OA22X1 U83 ( .IN1(n825), .IN2(n755), .IN3(n842), .IN4(n756), .Q(n65) );
  OA22X1 U85 ( .IN1(n726), .IN2(n765), .IN3(n810), .IN4(n762), .Q(n61) );
  NAND4X0 U88 ( .IN1(n696), .IN2(n698), .IN3(n738), .IN4(n80), .QN(N212) );
  OA221X1 U89 ( .IN1(n806), .IN2(n740), .IN3(n841), .IN4(n787), .IN5(n81), .Q(
        n80) );
  OA221X1 U92 ( .IN1(n805), .IN2(n745), .IN3(n812), .IN4(n743), .IN5(n803), 
        .Q(n84) );
  AO21X1 U101 ( .IN1(n844), .IN2(n759), .IN3(n783), .Q(n92) );
  SDFFARX1 kout2_reg ( .D(n672), .SI(disp_err), .SE(test_se), .CLK(clk), 
        .RSTB(n648), .Q(kout2) );
  SDFFARX1 \datout_reg[3]  ( .D(N213), .SI(datout[2]), .SE(test_se), .CLK(clk), 
        .RSTB(n665), .Q(datout[3]) );
  SDFFARX1 \datout_reg[2]  ( .D(N212), .SI(datout[1]), .SE(test_se), .CLK(clk), 
        .RSTB(n652), .Q(datout[2]) );
  SDFFARX1 \datout_reg[1]  ( .D(N211), .SI(datout[0]), .SE(test_se), .CLK(clk), 
        .RSTB(n653), .Q(datout[1]) );
  SDFFARX1 code_err2_reg ( .D(N215), .SI(test_si), .SE(test_se), .CLK(clk), 
        .RSTB(n651), .Q(code_err2) );
  SDFFARX1 disp_err_reg ( .D(N217), .SI(datout[4]), .SE(test_se), .CLK(clk), 
        .RSTB(n649), .Q(disp_err) );
  SDFFARX1 \datout_reg[4]  ( .D(N214), .SI(datout[3]), .SE(test_se), .CLK(clk), 
        .RSTB(n654), .Q(datout[4]) );
  SDFFARX1 \datout_reg[0]  ( .D(N210), .SI(code_err2), .SE(test_se), .CLK(clk), 
        .RSTB(n655), .Q(datout[0]) );
  OAI22X1 U3 ( .IN1(n20), .IN2(n1), .IN3(n636), .IN4(n21), .QN(N217) );
  INVX0 U4 ( .INP(n624), .ZN(n621) );
  INVX0 U5 ( .INP(n621), .ZN(n622) );
  INVX0 U6 ( .INP(n635), .ZN(n623) );
  INVX0 U7 ( .INP(n623), .ZN(n624) );
  INVX0 U9 ( .INP(n800), .ZN(n625) );
  INVX0 U10 ( .INP(n723), .ZN(n626) );
  INVX0 U11 ( .INP(n626), .ZN(n627) );
  INVX0 U12 ( .INP(n638), .ZN(n628) );
  INVX0 U13 ( .INP(datin[1]), .ZN(n629) );
  INVX0 U14 ( .INP(n629), .ZN(n630) );
  INVX0 U15 ( .INP(n629), .ZN(n631) );
  INVX0 U16 ( .INP(datin[3]), .ZN(n632) );
  INVX0 U17 ( .INP(n632), .ZN(n633) );
  INVX0 U18 ( .INP(n632), .ZN(n634) );
  INVX0 U19 ( .INP(n637), .ZN(n635) );
  INVX0 U20 ( .INP(n1), .ZN(n636) );
  INVX0 U21 ( .INP(n693), .ZN(n637) );
  INVX0 U22 ( .INP(datin[5]), .ZN(n638) );
  INVX0 U23 ( .INP(datin[0]), .ZN(n639) );
  INVX0 U24 ( .INP(n639), .ZN(n640) );
  INVX0 U25 ( .INP(n639), .ZN(n641) );
  INVX0 U26 ( .INP(n668), .ZN(n642) );
  INVX0 U27 ( .INP(datin[3]), .ZN(n643) );
  INVX0 U28 ( .INP(n643), .ZN(n644) );
  INVX0 U29 ( .INP(datin[1]), .ZN(n645) );
  INVX0 U30 ( .INP(n645), .ZN(n646) );
  INVX0 U31 ( .INP(n666), .ZN(n647) );
  INVX0 U32 ( .INP(n647), .ZN(n648) );
  INVX0 U33 ( .INP(n647), .ZN(n649) );
  INVX0 U34 ( .INP(n666), .ZN(n650) );
  INVX0 U35 ( .INP(n650), .ZN(n651) );
  INVX0 U36 ( .INP(n650), .ZN(n652) );
  INVX0 U37 ( .INP(n664), .ZN(n653) );
  INVX0 U38 ( .INP(n642), .ZN(n654) );
  INVX0 U39 ( .INP(n667), .ZN(n655) );
  INVX0 U40 ( .INP(datin[5]), .ZN(n656) );
  INVX0 U41 ( .INP(n638), .ZN(n657) );
  INVX0 U42 ( .INP(n656), .ZN(n658) );
  INVX0 U43 ( .INP(n656), .ZN(n659) );
  INVX0 U44 ( .INP(datin[2]), .ZN(n660) );
  INVX0 U45 ( .INP(n660), .ZN(n661) );
  INVX0 U46 ( .INP(n637), .ZN(n662) );
  INVX0 U47 ( .INP(n660), .ZN(n663) );
  INVX0 U48 ( .INP(n668), .ZN(n664) );
  INVX0 U49 ( .INP(n642), .ZN(n665) );
  INVX0 U50 ( .INP(n664), .ZN(n666) );
  INVX0 U51 ( .INP(reset_n), .ZN(n667) );
  INVX0 U52 ( .INP(n667), .ZN(n668) );
  AND2X4 U53 ( .IN1(n87), .IN2(n816), .Q(n67) );
  INVX0 U54 ( .INP(n67), .ZN(n669) );
  AND2X4 U55 ( .IN1(n748), .IN2(n819), .Q(n68) );
  INVX0 U56 ( .INP(n68), .ZN(n670) );
  AND2X4 U57 ( .IN1(n742), .IN2(n818), .Q(n75) );
  INVX0 U58 ( .INP(n75), .ZN(n671) );
  NAND3X1 U59 ( .IN1(n679), .IN2(n84), .IN3(n737), .QN(N211) );
  OAI22X2 U60 ( .IN1(n800), .IN2(n780), .IN3(n809), .IN4(n831), .QN(n672) );
  NAND3X1 U61 ( .IN1(n44), .IN2(n46), .IN3(n45), .QN(N214) );
  INVX0 U64 ( .INP(n18), .ZN(n673) );
  AND2X4 U67 ( .IN1(n15), .IN2(n823), .Q(n26) );
  INVX0 U68 ( .INP(n26), .ZN(n674) );
  INVX0 U70 ( .INP(n673), .ZN(n675) );
  NAND3X4 U71 ( .IN1(n834), .IN2(n744), .IN3(n635), .QN(n34) );
  AND3X1 U75 ( .IN1(n624), .IN2(n829), .IN3(n832), .Q(n24) );
  AND2X4 U76 ( .IN1(n6), .IN2(n721), .Q(n71) );
  INVX0 U78 ( .INP(n71), .ZN(n676) );
  AND2X4 U79 ( .IN1(n10), .IN2(n742), .Q(n52) );
  INVX0 U84 ( .INP(n52), .ZN(n677) );
  AND2X4 U86 ( .IN1(n3), .IN2(n773), .Q(n72) );
  INVX0 U87 ( .INP(n72), .ZN(n678) );
  OAI221X1 U90 ( .IN1(n820), .IN2(n670), .IN3(n750), .IN4(n809), .IN5(n91), 
        .QN(n83) );
  INVX0 U91 ( .INP(n83), .ZN(n679) );
  INVX0 U93 ( .INP(n672), .ZN(n680) );
  AND2X4 U94 ( .IN1(n10), .IN2(n798), .Q(n69) );
  INVX0 U95 ( .INP(n69), .ZN(n681) );
  AND2X4 U96 ( .IN1(n644), .IN2(datin[4]), .Q(n39) );
  INVX0 U97 ( .INP(n39), .ZN(n682) );
  AND2X4 U98 ( .IN1(n797), .IN2(n815), .Q(n54) );
  INVX0 U99 ( .INP(n54), .ZN(n683) );
  AND2X4 U100 ( .IN1(n692), .IN2(n829), .Q(n66) );
  INVX0 U102 ( .INP(n66), .ZN(n684) );
  AND3X1 U103 ( .IN1(n740), .IN2(n745), .IN3(n788), .Q(n59) );
  INVX0 U104 ( .INP(n59), .ZN(n685) );
  AND2X4 U105 ( .IN1(n748), .IN2(n741), .Q(n55) );
  INVX0 U106 ( .INP(n55), .ZN(n686) );
  INVX0 U107 ( .INP(n689), .ZN(n687) );
  INVX0 U108 ( .INP(n687), .ZN(n688) );
  OAI22X2 U109 ( .IN1(n762), .IN2(n802), .IN3(n830), .IN4(n752), .QN(n60) );
  INVX0 U110 ( .INP(n60), .ZN(n689) );
  AND2X4 U111 ( .IN1(n85), .IN2(n815), .Q(n74) );
  INVX0 U112 ( .INP(n74), .ZN(n690) );
  AND3X1 U113 ( .IN1(n743), .IN2(n787), .IN3(n681), .Q(n56) );
  INVX0 U114 ( .INP(n56), .ZN(n691) );
  AND2X4 U115 ( .IN1(n646), .IN2(n18), .Q(n48) );
  INVX0 U116 ( .INP(n48), .ZN(n692) );
  INVX0 U117 ( .INP(n838), .ZN(n693) );
  INVX0 U118 ( .INP(n693), .ZN(n694) );
  INVX0 U119 ( .INP(n78), .ZN(n695) );
  INVX0 U120 ( .INP(n695), .ZN(n696) );
  AND4X4 U121 ( .IN1(n676), .IN2(n93), .IN3(n92), .IN4(n678), .Q(n78) );
  AND2X4 U122 ( .IN1(n677), .IN2(n810), .Q(n51) );
  INVX0 U123 ( .INP(n725), .ZN(n697) );
  INVX0 U124 ( .INP(n697), .ZN(n698) );
  NAND3X1 U125 ( .IN1(n679), .IN2(n86), .IN3(n725), .QN(N210) );
  AND2X4 U126 ( .IN1(n646), .IN2(n640), .Q(n699) );
  AND2X4 U127 ( .IN1(n794), .IN2(n818), .Q(n700) );
  AND2X4 U128 ( .IN1(n822), .IN2(n845), .Q(n50) );
  AND2X4 U129 ( .IN1(n797), .IN2(n819), .Q(n701) );
  AND2X4 U130 ( .IN1(n88), .IN2(n798), .Q(n702) );
  INVX0 U131 ( .INP(n670), .ZN(n703) );
  XNOR2X2 U132 ( .IN1(n659), .IN2(n739), .Q(n27) );
  INVX0 U133 ( .INP(n754), .ZN(n704) );
  AND2X4 U134 ( .IN1(n39), .IN2(n795), .Q(n705) );
  AND2X4 U135 ( .IN1(n816), .IN2(n794), .Q(n706) );
  INVX0 U136 ( .INP(n87), .ZN(n707) );
  INVX0 U137 ( .INP(n671), .ZN(n708) );
  INVX0 U138 ( .INP(n669), .ZN(n709) );
  INVX0 U139 ( .INP(n88), .ZN(n710) );
  INVX0 U140 ( .INP(n85), .ZN(n711) );
  INVX0 U141 ( .INP(n690), .ZN(n712) );
  INVX0 U142 ( .INP(n691), .ZN(n713) );
  INVX0 U143 ( .INP(n38), .ZN(n714) );
  INVX0 U144 ( .INP(n6), .ZN(n715) );
  INVX0 U145 ( .INP(n3), .ZN(n716) );
  INVX0 U146 ( .INP(n45), .ZN(n717) );
  AND4X4 U147 ( .IN1(n676), .IN2(n70), .IN3(n678), .IN4(n680), .Q(n45) );
  INVX0 U148 ( .INP(n784), .ZN(n718) );
  INVX0 U149 ( .INP(n737), .ZN(n719) );
  INVX0 U150 ( .INP(n728), .ZN(n720) );
  AND2X4 U151 ( .IN1(n683), .IN2(n754), .Q(n49) );
  INVX0 U152 ( .INP(n779), .ZN(n721) );
  INVX0 U153 ( .INP(n721), .ZN(n722) );
  INVX0 U154 ( .INP(n11), .ZN(n723) );
  INVX0 U155 ( .INP(n723), .ZN(n724) );
  OAI221X1 U156 ( .IN1(n747), .IN2(n669), .IN3(n760), .IN4(n671), .IN5(n715), 
        .QN(n77) );
  INVX0 U157 ( .INP(n77), .ZN(n725) );
  INVX0 U158 ( .INP(n718), .ZN(n726) );
  INVX0 U159 ( .INP(n833), .ZN(n727) );
  INVX0 U160 ( .INP(n727), .ZN(n728) );
  INVX0 U161 ( .INP(n720), .ZN(n729) );
  INVX0 U162 ( .INP(n717), .ZN(n730) );
  INVX0 U163 ( .INP(n808), .ZN(n731) );
  INVX0 U164 ( .INP(n731), .ZN(n732) );
  INVX0 U165 ( .INP(n715), .ZN(n733) );
  INVX0 U166 ( .INP(n716), .ZN(n734) );
  INVX0 U167 ( .INP(n713), .ZN(n735) );
  INVX0 U168 ( .INP(n835), .ZN(n736) );
  NAND3X4 U169 ( .IN1(n780), .IN2(n837), .IN3(n828), .QN(n33) );
  OAI222X1 U170 ( .IN1(n820), .IN2(n786), .IN3(n14), .IN4(n677), .IN5(n840), 
        .IN6(n788), .QN(n79) );
  INVX0 U171 ( .INP(n79), .ZN(n737) );
  INVX0 U172 ( .INP(n719), .ZN(n738) );
  INVX0 U173 ( .INP(n714), .ZN(n739) );
  INVX0 U174 ( .INP(n712), .ZN(n740) );
  INVX0 U175 ( .INP(n710), .ZN(n741) );
  INVX0 U176 ( .INP(n711), .ZN(n742) );
  INVX0 U177 ( .INP(n709), .ZN(n743) );
  INVX0 U178 ( .INP(n750), .ZN(n744) );
  INVX0 U179 ( .INP(n708), .ZN(n745) );
  INVX0 U180 ( .INP(n16), .ZN(n746) );
  INVX0 U181 ( .INP(n746), .ZN(n747) );
  INVX0 U182 ( .INP(n707), .ZN(n748) );
  INVX0 U183 ( .INP(n840), .ZN(n749) );
  INVX0 U184 ( .INP(n674), .ZN(n750) );
  INVX0 U185 ( .INP(n824), .ZN(n751) );
  INVX0 U186 ( .INP(n706), .ZN(n752) );
  INVX0 U187 ( .INP(n686), .ZN(n753) );
  INVX0 U188 ( .INP(n753), .ZN(n754) );
  INVX0 U189 ( .INP(n704), .ZN(n755) );
  INVX0 U190 ( .INP(n705), .ZN(n756) );
  INVX0 U191 ( .INP(n705), .ZN(n757) );
  INVX0 U192 ( .INP(n15), .ZN(n758) );
  INVX0 U193 ( .INP(n758), .ZN(n759) );
  INVX0 U194 ( .INP(n758), .ZN(n760) );
  INVX0 U195 ( .INP(n843), .ZN(n761) );
  INVX0 U196 ( .INP(n761), .ZN(n762) );
  INVX0 U197 ( .INP(n761), .ZN(n763) );
  INVX0 U198 ( .INP(n822), .ZN(n764) );
  INVX0 U199 ( .INP(n764), .ZN(n765) );
  INVX0 U200 ( .INP(n41), .ZN(n766) );
  INVX0 U201 ( .INP(n766), .ZN(n767) );
  INVX0 U202 ( .INP(n837), .ZN(n768) );
  INVX0 U203 ( .INP(n2), .ZN(n769) );
  INVX0 U204 ( .INP(n2), .ZN(n770) );
  INVX0 U205 ( .INP(n41), .ZN(n771) );
  INVX0 U206 ( .INP(n771), .ZN(n772) );
  INVX0 U207 ( .INP(n771), .ZN(n773) );
  INVX0 U208 ( .INP(n42), .ZN(n774) );
  INVX0 U209 ( .INP(n42), .ZN(n775) );
  INVX0 U210 ( .INP(n43), .ZN(n776) );
  INVX0 U211 ( .INP(n43), .ZN(n777) );
  INVX0 U212 ( .INP(n844), .ZN(n778) );
  INVX0 U213 ( .INP(n778), .ZN(n779) );
  INVX0 U214 ( .INP(n778), .ZN(n780) );
  INVX0 U215 ( .INP(n8), .ZN(n781) );
  INVX0 U216 ( .INP(n781), .ZN(n782) );
  INVX0 U217 ( .INP(n702), .ZN(n783) );
  INVX0 U218 ( .INP(n702), .ZN(n784) );
  NAND3X4 U219 ( .IN1(n8), .IN2(n838), .IN3(n728), .QN(n32) );
  INVX0 U220 ( .INP(n681), .ZN(n785) );
  INVX0 U221 ( .INP(n785), .ZN(n786) );
  INVX0 U222 ( .INP(n703), .ZN(n787) );
  AND2X4 U223 ( .IN1(n741), .IN2(n795), .Q(n76) );
  INVX0 U224 ( .INP(n76), .ZN(n788) );
  INVX0 U225 ( .INP(n76), .ZN(n789) );
  OA222X2 U226 ( .IN1(n805), .IN2(n789), .IN3(n842), .IN4(n786), .IN5(n751), 
        .IN6(n686), .Q(n86) );
  INVX0 U227 ( .INP(n9), .ZN(n790) );
  INVX0 U228 ( .INP(n790), .ZN(n791) );
  INVX0 U229 ( .INP(n790), .ZN(n792) );
  INVX0 U230 ( .INP(n89), .ZN(n793) );
  INVX0 U231 ( .INP(n793), .ZN(n794) );
  INVX0 U232 ( .INP(n793), .ZN(n795) );
  INVX0 U233 ( .INP(n82), .ZN(n796) );
  INVX0 U234 ( .INP(n796), .ZN(n797) );
  INVX0 U235 ( .INP(n796), .ZN(n798) );
  INVX0 U236 ( .INP(n683), .ZN(n799) );
  INVX0 U237 ( .INP(n799), .ZN(n800) );
  INVX0 U238 ( .INP(n625), .ZN(n801) );
  INVX0 U239 ( .INP(n701), .ZN(n802) );
  INVX0 U240 ( .INP(n701), .ZN(n803) );
  INVX0 U241 ( .INP(n50), .ZN(n804) );
  INVX0 U242 ( .INP(n804), .ZN(n805) );
  INVX0 U243 ( .INP(n804), .ZN(n806) );
  INVX0 U244 ( .INP(n28), .ZN(n807) );
  INVX0 U245 ( .INP(n807), .ZN(n808) );
  INVX0 U246 ( .INP(n700), .ZN(n809) );
  INVX0 U247 ( .INP(n700), .ZN(n810) );
  INVX0 U248 ( .INP(n763), .ZN(n811) );
  INVX0 U249 ( .INP(n839), .ZN(n812) );
  INVX0 U250 ( .INP(n812), .ZN(n813) );
  AND2X4 U251 ( .IN1(n644), .IN2(n11), .Q(n42) );
  INVX0 U252 ( .INP(n774), .ZN(n814) );
  INVX0 U253 ( .INP(n774), .ZN(n815) );
  INVX0 U254 ( .INP(n775), .ZN(n816) );
  INVX0 U255 ( .INP(n776), .ZN(n817) );
  INVX0 U256 ( .INP(n776), .ZN(n818) );
  INVX0 U257 ( .INP(n777), .ZN(n819) );
  INVX0 U258 ( .INP(n746), .ZN(n820) );
  INVX0 U259 ( .INP(n692), .ZN(n821) );
  INVX0 U260 ( .INP(n821), .ZN(n822) );
  INVX0 U261 ( .INP(n821), .ZN(n823) );
  INVX0 U262 ( .INP(n14), .ZN(n824) );
  INVX0 U263 ( .INP(n824), .ZN(n825) );
  INVX0 U264 ( .INP(n769), .ZN(n826) );
  INVX0 U265 ( .INP(n770), .ZN(n827) );
  INVX0 U266 ( .INP(n769), .ZN(n828) );
  INVX0 U267 ( .INP(n772), .ZN(n829) );
  INVX0 U268 ( .INP(n773), .ZN(n830) );
  INVX0 U269 ( .INP(n772), .ZN(n831) );
  INVX0 U270 ( .INP(n27), .ZN(n832) );
  INVX0 U271 ( .INP(n828), .ZN(n833) );
  INVX0 U272 ( .INP(n27), .ZN(n834) );
  INVX0 U273 ( .INP(n12), .ZN(n835) );
  INVX0 U274 ( .INP(n768), .ZN(n836) );
  INVX0 U275 ( .INP(n835), .ZN(n837) );
  INVX0 U276 ( .INP(n768), .ZN(n838) );
  NAND3X4 U277 ( .IN1(n661), .IN2(n720), .IN3(n808), .QN(n31) );
  INVX0 U278 ( .INP(n760), .ZN(n839) );
  INVX0 U279 ( .INP(n813), .ZN(n840) );
  INVX0 U280 ( .INP(n813), .ZN(n841) );
  INVX0 U281 ( .INP(n749), .ZN(n842) );
  INVX0 U282 ( .INP(n699), .ZN(n843) );
  INVX0 U283 ( .INP(n811), .ZN(n844) );
  INVX0 U284 ( .INP(n811), .ZN(n845) );
  OA21X1 U285 ( .IN1(n751), .IN2(n801), .IN3(n680), .Q(n81) );
  OA21X1 U286 ( .IN1(n841), .IN2(n690), .IN3(n78), .Q(n91) );
  INVX0 U287 ( .INP(n674), .ZN(n14) );
  INVX0 U288 ( .INP(n803), .ZN(n3) );
  INVX0 U289 ( .INP(n757), .ZN(n7) );
  NOR2X0 U290 ( .IN1(n13), .IN2(n826), .QN(n37) );
  INVX0 U291 ( .INP(n752), .ZN(n6) );
  INVX0 U292 ( .INP(n684), .ZN(n16) );
  INVX0 U293 ( .INP(n28), .ZN(n8) );
  INVX0 U294 ( .INP(n73), .ZN(n15) );
  NAND2X0 U295 ( .IN1(n691), .IN2(n684), .QN(n64) );
  OA21X1 U296 ( .IN1(n66), .IN2(n756), .IN3(n689), .Q(n93) );
  INVX0 U297 ( .INP(n832), .ZN(n2) );
  NOR2X0 U298 ( .IN1(n814), .IN2(n817), .QN(n38) );
  NAND2X0 U299 ( .IN1(n73), .IN2(n685), .QN(n70) );
  INVX0 U300 ( .INP(n685), .ZN(n5) );
  NOR2X0 U301 ( .IN1(n736), .IN2(n792), .QN(n87) );
  INVX0 U302 ( .INP(n843), .ZN(n13) );
  OA21X1 U303 ( .IN1(n9), .IN2(n38), .IN3(n682), .Q(n28) );
  INVX0 U304 ( .INP(n682), .ZN(n10) );
  NOR2X0 U305 ( .IN1(n836), .IN2(n658), .QN(n82) );
  INVX0 U306 ( .INP(n661), .ZN(n12) );
  NOR2X0 U307 ( .IN1(n631), .IN2(n675), .QN(n73) );
  NOR2X0 U308 ( .IN1(n633), .IN2(n724), .QN(n43) );
  INVX0 U309 ( .INP(n640), .ZN(n18) );
  NOR2X0 U310 ( .IN1(n24), .IN2(n25), .QN(n22) );
  INVX0 U311 ( .INP(rdispin), .ZN(n1) );
  INVX0 U312 ( .INP(datin[4]), .ZN(n11) );
  NOR2X0 U313 ( .IN1(n767), .IN2(n729), .QN(n40) );
  NOR2X0 U314 ( .IN1(n662), .IN2(n791), .QN(n89) );
  NOR2X0 U315 ( .IN1(n641), .IN2(n630), .QN(n41) );
  NOR2X0 U316 ( .IN1(n663), .IN2(n657), .QN(n85) );
  INVX0 U317 ( .INP(n628), .ZN(n9) );
  NOR2X0 U318 ( .IN1(n627), .IN2(n634), .QN(n88) );
endmodule


module dff_width8 ( d, reset_n, clk, q, test_si2, test_si1, test_se );
  input [7:0] d;
  output [7:0] q;
  input reset_n, clk, test_si2, test_si1, test_se;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29;

  SDFFARX1 \q_reg[6]  ( .D(d[6]), .SI(test_si2), .SE(test_se), .CLK(clk), 
        .RSTB(n22), .Q(q[6]) );
  SDFFARX1 \q_reg[5]  ( .D(d[5]), .SI(q[4]), .SE(test_se), .CLK(clk), .RSTB(
        n28), .Q(q[5]) );
  SDFFARX1 \q_reg[3]  ( .D(d[3]), .SI(q[2]), .SE(test_se), .CLK(clk), .RSTB(
        n24), .Q(q[3]) );
  SDFFARX1 \q_reg[2]  ( .D(d[2]), .SI(q[1]), .SE(test_se), .CLK(clk), .RSTB(
        n23), .Q(q[2]) );
  SDFFARX1 \q_reg[1]  ( .D(d[1]), .SI(q[0]), .SE(test_se), .CLK(clk), .RSTB(
        n27), .Q(q[1]) );
  SDFFARX1 \q_reg[0]  ( .D(d[0]), .SI(test_si1), .SE(test_se), .CLK(clk), 
        .RSTB(n25), .Q(q[0]) );
  SDFFARX1 \q_reg[4]  ( .D(d[4]), .SI(q[3]), .SE(test_se), .CLK(clk), .RSTB(
        n29), .Q(q[4]) );
  SDFFARX1 \q_reg[7]  ( .D(d[7]), .SI(q[6]), .SE(test_se), .CLK(clk), .RSTB(
        n17), .Q(q[7]) );
  INVX0 U3 ( .INP(n18), .ZN(n15) );
  INVX0 U4 ( .INP(n15), .ZN(n16) );
  INVX0 U5 ( .INP(n26), .ZN(n17) );
  INVX0 U6 ( .INP(n26), .ZN(n18) );
  INVX0 U7 ( .INP(n16), .ZN(n19) );
  INVX0 U8 ( .INP(n16), .ZN(n20) );
  INVX0 U9 ( .INP(n18), .ZN(n21) );
  INVX0 U10 ( .INP(n20), .ZN(n22) );
  INVX0 U11 ( .INP(n19), .ZN(n23) );
  INVX0 U12 ( .INP(n20), .ZN(n24) );
  INVX0 U13 ( .INP(n15), .ZN(n25) );
  INVX0 U14 ( .INP(reset_n), .ZN(n26) );
  INVX0 U15 ( .INP(n21), .ZN(n27) );
  INVX0 U16 ( .INP(n19), .ZN(n28) );
  INVX0 U17 ( .INP(n21), .ZN(n29) );
endmodule


module control ( data, code_err1, code_err2, kout1, kout2, rdispin, clk, 
        reset_n, kout, code_err, rdispout, test_si1, test_se );
  input [7:0] data;
  input code_err1, code_err2, kout1, kout2, rdispin, clk, reset_n, test_si1,
         test_se;
  output kout, code_err, rdispout;
  wire   N26, N27, N39, n1, n3, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n19, n21, n22, n23, n25, n26, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155;

  NOR3X0 U17 ( .IN1(n121), .IN2(n122), .IN3(n128), .QN(N39) );
  SDFFARX1 kout_reg ( .D(N27), .SI(code_err), .SE(test_se), .CLK(clk), .RSTB(
        n118), .Q(kout) );
  SDFFARX1 code_err_reg ( .D(N26), .SI(test_si1), .SE(test_se), .CLK(clk), 
        .RSTB(n117), .Q(code_err) );
  SDFFARX1 rdispout_reg ( .D(N39), .SI(kout2), .SE(test_se), .CLK(clk), .RSTB(
        n119), .Q(rdispout) );
  INVX0 U3 ( .INP(n142), .ZN(n108) );
  INVX0 U4 ( .INP(n134), .ZN(n109) );
  OAI22X2 U5 ( .IN1(n1), .IN2(n3), .IN3(n12), .IN4(n145), .QN(n132) );
  INVX0 U6 ( .INP(n116), .ZN(n110) );
  INVX0 U7 ( .INP(n110), .ZN(n111) );
  INVX0 U8 ( .INP(n1), .ZN(n112) );
  INVX0 U9 ( .INP(n6), .ZN(n113) );
  INVX0 U10 ( .INP(n11), .ZN(n114) );
  INVX0 U11 ( .INP(n12), .ZN(n115) );
  INVX0 U12 ( .INP(reset_n), .ZN(n116) );
  INVX0 U13 ( .INP(n111), .ZN(n117) );
  INVX0 U14 ( .INP(n111), .ZN(n118) );
  INVX0 U15 ( .INP(n116), .ZN(n119) );
  INVX0 U16 ( .INP(n19), .ZN(n120) );
  XNOR3X2 U18 ( .IN1(n115), .IN2(n146), .IN3(n150), .Q(n13) );
  INVX0 U19 ( .INP(n13), .ZN(n121) );
  OAI22X2 U20 ( .IN1(n134), .IN2(n19), .IN3(n124), .IN4(n123), .QN(n14) );
  INVX0 U21 ( .INP(n14), .ZN(n122) );
  OAI22X2 U22 ( .IN1(n6), .IN2(n8), .IN3(n152), .IN4(n5), .QN(n23) );
  INVX0 U23 ( .INP(n23), .ZN(n123) );
  OAI22X2 U24 ( .IN1(n10), .IN2(n11), .IN3(n142), .IN4(n9), .QN(n22) );
  INVX0 U25 ( .INP(n22), .ZN(n124) );
  INVX0 U26 ( .INP(n123), .ZN(n125) );
  INVX0 U27 ( .INP(n124), .ZN(n126) );
  OR2X4 U28 ( .IN1(code_err1), .IN2(code_err2), .Q(N26) );
  OR2X4 U29 ( .IN1(kout1), .IN2(kout2), .Q(N27) );
  INVX0 U30 ( .INP(n125), .ZN(n127) );
  XNOR2X2 U31 ( .IN1(n16), .IN2(n17), .Q(n15) );
  INVX0 U32 ( .INP(n15), .ZN(n128) );
  XNOR3X2 U33 ( .IN1(n144), .IN2(n153), .IN3(n138), .Q(n21) );
  XNOR2X2 U34 ( .IN1(n114), .IN2(n148), .Q(n129) );
  XNOR2X2 U35 ( .IN1(n155), .IN2(n141), .Q(n130) );
  INVX0 U36 ( .INP(n3), .ZN(n131) );
  XNOR2X2 U37 ( .IN1(n127), .IN2(n140), .Q(n19) );
  INVX0 U38 ( .INP(n109), .ZN(n133) );
  INVX0 U39 ( .INP(n132), .ZN(n134) );
  INVX0 U40 ( .INP(n8), .ZN(n135) );
  INVX0 U41 ( .INP(n135), .ZN(n136) );
  INVX0 U42 ( .INP(n131), .ZN(n137) );
  INVX0 U43 ( .INP(n130), .ZN(n138) );
  INVX0 U44 ( .INP(n130), .ZN(n139) );
  INVX0 U45 ( .INP(n126), .ZN(n140) );
  INVX0 U46 ( .INP(n108), .ZN(n141) );
  INVX0 U47 ( .INP(n129), .ZN(n142) );
  INVX0 U48 ( .INP(n5), .ZN(n143) );
  INVX0 U49 ( .INP(n143), .ZN(n144) );
  INVX0 U50 ( .INP(n26), .ZN(n145) );
  INVX0 U51 ( .INP(n145), .ZN(n146) );
  INVX0 U52 ( .INP(n10), .ZN(n147) );
  INVX0 U53 ( .INP(n147), .ZN(n148) );
  INVX0 U54 ( .INP(n21), .ZN(n149) );
  INVX0 U55 ( .INP(n149), .ZN(n150) );
  INVX0 U56 ( .INP(n149), .ZN(n151) );
  INVX0 U57 ( .INP(n25), .ZN(n152) );
  INVX0 U58 ( .INP(n152), .ZN(n153) );
  INVX0 U59 ( .INP(n9), .ZN(n154) );
  INVX0 U60 ( .INP(n154), .ZN(n155) );
  XNOR2X2 U61 ( .IN1(n112), .IN2(n137), .Q(n26) );
  XNOR2X2 U62 ( .IN1(n113), .IN2(n136), .Q(n25) );
  NOR2X0 U63 ( .IN1(n139), .IN2(n151), .QN(n16) );
  NOR2X0 U64 ( .IN1(n133), .IN2(n120), .QN(n17) );
  INVX0 U65 ( .INP(data[7]), .ZN(n1) );
  INVX0 U66 ( .INP(rdispin), .ZN(n12) );
  INVX0 U67 ( .INP(data[0]), .ZN(n11) );
  INVX0 U68 ( .INP(data[4]), .ZN(n6) );
  INVX0 U69 ( .INP(data[2]), .ZN(n9) );
  INVX0 U70 ( .INP(data[1]), .ZN(n10) );
  INVX0 U71 ( .INP(data[3]), .ZN(n8) );
  INVX0 U72 ( .INP(data[5]), .ZN(n5) );
  INVX0 U73 ( .INP(data[6]), .ZN(n3) );
endmodule


module dff_width1_1 ( d, reset_n, clk, q, test_si, test_se );
  input [0:0] d;
  output [0:0] q;
  input reset_n, clk, test_si, test_se;


  SDFFARX1 \q_reg[0]  ( .D(d[0]), .SI(test_si), .SE(test_se), .CLK(clk), 
        .RSTB(reset_n), .Q(q[0]) );
endmodule


module decoder ( datin, rdispin, clk, reset_n, code_err, kout, disp_err, 
        rdispout, datout, test_si3, test_si2, test_si1, test_so1, test_se );
  input [9:0] datin;
  output [7:0] datout;
  input rdispin, clk, reset_n, test_si3, test_si2, test_si1, test_se;
  output code_err, kout, disp_err, rdispout, test_so1;
  wire   rdispin_dff, kout1, code_err1, kout2, code_err2, disp_err_dff, n28,
         n29, n30, n31, n32, n33, n34, n35;
  wire   [9:0] datin_dff;
  wire   [2:0] out4b;
  wire   [4:0] out6b;
  assign test_so1 = rdispin_dff;

  dff_width10 dff_data_in ( .d(datin), .reset_n(n34), .clk(clk), .q(datin_dff), 
        .test_si(test_si2), .test_se(test_se) );
  dff_width1_0 dff_rdispin ( .d(rdispin), .reset_n(n32), .clk(clk), .q(
        rdispin_dff), .test_si(datout[7]), .test_se(test_se) );
  dec4b dec_4b_3b ( .clk(clk), .reset_n(n29), .datin(datin_dff[3:0]), 
        .code_err1(code_err1), .kout1(kout1), .datout(out4b), .test_si(kout), 
        .test_se(test_se) );
  dec6b dec_6b_5b ( .clk(clk), .reset_n(n34), .rdispin(rdispin_dff), .datin(
        datin_dff[9:4]), .code_err2(code_err2), .disp_err(disp_err_dff), 
        .kout2(kout2), .datout(out6b), .test_si(kout1), .test_se(test_se) );
  dff_width1_1 dff_disp_err ( .d(disp_err_dff), .reset_n(n33), .clk(clk), .q(
        disp_err), .test_si(datin[7]), .test_se(test_se) );
  dff_width8 dff_data_out ( .d({out4b, out6b}), .reset_n(n35), .clk(clk), .q(
        datout), .test_si2(test_si3), .test_si1(datin_dff[9]), .test_se(
        test_se) );
  control ctrl ( .data({out4b, out6b}), .code_err1(code_err1), .code_err2(
        code_err2), .kout1(kout1), .kout2(kout2), .rdispin(rdispin_dff), .clk(
        clk), .reset_n(n29), .kout(kout), .code_err(code_err), .rdispout(
        rdispout), .test_si1(test_si1), .test_se(test_se) );
  INVX0 U1 ( .INP(n35), .ZN(n28) );
  INVX0 U2 ( .INP(n28), .ZN(n29) );
  INVX0 U3 ( .INP(reset_n), .ZN(n30) );
  INVX0 U4 ( .INP(reset_n), .ZN(n31) );
  INVX0 U5 ( .INP(n30), .ZN(n32) );
  INVX0 U6 ( .INP(n30), .ZN(n33) );
  INVX0 U7 ( .INP(n31), .ZN(n34) );
  INVX0 U8 ( .INP(n31), .ZN(n35) );
endmodule


module deserializer ( clk, reset_n, datin, datout, test_si2, test_si1, test_se
 );
  output [9:0] datout;
  input clk, reset_n, datin, test_si2, test_si1, test_se;
  wire   N28, N29, N30, n16, n29, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n98, n107, n109, n111, n113, n115, n117, n119, n121, n123, n125,
         n204, n7, n8, n9, n13, n15, n17, n18, n20, n22, n24, n25, n27, n28,
         n32, n33, n44, n45, n46, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n346;

  AND3X1 U39 ( .IN1(n29), .IN2(n332), .IN3(n336), .Q(n20) );
  AO21X1 U45 ( .IN1(n8), .IN2(n324), .IN3(n9), .Q(N30) );
  SDFFARX1 \datout_reg[1]  ( .D(n42), .SI(datout[0]), .SE(test_se), .CLK(clk), 
        .RSTB(n265), .Q(datout[1]), .QN(n117) );
  SDFFARX1 \datout_reg[7]  ( .D(n36), .SI(datout[6]), .SE(test_se), .CLK(clk), 
        .RSTB(n268), .Q(datout[7]), .QN(n115) );
  SDFFARX1 \datout_reg[8]  ( .D(n35), .SI(test_si2), .SE(test_se), .CLK(clk), 
        .RSTB(n273), .Q(datout[8]), .QN(n121) );
  SDFFARX1 \datout_reg[0]  ( .D(n43), .SI(n346), .SE(test_se), .CLK(clk), 
        .RSTB(n271), .Q(datout[0]), .QN(n119) );
  SDFFARX1 \datout_reg[9]  ( .D(n34), .SI(datout[8]), .SE(test_se), .CLK(clk), 
        .RSTB(n276), .Q(datout[9]), .QN(n107) );
  SDFFARX1 \datout_reg[5]  ( .D(n38), .SI(datout[4]), .SE(test_se), .CLK(clk), 
        .RSTB(n264), .Q(datout[5]), .QN(n125) );
  SDFFARX1 \datout_reg[4]  ( .D(n39), .SI(datout[3]), .SE(test_se), .CLK(clk), 
        .RSTB(n274), .Q(datout[4]), .QN(n123) );
  SDFFARX1 \bit_count_reg[3]  ( .D(N30), .SI(n13), .SE(test_se), .CLK(clk), 
        .RSTB(n266), .Q(n346), .QN(n29) );
  SDFFARX1 \datout_reg[2]  ( .D(n41), .SI(datout[1]), .SE(test_se), .CLK(clk), 
        .RSTB(n277), .Q(datout[2]), .QN(n113) );
  SDFFARX1 \datout_reg[6]  ( .D(n37), .SI(datout[5]), .SE(test_se), .CLK(clk), 
        .RSTB(n255), .Q(datout[6]), .QN(n111) );
  SDFFARX1 \datout_reg[3]  ( .D(n40), .SI(datout[2]), .SE(test_se), .CLK(clk), 
        .RSTB(n269), .Q(datout[3]), .QN(n109) );
  SDFFARX1 \bit_count_reg[1]  ( .D(N28), .SI(n300), .SE(test_se), .CLK(clk), 
        .RSTB(n278), .Q(n15), .QN(n16) );
  SDFFARX1 \bit_count_reg[2]  ( .D(N29), .SI(n15), .SE(test_se), .CLK(clk), 
        .RSTB(n267), .Q(n13), .QN(n98) );
  SDFFARX1 \bit_count_reg[0]  ( .D(n311), .SI(test_si1), .SE(test_se), .CLK(
        clk), .RSTB(n272), .Q(n300), .QN(n204) );
  INVX0 U3 ( .INP(n279), .ZN(n253) );
  INVX0 U4 ( .INP(n253), .ZN(n254) );
  INVX0 U5 ( .INP(n253), .ZN(n255) );
  INVX0 U6 ( .INP(n270), .ZN(n256) );
  INVX0 U7 ( .INP(n256), .ZN(n257) );
  INVX0 U8 ( .INP(n256), .ZN(n258) );
  INVX0 U9 ( .INP(n270), .ZN(n259) );
  INVX0 U10 ( .INP(n259), .ZN(n260) );
  INVX0 U11 ( .INP(n259), .ZN(n261) );
  INVX0 U12 ( .INP(n279), .ZN(n262) );
  INVX0 U13 ( .INP(reset_n), .ZN(n263) );
  INVX0 U14 ( .INP(n275), .ZN(n264) );
  INVX0 U15 ( .INP(n275), .ZN(n265) );
  INVX0 U16 ( .INP(n261), .ZN(n266) );
  INVX0 U17 ( .INP(n260), .ZN(n267) );
  INVX0 U18 ( .INP(n261), .ZN(n268) );
  INVX0 U19 ( .INP(n260), .ZN(n269) );
  INVX0 U20 ( .INP(n254), .ZN(n270) );
  INVX0 U21 ( .INP(n258), .ZN(n271) );
  INVX0 U22 ( .INP(n257), .ZN(n272) );
  INVX0 U23 ( .INP(n258), .ZN(n273) );
  INVX0 U24 ( .INP(n257), .ZN(n274) );
  INVX0 U25 ( .INP(n254), .ZN(n275) );
  INVX0 U26 ( .INP(n262), .ZN(n276) );
  INVX0 U27 ( .INP(n263), .ZN(n277) );
  INVX0 U28 ( .INP(n262), .ZN(n278) );
  INVX0 U29 ( .INP(n263), .ZN(n279) );
  AND2X4 U30 ( .IN1(n8), .IN2(n307), .Q(n45) );
  INVX0 U31 ( .INP(n45), .ZN(n280) );
  OAI22X1 U32 ( .IN1(n111), .IN2(n27), .IN3(n281), .IN4(n315), .QN(n37) );
  INVX0 U33 ( .INP(n27), .ZN(n281) );
  NAND3X4 U34 ( .IN1(n326), .IN2(n321), .IN3(n313), .QN(n33) );
  OAI21X2 U35 ( .IN1(n327), .IN2(n32), .IN3(n33), .QN(N29) );
  XNOR2X2 U36 ( .IN1(n204), .IN2(n308), .Q(n46) );
  INVX0 U37 ( .INP(n46), .ZN(n282) );
  AND2X4 U38 ( .IN1(n22), .IN2(n336), .Q(n283) );
  AND2X4 U40 ( .IN1(n335), .IN2(n323), .Q(n284) );
  OAI22X1 U41 ( .IN1(n109), .IN2(n283), .IN3(n292), .IN4(n342), .QN(n40) );
  OAI22X1 U42 ( .IN1(n107), .IN2(n284), .IN3(n289), .IN4(n316), .QN(n34) );
  AND2X4 U43 ( .IN1(n20), .IN2(n339), .Q(n285) );
  AND2X4 U44 ( .IN1(n311), .IN2(n324), .Q(n286) );
  OAI22X1 U46 ( .IN1(n125), .IN2(n285), .IN3(n291), .IN4(n317), .QN(n38) );
  OAI22X1 U47 ( .IN1(n121), .IN2(n286), .IN3(n295), .IN4(n17), .QN(n35) );
  AND2X4 U48 ( .IN1(n22), .IN2(n337), .Q(n287) );
  OAI22X1 U49 ( .IN1(n113), .IN2(n287), .IN3(n294), .IN4(n315), .QN(n41) );
  OAI22X1 U50 ( .IN1(n123), .IN2(n25), .IN3(n290), .IN4(n317), .QN(n39) );
  AND2X4 U51 ( .IN1(n20), .IN2(n327), .Q(n288) );
  OAI22X1 U52 ( .IN1(n117), .IN2(n288), .IN3(n293), .IN4(n316), .QN(n42) );
  OAI22X1 U53 ( .IN1(n119), .IN2(n18), .IN3(n297), .IN4(n341), .QN(n43) );
  INVX0 U54 ( .INP(n284), .ZN(n289) );
  INVX0 U55 ( .INP(n25), .ZN(n290) );
  INVX0 U56 ( .INP(n285), .ZN(n291) );
  INVX0 U57 ( .INP(n283), .ZN(n292) );
  AND3X1 U58 ( .IN1(n16), .IN2(n340), .IN3(n337), .Q(n25) );
  INVX0 U59 ( .INP(n288), .ZN(n293) );
  INVX0 U60 ( .INP(n287), .ZN(n294) );
  INVX0 U61 ( .INP(n286), .ZN(n295) );
  AND3X1 U62 ( .IN1(n320), .IN2(n339), .IN3(n313), .Q(n28) );
  INVX0 U63 ( .INP(n28), .ZN(n296) );
  AND3X1 U64 ( .IN1(n309), .IN2(n340), .IN3(n7), .Q(n27) );
  OAI22X2 U65 ( .IN1(n115), .IN2(n28), .IN3(n342), .IN4(n296), .QN(n36) );
  INVX0 U66 ( .INP(n18), .ZN(n297) );
  AND4X4 U67 ( .IN1(n326), .IN2(n29), .IN3(n307), .IN4(n332), .Q(n18) );
  INVX0 U68 ( .INP(n320), .ZN(n298) );
  INVX0 U69 ( .INP(n321), .ZN(n299) );
  INVX0 U70 ( .INP(n338), .ZN(n301) );
  INVX0 U71 ( .INP(n301), .ZN(n302) );
  INVX0 U72 ( .INP(n44), .ZN(n303) );
  INVX0 U73 ( .INP(n303), .ZN(n304) );
  INVX0 U74 ( .INP(n303), .ZN(n305) );
  INVX0 U75 ( .INP(n300), .ZN(n306) );
  INVX0 U76 ( .INP(n300), .ZN(n307) );
  INVX0 U77 ( .INP(n298), .ZN(n308) );
  INVX0 U78 ( .INP(n299), .ZN(n309) );
  INVX0 U79 ( .INP(n7), .ZN(n310) );
  INVX0 U80 ( .INP(n310), .ZN(n311) );
  INVX0 U81 ( .INP(n335), .ZN(n312) );
  INVX0 U82 ( .INP(n312), .ZN(n313) );
  INVX0 U83 ( .INP(n341), .ZN(n314) );
  INVX0 U84 ( .INP(n314), .ZN(n315) );
  INVX0 U85 ( .INP(n314), .ZN(n316) );
  INVX0 U86 ( .INP(n328), .ZN(n317) );
  INVX0 U87 ( .INP(n13), .ZN(n318) );
  INVX0 U88 ( .INP(n15), .ZN(n319) );
  INVX0 U89 ( .INP(n319), .ZN(n320) );
  INVX0 U90 ( .INP(n319), .ZN(n321) );
  INVX0 U91 ( .INP(n346), .ZN(n322) );
  INVX0 U92 ( .INP(n322), .ZN(n323) );
  INVX0 U93 ( .INP(n322), .ZN(n324) );
  INVX0 U94 ( .INP(n98), .ZN(n325) );
  INVX0 U95 ( .INP(n325), .ZN(n326) );
  INVX0 U96 ( .INP(n325), .ZN(n327) );
  INVX0 U97 ( .INP(n17), .ZN(n328) );
  INVX0 U98 ( .INP(n44), .ZN(n329) );
  INVX0 U99 ( .INP(n329), .ZN(n330) );
  INVX0 U100 ( .INP(n16), .ZN(n331) );
  INVX0 U101 ( .INP(n331), .ZN(n332) );
  INVX0 U102 ( .INP(n331), .ZN(n333) );
  INVX0 U103 ( .INP(n24), .ZN(n334) );
  INVX0 U104 ( .INP(n334), .ZN(n335) );
  INVX0 U105 ( .INP(n334), .ZN(n336) );
  INVX0 U106 ( .INP(n310), .ZN(n337) );
  INVX0 U107 ( .INP(n98), .ZN(n338) );
  INVX0 U108 ( .INP(n318), .ZN(n339) );
  INVX0 U109 ( .INP(n318), .ZN(n340) );
  INVX0 U110 ( .INP(datin), .ZN(n341) );
  INVX0 U111 ( .INP(n328), .ZN(n342) );
  INVX0 U115 ( .INP(n330), .ZN(n8) );
  INVX0 U116 ( .INP(n296), .ZN(n9) );
  INVX0 U117 ( .INP(n280), .ZN(n7) );
  OA21X1 U118 ( .IN1(n338), .IN2(n309), .IN3(n323), .Q(n44) );
  NOR2X0 U119 ( .IN1(n304), .IN2(n306), .QN(n24) );
  OA21X1 U120 ( .IN1(n330), .IN2(n15), .IN3(n280), .Q(n32) );
  INVX0 U121 ( .INP(datin), .ZN(n17) );
  NOR2X0 U122 ( .IN1(n305), .IN2(n282), .QN(N28) );
  NOR2X0 U123 ( .IN1(n302), .IN2(n333), .QN(n22) );
endmodule


module receiver ( sclk, pclk, reset_n, sdata, rdispin, pdata, kout, code_err, 
        rdispout, disp_err, test_si4, test_si3, test_si2, test_si1, test_so1, 
        test_se );
  output [7:0] pdata;
  input sclk, pclk, reset_n, sdata, rdispin, test_si4, test_si3, test_si2,
         test_si1, test_se;
  output kout, code_err, rdispout, disp_err, test_so1;
  wire   n4, n5, n6, n8;
  wire   [9:0] datin;
  assign test_so1 = datin[9];

  decoder dec ( .datin(datin), .rdispin(rdispin), .clk(pclk), .reset_n(n6), 
        .code_err(code_err), .kout(kout), .disp_err(disp_err), .rdispout(
        rdispout), .datout(pdata), .test_si3(test_si3), .test_si2(test_si2), 
        .test_si1(test_si1), .test_so1(n8), .test_se(test_se) );
  deserializer ds ( .clk(sclk), .reset_n(n5), .datin(sdata), .datout(datin), 
        .test_si2(test_si4), .test_si1(n8), .test_se(test_se) );
  INVX0 U1 ( .INP(reset_n), .ZN(n4) );
  INVX0 U2 ( .INP(n4), .ZN(n5) );
  INVX0 U3 ( .INP(n4), .ZN(n6) );
endmodule


module mux2to1_2 ( A, B, sel, out );
  input A, B, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MUX21X2 U1 ( .IN1(A), .IN2(B), .S(N0), .Q(out) );
endmodule


module system ( data_in_8b, kin, rdispout, k_err, pdata, kout, code_err, 
        disp_err, fun_sclk, fun_pclk, scan_clk, fun_rst_n, scan_rst, test_mode, 
        scan_en, scan_in_1, scan_out_1, scan_in_2, scan_out_2, scan_in_3, 
        scan_out_3, scan_in_4, scan_out_4, scan_in_5, scan_out_5 );
  input [7:0] data_in_8b;
  output [7:0] pdata;
  input kin, fun_sclk, fun_pclk, scan_clk, fun_rst_n, scan_rst, test_mode,
         scan_en, scan_in_1, scan_in_2, scan_in_3, scan_in_4, scan_in_5;
  output rdispout, k_err, kout, code_err, disp_err, scan_out_1, scan_out_2,
         scan_out_3, scan_out_4, scan_out_5;
  wire   sclk, pclk, reset_n, rdispout_trans, data_out_s, n1, n2, n12, n13,
         n14, n15, n16, n17, n18, n19, n23, n28, n30, n32, n34;

  mux2to1_1 sclk_mux ( .A(fun_sclk), .B(n14), .sel(n19), .out(sclk) );
  mux2to1_2 pclk_mux ( .A(fun_pclk), .B(n13), .sel(n18), .out(pclk) );
  mux2to1_0 rst_mux ( .A(fun_rst_n), .B(scan_rst), .sel(n17), .out(reset_n) );
  transmitter transmitter ( .sclk(sclk), .pclk(pclk), .reset_n(reset_n), 
        .data_in_8b(data_in_8b), .kin(kin), .rdispout(rdispout_trans), .k_err(
        k_err), .data_out_s(data_out_s), .test_si2(scan_in_5), .test_si1(n23), 
        .test_so1(scan_out_4), .test_se(scan_en) );
  receiver receiver ( .sclk(sclk), .pclk(pclk), .reset_n(reset_n), .sdata(
        data_out_s), .rdispin(rdispout_trans), .pdata(pdata), .kout(kout), 
        .code_err(code_err), .rdispout(rdispout), .disp_err(disp_err), 
        .test_si4(scan_in_4), .test_si3(scan_in_3), .test_si2(scan_in_2), 
        .test_si1(scan_in_1), .test_so1(n23), .test_se(scan_en) );
  DELLN2X2 U1 ( .INP(n12), .Z(n1) );
  DELLN2X2 U2 ( .INP(n12), .Z(n2) );
  INVX0 U12 ( .INP(scan_clk), .ZN(n12) );
  INVX0 U13 ( .INP(n2), .ZN(n13) );
  INVX0 U14 ( .INP(n1), .ZN(n14) );
  INVX0 U3 ( .INP(test_mode), .ZN(n15) );
  INVX0 U4 ( .INP(test_mode), .ZN(n16) );
  INVX0 U5 ( .INP(n15), .ZN(n17) );
  INVX0 U6 ( .INP(n16), .ZN(n18) );
  INVX0 U7 ( .INP(n15), .ZN(n19) );
  INVX32 U8 ( .INP(disp_err), .ZN(n28) );
  INVX32 U9 ( .INP(n28), .ZN(scan_out_3) );
  INVX32 U10 ( .INP(pdata[5]), .ZN(n30) );
  INVX32 U11 ( .INP(n30), .ZN(scan_out_2) );
  INVX32 U15 ( .INP(k_err), .ZN(n32) );
  INVX32 U16 ( .INP(n32), .ZN(scan_out_5) );
  INVX32 U17 ( .INP(rdispout), .ZN(n34) );
  INVX32 U18 ( .INP(n34), .ZN(scan_out_1) );
endmodule


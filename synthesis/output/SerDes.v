/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Tue Aug 26 08:01:05 2025
/////////////////////////////////////////////////////////////


module mux2to1_1 ( A, B, sel, out );
  input A, B, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MUX21X2 U1 ( .IN1(A), .IN2(B), .S(N0), .Q(out) );
endmodule


module mux2to1_2 ( A, B, sel, out );
  input A, B, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MUX21X2 U1 ( .IN1(A), .IN2(B), .S(N0), .Q(out) );
endmodule


module mux2to1_0 ( A, B, sel, out );
  input A, B, sel;
  output out;
  wire   N0, n5, n1, n3, n4;
  assign N0 = sel;

  INVX0 U1 ( .INP(n1), .ZN(out) );
  INVX0 U2 ( .INP(n3), .ZN(n1) );
  MUX21X2 U3 ( .IN1(A), .IN2(B), .S(N0), .Q(n5) );
  DELLN1X2 U4 ( .INP(n4), .Z(n3) );
  DELLN3X2 U5 ( .INP(n5), .Z(n4) );
endmodule


module serializer ( data_in, clk, data_out, reset_n, valid );
  input [9:0] data_in;
  input clk, reset_n, valid;
  output data_out;
  wire   n188, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n1, n2, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n186, n187;

  AO22X1 U3 ( .IN1(n61), .IN2(n68), .IN3(n4), .IN4(n141), .Q(n31) );
  AO21X1 U5 ( .IN1(n129), .IN2(n59), .IN3(n9), .Q(n32) );
  AO21X1 U7 ( .IN1(n71), .IN2(n30), .IN3(n135), .Q(n6) );
  AO22X1 U8 ( .IN1(n67), .IN2(n65), .IN3(n13), .IN4(n119), .Q(n33) );
  AO21X1 U9 ( .IN1(n79), .IN2(n56), .IN3(n81), .Q(n13) );
  INVX0 U12 ( .INP(n38), .ZN(n12) );
  AO22X1 U14 ( .IN1(n72), .IN2(n18), .IN3(n19), .IN4(n138), .Q(n17) );
  NAND2X0 U17 ( .IN1(n22), .IN2(n23), .QN(n21) );
  AO22X1 U20 ( .IN1(data_in[7]), .IN2(n63), .IN3(data_in[3]), .IN4(n80), .Q(
        n20) );
  NAND2X0 U22 ( .IN1(n26), .IN2(n27), .QN(n25) );
  NOR2X0 U24 ( .IN1(n166), .IN2(n155), .QN(n7) );
  AO22X1 U26 ( .IN1(data_in[6]), .IN2(n58), .IN3(data_in[2]), .IN4(n74), .Q(
        n24) );
  INVX0 U27 ( .INP(n75), .ZN(n15) );
  NAND2X0 U29 ( .IN1(n118), .IN2(n57), .QN(n11) );
  NAND2X0 U31 ( .IN1(n123), .IN2(n60), .QN(n28) );
  DFFARX2 data_out_reg ( .D(n37), .CLK(clk), .RSTB(n41), .Q(n188), .QN(n184)
         );
  DFFARX2 \counter_reg[1]  ( .D(n32), .CLK(clk), .RSTB(n48), .Q(n8), .QN(n29)
         );
  DFFARX2 \counter_reg[0]  ( .D(n34), .CLK(clk), .RSTB(n47), .Q(n10), .QN(n35)
         );
  DFFARX2 \counter_reg[2]  ( .D(n31), .CLK(clk), .RSTB(n46), .Q(n5), .QN(n36)
         );
  DFFARX2 \counter_reg[3]  ( .D(n33), .CLK(clk), .RSTB(n40), .Q(n14), .QN(n30)
         );
  DELLN2X2 U4 ( .INP(n39), .Z(n1) );
  DELLN2X2 U6 ( .INP(n39), .Z(n2) );
  DELLN2X2 U10 ( .INP(valid), .Z(n38) );
  DELLN2X2 U11 ( .INP(valid), .Z(n39) );
  DELLN2X2 U13 ( .INP(n45), .Z(n40) );
  DELLN2X2 U15 ( .INP(n45), .Z(n41) );
  DELLN2X2 U16 ( .INP(reset_n), .Z(n42) );
  DELLN2X2 U18 ( .INP(n42), .Z(n43) );
  DELLN2X2 U19 ( .INP(n42), .Z(n44) );
  DELLN2X2 U21 ( .INP(n44), .Z(n45) );
  DELLN2X2 U23 ( .INP(n43), .Z(n46) );
  DELLN2X2 U25 ( .INP(n44), .Z(n47) );
  DELLN2X2 U28 ( .INP(n43), .Z(n48) );
  NAND3X1 U30 ( .IN1(n73), .IN2(n158), .IN3(data_in[1]), .QN(n23) );
  AO221X2 U32 ( .IN1(n24), .IN2(n77), .IN3(n120), .IN4(data_in[8]), .IN5(n25), 
        .Q(n18) );
  AO221X2 U33 ( .IN1(n20), .IN2(n78), .IN3(n117), .IN4(data_in[9]), .IN5(n21), 
        .Q(n19) );
  NAND3X1 U34 ( .IN1(n53), .IN2(n28), .IN3(n1), .QN(n16) );
  NAND3X1 U35 ( .IN1(n62), .IN2(n126), .IN3(data_in[0]), .QN(n27) );
  DELLN2X2 U36 ( .INP(n169), .Z(n49) );
  DELLN2X2 U37 ( .INP(n169), .Z(n50) );
  DELLN2X2 U38 ( .INP(n137), .Z(n51) );
  DELLN2X2 U39 ( .INP(n137), .Z(n52) );
  AO22X1 U40 ( .IN1(n52), .IN2(n82), .IN3(n70), .IN4(n132), .Q(n34) );
  DELLN2X2 U41 ( .INP(n11), .Z(n53) );
  DELLN2X2 U42 ( .INP(n11), .Z(n54) );
  DELLN2X2 U43 ( .INP(n170), .Z(n55) );
  DELLN2X2 U44 ( .INP(n170), .Z(n56) );
  DELLN2X2 U45 ( .INP(n140), .Z(n57) );
  DELLN2X2 U46 ( .INP(n140), .Z(n58) );
  DELLN2X2 U47 ( .INP(n168), .Z(n59) );
  DELLN2X2 U48 ( .INP(n168), .Z(n60) );
  DELLN2X2 U49 ( .INP(n175), .Z(n61) );
  DELLN2X2 U50 ( .INP(n175), .Z(n62) );
  DELLN2X2 U51 ( .INP(n182), .Z(n63) );
  DELLN2X2 U52 ( .INP(n182), .Z(n64) );
  DELLN2X2 U53 ( .INP(n183), .Z(n65) );
  DELLN2X2 U54 ( .INP(n183), .Z(n66) );
  DELLN2X2 U55 ( .INP(n3), .Z(n67) );
  DELLN2X2 U56 ( .INP(n3), .Z(n68) );
  DELLN2X2 U57 ( .INP(n15), .Z(n69) );
  DELLN2X2 U58 ( .INP(n15), .Z(n70) );
  DELLN2X2 U59 ( .INP(n160), .Z(n71) );
  DELLN2X2 U60 ( .INP(n160), .Z(n72) );
  DELLN2X2 U61 ( .INP(n173), .Z(n73) );
  DELLN2X2 U62 ( .INP(n173), .Z(n74) );
  DELLN2X2 U63 ( .INP(n16), .Z(n75) );
  DELLN2X2 U64 ( .INP(n16), .Z(n76) );
  AO22X2 U65 ( .IN1(n76), .IN2(n187), .IN3(n69), .IN4(n17), .Q(n37) );
  DELLN2X2 U66 ( .INP(n167), .Z(n77) );
  DELLN2X2 U67 ( .INP(n167), .Z(n78) );
  DELLN2X2 U68 ( .INP(n174), .Z(n79) );
  DELLN2X2 U69 ( .INP(n174), .Z(n80) );
  DELLN2X2 U70 ( .INP(n164), .Z(n81) );
  DELLN2X2 U71 ( .INP(n164), .Z(n82) );
  DELLN2X2 U72 ( .INP(n162), .Z(n83) );
  DELLN2X2 U73 ( .INP(n162), .Z(n84) );
  DELLN2X2 U74 ( .INP(n154), .Z(n85) );
  DELLN2X2 U75 ( .INP(n154), .Z(n86) );
  DELLN2X2 U76 ( .INP(n159), .Z(n87) );
  DELLN2X2 U77 ( .INP(n159), .Z(n88) );
  DELLN2X2 U78 ( .INP(n151), .Z(n89) );
  DELLN2X2 U79 ( .INP(n151), .Z(n90) );
  DELLN2X2 U80 ( .INP(n152), .Z(n91) );
  DELLN2X2 U81 ( .INP(n152), .Z(n92) );
  DELLN2X2 U82 ( .INP(n148), .Z(n93) );
  DELLN2X2 U83 ( .INP(n148), .Z(n94) );
  DELLN2X2 U84 ( .INP(n149), .Z(n95) );
  DELLN2X2 U85 ( .INP(n149), .Z(n96) );
  DELLN2X2 U86 ( .INP(n145), .Z(n97) );
  DELLN2X2 U87 ( .INP(n145), .Z(n98) );
  DELLN2X2 U88 ( .INP(n146), .Z(n99) );
  DELLN2X2 U89 ( .INP(n146), .Z(n100) );
  DELLN2X2 U90 ( .INP(n142), .Z(n101) );
  DELLN2X2 U91 ( .INP(n142), .Z(n102) );
  DELLN2X2 U92 ( .INP(n143), .Z(n103) );
  DELLN2X2 U93 ( .INP(n143), .Z(n104) );
  DELLN2X2 U94 ( .INP(n136), .Z(n105) );
  DELLN2X2 U95 ( .INP(n136), .Z(n106) );
  DELLN2X2 U96 ( .INP(n139), .Z(n107) );
  DELLN2X2 U97 ( .INP(n139), .Z(n108) );
  DELLN2X2 U98 ( .INP(n130), .Z(n109) );
  DELLN2X2 U99 ( .INP(n130), .Z(n110) );
  DELLN2X2 U100 ( .INP(n133), .Z(n111) );
  DELLN2X2 U101 ( .INP(n133), .Z(n112) );
  DELLN2X2 U102 ( .INP(n121), .Z(n113) );
  DELLN2X2 U103 ( .INP(n121), .Z(n114) );
  DELLN2X2 U104 ( .INP(n127), .Z(n115) );
  DELLN2X2 U105 ( .INP(n127), .Z(n116) );
  DELLN2X2 U106 ( .INP(n178), .Z(n117) );
  DELLN2X2 U107 ( .INP(n178), .Z(n118) );
  DELLN2X2 U108 ( .INP(n156), .Z(n119) );
  DELLN2X2 U109 ( .INP(n156), .Z(n120) );
  INVX0 U110 ( .INP(n179), .ZN(n121) );
  INVX0 U111 ( .INP(n114), .ZN(n122) );
  INVX0 U112 ( .INP(n113), .ZN(n123) );
  DELLN2X2 U113 ( .INP(n29), .Z(n124) );
  DELLN2X2 U114 ( .INP(n157), .Z(n125) );
  DELLN2X2 U115 ( .INP(n157), .Z(n126) );
  INVX0 U116 ( .INP(n6), .ZN(n127) );
  INVX0 U117 ( .INP(n115), .ZN(n128) );
  INVX0 U118 ( .INP(n116), .ZN(n129) );
  INVX0 U119 ( .INP(n161), .ZN(n130) );
  INVX0 U120 ( .INP(n109), .ZN(n131) );
  INVX0 U121 ( .INP(n110), .ZN(n132) );
  INVX0 U122 ( .INP(n163), .ZN(n133) );
  INVX0 U123 ( .INP(n112), .ZN(n134) );
  INVX0 U124 ( .INP(n111), .ZN(n135) );
  INVX0 U125 ( .INP(n10), .ZN(n136) );
  INVX0 U126 ( .INP(n105), .ZN(n137) );
  INVX0 U127 ( .INP(n106), .ZN(n138) );
  INVX0 U128 ( .INP(n181), .ZN(n139) );
  INVX0 U129 ( .INP(n107), .ZN(n140) );
  INVX0 U130 ( .INP(n108), .ZN(n141) );
  INVX0 U131 ( .INP(n176), .ZN(n142) );
  INVX0 U132 ( .INP(n101), .ZN(n143) );
  INVX0 U133 ( .INP(n102), .ZN(n144) );
  INVX0 U134 ( .INP(n180), .ZN(n145) );
  INVX0 U135 ( .INP(n97), .ZN(n146) );
  INVX0 U136 ( .INP(n98), .ZN(n147) );
  INVX0 U137 ( .INP(n165), .ZN(n148) );
  INVX0 U138 ( .INP(n93), .ZN(n149) );
  INVX0 U139 ( .INP(n94), .ZN(n150) );
  INVX0 U140 ( .INP(n172), .ZN(n151) );
  INVX0 U141 ( .INP(n89), .ZN(n152) );
  INVX0 U142 ( .INP(n90), .ZN(n153) );
  INVX0 U143 ( .INP(n177), .ZN(n154) );
  INVX0 U144 ( .INP(n85), .ZN(n155) );
  INVX0 U145 ( .INP(n86), .ZN(n156) );
  DELLN2X2 U146 ( .INP(n7), .Z(n157) );
  DELLN2X2 U147 ( .INP(n7), .Z(n158) );
  OR2X4 U148 ( .IN1(n125), .IN2(n128), .Q(n4) );
  INVX0 U149 ( .INP(n35), .ZN(n159) );
  INVX0 U150 ( .INP(n87), .ZN(n160) );
  INVX0 U151 ( .INP(n88), .ZN(n161) );
  INVX0 U152 ( .INP(n12), .ZN(n162) );
  INVX0 U153 ( .INP(n84), .ZN(n163) );
  INVX0 U154 ( .INP(n83), .ZN(n164) );
  INVX0 U155 ( .INP(n8), .ZN(n165) );
  INVX0 U156 ( .INP(n95), .ZN(n166) );
  INVX0 U157 ( .INP(n96), .ZN(n167) );
  INVX0 U158 ( .INP(n150), .ZN(n168) );
  DELLN2X2 U159 ( .INP(n29), .Z(n169) );
  DELLN2X2 U160 ( .INP(n124), .Z(n170) );
  DELLN2X2 U161 ( .INP(n124), .Z(n171) );
  AND4X4 U162 ( .IN1(n50), .IN2(n54), .IN3(n51), .IN4(n2), .Q(n9) );
  NAND3X4 U163 ( .IN1(n49), .IN2(data_in[4]), .IN3(n66), .QN(n26) );
  NAND3X4 U164 ( .IN1(n55), .IN2(data_in[5]), .IN3(n64), .QN(n22) );
  NOR4X1 U165 ( .IN1(n134), .IN2(n122), .IN3(n131), .IN4(n171), .QN(n3) );
  INVX0 U166 ( .INP(n36), .ZN(n172) );
  INVX0 U167 ( .INP(n153), .ZN(n173) );
  INVX0 U168 ( .INP(n92), .ZN(n174) );
  INVX0 U169 ( .INP(n91), .ZN(n175) );
  INVX0 U170 ( .INP(n14), .ZN(n176) );
  INVX0 U171 ( .INP(n103), .ZN(n177) );
  INVX0 U172 ( .INP(n144), .ZN(n178) );
  INVX0 U173 ( .INP(n104), .ZN(n179) );
  INVX0 U174 ( .INP(n5), .ZN(n180) );
  INVX0 U175 ( .INP(n99), .ZN(n181) );
  INVX0 U176 ( .INP(n100), .ZN(n182) );
  INVX0 U177 ( .INP(n147), .ZN(n183) );
  INVX0 U178 ( .INP(n184), .ZN(data_out) );
  INVX0 U179 ( .INP(n188), .ZN(n186) );
  INVX0 U180 ( .INP(n186), .ZN(n187) );
endmodule


module dff_enc_0 ( rst_n, d, clk, q );
  input [0:0] d;
  output [0:0] q;
  input rst_n, clk;


  DFFARX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .RSTB(rst_n), .Q(q[0]) );
endmodule


module dff_enc_2 ( rst_n, d, clk, q );
  input [0:0] d;
  output [0:0] q;
  input rst_n, clk;


  DFFARX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .RSTB(rst_n), .Q(q[0]) );
endmodule


module dff_enc_1 ( rst_n, d, clk, q );
  input [0:0] d;
  output [0:0] q;
  input rst_n, clk;


  DFFARX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .RSTB(rst_n), .Q(q[0]) );
endmodule


module dff_enc_WIDTH8 ( rst_n, d, clk, q );
  input [7:0] d;
  output [7:0] q;
  input rst_n, clk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  DFFARX1 \q_reg[7]  ( .D(d[7]), .CLK(clk), .RSTB(n7), .Q(q[7]) );
  DFFARX1 \q_reg[6]  ( .D(d[6]), .CLK(clk), .RSTB(n13), .Q(q[6]) );
  DFFARX1 \q_reg[5]  ( .D(d[5]), .CLK(clk), .RSTB(n9), .Q(q[5]) );
  DFFARX1 \q_reg[4]  ( .D(d[4]), .CLK(clk), .RSTB(n12), .Q(q[4]) );
  DFFARX1 \q_reg[3]  ( .D(d[3]), .CLK(clk), .RSTB(n11), .Q(q[3]) );
  DFFARX1 \q_reg[2]  ( .D(d[2]), .CLK(clk), .RSTB(n14), .Q(q[2]) );
  DFFARX1 \q_reg[1]  ( .D(d[1]), .CLK(clk), .RSTB(n10), .Q(q[1]) );
  DFFARX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .RSTB(n8), .Q(q[0]) );
  DELLN2X2 U3 ( .INP(rst_n), .Z(n1) );
  DELLN2X2 U4 ( .INP(rst_n), .Z(n2) );
  DELLN2X2 U5 ( .INP(n2), .Z(n3) );
  DELLN2X2 U6 ( .INP(n1), .Z(n4) );
  DELLN2X2 U7 ( .INP(n2), .Z(n5) );
  DELLN2X2 U8 ( .INP(n1), .Z(n6) );
  DELLN2X2 U9 ( .INP(n4), .Z(n7) );
  DELLN2X2 U10 ( .INP(n3), .Z(n8) );
  DELLN2X2 U11 ( .INP(n6), .Z(n9) );
  DELLN2X2 U12 ( .INP(n5), .Z(n10) );
  DELLN2X2 U13 ( .INP(n6), .Z(n11) );
  DELLN2X2 U14 ( .INP(n5), .Z(n12) );
  DELLN2X2 U15 ( .INP(n4), .Z(n13) );
  DELLN2X2 U16 ( .INP(n3), .Z(n14) );
endmodule


module dff_enc_WIDTH10 ( rst_n, d, clk, q );
  input [9:0] d;
  output [9:0] q;
  input rst_n, clk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;

  DFFARX1 \q_reg[9]  ( .D(d[9]), .CLK(clk), .RSTB(n13), .Q(q[9]) );
  DFFARX1 \q_reg[8]  ( .D(d[8]), .CLK(clk), .RSTB(n10), .Q(q[8]) );
  DFFARX1 \q_reg[7]  ( .D(d[7]), .CLK(clk), .RSTB(n14), .Q(q[7]) );
  DFFARX1 \q_reg[6]  ( .D(d[6]), .CLK(clk), .RSTB(n11), .Q(q[6]) );
  DFFARX1 \q_reg[5]  ( .D(d[5]), .CLK(clk), .RSTB(n15), .Q(q[5]) );
  DFFARX1 \q_reg[4]  ( .D(d[4]), .CLK(clk), .RSTB(n9), .Q(q[4]) );
  DFFARX1 \q_reg[3]  ( .D(d[3]), .CLK(clk), .RSTB(n7), .Q(q[3]) );
  DFFARX1 \q_reg[2]  ( .D(d[2]), .CLK(clk), .RSTB(n12), .Q(q[2]) );
  DFFARX1 \q_reg[1]  ( .D(d[1]), .CLK(clk), .RSTB(n6), .Q(q[1]) );
  DFFARX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .RSTB(n8), .Q(q[0]) );
  DELLN2X2 U3 ( .INP(n16), .Z(n1) );
  DELLN2X2 U4 ( .INP(n18), .Z(n2) );
  DELLN2X2 U5 ( .INP(rst_n), .Z(n3) );
  DELLN2X2 U6 ( .INP(n17), .Z(n4) );
  DELLN2X2 U7 ( .INP(n17), .Z(n5) );
  DELLN2X2 U8 ( .INP(n1), .Z(n6) );
  DELLN2X2 U9 ( .INP(n1), .Z(n7) );
  DELLN2X2 U10 ( .INP(n16), .Z(n8) );
  DELLN2X2 U11 ( .INP(n2), .Z(n9) );
  DELLN2X2 U12 ( .INP(n2), .Z(n10) );
  DELLN2X2 U13 ( .INP(n18), .Z(n11) );
  DELLN2X2 U14 ( .INP(n5), .Z(n12) );
  DELLN2X2 U15 ( .INP(n4), .Z(n13) );
  DELLN2X2 U16 ( .INP(n5), .Z(n14) );
  DELLN2X2 U17 ( .INP(n4), .Z(n15) );
  DELLN2X2 U18 ( .INP(n3), .Z(n16) );
  DELLN2X2 U19 ( .INP(n3), .Z(n17) );
  DELLN2X2 U20 ( .INP(rst_n), .Z(n18) );
endmodule


module enc_3b ( datain, rdispin, kin, disparity_6b, ones_counter_4b, 
        disparity_4b, dataout );
  input [2:0] datain;
  input [2:0] disparity_6b;
  output [1:0] ones_counter_4b;
  output [2:0] disparity_4b;
  output [3:0] dataout;
  input rdispin, kin;
  wire   n317, n318, n319, n320, n321, n322, N55, N56, N65, N66, N74, N75, N76,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, N83, N82, N77, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n77, n78, n80, n82, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n314, n315, n316;

  INVX0 U3 ( .INP(n68), .ZN(n29) );
  NOR2X0 U4 ( .IN1(n192), .IN2(n64), .QN(n42) );
  INVX0 U6 ( .INP(n65), .ZN(n30) );
  NOR2X0 U7 ( .IN1(n263), .IN2(n279), .QN(n49) );
  INVX0 U8 ( .INP(n16), .ZN(n50) );
  NOR2X0 U10 ( .IN1(n66), .IN2(n69), .QN(n41) );
  NAND2X0 U12 ( .IN1(n27), .IN2(n26), .QN(n53) );
  INVX0 U13 ( .INP(n198), .ZN(n33) );
  OA21X1 U16 ( .IN1(n193), .IN2(n100), .IN3(n28), .Q(n32) );
  NOR2X0 U18 ( .IN1(n67), .IN2(n195), .QN(n51) );
  NAND2X0 U19 ( .IN1(n31), .IN2(n94), .QN(n46) );
  NAND4X0 U20 ( .IN1(n204), .IN2(n33), .IN3(n32), .IN4(n211), .QN(n322) );
  NAND2X0 U23 ( .IN1(n35), .IN2(n34), .QN(n52) );
  INVX0 U24 ( .INP(n200), .ZN(n39) );
  NAND2X0 U25 ( .IN1(n119), .IN2(n107), .QN(n44) );
  OA21X1 U27 ( .IN1(n102), .IN2(n97), .IN3(n36), .Q(n38) );
  NAND2X0 U29 ( .IN1(n37), .IN2(n93), .QN(n47) );
  NAND4X0 U30 ( .IN1(n203), .IN2(n39), .IN3(n38), .IN4(n207), .QN(n321) );
  NAND2X0 U31 ( .IN1(n110), .IN2(n108), .QN(n48) );
  NAND4X0 U34 ( .IN1(n48), .IN2(n208), .IN3(n210), .IN4(n45), .QN(n320) );
  NOR2X0 U37 ( .IN1(n197), .IN2(n201), .QN(n54) );
  NAND4X0 U38 ( .IN1(n124), .IN2(n56), .IN3(n57), .IN4(n54), .QN(n319) );
  INVX0 U39 ( .INP(n122), .ZN(N76) );
  NOR2X0 U41 ( .IN1(n22), .IN2(n306), .QN(n58) );
  NOR2X0 U43 ( .IN1(n21), .IN2(n25), .QN(n61) );
  INVX0 U44 ( .INP(n242), .ZN(N55) );
  INVX0 U46 ( .INP(n24), .ZN(n60) );
  INVX0 U47 ( .INP(n292), .ZN(N65) );
  NAND2X0 U48 ( .IN1(n118), .IN2(n20), .QN(N66) );
  NOR3X0 U49 ( .IN1(disparity_6b[2]), .IN2(disparity_6b[1]), .IN3(
        disparity_6b[0]), .QN(n59) );
  AO221X2 U11 ( .IN1(n58), .IN2(n23), .IN3(n117), .IN4(n222), .IN5(n213), .Q(
        N75) );
  DELLN2X2 U14 ( .INP(n73), .Z(n3) );
  DELLN2X2 U15 ( .INP(n73), .Z(n4) );
  DELLN2X2 U17 ( .INP(n72), .Z(n5) );
  DELLN2X2 U21 ( .INP(n72), .Z(n6) );
  DELLN2X2 U22 ( .INP(n71), .Z(n7) );
  DELLN2X2 U26 ( .INP(n71), .Z(n8) );
  DELLN2X2 U28 ( .INP(n17), .Z(n9) );
  DELLN2X2 U32 ( .INP(n17), .Z(n10) );
  DELLN2X2 U33 ( .INP(n18), .Z(n11) );
  DELLN2X2 U35 ( .INP(n19), .Z(n12) );
  DELLN2X2 U36 ( .INP(kin), .Z(n13) );
  DELLN2X2 U40 ( .INP(rdispin), .Z(n14) );
  DELLN2X2 U42 ( .INP(datain[0]), .Z(n15) );
  DELLN2X2 U45 ( .INP(n70), .Z(n16) );
  DELLN2X2 U50 ( .INP(n70), .Z(n17) );
  DELLN2X2 U51 ( .INP(datain[2]), .Z(n18) );
  DELLN2X2 U52 ( .INP(datain[1]), .Z(n19) );
  DELLN2X2 U53 ( .INP(kin), .Z(n20) );
  DELLN2X2 U54 ( .INP(n13), .Z(n21) );
  DELLN2X2 U55 ( .INP(n13), .Z(n22) );
  DELLN2X2 U56 ( .INP(n14), .Z(n23) );
  DELLN2X2 U57 ( .INP(rdispin), .Z(n24) );
  DELLN2X2 U58 ( .INP(n14), .Z(n25) );
  DELLN2X2 U59 ( .INP(n15), .Z(n62) );
  DELLN2X2 U60 ( .INP(n15), .Z(n63) );
  DELLN2X2 U61 ( .INP(n11), .Z(n64) );
  DELLN2X2 U62 ( .INP(n18), .Z(n65) );
  DELLN2X2 U63 ( .INP(n11), .Z(n66) );
  DELLN2X2 U64 ( .INP(n12), .Z(n67) );
  DELLN2X2 U65 ( .INP(n19), .Z(n68) );
  DELLN2X2 U66 ( .INP(n12), .Z(n69) );
  DELLN2X2 U67 ( .INP(n62), .Z(n70) );
  DELLN2X2 U68 ( .INP(n63), .Z(n71) );
  DELLN2X2 U69 ( .INP(n62), .Z(n72) );
  DELLN2X2 U70 ( .INP(n63), .Z(n73) );
  AO22X1 U71 ( .IN1(n82), .IN2(n75), .IN3(n78), .IN4(n219), .Q(n74) );
  AND2X1 U72 ( .IN1(n80), .IN2(n224), .Q(n314) );
  NAND3X1 U73 ( .IN1(n90), .IN2(n121), .IN3(n10), .QN(n28) );
  DELLN2X2 U74 ( .INP(n266), .Z(n75) );
  DELLN2X2 U75 ( .INP(n266), .Z(dataout[2]) );
  DELLN2X2 U76 ( .INP(n289), .Z(n77) );
  DELLN2X2 U77 ( .INP(n277), .Z(n78) );
  DELLN2X2 U78 ( .INP(n277), .Z(dataout[0]) );
  DELLN2X2 U79 ( .INP(n268), .Z(n80) );
  DELLN2X2 U80 ( .INP(n268), .Z(dataout[1]) );
  DELLN2X2 U81 ( .INP(n274), .Z(n82) );
  DELLN2X2 U82 ( .INP(n274), .Z(dataout[3]) );
  DELLN2X2 U83 ( .INP(n236), .Z(n84) );
  DELLN2X2 U84 ( .INP(n236), .Z(n85) );
  DELLN2X2 U85 ( .INP(n290), .Z(n86) );
  DELLN2X2 U86 ( .INP(n244), .Z(n87) );
  DELLN2X2 U87 ( .INP(n244), .Z(n88) );
  DELLN2X2 U88 ( .INP(n282), .Z(n89) );
  DELLN2X2 U89 ( .INP(n282), .Z(n90) );
  AND2X1 U90 ( .IN1(n216), .IN2(n270), .Q(n91) );
  DELLN2X2 U91 ( .INP(n281), .Z(n92) );
  DELLN2X2 U92 ( .INP(n281), .Z(n93) );
  DELLN2X2 U93 ( .INP(n290), .Z(n94) );
  DELLN2X2 U94 ( .INP(n289), .Z(n95) );
  DELLN2X2 U95 ( .INP(n44), .Z(n96) );
  DELLN2X2 U96 ( .INP(n44), .Z(n97) );
  AND3X4 U97 ( .IN1(n96), .IN2(n123), .IN3(n99), .Q(n45) );
  DELLN2X2 U98 ( .INP(n267), .Z(n98) );
  DELLN2X2 U99 ( .INP(n43), .Z(n99) );
  DELLN2X2 U100 ( .INP(n43), .Z(n100) );
  NAND3X1 U101 ( .IN1(n101), .IN2(n194), .IN3(n105), .QN(n43) );
  DELLN2X2 U102 ( .INP(n233), .Z(n101) );
  DELLN2X2 U103 ( .INP(n233), .Z(n102) );
  XOR2X2 U104 ( .IN1(n312), .IN2(n215), .Q(disparity_4b[1]) );
  XOR2X2 U105 ( .IN1(N83), .IN2(n91), .Q(disparity_4b[2]) );
  XOR2X2 U106 ( .IN1(n74), .IN2(n314), .Q(n317) );
  DELLN2X2 U107 ( .INP(n243), .Z(n103) );
  DELLN2X2 U108 ( .INP(n243), .Z(n104) );
  DELLN2X2 U109 ( .INP(n293), .Z(n105) );
  DELLN2X2 U110 ( .INP(n293), .Z(n106) );
  DELLN2X2 U111 ( .INP(n240), .Z(n107) );
  DELLN2X2 U112 ( .INP(n240), .Z(n108) );
  DELLN2X2 U113 ( .INP(n310), .Z(n109) );
  DELLN2X2 U114 ( .INP(n310), .Z(n110) );
  DELLN2X2 U115 ( .INP(n294), .Z(n111) );
  DELLN2X2 U116 ( .INP(n294), .Z(n112) );
  AO22X1 U117 ( .IN1(N75), .IN2(n8), .IN3(n112), .IN4(n109), .Q(n37) );
  DELLN2X2 U118 ( .INP(n309), .Z(n113) );
  DELLN2X2 U119 ( .INP(n309), .Z(n114) );
  DELLN2X2 U120 ( .INP(n311), .Z(n115) );
  DELLN2X2 U121 ( .INP(n311), .Z(n116) );
  DELLN2X2 U122 ( .INP(n304), .Z(n117) );
  DELLN2X2 U123 ( .INP(n304), .Z(n118) );
  DELLN2X2 U124 ( .INP(n297), .Z(n119) );
  DELLN2X2 U125 ( .INP(n297), .Z(n120) );
  AO22X1 U126 ( .IN1(n120), .IN2(n9), .IN3(n237), .IN4(n234), .Q(n31) );
  DELLN2X2 U127 ( .INP(N74), .Z(n121) );
  DELLN2X2 U128 ( .INP(N74), .Z(n122) );
  XOR2X2 U129 ( .IN1(n260), .IN2(n61), .Q(N74) );
  DELLN2X2 U130 ( .INP(n125), .Z(n123) );
  DELLN2X2 U131 ( .INP(n125), .Z(n124) );
  AND3X1 U132 ( .IN1(n245), .IN2(n84), .IN3(n3), .Q(n55) );
  INVX0 U133 ( .INP(n55), .ZN(n125) );
  DELLN2X2 U134 ( .INP(n287), .Z(n126) );
  DELLN2X2 U135 ( .INP(n287), .Z(n127) );
  DELLN2X2 U136 ( .INP(n288), .Z(n128) );
  DELLN2X2 U137 ( .INP(n288), .Z(n129) );
  DELLN2X2 U138 ( .INP(n283), .Z(n130) );
  DELLN2X2 U139 ( .INP(n283), .Z(n131) );
  DELLN2X2 U140 ( .INP(n286), .Z(n132) );
  DELLN2X2 U141 ( .INP(n286), .Z(n133) );
  XOR2X2 U142 ( .IN1(n225), .IN2(n205), .Q(n318) );
  DELLN2X2 U143 ( .INP(n275), .Z(n134) );
  DELLN2X2 U144 ( .INP(n275), .Z(n135) );
  DELLN2X2 U145 ( .INP(n280), .Z(n136) );
  DELLN2X2 U146 ( .INP(n280), .Z(n137) );
  DELLN2X2 U147 ( .INP(n264), .Z(n138) );
  DELLN2X2 U148 ( .INP(n264), .Z(n139) );
  DELLN2X2 U149 ( .INP(n272), .Z(n140) );
  DELLN2X2 U150 ( .INP(n272), .Z(n141) );
  DELLN2X2 U151 ( .INP(n258), .Z(n142) );
  DELLN2X2 U152 ( .INP(n258), .Z(n143) );
  DELLN2X2 U153 ( .INP(n261), .Z(n144) );
  DELLN2X2 U154 ( .INP(n261), .Z(n145) );
  DELLN2X2 U155 ( .INP(n255), .Z(n146) );
  DELLN2X2 U156 ( .INP(n255), .Z(n147) );
  DELLN2X2 U157 ( .INP(n256), .Z(n148) );
  DELLN2X2 U158 ( .INP(n256), .Z(n149) );
  DELLN2X2 U159 ( .INP(n252), .Z(n150) );
  DELLN2X2 U160 ( .INP(n252), .Z(n151) );
  DELLN2X2 U161 ( .INP(n253), .Z(n152) );
  DELLN2X2 U162 ( .INP(n253), .Z(n153) );
  DELLN2X2 U163 ( .INP(n249), .Z(n154) );
  DELLN2X2 U164 ( .INP(n249), .Z(n155) );
  DELLN2X2 U165 ( .INP(n250), .Z(n156) );
  DELLN2X2 U166 ( .INP(n250), .Z(n157) );
  DELLN2X2 U167 ( .INP(n246), .Z(n158) );
  DELLN2X2 U168 ( .INP(n246), .Z(n159) );
  DELLN2X2 U169 ( .INP(n247), .Z(n160) );
  DELLN2X2 U170 ( .INP(n247), .Z(n161) );
  DELLN2X2 U171 ( .INP(n238), .Z(n162) );
  DELLN2X2 U172 ( .INP(n238), .Z(n163) );
  DELLN2X2 U173 ( .INP(n241), .Z(n164) );
  DELLN2X2 U174 ( .INP(n241), .Z(n165) );
  XOR2X2 U175 ( .IN1(n259), .IN2(n221), .Q(N56) );
  DELLN2X2 U176 ( .INP(n232), .Z(n166) );
  DELLN2X2 U177 ( .INP(n232), .Z(n167) );
  DELLN2X2 U178 ( .INP(n235), .Z(n168) );
  DELLN2X2 U179 ( .INP(n235), .Z(n169) );
  DELLN2X2 U180 ( .INP(n226), .Z(n170) );
  DELLN2X2 U181 ( .INP(n226), .Z(n171) );
  DELLN2X2 U182 ( .INP(n229), .Z(n172) );
  DELLN2X2 U183 ( .INP(n229), .Z(n173) );
  DELLN2X2 U184 ( .INP(n220), .Z(n174) );
  DELLN2X2 U185 ( .INP(n220), .Z(n175) );
  DELLN2X2 U186 ( .INP(n223), .Z(n176) );
  DELLN2X2 U187 ( .INP(n223), .Z(n177) );
  XOR2X2 U188 ( .IN1(n276), .IN2(n218), .Q(N77) );
  DELLN2X2 U189 ( .INP(n214), .Z(n178) );
  DELLN2X2 U190 ( .INP(n214), .Z(n179) );
  DELLN2X2 U191 ( .INP(n217), .Z(n180) );
  DELLN2X2 U192 ( .INP(n217), .Z(n181) );
  XOR2X2 U193 ( .IN1(n227), .IN2(n285), .Q(N82) );
  XOR2X2 U194 ( .IN1(n273), .IN2(n265), .Q(n315) );
  DELLN2X2 U195 ( .INP(n206), .Z(n182) );
  DELLN2X2 U196 ( .INP(n206), .Z(n183) );
  DELLN2X2 U197 ( .INP(n209), .Z(n184) );
  DELLN2X2 U198 ( .INP(n209), .Z(n185) );
  DELLN2X2 U199 ( .INP(n199), .Z(n186) );
  DELLN2X2 U200 ( .INP(n199), .Z(n187) );
  DELLN2X2 U201 ( .INP(n202), .Z(n188) );
  DELLN2X2 U202 ( .INP(n202), .Z(n189) );
  DELLN2X2 U203 ( .INP(n196), .Z(n190) );
  DELLN2X2 U204 ( .INP(n196), .Z(n191) );
  DELLN2X2 U205 ( .INP(n262), .Z(n192) );
  DELLN2X2 U206 ( .INP(n262), .Z(n193) );
  DELLN2X2 U207 ( .INP(n278), .Z(n194) );
  DELLN2X2 U208 ( .INP(n278), .Z(n195) );
  INVX0 U209 ( .INP(n53), .ZN(n196) );
  INVX0 U210 ( .INP(n190), .ZN(n197) );
  INVX0 U211 ( .INP(n191), .ZN(n198) );
  INVX0 U212 ( .INP(n52), .ZN(n199) );
  INVX0 U213 ( .INP(n187), .ZN(n200) );
  INVX0 U214 ( .INP(n186), .ZN(n201) );
  INVX0 U215 ( .INP(n40), .ZN(n202) );
  INVX0 U216 ( .INP(n188), .ZN(n203) );
  INVX0 U217 ( .INP(n189), .ZN(n204) );
  DELLN2X2 U218 ( .INP(n267), .Z(n269) );
  INVX0 U219 ( .INP(n269), .ZN(n205) );
  INVX0 U220 ( .INP(n47), .ZN(n206) );
  INVX0 U221 ( .INP(n182), .ZN(n207) );
  INVX0 U222 ( .INP(n183), .ZN(n208) );
  INVX0 U223 ( .INP(n46), .ZN(n209) );
  INVX0 U224 ( .INP(n184), .ZN(n210) );
  INVX0 U225 ( .INP(n185), .ZN(n211) );
  DELLN2X2 U226 ( .INP(n296), .Z(n212) );
  DELLN2X2 U227 ( .INP(n296), .Z(n213) );
  NAND3X4 U228 ( .IN1(n92), .IN2(n212), .IN3(n116), .QN(n27) );
  INVX0 U229 ( .INP(N82), .ZN(n214) );
  INVX0 U230 ( .INP(n179), .ZN(n215) );
  INVX0 U231 ( .INP(n178), .ZN(n216) );
  INVX0 U232 ( .INP(n315), .ZN(n217) );
  INVX0 U233 ( .INP(n180), .ZN(n218) );
  INVX0 U234 ( .INP(n181), .ZN(n219) );
  INVX0 U235 ( .INP(n60), .ZN(n220) );
  INVX0 U236 ( .INP(n174), .ZN(n221) );
  INVX0 U237 ( .INP(n175), .ZN(n222) );
  INVX0 U238 ( .INP(N77), .ZN(n223) );
  INVX0 U239 ( .INP(n176), .ZN(n224) );
  INVX0 U240 ( .INP(n177), .ZN(n225) );
  INVX0 U241 ( .INP(n301), .ZN(n226) );
  INVX0 U242 ( .INP(n171), .ZN(n227) );
  INVX0 U243 ( .INP(n170), .ZN(n228) );
  INVX0 U244 ( .INP(n284), .ZN(n229) );
  INVX0 U245 ( .INP(n172), .ZN(ones_counter_4b[0]) );
  INVX0 U246 ( .INP(n173), .ZN(n231) );
  INVX0 U247 ( .INP(n308), .ZN(n232) );
  INVX0 U248 ( .INP(n167), .ZN(n233) );
  INVX0 U249 ( .INP(n166), .ZN(n234) );
  INVX0 U250 ( .INP(N55), .ZN(n235) );
  INVX0 U251 ( .INP(n169), .ZN(n236) );
  INVX0 U252 ( .INP(n168), .ZN(n237) );
  INVX0 U253 ( .INP(n41), .ZN(n238) );
  INVX0 U254 ( .INP(n162), .ZN(n239) );
  INVX0 U255 ( .INP(n163), .ZN(n240) );
  INVX0 U256 ( .INP(N56), .ZN(n241) );
  INVX0 U257 ( .INP(n164), .ZN(n242) );
  INVX0 U258 ( .INP(n165), .ZN(n243) );
  DELLN2X2 U259 ( .INP(n42), .Z(n244) );
  DELLN2X2 U260 ( .INP(n42), .Z(n245) );
  NAND3X4 U261 ( .IN1(n87), .IN2(n298), .IN3(n114), .QN(n34) );
  INVX0 U262 ( .INP(n299), .ZN(n246) );
  INVX0 U263 ( .INP(n158), .ZN(n247) );
  INVX0 U264 ( .INP(n159), .ZN(n248) );
  INVX0 U265 ( .INP(n303), .ZN(n249) );
  INVX0 U266 ( .INP(n155), .ZN(n250) );
  INVX0 U267 ( .INP(n154), .ZN(n251) );
  INVX0 U268 ( .INP(n291), .ZN(n252) );
  INVX0 U269 ( .INP(n150), .ZN(n253) );
  INVX0 U270 ( .INP(n151), .ZN(n254) );
  INVX0 U271 ( .INP(n295), .ZN(n255) );
  INVX0 U272 ( .INP(n146), .ZN(n256) );
  INVX0 U273 ( .INP(n147), .ZN(n257) );
  INVX0 U274 ( .INP(n305), .ZN(n258) );
  INVX0 U275 ( .INP(n142), .ZN(n259) );
  INVX0 U276 ( .INP(n143), .ZN(n260) );
  INVX0 U277 ( .INP(n29), .ZN(n261) );
  INVX0 U278 ( .INP(n144), .ZN(n262) );
  INVX0 U279 ( .INP(n145), .ZN(n263) );
  INVX0 U280 ( .INP(n320), .ZN(n264) );
  INVX0 U281 ( .INP(n138), .ZN(n265) );
  INVX0 U282 ( .INP(n139), .ZN(n266) );
  INVX0 U283 ( .INP(n321), .ZN(n267) );
  INVX0 U284 ( .INP(n98), .ZN(n268) );
  DELLN2X2 U285 ( .INP(n316), .Z(n270) );
  DELLN2X2 U286 ( .INP(n316), .Z(n271) );
  INVX0 U287 ( .INP(n271), .ZN(n312) );
  INVX0 U288 ( .INP(n319), .ZN(n272) );
  INVX0 U289 ( .INP(n140), .ZN(n273) );
  INVX0 U290 ( .INP(n141), .ZN(n274) );
  INVX0 U291 ( .INP(n322), .ZN(n275) );
  INVX0 U292 ( .INP(n134), .ZN(n276) );
  INVX0 U293 ( .INP(n135), .ZN(n277) );
  DELLN2X2 U294 ( .INP(n30), .Z(n278) );
  DELLN2X2 U295 ( .INP(n30), .Z(n279) );
  INVX0 U296 ( .INP(n49), .ZN(n280) );
  INVX0 U297 ( .INP(n136), .ZN(n281) );
  INVX0 U298 ( .INP(n137), .ZN(n282) );
  INVX0 U299 ( .INP(n318), .ZN(n283) );
  INVX0 U300 ( .INP(n130), .ZN(n284) );
  INVX0 U301 ( .INP(n131), .ZN(n285) );
  INVX0 U302 ( .INP(n307), .ZN(n286) );
  INVX0 U303 ( .INP(n132), .ZN(n287) );
  INVX0 U304 ( .INP(n133), .ZN(n288) );
  DELLN2X2 U305 ( .INP(n51), .Z(n289) );
  DELLN2X2 U306 ( .INP(n51), .Z(n290) );
  NAND3X4 U307 ( .IN1(n77), .IN2(n113), .IN3(n85), .QN(n56) );
  NAND3X4 U308 ( .IN1(n86), .IN2(n115), .IN3(n103), .QN(n36) );
  INVX0 U309 ( .INP(N66), .ZN(n291) );
  INVX0 U310 ( .INP(n152), .ZN(n292) );
  INVX0 U311 ( .INP(n254), .ZN(n293) );
  INVX0 U312 ( .INP(n153), .ZN(n294) );
  INVX0 U313 ( .INP(N65), .ZN(n295) );
  INVX0 U314 ( .INP(n148), .ZN(n296) );
  INVX0 U315 ( .INP(n257), .ZN(n297) );
  INVX0 U316 ( .INP(n149), .ZN(n298) );
  INVX0 U317 ( .INP(n317), .ZN(n299) );
  INVX0 U318 ( .INP(n160), .ZN(ones_counter_4b[1]) );
  INVX0 U319 ( .INP(n161), .ZN(n301) );
  INVX0 U320 ( .INP(n248), .ZN(n302) );
  INVX0 U321 ( .INP(n59), .ZN(n303) );
  INVX0 U322 ( .INP(n156), .ZN(n304) );
  INVX0 U323 ( .INP(n251), .ZN(n305) );
  INVX0 U324 ( .INP(n157), .ZN(n306) );
  INVX0 U325 ( .INP(n50), .ZN(n307) );
  INVX0 U326 ( .INP(n126), .ZN(n308) );
  INVX0 U327 ( .INP(n128), .ZN(n309) );
  INVX0 U328 ( .INP(n129), .ZN(n310) );
  INVX0 U329 ( .INP(n127), .ZN(n311) );
  NAND3X4 U330 ( .IN1(n4), .IN2(n104), .IN3(n88), .QN(n40) );
  NAND3X4 U331 ( .IN1(n6), .IN2(n89), .IN3(N76), .QN(n57) );
  NAND3X4 U332 ( .IN1(n5), .IN2(n239), .IN3(n111), .QN(n26) );
  NAND3X4 U333 ( .IN1(n7), .IN2(n106), .IN3(n95), .QN(n35) );
  INVX0 U335 ( .INP(n228), .ZN(n316) );
  NOR2X0 U336 ( .IN1(n302), .IN2(n231), .QN(N83) );
  INVX0 U5 ( .INP(1'b1), .ZN(disparity_4b[0]) );
endmodule


module enc_5b ( datain, kin, rdispin, ones_counter_6b, disparity_6b, dout );
  input [4:0] datain;
  output [2:0] ones_counter_6b;
  output [2:0] disparity_6b;
  output [5:0] dout;
  input kin, rdispin;
  wire   n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n111, n112, n113, N150, N149, N140, N139, N138, N137, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n110, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n193, n195, n197, n199, n200, n201, n202,
         n203, n204, n205, n206, n208, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601,
         n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623,
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634,
         n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, n645,
         n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, n656,
         n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n690,
         n691, n692, n693, n694, n696, n697, n698, n699, n700, n701, n702,
         n703, n704, n705, n706, n707, n708, n709, n710, n711, n712, n713,
         n714, n715, n716, n717, n718, n719, n720, n721, n722, n724, n725,
         n726, n727, n728, n729, n730, n731;

  NAND4X0 U3 ( .IN1(n326), .IN2(n328), .IN3(n15), .IN4(n16), .QN(n737) );
  OA221X1 U4 ( .IN1(n298), .IN2(n123), .IN3(n313), .IN4(n234), .IN5(n20), .Q(
        n16) );
  OA21X1 U5 ( .IN1(n231), .IN2(n267), .IN3(n184), .Q(n20) );
  OA21X1 U6 ( .IN1(n24), .IN2(n246), .IN3(n173), .Q(n15) );
  INVX0 U7 ( .INP(n280), .ZN(n24) );
  INVX0 U9 ( .INP(n302), .ZN(n31) );
  OA222X1 U10 ( .IN1(n311), .IN2(n287), .IN3(n245), .IN4(n163), .IN5(n502), 
        .IN6(n283), .Q(n30) );
  OA221X1 U11 ( .IN1(n334), .IN2(n275), .IN3(n122), .IN4(n37), .IN5(n38), .Q(
        n29) );
  OA22X1 U13 ( .IN1(n544), .IN2(n610), .IN3(n292), .IN4(n527), .Q(n37) );
  INVX0 U14 ( .INP(n335), .ZN(n40) );
  NOR2X0 U15 ( .IN1(n130), .IN2(n496), .QN(n39) );
  NOR2X0 U16 ( .IN1(n151), .IN2(n136), .QN(n36) );
  NOR2X0 U17 ( .IN1(n582), .IN2(n521), .QN(n28) );
  NAND4X0 U18 ( .IN1(n297), .IN2(n515), .IN3(n517), .IN4(n46), .QN(n739) );
  AOI221X1 U19 ( .IN1(n282), .IN2(n117), .IN3(n243), .IN4(n288), .IN5(n49), 
        .QN(n46) );
  NAND2X0 U21 ( .IN1(n286), .IN2(n110), .QN(n25) );
  NAND4X0 U22 ( .IN1(n518), .IN2(n52), .IN3(n523), .IN4(n54), .QN(n740) );
  OA221X1 U23 ( .IN1(n55), .IN2(n308), .IN3(n323), .IN4(n57), .IN5(n179), .Q(
        n54) );
  NAND2X0 U24 ( .IN1(n128), .IN2(n59), .QN(n57) );
  AO21X1 U25 ( .IN1(n320), .IN2(n250), .IN3(n333), .Q(n59) );
  INVX0 U26 ( .INP(n319), .ZN(n55) );
  NAND2X0 U27 ( .IN1(n569), .IN2(n300), .QN(n52) );
  AND3X1 U28 ( .IN1(n324), .IN2(n66), .IN3(n329), .Q(n45) );
  OA22X1 U29 ( .IN1(n485), .IN2(n137), .IN3(n570), .IN4(n68), .Q(n66) );
  INVX0 U30 ( .INP(n316), .ZN(n68) );
  NAND2X0 U31 ( .IN1(n261), .IN2(n227), .QN(n14) );
  NAND4X0 U32 ( .IN1(n514), .IN2(n72), .IN3(n524), .IN4(n73), .QN(n741) );
  NAND2X0 U34 ( .IN1(n115), .IN2(n76), .QN(n74) );
  AO21X1 U35 ( .IN1(n512), .IN2(n321), .IN3(n331), .Q(n76) );
  NAND2X0 U38 ( .IN1(n260), .IN2(n254), .QN(n26) );
  NAND2X0 U39 ( .IN1(n289), .IN2(n116), .QN(n81) );
  NAND2X0 U40 ( .IN1(n295), .IN2(n202), .QN(n48) );
  NAND2X0 U41 ( .IN1(n281), .IN2(n242), .QN(n80) );
  AOI22X1 U43 ( .IN1(n271), .IN2(n230), .IN3(n89), .IN4(n236), .QN(n43) );
  NAND2X0 U44 ( .IN1(n291), .IN2(n211), .QN(n89) );
  NAND2X0 U45 ( .IN1(n10), .IN2(n118), .QN(n21) );
  NAND2X0 U46 ( .IN1(n317), .IN2(n237), .QN(n72) );
  NAND2X0 U48 ( .IN1(n487), .IN2(n327), .QN(n92) );
  NAND2X0 U49 ( .IN1(n255), .IN2(n221), .QN(n13) );
  NAND4X0 U51 ( .IN1(n325), .IN2(n488), .IN3(n98), .IN4(n99), .QN(n742) );
  OA221X1 U52 ( .IN1(n299), .IN2(n264), .IN3(n135), .IN4(n100), .IN5(n185), 
        .Q(n99) );
  OA22X1 U54 ( .IN1(n124), .IN2(n102), .IN3(n290), .IN4(n312), .Q(n101) );
  INVX0 U57 ( .INP(n294), .ZN(n106) );
  NAND2X0 U58 ( .IN1(n332), .IN2(n226), .QN(n84) );
  NOR2X0 U60 ( .IN1(n621), .IN2(n501), .QN(n69) );
  NAND2X0 U63 ( .IN1(n330), .IN2(n257), .QN(n86) );
  NAND2X0 U64 ( .IN1(n247), .IN2(n217), .QN(n96) );
  NAND2X0 U65 ( .IN1(n504), .IN2(n256), .QN(n75) );
  NAND2X0 U66 ( .IN1(n262), .IN2(n258), .QN(n51) );
  NAND2X0 U67 ( .IN1(n568), .IN2(n223), .QN(n58) );
  OA21X1 U68 ( .IN1(n268), .IN2(n284), .IN3(n235), .Q(n100) );
  NAND2X0 U70 ( .IN1(n224), .IN2(n219), .QN(n97) );
  NAND2X0 U71 ( .IN1(n278), .IN2(n253), .QN(n78) );
  AND2X1 U72 ( .IN1(n578), .IN2(n612), .Q(n107) );
  INVX0 U74 ( .INP(n272), .ZN(n22) );
  NOR2X0 U75 ( .IN1(n482), .IN2(n631), .QN(n88) );
  INVX0 U76 ( .INP(n572), .ZN(n34) );
  INVX0 U77 ( .INP(n508), .ZN(n50) );
  INVX0 U79 ( .INP(n133), .ZN(n19) );
  NAND2X0 U81 ( .IN1(n293), .IN2(n269), .QN(n83) );
  NOR2X0 U82 ( .IN1(n125), .IN2(n127), .QN(n41) );
  NOR2X0 U84 ( .IN1(n712), .IN2(n618), .QN(n109) );
  INVX0 U85 ( .INP(n575), .ZN(n60) );
  NAND2X0 U87 ( .IN1(n259), .IN2(n220), .QN(n90) );
  NOR2X0 U88 ( .IN1(n520), .IN2(n546), .QN(n70) );
  NOR2X0 U89 ( .IN1(n587), .IN2(n129), .QN(n82) );
  INVX0 U90 ( .INP(n305), .ZN(n33) );
  NOR2X0 U91 ( .IN1(n490), .IN2(n511), .QN(n103) );
  OA22X1 U94 ( .IN1(n157), .IN2(n113), .IN3(n274), .IN4(n493), .Q(n112) );
  NOR2X0 U95 ( .IN1(n509), .IN2(n505), .QN(n113) );
  NOR2X0 U96 ( .IN1(n687), .IN2(n149), .QN(n27) );
  INVX0 U97 ( .INP(n121), .ZN(n32) );
  NAND2X0 U98 ( .IN1(n213), .IN2(n9), .QN(n111) );
  INVX0 U99 ( .INP(n584), .ZN(n108) );
  NOR2X0 U100 ( .IN1(n150), .IN2(n162), .QN(n62) );
  NAND2X0 U101 ( .IN1(n266), .IN2(n222), .QN(n65) );
  AND3X1 U102 ( .IN1(n238), .IN2(n249), .IN3(n4), .Q(n71) );
  INVX0 U103 ( .INP(n152), .ZN(n61) );
  NAND2X0 U104 ( .IN1(n252), .IN2(n225), .QN(n93) );
  AND3X1 U105 ( .IN1(n498), .IN2(n273), .IN3(n114), .Q(n94) );
  INVX0 U106 ( .INP(n156), .ZN(n77) );
  INVX0 U107 ( .INP(n164), .ZN(n56) );
  NOR2X0 U108 ( .IN1(n651), .IN2(n161), .QN(n104) );
  INVX0 U109 ( .INP(n148), .ZN(n42) );
  OA22X1 U20 ( .IN1(n494), .IN2(n111), .IN3(n126), .IN4(n112), .Q(n3) );
  DELLN2X2 U33 ( .INP(n159), .Z(n4) );
  DELLN2X2 U36 ( .INP(n159), .Z(n5) );
  DELLN2X2 U37 ( .INP(n166), .Z(n6) );
  DELLN2X2 U42 ( .INP(n166), .Z(n7) );
  DELLN2X2 U47 ( .INP(n154), .Z(n8) );
  DELLN2X2 U50 ( .INP(n154), .Z(n9) );
  DELLN2X2 U53 ( .INP(kin), .Z(n10) );
  DELLN2X2 U55 ( .INP(kin), .Z(n11) );
  DELLN2X2 U56 ( .INP(n165), .Z(n12) );
  DELLN2X2 U59 ( .INP(n165), .Z(n110) );
  DELLN2X2 U61 ( .INP(n155), .Z(n114) );
  DELLN2X2 U62 ( .INP(n155), .Z(n115) );
  DELLN2X2 U69 ( .INP(n134), .Z(n116) );
  DELLN2X2 U73 ( .INP(n134), .Z(n117) );
  DELLN2X2 U78 ( .INP(n170), .Z(n118) );
  DELLN2X2 U80 ( .INP(n170), .Z(n119) );
  DELLN2X2 U83 ( .INP(n169), .Z(n120) );
  DELLN2X2 U86 ( .INP(n160), .Z(n121) );
  DELLN2X2 U92 ( .INP(n160), .Z(n122) );
  DELLN2X2 U93 ( .INP(n171), .Z(n123) );
  DELLN2X2 U110 ( .INP(n171), .Z(n124) );
  DELLN2X2 U111 ( .INP(n153), .Z(n125) );
  DELLN2X2 U112 ( .INP(n153), .Z(n126) );
  DELLN2X2 U113 ( .INP(n158), .Z(n127) );
  DELLN2X2 U114 ( .INP(n158), .Z(n128) );
  DELLN2X2 U115 ( .INP(n167), .Z(n129) );
  DELLN2X2 U116 ( .INP(n167), .Z(n130) );
  DELLN2X2 U117 ( .INP(rdispin), .Z(n131) );
  DELLN2X2 U118 ( .INP(rdispin), .Z(n132) );
  DELLN2X2 U119 ( .INP(n168), .Z(n133) );
  DELLN2X2 U120 ( .INP(n168), .Z(n134) );
  DELLN2X2 U121 ( .INP(n120), .Z(n135) );
  DELLN2X2 U122 ( .INP(n169), .Z(n136) );
  DELLN2X2 U123 ( .INP(n120), .Z(n137) );
  DELLN2X2 U124 ( .INP(datain[4]), .Z(n138) );
  DELLN2X2 U125 ( .INP(datain[4]), .Z(n139) );
  DELLN2X2 U126 ( .INP(datain[2]), .Z(n140) );
  DELLN2X2 U127 ( .INP(datain[2]), .Z(n141) );
  DELLN2X2 U128 ( .INP(datain[3]), .Z(n142) );
  DELLN2X2 U129 ( .INP(datain[3]), .Z(n143) );
  DELLN2X2 U130 ( .INP(datain[0]), .Z(n144) );
  DELLN2X2 U131 ( .INP(datain[0]), .Z(n145) );
  DELLN2X2 U132 ( .INP(datain[1]), .Z(n146) );
  DELLN2X2 U133 ( .INP(datain[1]), .Z(n147) );
  DELLN2X2 U134 ( .INP(n140), .Z(n148) );
  DELLN2X2 U135 ( .INP(n141), .Z(n149) );
  DELLN2X2 U136 ( .INP(n140), .Z(n150) );
  DELLN2X2 U137 ( .INP(n141), .Z(n151) );
  DELLN2X2 U138 ( .INP(n138), .Z(n152) );
  DELLN2X2 U139 ( .INP(n139), .Z(n153) );
  DELLN2X2 U140 ( .INP(n139), .Z(n154) );
  DELLN2X2 U141 ( .INP(n138), .Z(n155) );
  DELLN2X2 U142 ( .INP(n142), .Z(n156) );
  DELLN2X2 U143 ( .INP(n143), .Z(n157) );
  DELLN2X2 U144 ( .INP(n143), .Z(n158) );
  DELLN2X2 U145 ( .INP(n142), .Z(n159) );
  DELLN2X2 U146 ( .INP(n144), .Z(n160) );
  DELLN2X2 U147 ( .INP(n145), .Z(n161) );
  DELLN2X2 U148 ( .INP(n144), .Z(n162) );
  DELLN2X2 U149 ( .INP(n145), .Z(n163) );
  DELLN2X2 U150 ( .INP(n146), .Z(n164) );
  DELLN2X2 U151 ( .INP(n147), .Z(n165) );
  DELLN2X2 U152 ( .INP(n146), .Z(n166) );
  DELLN2X2 U153 ( .INP(n147), .Z(n167) );
  DELLN2X2 U154 ( .INP(n131), .Z(n168) );
  DELLN2X2 U155 ( .INP(n132), .Z(n169) );
  DELLN2X2 U156 ( .INP(n131), .Z(n170) );
  DELLN2X2 U157 ( .INP(n132), .Z(n171) );
  OAI21X1 U158 ( .IN1(n483), .IN2(n276), .IN3(n186), .QN(n49) );
  AOI221X1 U159 ( .IN1(n318), .IN2(n263), .IN3(n301), .IN4(n119), .IN5(n92), 
        .QN(n44) );
  DELLN2X2 U160 ( .INP(n26), .Z(n172) );
  DELLN2X2 U161 ( .INP(n26), .Z(n173) );
  XNOR3X2 U162 ( .IN1(n181), .IN2(n397), .IN3(n188), .Q(n735) );
  INVX0 U163 ( .INP(n735), .ZN(disparity_6b[2]) );
  XNOR2X2 U164 ( .IN1(n722), .IN2(n538), .Q(n736) );
  INVX0 U165 ( .INP(n736), .ZN(disparity_6b[1]) );
  NOR4X1 U166 ( .IN1(n105), .IN2(n633), .IN3(n615), .IN4(n106), .QN(n102) );
  OR3X2 U167 ( .IN1(n547), .IN2(n543), .IN3(n526), .Q(n38) );
  DELLN2X2 U168 ( .INP(n180), .Z(n176) );
  DELLN2X2 U169 ( .INP(n180), .Z(n177) );
  DELLN2X2 U170 ( .INP(n58), .Z(n178) );
  DELLN2X2 U171 ( .INP(n58), .Z(n179) );
  AND3X4 U172 ( .IN1(n5), .IN2(n491), .IN3(n270), .Q(n87) );
  INVX0 U173 ( .INP(n87), .ZN(n180) );
  XNOR2X2 U174 ( .IN1(n731), .IN2(n690), .Q(N150) );
  INVX0 U175 ( .INP(N150), .ZN(n181) );
  DELLN2X2 U176 ( .INP(n201), .Z(n182) );
  DELLN2X2 U177 ( .INP(n201), .Z(n183) );
  DELLN2X2 U178 ( .INP(n23), .Z(n184) );
  DELLN2X2 U179 ( .INP(n23), .Z(n185) );
  DELLN2X2 U180 ( .INP(n51), .Z(n186) );
  DELLN2X2 U181 ( .INP(n51), .Z(n187) );
  AND2X1 U182 ( .IN1(n537), .IN2(n636), .Q(n188) );
  DELLN2X2 U183 ( .INP(n506), .Z(n189) );
  DELLN2X2 U184 ( .INP(n506), .Z(n190) );
  DELLN2X2 U185 ( .INP(n639), .Z(n191) );
  DELLN2X2 U186 ( .INP(n639), .Z(dout[4]) );
  DELLN2X2 U187 ( .INP(n642), .Z(n193) );
  DELLN2X2 U188 ( .INP(n642), .Z(dout[1]) );
  AO22X1 U189 ( .IN1(n191), .IN2(n206), .IN3(n197), .IN4(n559), .Q(N140) );
  AO22X1 U190 ( .IN1(n193), .IN2(n208), .IN3(n195), .IN4(n550), .Q(N138) );
  DELLN2X2 U191 ( .INP(n644), .Z(n195) );
  DELLN2X2 U192 ( .INP(n644), .Z(dout[0]) );
  DELLN2X2 U193 ( .INP(n647), .Z(n197) );
  DELLN2X2 U194 ( .INP(n647), .Z(dout[3]) );
  DELLN2X2 U195 ( .INP(n97), .Z(n199) );
  DELLN2X2 U196 ( .INP(n97), .Z(n200) );
  AND3X4 U197 ( .IN1(n177), .IN2(n205), .IN3(n200), .Q(n18) );
  NAND3X1 U198 ( .IN1(n189), .IN2(n241), .IN3(n199), .QN(n63) );
  AND3X4 U199 ( .IN1(n6), .IN2(n279), .IN3(n248), .Q(n85) );
  INVX0 U200 ( .INP(n85), .ZN(n201) );
  DELLN2X2 U201 ( .INP(n83), .Z(n202) );
  DELLN2X2 U202 ( .INP(n83), .Z(n203) );
  DELLN2X2 U203 ( .INP(n78), .Z(n204) );
  DELLN2X2 U204 ( .INP(n78), .Z(n205) );
  DELLN2X2 U205 ( .INP(n628), .Z(n206) );
  DELLN2X2 U206 ( .INP(n628), .Z(dout[5]) );
  DELLN2X2 U207 ( .INP(n625), .Z(n208) );
  DELLN2X2 U208 ( .INP(n625), .Z(dout[2]) );
  DELLN2X2 U209 ( .INP(n90), .Z(n210) );
  DELLN2X2 U210 ( .INP(n90), .Z(n211) );
  DELLN2X2 U211 ( .INP(n700), .Z(n212) );
  DELLN2X2 U212 ( .INP(n700), .Z(n213) );
  DELLN2X2 U213 ( .INP(n681), .Z(n214) );
  DELLN2X2 U214 ( .INP(n681), .Z(n215) );
  DELLN2X2 U215 ( .INP(n662), .Z(n216) );
  DELLN2X2 U216 ( .INP(n662), .Z(n217) );
  DELLN2X2 U217 ( .INP(n715), .Z(n218) );
  DELLN2X2 U218 ( .INP(n715), .Z(n219) );
  DELLN2X2 U219 ( .INP(n684), .Z(n220) );
  DELLN2X2 U220 ( .INP(n684), .Z(n221) );
  DELLN2X2 U221 ( .INP(n654), .Z(n222) );
  DELLN2X2 U222 ( .INP(n654), .Z(n223) );
  DELLN2X2 U223 ( .INP(n656), .Z(n224) );
  DELLN2X2 U224 ( .INP(n656), .Z(n225) );
  DELLN2X2 U225 ( .INP(n653), .Z(n226) );
  DELLN2X2 U226 ( .INP(n653), .Z(n227) );
  XOR2X2 U227 ( .IN1(n562), .IN2(n529), .Q(n733) );
  DELLN2X2 U228 ( .INP(n244), .Z(n228) );
  DELLN2X2 U229 ( .INP(n244), .Z(n229) );
  DELLN2X2 U230 ( .INP(n21), .Z(n230) );
  DELLN2X2 U231 ( .INP(n21), .Z(n231) );
  DELLN2X2 U232 ( .INP(n75), .Z(n232) );
  DELLN2X2 U233 ( .INP(n75), .Z(n233) );
  OA221X2 U234 ( .IN1(n484), .IN2(n306), .IN3(n239), .IN4(n74), .IN5(n233), 
        .Q(n73) );
  AND4X4 U235 ( .IN1(n187), .IN2(n101), .IN3(n232), .IN4(n178), .Q(n23) );
  DELLN2X2 U236 ( .INP(n18), .Z(n234) );
  DELLN2X2 U237 ( .INP(n18), .Z(n235) );
  DELLN2X2 U238 ( .INP(n581), .Z(n236) );
  DELLN2X2 U239 ( .INP(n581), .Z(n237) );
  DELLN2X2 U240 ( .INP(n711), .Z(n238) );
  DELLN2X2 U241 ( .INP(n711), .Z(n239) );
  DELLN2X2 U242 ( .INP(n96), .Z(n240) );
  DELLN2X2 U243 ( .INP(n96), .Z(n241) );
  DELLN2X2 U244 ( .INP(n565), .Z(n242) );
  DELLN2X2 U245 ( .INP(n565), .Z(n243) );
  AND3X1 U246 ( .IN1(n218), .IN2(n497), .IN3(n7), .Q(n79) );
  INVX0 U247 ( .INP(n79), .ZN(n244) );
  NAND3X1 U248 ( .IN1(n240), .IN2(n531), .IN3(n229), .QN(n105) );
  DELLN2X2 U249 ( .INP(n659), .Z(n245) );
  DELLN2X2 U250 ( .INP(n659), .Z(n246) );
  DELLN2X2 U251 ( .INP(n666), .Z(n247) );
  DELLN2X2 U252 ( .INP(n666), .Z(n248) );
  DELLN2X2 U253 ( .INP(n678), .Z(n249) );
  DELLN2X2 U254 ( .INP(n678), .Z(n250) );
  DELLN2X2 U255 ( .INP(n702), .Z(n251) );
  DELLN2X2 U256 ( .INP(n702), .Z(n252) );
  DELLN2X2 U257 ( .INP(n707), .Z(n253) );
  DELLN2X2 U258 ( .INP(n707), .Z(n254) );
  DELLN2X2 U259 ( .INP(n657), .Z(n255) );
  DELLN2X2 U260 ( .INP(n657), .Z(n256) );
  DELLN2X2 U261 ( .INP(n669), .Z(n257) );
  DELLN2X2 U262 ( .INP(n669), .Z(n258) );
  DELLN2X2 U263 ( .INP(n573), .Z(n259) );
  DELLN2X2 U264 ( .INP(n573), .Z(n260) );
  DELLN2X2 U265 ( .INP(n576), .Z(n261) );
  DELLN2X2 U266 ( .INP(n576), .Z(n262) );
  DELLN2X2 U267 ( .INP(n672), .Z(n263) );
  DELLN2X2 U268 ( .INP(n672), .Z(n264) );
  DELLN2X2 U269 ( .INP(n703), .Z(n265) );
  DELLN2X2 U270 ( .INP(n703), .Z(n266) );
  DELLN2X2 U271 ( .INP(n22), .Z(n267) );
  DELLN2X2 U272 ( .INP(n22), .Z(n268) );
  DELLN2X2 U273 ( .INP(n663), .Z(n269) );
  DELLN2X2 U274 ( .INP(n663), .Z(n270) );
  DELLN2X2 U275 ( .INP(n88), .Z(n271) );
  DELLN2X2 U276 ( .INP(n88), .Z(n272) );
  DELLN2X2 U277 ( .INP(n699), .Z(n273) );
  DELLN2X2 U278 ( .INP(n699), .Z(n274) );
  DELLN2X2 U279 ( .INP(n660), .Z(n275) );
  DELLN2X2 U280 ( .INP(n660), .Z(n276) );
  DELLN2X2 U281 ( .INP(n668), .Z(n277) );
  DELLN2X2 U282 ( .INP(n668), .Z(n278) );
  DELLN2X2 U283 ( .INP(n567), .Z(n279) );
  DELLN2X2 U284 ( .INP(n567), .Z(n280) );
  DELLN2X2 U285 ( .INP(n47), .Z(n281) );
  DELLN2X2 U286 ( .INP(n47), .Z(n282) );
  NAND3X1 U287 ( .IN1(n182), .IN2(n532), .IN3(n176), .QN(n47) );
  DELLN2X2 U288 ( .INP(n285), .Z(n283) );
  DELLN2X2 U289 ( .INP(n285), .Z(n284) );
  DELLN2X2 U290 ( .INP(n11), .Z(n35) );
  INVX0 U291 ( .INP(n35), .ZN(n285) );
  DELLN2X2 U292 ( .INP(n588), .Z(n286) );
  DELLN2X2 U293 ( .INP(n588), .Z(n287) );
  DELLN2X2 U294 ( .INP(n48), .Z(n288) );
  DELLN2X2 U295 ( .INP(n48), .Z(n289) );
  DELLN2X2 U296 ( .INP(n91), .Z(n290) );
  DELLN2X2 U297 ( .INP(n91), .Z(n291) );
  DELLN2X2 U298 ( .INP(n579), .Z(n292) );
  DELLN2X2 U299 ( .INP(n579), .Z(n293) );
  DELLN2X2 U300 ( .INP(n84), .Z(n294) );
  DELLN2X2 U301 ( .INP(n84), .Z(n295) );
  DELLN2X2 U302 ( .INP(n43), .Z(n296) );
  DELLN2X2 U303 ( .INP(n43), .Z(n297) );
  DELLN2X2 U304 ( .INP(n17), .Z(n298) );
  DELLN2X2 U305 ( .INP(n17), .Z(n299) );
  DELLN2X2 U306 ( .INP(n616), .Z(n300) );
  DELLN2X2 U307 ( .INP(n616), .Z(n301) );
  DELLN2X2 U308 ( .INP(n28), .Z(n302) );
  DELLN2X2 U309 ( .INP(n28), .Z(n303) );
  DELLN2X2 U310 ( .INP(n665), .Z(n304) );
  DELLN2X2 U311 ( .INP(n665), .Z(n305) );
  DELLN2X2 U312 ( .INP(n718), .Z(n306) );
  DELLN2X2 U313 ( .INP(n718), .Z(n307) );
  DELLN2X2 U314 ( .INP(n719), .Z(n308) );
  DELLN2X2 U315 ( .INP(n719), .Z(n309) );
  DELLN2X2 U316 ( .INP(n686), .Z(n310) );
  DELLN2X2 U317 ( .INP(n686), .Z(n311) );
  DELLN2X2 U318 ( .INP(n671), .Z(n312) );
  DELLN2X2 U319 ( .INP(n671), .Z(n313) );
  DELLN2X2 U320 ( .INP(n696), .Z(n314) );
  DELLN2X2 U321 ( .INP(n696), .Z(n315) );
  DELLN2X2 U322 ( .INP(n634), .Z(n316) );
  DELLN2X2 U323 ( .INP(n634), .Z(n317) );
  DELLN2X2 U324 ( .INP(n63), .Z(n318) );
  DELLN2X2 U325 ( .INP(n63), .Z(n319) );
  DELLN2X2 U326 ( .INP(n619), .Z(n320) );
  DELLN2X2 U327 ( .INP(n619), .Z(n321) );
  DELLN2X2 U328 ( .INP(n710), .Z(n322) );
  DELLN2X2 U329 ( .INP(n710), .Z(n323) );
  DELLN2X2 U330 ( .INP(n65), .Z(n324) );
  DELLN2X2 U331 ( .INP(n65), .Z(n325) );
  DELLN2X2 U332 ( .INP(n13), .Z(n326) );
  DELLN2X2 U333 ( .INP(n13), .Z(n327) );
  DELLN2X2 U334 ( .INP(n14), .Z(n328) );
  DELLN2X2 U335 ( .INP(n14), .Z(n329) );
  DELLN2X2 U336 ( .INP(n716), .Z(n330) );
  DELLN2X2 U337 ( .INP(n716), .Z(n331) );
  DELLN2X2 U338 ( .INP(n585), .Z(n332) );
  DELLN2X2 U339 ( .INP(n585), .Z(n333) );
  DELLN2X2 U340 ( .INP(n609), .Z(n334) );
  DELLN2X2 U341 ( .INP(n609), .Z(n335) );
  DELLN2X2 U342 ( .INP(n691), .Z(n336) );
  DELLN2X2 U343 ( .INP(n691), .Z(n337) );
  DELLN2X2 U344 ( .INP(n682), .Z(n338) );
  DELLN2X2 U345 ( .INP(n682), .Z(n339) );
  DELLN2X2 U346 ( .INP(n685), .Z(n340) );
  DELLN2X2 U347 ( .INP(n685), .Z(n341) );
  DELLN2X2 U348 ( .INP(n679), .Z(n342) );
  DELLN2X2 U349 ( .INP(n679), .Z(n343) );
  DELLN2X2 U350 ( .INP(n680), .Z(n344) );
  DELLN2X2 U351 ( .INP(n680), .Z(n345) );
  DELLN2X2 U352 ( .INP(n673), .Z(n346) );
  DELLN2X2 U353 ( .INP(n673), .Z(n347) );
  DELLN2X2 U354 ( .INP(n676), .Z(n348) );
  DELLN2X2 U355 ( .INP(n676), .Z(n349) );
  DELLN2X2 U356 ( .INP(n667), .Z(n350) );
  DELLN2X2 U357 ( .INP(n667), .Z(n351) );
  DELLN2X2 U358 ( .INP(n670), .Z(n352) );
  DELLN2X2 U359 ( .INP(n670), .Z(n353) );
  DELLN2X2 U360 ( .INP(n661), .Z(n354) );
  DELLN2X2 U361 ( .INP(n661), .Z(n355) );
  DELLN2X2 U362 ( .INP(n664), .Z(n356) );
  DELLN2X2 U363 ( .INP(n664), .Z(n357) );
  DELLN2X2 U364 ( .INP(n655), .Z(n358) );
  DELLN2X2 U365 ( .INP(n655), .Z(n359) );
  DELLN2X2 U366 ( .INP(n658), .Z(n360) );
  DELLN2X2 U367 ( .INP(n658), .Z(n361) );
  DELLN2X2 U368 ( .INP(n649), .Z(n362) );
  DELLN2X2 U369 ( .INP(n649), .Z(n363) );
  DELLN2X2 U370 ( .INP(n652), .Z(n364) );
  DELLN2X2 U371 ( .INP(n652), .Z(n365) );
  DELLN2X2 U372 ( .INP(n643), .Z(n366) );
  DELLN2X2 U373 ( .INP(n643), .Z(n367) );
  DELLN2X2 U374 ( .INP(n646), .Z(n368) );
  DELLN2X2 U375 ( .INP(n646), .Z(n369) );
  DELLN2X2 U376 ( .INP(n637), .Z(n370) );
  DELLN2X2 U377 ( .INP(n637), .Z(n371) );
  DELLN2X2 U378 ( .INP(n640), .Z(n372) );
  DELLN2X2 U379 ( .INP(n640), .Z(n373) );
  OAI22X2 U380 ( .IN1(n29), .IN2(n303), .IN3(n30), .IN4(n31), .QN(n738) );
  DELLN2X2 U381 ( .INP(n629), .Z(n374) );
  DELLN2X2 U382 ( .INP(n629), .Z(n375) );
  DELLN2X2 U383 ( .INP(n632), .Z(n376) );
  DELLN2X2 U384 ( .INP(n632), .Z(n377) );
  DELLN2X2 U385 ( .INP(n623), .Z(n378) );
  DELLN2X2 U386 ( .INP(n623), .Z(n379) );
  DELLN2X2 U387 ( .INP(n626), .Z(n380) );
  DELLN2X2 U388 ( .INP(n626), .Z(n381) );
  DELLN2X2 U389 ( .INP(n617), .Z(n382) );
  DELLN2X2 U390 ( .INP(n617), .Z(n383) );
  DELLN2X2 U391 ( .INP(n620), .Z(n384) );
  DELLN2X2 U392 ( .INP(n620), .Z(n385) );
  DELLN2X2 U393 ( .INP(n611), .Z(n386) );
  DELLN2X2 U394 ( .INP(n611), .Z(n387) );
  DELLN2X2 U395 ( .INP(n614), .Z(n388) );
  DELLN2X2 U396 ( .INP(n614), .Z(n389) );
  AND2X4 U397 ( .IN1(n251), .IN2(n277), .Q(n64) );
  DELLN2X2 U398 ( .INP(n607), .Z(n390) );
  DELLN2X2 U399 ( .INP(n607), .Z(n391) );
  DELLN2X2 U400 ( .INP(n608), .Z(n392) );
  DELLN2X2 U401 ( .INP(n608), .Z(n393) );
  DELLN2X2 U402 ( .INP(n604), .Z(n394) );
  DELLN2X2 U403 ( .INP(n604), .Z(n395) );
  DELLN2X2 U404 ( .INP(n606), .Z(n396) );
  DELLN2X2 U405 ( .INP(n606), .Z(n397) );
  DELLN2X2 U406 ( .INP(n602), .Z(n398) );
  DELLN2X2 U407 ( .INP(n602), .Z(n399) );
  DELLN2X2 U408 ( .INP(n603), .Z(n400) );
  DELLN2X2 U409 ( .INP(n603), .Z(n401) );
  DELLN2X2 U410 ( .INP(n599), .Z(n402) );
  DELLN2X2 U411 ( .INP(n599), .Z(n403) );
  DELLN2X2 U412 ( .INP(n601), .Z(n404) );
  DELLN2X2 U413 ( .INP(n601), .Z(n405) );
  DELLN2X2 U414 ( .INP(n596), .Z(n406) );
  DELLN2X2 U415 ( .INP(n596), .Z(n407) );
  DELLN2X2 U416 ( .INP(n598), .Z(n408) );
  DELLN2X2 U417 ( .INP(n598), .Z(n409) );
  DELLN2X2 U418 ( .INP(n593), .Z(n410) );
  DELLN2X2 U419 ( .INP(n593), .Z(n411) );
  DELLN2X2 U420 ( .INP(n595), .Z(n412) );
  DELLN2X2 U421 ( .INP(n595), .Z(n413) );
  DELLN2X2 U422 ( .INP(n590), .Z(n414) );
  DELLN2X2 U423 ( .INP(n590), .Z(n415) );
  DELLN2X2 U424 ( .INP(n592), .Z(n416) );
  DELLN2X2 U425 ( .INP(n592), .Z(n417) );
  DELLN2X2 U426 ( .INP(n586), .Z(n418) );
  DELLN2X2 U427 ( .INP(n586), .Z(n419) );
  DELLN2X2 U428 ( .INP(n589), .Z(n420) );
  DELLN2X2 U429 ( .INP(n589), .Z(n421) );
  DELLN2X2 U430 ( .INP(n580), .Z(n422) );
  DELLN2X2 U431 ( .INP(n580), .Z(n423) );
  DELLN2X2 U432 ( .INP(n583), .Z(n424) );
  DELLN2X2 U433 ( .INP(n583), .Z(n425) );
  DELLN2X2 U434 ( .INP(n574), .Z(n426) );
  DELLN2X2 U435 ( .INP(n574), .Z(n427) );
  DELLN2X2 U436 ( .INP(n577), .Z(n428) );
  DELLN2X2 U437 ( .INP(n577), .Z(n429) );
  DELLN2X2 U438 ( .INP(n566), .Z(n430) );
  DELLN2X2 U439 ( .INP(n566), .Z(n431) );
  DELLN2X2 U440 ( .INP(n571), .Z(n432) );
  DELLN2X2 U441 ( .INP(n571), .Z(n433) );
  DELLN2X2 U442 ( .INP(n557), .Z(n434) );
  DELLN2X2 U443 ( .INP(n557), .Z(n435) );
  DELLN2X2 U444 ( .INP(n560), .Z(n436) );
  DELLN2X2 U445 ( .INP(n560), .Z(n437) );
  XOR2X2 U446 ( .IN1(n638), .IN2(n627), .Q(n729) );
  AND2X1 U447 ( .IN1(n563), .IN2(n534), .Q(n726) );
  DELLN2X2 U448 ( .INP(n551), .Z(n438) );
  DELLN2X2 U449 ( .INP(n551), .Z(n439) );
  DELLN2X2 U450 ( .INP(n554), .Z(n440) );
  DELLN2X2 U451 ( .INP(n554), .Z(n441) );
  DELLN2X2 U452 ( .INP(n545), .Z(n442) );
  DELLN2X2 U453 ( .INP(n545), .Z(n443) );
  DELLN2X2 U454 ( .INP(n548), .Z(n444) );
  DELLN2X2 U455 ( .INP(n548), .Z(n445) );
  XOR2X2 U456 ( .IN1(n641), .IN2(n624), .Q(n728) );
  DELLN2X2 U457 ( .INP(n539), .Z(n446) );
  DELLN2X2 U458 ( .INP(n539), .Z(n447) );
  DELLN2X2 U459 ( .INP(n542), .Z(n448) );
  DELLN2X2 U460 ( .INP(n542), .Z(n449) );
  DELLN2X2 U461 ( .INP(n533), .Z(n450) );
  DELLN2X2 U462 ( .INP(n533), .Z(n451) );
  DELLN2X2 U463 ( .INP(n536), .Z(n452) );
  DELLN2X2 U464 ( .INP(n536), .Z(n453) );
  XOR2X2 U465 ( .IN1(n645), .IN2(n549), .Q(N137) );
  XNOR2X2 U466 ( .IN1(n674), .IN2(n404), .Q(N149) );
  DELLN2X2 U467 ( .INP(n525), .Z(n454) );
  DELLN2X2 U468 ( .INP(n525), .Z(n455) );
  DELLN2X2 U469 ( .INP(n528), .Z(n456) );
  DELLN2X2 U470 ( .INP(n528), .Z(n457) );
  XOR2X2 U471 ( .IN1(n555), .IN2(n540), .Q(n727) );
  DELLN2X2 U472 ( .INP(n519), .Z(n458) );
  DELLN2X2 U473 ( .INP(n519), .Z(n459) );
  DELLN2X2 U474 ( .INP(n522), .Z(n460) );
  DELLN2X2 U475 ( .INP(n522), .Z(n461) );
  AND4X4 U476 ( .IN1(n296), .IN2(n80), .IN3(n81), .IN4(n172), .Q(n53) );
  DELLN2X2 U477 ( .INP(n513), .Z(n462) );
  DELLN2X2 U478 ( .INP(n513), .Z(n463) );
  DELLN2X2 U479 ( .INP(n516), .Z(n464) );
  DELLN2X2 U480 ( .INP(n516), .Z(n465) );
  DELLN2X2 U481 ( .INP(n507), .Z(n466) );
  DELLN2X2 U482 ( .INP(n507), .Z(n467) );
  DELLN2X2 U483 ( .INP(n510), .Z(n468) );
  DELLN2X2 U484 ( .INP(n510), .Z(n469) );
  DELLN2X2 U485 ( .INP(n500), .Z(n470) );
  DELLN2X2 U486 ( .INP(n500), .Z(n471) );
  DELLN2X2 U487 ( .INP(n503), .Z(n472) );
  DELLN2X2 U488 ( .INP(n503), .Z(n473) );
  DELLN2X2 U489 ( .INP(n492), .Z(n474) );
  DELLN2X2 U490 ( .INP(n492), .Z(n475) );
  DELLN2X2 U491 ( .INP(n495), .Z(n476) );
  DELLN2X2 U492 ( .INP(n495), .Z(n477) );
  DELLN2X2 U493 ( .INP(n486), .Z(n478) );
  DELLN2X2 U494 ( .INP(n486), .Z(n479) );
  DELLN2X2 U495 ( .INP(n489), .Z(n480) );
  DELLN2X2 U496 ( .INP(n489), .Z(n481) );
  DELLN2X2 U497 ( .INP(n50), .Z(n482) );
  DELLN2X2 U498 ( .INP(n50), .Z(n483) );
  DELLN2X2 U499 ( .INP(n67), .Z(n484) );
  DELLN2X2 U500 ( .INP(n67), .Z(n485) );
  AND2X4 U501 ( .IN1(n204), .IN2(n228), .Q(n67) );
  INVX0 U502 ( .INP(n93), .ZN(n486) );
  INVX0 U503 ( .INP(n478), .ZN(n487) );
  INVX0 U504 ( .INP(n479), .ZN(n488) );
  INVX0 U505 ( .INP(n677), .ZN(n489) );
  INVX0 U506 ( .INP(n480), .ZN(n490) );
  INVX0 U507 ( .INP(n481), .ZN(n491) );
  INVX0 U508 ( .INP(n622), .ZN(n492) );
  INVX0 U509 ( .INP(n474), .ZN(n493) );
  INVX0 U510 ( .INP(n475), .ZN(n494) );
  INVX0 U511 ( .INP(n693), .ZN(n495) );
  INVX0 U512 ( .INP(n477), .ZN(n496) );
  INVX0 U513 ( .INP(n476), .ZN(n497) );
  DELLN2X2 U514 ( .INP(n613), .Z(n498) );
  DELLN2X2 U515 ( .INP(n613), .Z(n499) );
  OR2X4 U516 ( .IN1(n3), .IN2(n499), .Q(n98) );
  INVX0 U517 ( .INP(n630), .ZN(n500) );
  INVX0 U518 ( .INP(n470), .ZN(n501) );
  INVX0 U519 ( .INP(n471), .ZN(n502) );
  INVX0 U520 ( .INP(n708), .ZN(n503) );
  INVX0 U521 ( .INP(n472), .ZN(n504) );
  INVX0 U522 ( .INP(n473), .ZN(n505) );
  AND3X4 U523 ( .IN1(n8), .IN2(n212), .IN3(n216), .Q(n95) );
  INVX0 U524 ( .INP(n95), .ZN(n506) );
  AND4X4 U525 ( .IN1(n190), .IN2(n210), .IN3(n203), .IN4(n183), .Q(n17) );
  INVX0 U526 ( .INP(n704), .ZN(n507) );
  INVX0 U527 ( .INP(n466), .ZN(n508) );
  INVX0 U528 ( .INP(n467), .ZN(n509) );
  INVX0 U529 ( .INP(n698), .ZN(n510) );
  INVX0 U530 ( .INP(n468), .ZN(n511) );
  INVX0 U531 ( .INP(n469), .ZN(n512) );
  INVX0 U532 ( .INP(n44), .ZN(n513) );
  INVX0 U533 ( .INP(n463), .ZN(n514) );
  INVX0 U534 ( .INP(n462), .ZN(n515) );
  INVX0 U535 ( .INP(n45), .ZN(n516) );
  INVX0 U536 ( .INP(n464), .ZN(n517) );
  INVX0 U537 ( .INP(n465), .ZN(n518) );
  INVX0 U538 ( .INP(n650), .ZN(n519) );
  INVX0 U539 ( .INP(n458), .ZN(n520) );
  INVX0 U540 ( .INP(n459), .ZN(n521) );
  INVX0 U541 ( .INP(n53), .ZN(n522) );
  INVX0 U542 ( .INP(n460), .ZN(n523) );
  INVX0 U543 ( .INP(n461), .ZN(n524) );
  INVX0 U544 ( .INP(n40), .ZN(n525) );
  INVX0 U545 ( .INP(n454), .ZN(n526) );
  INVX0 U546 ( .INP(n455), .ZN(n527) );
  INVX0 U547 ( .INP(n727), .ZN(n528) );
  INVX0 U548 ( .INP(n456), .ZN(n529) );
  INVX0 U549 ( .INP(n457), .ZN(n530) );
  DELLN2X2 U550 ( .INP(n86), .Z(n531) );
  DELLN2X2 U551 ( .INP(n86), .Z(n532) );
  INVX0 U552 ( .INP(N137), .ZN(n533) );
  INVX0 U553 ( .INP(n450), .ZN(n534) );
  INVX0 U554 ( .INP(n451), .ZN(n535) );
  INVX0 U555 ( .INP(N149), .ZN(n536) );
  INVX0 U556 ( .INP(n452), .ZN(n537) );
  INVX0 U557 ( .INP(n453), .ZN(n538) );
  INVX0 U558 ( .INP(N140), .ZN(n539) );
  INVX0 U559 ( .INP(n446), .ZN(n540) );
  INVX0 U560 ( .INP(n447), .ZN(n541) );
  INVX0 U561 ( .INP(n39), .ZN(n542) );
  INVX0 U562 ( .INP(n448), .ZN(n543) );
  INVX0 U563 ( .INP(n449), .ZN(n544) );
  INVX0 U564 ( .INP(n310), .ZN(n545) );
  INVX0 U565 ( .INP(n442), .ZN(n546) );
  INVX0 U566 ( .INP(n443), .ZN(n547) );
  INVX0 U567 ( .INP(n728), .ZN(n548) );
  INVX0 U568 ( .INP(n444), .ZN(n549) );
  INVX0 U569 ( .INP(n445), .ZN(n550) );
  INVX0 U570 ( .INP(n675), .ZN(n551) );
  INVX0 U571 ( .INP(n438), .ZN(n552) );
  INVX0 U572 ( .INP(n439), .ZN(ones_counter_6b[0]) );
  INVX0 U573 ( .INP(N138), .ZN(n554) );
  INVX0 U574 ( .INP(n440), .ZN(n555) );
  INVX0 U575 ( .INP(n441), .ZN(n556) );
  INVX0 U576 ( .INP(n729), .ZN(n557) );
  INVX0 U577 ( .INP(n435), .ZN(n558) );
  INVX0 U578 ( .INP(n434), .ZN(n559) );
  INVX0 U579 ( .INP(n726), .ZN(n560) );
  INVX0 U580 ( .INP(n437), .ZN(n561) );
  INVX0 U581 ( .INP(n436), .ZN(n562) );
  DELLN2X2 U582 ( .INP(N139), .Z(n563) );
  DELLN2X2 U583 ( .INP(N139), .Z(n564) );
  XOR2X2 U584 ( .IN1(n564), .IN2(n535), .Q(n734) );
  XOR2X2 U585 ( .IN1(n648), .IN2(n558), .Q(N139) );
  DELLN2X2 U586 ( .INP(n215), .Z(n721) );
  INVX0 U587 ( .INP(n721), .ZN(n565) );
  INVX0 U588 ( .INP(n706), .ZN(n566) );
  INVX0 U589 ( .INP(n430), .ZN(n567) );
  INVX0 U590 ( .INP(n431), .ZN(n568) );
  DELLN2X2 U591 ( .INP(n720), .Z(n569) );
  DELLN2X2 U592 ( .INP(n720), .Z(n570) );
  INVX0 U593 ( .INP(n82), .ZN(n571) );
  INVX0 U594 ( .INP(n432), .ZN(n572) );
  INVX0 U595 ( .INP(n433), .ZN(n573) );
  INVX0 U596 ( .INP(n683), .ZN(n574) );
  INVX0 U597 ( .INP(n426), .ZN(n575) );
  INVX0 U598 ( .INP(n427), .ZN(n576) );
  INVX0 U599 ( .INP(n692), .ZN(n577) );
  INVX0 U600 ( .INP(n428), .ZN(n578) );
  INVX0 U601 ( .INP(n429), .ZN(n579) );
  INVX0 U602 ( .INP(n309), .ZN(n580) );
  INVX0 U603 ( .INP(n422), .ZN(n581) );
  INVX0 U604 ( .INP(n423), .ZN(n582) );
  INVX0 U605 ( .INP(n714), .ZN(n583) );
  INVX0 U606 ( .INP(n424), .ZN(n584) );
  INVX0 U607 ( .INP(n425), .ZN(n585) );
  INVX0 U608 ( .INP(n33), .ZN(n586) );
  INVX0 U609 ( .INP(n418), .ZN(n587) );
  INVX0 U610 ( .INP(n419), .ZN(n588) );
  INVX0 U611 ( .INP(n709), .ZN(n589) );
  INVX0 U612 ( .INP(n420), .ZN(n590) );
  INVX0 U613 ( .INP(n421), .ZN(n591) );
  INVX0 U614 ( .INP(n713), .ZN(n592) );
  INVX0 U615 ( .INP(n416), .ZN(n593) );
  INVX0 U616 ( .INP(n417), .ZN(n594) );
  INVX0 U617 ( .INP(n701), .ZN(n595) );
  INVX0 U618 ( .INP(n412), .ZN(n596) );
  INVX0 U619 ( .INP(n413), .ZN(n597) );
  INVX0 U620 ( .INP(n705), .ZN(n598) );
  INVX0 U621 ( .INP(n408), .ZN(n599) );
  INVX0 U622 ( .INP(n409), .ZN(n600) );
  INVX0 U623 ( .INP(n694), .ZN(n601) );
  INVX0 U624 ( .INP(n405), .ZN(n602) );
  INVX0 U625 ( .INP(n697), .ZN(n603) );
  INVX0 U626 ( .INP(n400), .ZN(n604) );
  INVX0 U627 ( .INP(n401), .ZN(n605) );
  INVX0 U628 ( .INP(n688), .ZN(n606) );
  INVX0 U629 ( .INP(n396), .ZN(n607) );
  INVX0 U630 ( .INP(n36), .ZN(n608) );
  INVX0 U631 ( .INP(n392), .ZN(n609) );
  INVX0 U632 ( .INP(n393), .ZN(n610) );
  INVX0 U633 ( .INP(n322), .ZN(n611) );
  INVX0 U634 ( .INP(n387), .ZN(n612) );
  INVX0 U635 ( .INP(n386), .ZN(n613) );
  INVX0 U636 ( .INP(n64), .ZN(n614) );
  INVX0 U637 ( .INP(n389), .ZN(n615) );
  INVX0 U638 ( .INP(n388), .ZN(n616) );
  INVX0 U639 ( .INP(n60), .ZN(n617) );
  INVX0 U640 ( .INP(n382), .ZN(n618) );
  INVX0 U641 ( .INP(n383), .ZN(n619) );
  INVX0 U642 ( .INP(n108), .ZN(n620) );
  INVX0 U643 ( .INP(n384), .ZN(n621) );
  INVX0 U644 ( .INP(n385), .ZN(n622) );
  INVX0 U645 ( .INP(n740), .ZN(n623) );
  INVX0 U646 ( .INP(n378), .ZN(n624) );
  INVX0 U647 ( .INP(n379), .ZN(n625) );
  INVX0 U648 ( .INP(n737), .ZN(n626) );
  INVX0 U649 ( .INP(n380), .ZN(n627) );
  INVX0 U650 ( .INP(n381), .ZN(n628) );
  INVX0 U651 ( .INP(n34), .ZN(n629) );
  INVX0 U652 ( .INP(n374), .ZN(n630) );
  INVX0 U653 ( .INP(n375), .ZN(n631) );
  INVX0 U654 ( .INP(n69), .ZN(n632) );
  INVX0 U655 ( .INP(n377), .ZN(n633) );
  INVX0 U656 ( .INP(n376), .ZN(n634) );
  DELLN2X2 U657 ( .INP(n730), .Z(n635) );
  DELLN2X2 U658 ( .INP(n730), .Z(n636) );
  INVX0 U659 ( .INP(n635), .ZN(n722) );
  INVX0 U660 ( .INP(n738), .ZN(n637) );
  INVX0 U661 ( .INP(n370), .ZN(n638) );
  INVX0 U662 ( .INP(n371), .ZN(n639) );
  INVX0 U663 ( .INP(n741), .ZN(n640) );
  INVX0 U664 ( .INP(n372), .ZN(n641) );
  INVX0 U665 ( .INP(n373), .ZN(n642) );
  INVX0 U666 ( .INP(n742), .ZN(n643) );
  INVX0 U667 ( .INP(n366), .ZN(n644) );
  INVX0 U668 ( .INP(n367), .ZN(n645) );
  INVX0 U669 ( .INP(n739), .ZN(n646) );
  INVX0 U670 ( .INP(n368), .ZN(n647) );
  INVX0 U671 ( .INP(n369), .ZN(n648) );
  INVX0 U672 ( .INP(n42), .ZN(n649) );
  INVX0 U673 ( .INP(n363), .ZN(n650) );
  INVX0 U674 ( .INP(n362), .ZN(n651) );
  INVX0 U675 ( .INP(n71), .ZN(n652) );
  INVX0 U676 ( .INP(n364), .ZN(n653) );
  INVX0 U677 ( .INP(n365), .ZN(n654) );
  INVX0 U678 ( .INP(n94), .ZN(n655) );
  INVX0 U679 ( .INP(n358), .ZN(n656) );
  INVX0 U680 ( .INP(n359), .ZN(n657) );
  INVX0 U681 ( .INP(n25), .ZN(n658) );
  INVX0 U682 ( .INP(n360), .ZN(n659) );
  INVX0 U683 ( .INP(n361), .ZN(n660) );
  INVX0 U684 ( .INP(n109), .ZN(n661) );
  INVX0 U685 ( .INP(n355), .ZN(n662) );
  INVX0 U686 ( .INP(n354), .ZN(n663) );
  INVX0 U687 ( .INP(n103), .ZN(n664) );
  INVX0 U688 ( .INP(n356), .ZN(n665) );
  INVX0 U689 ( .INP(n357), .ZN(n666) );
  INVX0 U690 ( .INP(n107), .ZN(n667) );
  INVX0 U691 ( .INP(n351), .ZN(n668) );
  INVX0 U692 ( .INP(n350), .ZN(n669) );
  INVX0 U693 ( .INP(n307), .ZN(n670) );
  INVX0 U694 ( .INP(n353), .ZN(n671) );
  INVX0 U695 ( .INP(n352), .ZN(n672) );
  INVX0 U696 ( .INP(n734), .ZN(n673) );
  INVX0 U697 ( .INP(n347), .ZN(n674) );
  INVX0 U698 ( .INP(n346), .ZN(n675) );
  INVX0 U699 ( .INP(n61), .ZN(n676) );
  INVX0 U700 ( .INP(n348), .ZN(n677) );
  INVX0 U701 ( .INP(n349), .ZN(n678) );
  INVX0 U702 ( .INP(n717), .ZN(n679) );
  INVX0 U703 ( .INP(n343), .ZN(n680) );
  INVX0 U704 ( .INP(n342), .ZN(n681) );
  INVX0 U705 ( .INP(n70), .ZN(n682) );
  INVX0 U706 ( .INP(n338), .ZN(n683) );
  INVX0 U707 ( .INP(n339), .ZN(n684) );
  INVX0 U708 ( .INP(n32), .ZN(n685) );
  INVX0 U709 ( .INP(n340), .ZN(n686) );
  INVX0 U710 ( .INP(n341), .ZN(n687) );
  INVX0 U711 ( .INP(n732), .ZN(n688) );
  INVX0 U712 ( .INP(n391), .ZN(ones_counter_6b[2]) );
  INVX0 U713 ( .INP(n390), .ZN(n690) );
  INVX0 U714 ( .INP(n41), .ZN(n691) );
  INVX0 U715 ( .INP(n336), .ZN(n692) );
  INVX0 U716 ( .INP(n337), .ZN(n693) );
  INVX0 U717 ( .INP(n733), .ZN(n694) );
  INVX0 U718 ( .INP(n399), .ZN(ones_counter_6b[1]) );
  INVX0 U719 ( .INP(n398), .ZN(n696) );
  INVX0 U720 ( .INP(n77), .ZN(n697) );
  INVX0 U721 ( .INP(n394), .ZN(n698) );
  INVX0 U722 ( .INP(n605), .ZN(n699) );
  INVX0 U723 ( .INP(n395), .ZN(n700) );
  INVX0 U724 ( .INP(n104), .ZN(n701) );
  INVX0 U725 ( .INP(n407), .ZN(n702) );
  INVX0 U726 ( .INP(n597), .ZN(n703) );
  INVX0 U727 ( .INP(n406), .ZN(n704) );
  INVX0 U728 ( .INP(n27), .ZN(n705) );
  INVX0 U729 ( .INP(n402), .ZN(n706) );
  INVX0 U730 ( .INP(n600), .ZN(n707) );
  INVX0 U731 ( .INP(n403), .ZN(n708) );
  INVX0 U732 ( .INP(n56), .ZN(n709) );
  INVX0 U733 ( .INP(n414), .ZN(n710) );
  INVX0 U734 ( .INP(n591), .ZN(n711) );
  INVX0 U735 ( .INP(n415), .ZN(n712) );
  INVX0 U736 ( .INP(n62), .ZN(n713) );
  INVX0 U737 ( .INP(n410), .ZN(n714) );
  INVX0 U738 ( .INP(n594), .ZN(n715) );
  INVX0 U739 ( .INP(n411), .ZN(n716) );
  NAND3X4 U740 ( .IN1(n12), .IN2(n304), .IN3(n265), .QN(n91) );
  INVX0 U741 ( .INP(n19), .ZN(n717) );
  INVX0 U742 ( .INP(n344), .ZN(n718) );
  INVX0 U743 ( .INP(n214), .ZN(n719) );
  INVX0 U744 ( .INP(n345), .ZN(n720) );
  NAND2X0 U746 ( .IN1(n725), .IN2(n724), .QN(n732) );
  NAND2X0 U747 ( .IN1(n541), .IN2(n556), .QN(n724) );
  NAND2X0 U748 ( .IN1(n561), .IN2(n530), .QN(n725) );
  INVX0 U749 ( .INP(n315), .ZN(n730) );
  NAND2X0 U750 ( .IN1(n552), .IN2(n314), .QN(n731) );
  INVX0 U8 ( .INP(1'b1), .ZN(disparity_6b[0]) );
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
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n1, n2, n3, n4, n5, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72;

  NAND2X0 U3 ( .IN1(n6), .IN2(n7), .QN(rdispout) );
  INVX0 U8 ( .INP(n3), .ZN(n12) );
  INVX0 U9 ( .INP(n1), .ZN(n11) );
  INVX0 U10 ( .INP(n25), .ZN(n10) );
  AND3X1 U11 ( .IN1(n13), .IN2(n14), .IN3(kin), .Q(k_err) );
  NAND4X0 U12 ( .IN1(datain[4]), .IN2(n72), .IN3(n57), .IN4(n62), .QN(n14) );
  NAND4X0 U13 ( .IN1(datain[7]), .IN2(datain[6]), .IN3(datain[5]), .IN4(n18), 
        .QN(n13) );
  NAND4X0 U14 ( .IN1(n19), .IN2(n20), .IN3(n21), .IN4(n22), .QN(n18) );
  INVX0 U16 ( .INP(n40), .ZN(n17) );
  NAND4X0 U17 ( .IN1(n42), .IN2(n16), .IN3(n32), .IN4(n69), .QN(n21) );
  NAND4X0 U18 ( .IN1(n39), .IN2(n37), .IN3(n30), .IN4(n66), .QN(n20) );
  NOR2X0 U21 ( .IN1(n65), .IN2(n68), .QN(n15) );
  INVX0 U22 ( .INP(n29), .ZN(n23) );
  INVX0 U23 ( .INP(n31), .ZN(n24) );
  DELLN2X2 U4 ( .INP(ones_counter_6b[2]), .Z(n1) );
  DELLN2X2 U5 ( .INP(ones_counter_6b[2]), .Z(n2) );
  DELLN2X2 U6 ( .INP(ones_counter_6b[1]), .Z(n3) );
  DELLN2X2 U7 ( .INP(ones_counter_6b[1]), .Z(n4) );
  DELLN2X2 U15 ( .INP(ones_counter_4b[1]), .Z(n5) );
  DELLN2X2 U19 ( .INP(ones_counter_4b[1]), .Z(n25) );
  DELLN2X2 U20 ( .INP(rdispin), .Z(n26) );
  DELLN2X2 U24 ( .INP(rdispin), .Z(n27) );
  DELLN2X2 U25 ( .INP(n33), .Z(n28) );
  DELLN2X2 U26 ( .INP(datain[2]), .Z(n29) );
  DELLN2X2 U27 ( .INP(datain[2]), .Z(n30) );
  DELLN2X2 U28 ( .INP(datain[3]), .Z(n31) );
  DELLN2X2 U29 ( .INP(datain[3]), .Z(n32) );
  DELLN2X2 U30 ( .INP(datain[0]), .Z(n33) );
  DELLN2X2 U31 ( .INP(datain[1]), .Z(n34) );
  DELLN2X2 U32 ( .INP(datain[1]), .Z(n35) );
  DELLN2X2 U33 ( .INP(n28), .Z(n36) );
  DELLN2X2 U34 ( .INP(n28), .Z(n37) );
  DELLN2X2 U35 ( .INP(n33), .Z(n38) );
  DELLN2X2 U36 ( .INP(n35), .Z(n39) );
  DELLN2X2 U37 ( .INP(n34), .Z(n40) );
  DELLN2X2 U38 ( .INP(n35), .Z(n41) );
  DELLN2X2 U39 ( .INP(n34), .Z(n42) );
  DELLN2X2 U40 ( .INP(n45), .Z(n43) );
  DELLN2X2 U41 ( .INP(n45), .Z(n44) );
  NAND3X1 U42 ( .IN1(n43), .IN2(n46), .IN3(n26), .QN(n7) );
  OAI222X2 U43 ( .IN1(n10), .IN2(n4), .IN3(n5), .IN4(n2), .IN5(n11), .IN6(n12), 
        .QN(n8) );
  INVX0 U44 ( .INP(n8), .ZN(n45) );
  DELLN2X2 U45 ( .INP(n9), .Z(n46) );
  DELLN2X2 U46 ( .INP(n9), .Z(n47) );
  XOR2X2 U47 ( .IN1(ones_counter_6b[0]), .IN2(ones_counter_4b[0]), .Q(n9) );
  DELLN2X2 U48 ( .INP(n67), .Z(n48) );
  DELLN2X2 U49 ( .INP(n67), .Z(n49) );
  DELLN2X2 U50 ( .INP(n70), .Z(n50) );
  DELLN2X2 U51 ( .INP(n70), .Z(n51) );
  DELLN2X2 U52 ( .INP(n60), .Z(n52) );
  DELLN2X2 U53 ( .INP(n60), .Z(n53) );
  DELLN2X2 U54 ( .INP(n64), .Z(n54) );
  DELLN2X2 U55 ( .INP(n64), .Z(n55) );
  DELLN2X2 U56 ( .INP(n63), .Z(n56) );
  DELLN2X2 U57 ( .INP(n63), .Z(n57) );
  DELLN2X2 U58 ( .INP(n71), .Z(n58) );
  DELLN2X2 U59 ( .INP(n71), .Z(n59) );
  INVX0 U60 ( .INP(n17), .ZN(n60) );
  INVX0 U61 ( .INP(n52), .ZN(n61) );
  INVX0 U62 ( .INP(n53), .ZN(n62) );
  DELLN2X2 U63 ( .INP(datain[0]), .Z(n16) );
  INVX0 U64 ( .INP(n36), .ZN(n63) );
  INVX0 U65 ( .INP(n24), .ZN(n64) );
  INVX0 U66 ( .INP(n54), .ZN(n65) );
  INVX0 U67 ( .INP(n55), .ZN(n66) );
  INVX0 U68 ( .INP(n23), .ZN(n67) );
  INVX0 U69 ( .INP(n48), .ZN(n68) );
  INVX0 U70 ( .INP(n49), .ZN(n69) );
  INVX0 U71 ( .INP(n15), .ZN(n70) );
  INVX0 U72 ( .INP(n50), .ZN(n71) );
  INVX0 U73 ( .INP(n51), .ZN(n72) );
  NAND3X1 U74 ( .IN1(n58), .IN2(n61), .IN3(n38), .QN(n22) );
  NAND3X1 U75 ( .IN1(n56), .IN2(n59), .IN3(n41), .QN(n19) );
  AO21X2 U76 ( .IN1(n47), .IN2(n44), .IN3(n27), .Q(n6) );
  DELLN2X2 U77 ( .INP(data_6b[5]), .Z(dataout[9]) );
  DELLN2X2 U78 ( .INP(data_6b[4]), .Z(dataout[8]) );
  DELLN2X2 U79 ( .INP(data_6b[3]), .Z(dataout[7]) );
  DELLN2X2 U80 ( .INP(data_6b[2]), .Z(dataout[6]) );
  DELLN2X2 U81 ( .INP(data_6b[1]), .Z(dataout[5]) );
  DELLN2X2 U82 ( .INP(data_6b[0]), .Z(dataout[4]) );
  DELLN2X2 U83 ( .INP(data_4b[3]), .Z(dataout[3]) );
  DELLN2X2 U84 ( .INP(data_4b[2]), .Z(dataout[2]) );
  DELLN2X2 U85 ( .INP(data_4b[1]), .Z(dataout[1]) );
  DELLN2X2 U86 ( .INP(data_4b[0]), .Z(dataout[0]) );
endmodule


module encoder ( clk, rest_n, datain_8b, kin, dataout_10b, rdispout, k_err, 
        valid );
  input [7:0] datain_8b;
  output [9:0] dataout_10b;
  input clk, rest_n, kin;
  output rdispout, k_err, valid;
  wire   n51, n52, kin_reg, k_err_in, rdispout_in, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n49, n50;
  wire   [7:0] data_reg;
  wire   [9:0] dataout_10b_in;
  wire   [2:0] disparity_6b;
  wire   [1:0] ones_counter_4b;
  wire   [3:0] dataout_4b;
  wire   [2:0] ones_counter_6b;
  wire   [5:0] dataout_6b;
  wire   SYNOPSYS_UNCONNECTED__0;

  DFFARX1 valid_reg ( .D(n2), .CLK(clk), .RSTB(n39), .Q(n52), .QN(n47) );
  DFFARX1 counter_reg ( .D(n4), .CLK(clk), .RSTB(n40), .Q(n43), .QN(n3) );
  NAND2X0 U3 ( .IN1(n1), .IN2(n3), .QN(n2) );
  INVX0 U4 ( .INP(n45), .ZN(n1) );
  NAND2X0 U5 ( .IN1(n46), .IN2(n44), .QN(n4) );
  dff_enc_0 kin_ff ( .rst_n(n27), .d(kin), .clk(clk), .q(kin_reg) );
  dff_enc_2 k_err_ff ( .rst_n(n42), .d(k_err_in), .clk(clk), .q(k_err) );
  dff_enc_1 curr_dis_ff ( .rst_n(n41), .d(rdispout_in), .clk(clk), .q(n51) );
  dff_enc_WIDTH8 data_ff ( .rst_n(n29), .d(datain_8b), .clk(clk), .q(data_reg)
         );
  dff_enc_WIDTH10 dataout_ff ( .rst_n(n28), .d(dataout_10b_in), .clk(clk), .q(
        dataout_10b) );
  enc_3b enc_inst_3b ( .datain({n5, n7, n13}), .rdispin(n36), .kin(n31), 
        .disparity_6b({disparity_6b[2:1], 1'b0}), .ones_counter_4b(
        ones_counter_4b), .dataout(dataout_4b) );
  enc_5b enc_inst_5b ( .datain({n15, n25, n23, n17, n9}), .kin(n30), .rdispin(
        n35), .ones_counter_6b(ones_counter_6b), .disparity_6b({
        disparity_6b[2:1], SYNOPSYS_UNCONNECTED__0}), .dout(dataout_6b) );
  control_enc controller ( .kin(n32), .data_4b(dataout_4b), .data_6b(
        dataout_6b), .datain({n6, n8, n14, n16, n26, n24, n18, n10}), 
        .rdispin(n37), .ones_counter_4b(ones_counter_4b), .ones_counter_6b(
        ones_counter_6b), .rdispout(rdispout_in), .dataout(dataout_10b_in), 
        .k_err(k_err_in) );
  DELLN2X2 U6 ( .INP(data_reg[7]), .Z(n5) );
  DELLN2X2 U7 ( .INP(data_reg[7]), .Z(n6) );
  DELLN2X2 U8 ( .INP(data_reg[6]), .Z(n7) );
  DELLN2X2 U9 ( .INP(data_reg[6]), .Z(n8) );
  DELLN2X2 U10 ( .INP(data_reg[0]), .Z(n9) );
  DELLN2X2 U11 ( .INP(data_reg[0]), .Z(n10) );
  DELLN2X2 U12 ( .INP(n34), .Z(n11) );
  DELLN2X2 U13 ( .INP(kin_reg), .Z(n12) );
  DELLN2X2 U14 ( .INP(data_reg[5]), .Z(n13) );
  DELLN2X2 U15 ( .INP(data_reg[5]), .Z(n14) );
  DELLN2X2 U16 ( .INP(data_reg[4]), .Z(n15) );
  DELLN2X2 U17 ( .INP(data_reg[4]), .Z(n16) );
  DELLN2X2 U18 ( .INP(data_reg[1]), .Z(n17) );
  DELLN2X2 U19 ( .INP(data_reg[1]), .Z(n18) );
  DELLN2X2 U20 ( .INP(n33), .Z(n19) );
  DELLN2X2 U21 ( .INP(n33), .Z(n20) );
  DELLN2X2 U22 ( .INP(n51), .Z(n21) );
  DELLN2X2 U23 ( .INP(n51), .Z(n22) );
  DELLN2X2 U24 ( .INP(data_reg[2]), .Z(n23) );
  DELLN2X2 U25 ( .INP(data_reg[2]), .Z(n24) );
  DELLN2X2 U26 ( .INP(data_reg[3]), .Z(n25) );
  DELLN2X2 U27 ( .INP(data_reg[3]), .Z(n26) );
  DELLN2X2 U28 ( .INP(n20), .Z(n27) );
  DELLN2X2 U29 ( .INP(n19), .Z(n28) );
  DELLN2X2 U30 ( .INP(n34), .Z(n29) );
  DELLN2X2 U31 ( .INP(kin_reg), .Z(n30) );
  DELLN2X2 U32 ( .INP(n12), .Z(n31) );
  DELLN2X2 U33 ( .INP(n12), .Z(n32) );
  DELLN2X2 U34 ( .INP(rest_n), .Z(n33) );
  DELLN2X2 U35 ( .INP(rest_n), .Z(n34) );
  DELLN2X2 U36 ( .INP(n21), .Z(n35) );
  DELLN2X2 U37 ( .INP(n22), .Z(n36) );
  DELLN2X2 U38 ( .INP(n21), .Z(n37) );
  DELLN2X2 U39 ( .INP(n22), .Z(rdispout) );
  DELLN2X2 U40 ( .INP(n11), .Z(n39) );
  DELLN2X2 U41 ( .INP(n20), .Z(n40) );
  DELLN2X2 U42 ( .INP(n11), .Z(n41) );
  DELLN2X2 U43 ( .INP(n19), .Z(n42) );
  INVX0 U44 ( .INP(n43), .ZN(n44) );
  DELLN2X2 U45 ( .INP(n50), .Z(n45) );
  DELLN2X2 U46 ( .INP(n50), .Z(n46) );
  INVX0 U47 ( .INP(n47), .ZN(valid) );
  INVX0 U48 ( .INP(n52), .ZN(n49) );
  INVX0 U49 ( .INP(n49), .ZN(n50) );
endmodule


module transmitter ( sclk, pclk, reset_n, data_in_8b, kin, rdispout, k_err, 
        data_out_s );
  input [7:0] data_in_8b;
  input sclk, pclk, reset_n, kin;
  output rdispout, k_err, data_out_s;
  wire   valid, n1, n2, n3;
  wire   [9:0] dataout_10b;

  serializer serial ( .data_in(dataout_10b), .clk(sclk), .data_out(data_out_s), 
        .reset_n(n2), .valid(valid) );
  encoder enc ( .clk(pclk), .rest_n(n1), .datain_8b(data_in_8b), .kin(kin), 
        .dataout_10b(dataout_10b), .rdispout(rdispout), .k_err(k_err), .valid(
        valid) );
  DELLN2X2 U1 ( .INP(n3), .Z(n1) );
  DELLN2X2 U2 ( .INP(n3), .Z(n2) );
  DELLN2X2 U3 ( .INP(reset_n), .Z(n3) );
endmodule


module dff_width10 ( d, reset_n, clk, q );
  input [9:0] d;
  output [9:0] q;
  input reset_n, clk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19;

  DFFARX1 \q_reg[9]  ( .D(d[9]), .CLK(clk), .RSTB(n11), .Q(q[9]) );
  DFFARX1 \q_reg[8]  ( .D(d[8]), .CLK(clk), .RSTB(n8), .Q(q[8]) );
  DFFARX1 \q_reg[7]  ( .D(d[7]), .CLK(clk), .RSTB(n7), .Q(q[7]) );
  DFFARX1 \q_reg[6]  ( .D(d[6]), .CLK(clk), .RSTB(n5), .Q(q[6]) );
  DFFARX1 \q_reg[5]  ( .D(d[5]), .CLK(clk), .RSTB(n13), .Q(q[5]) );
  DFFARX1 \q_reg[4]  ( .D(d[4]), .CLK(clk), .RSTB(n10), .Q(q[4]) );
  DFFARX1 \q_reg[3]  ( .D(d[3]), .CLK(clk), .RSTB(n6), .Q(q[3]) );
  DFFARX1 \q_reg[2]  ( .D(d[2]), .CLK(clk), .RSTB(n4), .Q(q[2]) );
  DFFARX1 \q_reg[1]  ( .D(d[1]), .CLK(clk), .RSTB(n12), .Q(q[1]) );
  DFFARX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .RSTB(n9), .Q(q[0]) );
  DELLN2X2 U3 ( .INP(reset_n), .Z(n1) );
  DELLN2X2 U4 ( .INP(n16), .Z(n2) );
  DELLN2X2 U5 ( .INP(n17), .Z(n3) );
  DELLN2X2 U6 ( .INP(n18), .Z(n4) );
  DELLN2X2 U7 ( .INP(n18), .Z(n5) );
  DELLN2X2 U8 ( .INP(n19), .Z(n6) );
  DELLN2X2 U9 ( .INP(n19), .Z(n7) );
  DELLN2X2 U10 ( .INP(n2), .Z(n8) );
  DELLN2X2 U11 ( .INP(n2), .Z(n9) );
  DELLN2X2 U12 ( .INP(n16), .Z(n10) );
  DELLN2X2 U13 ( .INP(n3), .Z(n11) );
  DELLN2X2 U14 ( .INP(n3), .Z(n12) );
  DELLN2X2 U15 ( .INP(n17), .Z(n13) );
  DELLN2X2 U16 ( .INP(n1), .Z(n14) );
  DELLN2X2 U17 ( .INP(n1), .Z(n15) );
  DELLN2X2 U18 ( .INP(n15), .Z(n16) );
  DELLN2X2 U19 ( .INP(n14), .Z(n17) );
  DELLN2X2 U20 ( .INP(n15), .Z(n18) );
  DELLN2X2 U21 ( .INP(n14), .Z(n19) );
endmodule


module dff_width1_0 ( d, reset_n, clk, q );
  input [0:0] d;
  output [0:0] q;
  input reset_n, clk;


  DFFARX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .RSTB(reset_n), .Q(q[0]) );
endmodule


module dec4b ( clk, reset_n, datin, code_err1, kout1, datout );
  input [3:0] datin;
  output [2:0] datout;
  input clk, reset_n;
  output code_err1, kout1;
  wire   N53, N54, N55, N56, N57, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138;

  DFFARX1 code_err1_reg ( .D(N56), .CLK(clk), .RSTB(n48), .Q(code_err1) );
  DFFARX1 kout1_reg ( .D(N57), .CLK(clk), .RSTB(n68), .Q(kout1) );
  DFFARX1 \datout_reg[2]  ( .D(N55), .CLK(clk), .RSTB(n67), .Q(datout[2]) );
  DFFARX1 \datout_reg[1]  ( .D(N54), .CLK(clk), .RSTB(n49), .Q(datout[1]) );
  DFFARX1 \datout_reg[0]  ( .D(N53), .CLK(clk), .RSTB(n66), .Q(datout[0]) );
  NAND2X0 U3 ( .IN1(n1), .IN2(n2), .QN(N57) );
  NAND2X0 U6 ( .IN1(n8), .IN2(n9), .QN(N56) );
  INVX0 U8 ( .INP(n126), .ZN(n3) );
  INVX0 U9 ( .INP(n123), .ZN(n4) );
  OA21X1 U18 ( .IN1(n114), .IN2(n28), .IN3(n86), .Q(n17) );
  NAND2X0 U19 ( .IN1(n30), .IN2(n32), .QN(n15) );
  NAND2X0 U22 ( .IN1(n69), .IN2(n57), .QN(n12) );
  AND2X1 U23 ( .IN1(n21), .IN2(n22), .Q(n13) );
  NAND4X0 U24 ( .IN1(n63), .IN2(n37), .IN3(n55), .IN4(n137), .QN(n22) );
  INVX0 U27 ( .INP(n53), .ZN(n14) );
  INVX0 U30 ( .INP(n61), .ZN(n20) );
  DELLN2X2 U4 ( .INP(n50), .Z(n24) );
  DELLN2X2 U5 ( .INP(n51), .Z(n25) );
  DELLN2X2 U7 ( .INP(n51), .Z(n26) );
  DELLN2X2 U10 ( .INP(n54), .Z(n27) );
  DELLN2X2 U11 ( .INP(n54), .Z(n28) );
  DELLN2X2 U12 ( .INP(n52), .Z(n29) );
  DELLN2X2 U13 ( .INP(n52), .Z(n30) );
  DELLN2X2 U14 ( .INP(n64), .Z(n31) );
  DELLN2X2 U15 ( .INP(n64), .Z(n32) );
  DELLN2X2 U16 ( .INP(datin[3]), .Z(n33) );
  DELLN2X2 U17 ( .INP(n60), .Z(n34) );
  DELLN2X2 U20 ( .INP(n60), .Z(n35) );
  DELLN2X2 U21 ( .INP(n59), .Z(n36) );
  DELLN2X2 U25 ( .INP(n59), .Z(n37) );
  DELLN2X2 U26 ( .INP(datin[0]), .Z(n38) );
  DELLN2X2 U28 ( .INP(datin[0]), .Z(n39) );
  DELLN2X2 U29 ( .INP(datin[1]), .Z(n40) );
  DELLN2X2 U31 ( .INP(datin[1]), .Z(n41) );
  DELLN2X2 U32 ( .INP(datin[2]), .Z(n42) );
  DELLN2X2 U33 ( .INP(datin[2]), .Z(n43) );
  DELLN2X2 U34 ( .INP(reset_n), .Z(n44) );
  DELLN2X2 U35 ( .INP(reset_n), .Z(n45) );
  DELLN2X2 U36 ( .INP(n62), .Z(n46) );
  DELLN2X2 U37 ( .INP(n62), .Z(n47) );
  DELLN2X2 U38 ( .INP(n65), .Z(n48) );
  DELLN2X2 U39 ( .INP(n65), .Z(n49) );
  DELLN2X2 U40 ( .INP(datin[3]), .Z(n50) );
  DELLN2X2 U41 ( .INP(n33), .Z(n51) );
  DELLN2X2 U42 ( .INP(n33), .Z(n52) );
  DELLN2X2 U43 ( .INP(n38), .Z(n53) );
  DELLN2X2 U44 ( .INP(n39), .Z(n54) );
  DELLN2X2 U45 ( .INP(n39), .Z(n55) );
  DELLN2X2 U46 ( .INP(n38), .Z(n56) );
  DELLN2X2 U47 ( .INP(n40), .Z(n57) );
  DELLN2X2 U48 ( .INP(n41), .Z(n58) );
  DELLN2X2 U49 ( .INP(n41), .Z(n59) );
  DELLN2X2 U50 ( .INP(n40), .Z(n60) );
  DELLN2X2 U51 ( .INP(n42), .Z(n61) );
  DELLN2X2 U52 ( .INP(n43), .Z(n62) );
  DELLN2X2 U53 ( .INP(n43), .Z(n63) );
  DELLN2X2 U54 ( .INP(n42), .Z(n64) );
  DELLN2X2 U55 ( .INP(n45), .Z(n65) );
  DELLN2X2 U56 ( .INP(n44), .Z(n66) );
  DELLN2X2 U57 ( .INP(n45), .Z(n67) );
  DELLN2X2 U58 ( .INP(n44), .Z(n68) );
  NAND3X1 U59 ( .IN1(n72), .IN2(n18), .IN3(n76), .QN(N53) );
  NAND3X1 U60 ( .IN1(n70), .IN2(n121), .IN3(n26), .QN(n23) );
  OAI21X1 U61 ( .IN1(n112), .IN2(n36), .IN3(n77), .QN(n10) );
  NAND3X1 U62 ( .IN1(n93), .IN2(n118), .IN3(n47), .QN(n16) );
  DELLN2X2 U63 ( .INP(n131), .Z(n69) );
  DELLN2X2 U64 ( .INP(n131), .Z(n70) );
  DELLN2X2 U65 ( .INP(n128), .Z(n71) );
  DELLN2X2 U66 ( .INP(n128), .Z(n72) );
  NAND3X1 U67 ( .IN1(n78), .IN2(n11), .IN3(n71), .QN(N55) );
  DELLN2X2 U68 ( .INP(n3), .Z(n73) );
  DELLN2X2 U69 ( .INP(n3), .Z(n74) );
  NAND3X1 U70 ( .IN1(n74), .IN2(n83), .IN3(n29), .QN(n2) );
  DELLN2X2 U71 ( .INP(n17), .Z(n75) );
  DELLN2X2 U72 ( .INP(n17), .Z(n76) );
  NAND3X1 U73 ( .IN1(n129), .IN2(n16), .IN3(n75), .QN(N54) );
  DELLN2X2 U74 ( .INP(n12), .Z(n77) );
  DELLN2X2 U75 ( .INP(n12), .Z(n78) );
  DELLN2X2 U76 ( .INP(n127), .Z(n79) );
  DELLN2X2 U77 ( .INP(n127), .Z(n80) );
  DELLN2X2 U78 ( .INP(n124), .Z(n81) );
  DELLN2X2 U79 ( .INP(n124), .Z(n82) );
  NAND3X1 U80 ( .IN1(n80), .IN2(n94), .IN3(n82), .QN(n1) );
  DELLN2X2 U81 ( .INP(n4), .Z(n83) );
  DELLN2X2 U82 ( .INP(n4), .Z(n84) );
  NAND3X1 U83 ( .IN1(n84), .IN2(n92), .IN3(n73), .QN(n9) );
  DELLN2X2 U84 ( .INP(n19), .Z(n85) );
  DELLN2X2 U85 ( .INP(n19), .Z(n86) );
  AO21X2 U86 ( .IN1(n85), .IN2(n23), .IN3(n35), .Q(n21) );
  DELLN2X2 U87 ( .INP(n134), .Z(n87) );
  DELLN2X2 U88 ( .INP(n134), .Z(n88) );
  NAND3X1 U89 ( .IN1(n87), .IN2(n90), .IN3(n24), .QN(n18) );
  DELLN2X2 U90 ( .INP(n120), .Z(n89) );
  DELLN2X2 U91 ( .INP(n120), .Z(n90) );
  NAND3X1 U92 ( .IN1(n89), .IN2(n91), .IN3(n27), .QN(n19) );
  DELLN2X2 U93 ( .INP(n136), .Z(n91) );
  DELLN2X2 U94 ( .INP(n136), .Z(n92) );
  DELLN2X2 U95 ( .INP(n138), .Z(n93) );
  DELLN2X2 U96 ( .INP(n138), .Z(n94) );
  DELLN2X2 U97 ( .INP(n133), .Z(n95) );
  DELLN2X2 U98 ( .INP(n133), .Z(n96) );
  DELLN2X2 U99 ( .INP(n125), .Z(n97) );
  DELLN2X2 U100 ( .INP(n125), .Z(n98) );
  DELLN2X2 U101 ( .INP(n130), .Z(n99) );
  DELLN2X2 U102 ( .INP(n130), .Z(n100) );
  DELLN2X2 U103 ( .INP(n119), .Z(n101) );
  DELLN2X2 U104 ( .INP(n119), .Z(n102) );
  DELLN2X2 U105 ( .INP(n122), .Z(n103) );
  DELLN2X2 U106 ( .INP(n122), .Z(n104) );
  DELLN2X2 U107 ( .INP(n111), .Z(n105) );
  DELLN2X2 U108 ( .INP(n111), .Z(n106) );
  DELLN2X2 U109 ( .INP(n116), .Z(n107) );
  DELLN2X2 U110 ( .INP(n116), .Z(n108) );
  DELLN2X2 U111 ( .INP(n110), .Z(n109) );
  DELLN2X2 U112 ( .INP(n50), .Z(n6) );
  INVX0 U113 ( .INP(n6), .ZN(n110) );
  INVX0 U114 ( .INP(n132), .ZN(n111) );
  INVX0 U115 ( .INP(n105), .ZN(n112) );
  INVX0 U116 ( .INP(n106), .ZN(n113) );
  DELLN2X2 U117 ( .INP(n15), .Z(n114) );
  DELLN2X2 U118 ( .INP(n15), .Z(n115) );
  OR3X2 U119 ( .IN1(n58), .IN2(n115), .IN3(n113), .Q(n11) );
  INVX0 U120 ( .INP(n135), .ZN(n116) );
  INVX0 U121 ( .INP(n107), .ZN(n117) );
  INVX0 U122 ( .INP(n108), .ZN(n118) );
  INVX0 U123 ( .INP(n20), .ZN(n119) );
  INVX0 U124 ( .INP(n101), .ZN(n120) );
  INVX0 U125 ( .INP(n102), .ZN(n121) );
  INVX0 U126 ( .INP(n7), .ZN(n122) );
  INVX0 U127 ( .INP(n103), .ZN(n123) );
  INVX0 U128 ( .INP(n104), .ZN(n124) );
  INVX0 U129 ( .INP(n5), .ZN(n125) );
  INVX0 U130 ( .INP(n97), .ZN(n126) );
  INVX0 U131 ( .INP(n98), .ZN(n127) );
  DELLN2X2 U132 ( .INP(n13), .Z(n128) );
  DELLN2X2 U133 ( .INP(n13), .Z(n129) );
  INVX0 U134 ( .INP(n14), .ZN(n130) );
  INVX0 U135 ( .INP(n100), .ZN(n131) );
  INVX0 U136 ( .INP(n99), .ZN(n132) );
  INVX0 U137 ( .INP(n10), .ZN(n133) );
  INVX0 U138 ( .INP(n96), .ZN(n134) );
  INVX0 U139 ( .INP(n95), .ZN(n135) );
  DELLN2X2 U140 ( .INP(n110), .Z(n136) );
  DELLN2X2 U141 ( .INP(n109), .Z(n137) );
  DELLN2X2 U142 ( .INP(n109), .Z(n138) );
  NAND3X4 U143 ( .IN1(n25), .IN2(n81), .IN3(n79), .QN(n8) );
  XOR2X2 U144 ( .IN1(n46), .IN2(n117), .Q(n7) );
  AO22X2 U145 ( .IN1(n34), .IN2(n56), .IN3(n31), .IN4(n88), .Q(n5) );
endmodule


module dec6b ( clk, reset_n, rdispin, datin, code_err2, disp_err, kout2, 
        datout );
  input [5:0] datin;
  output [4:0] datout;
  input clk, reset_n, rdispin;
  output code_err2, disp_err, kout2;
  wire   N210, N211, N212, N213, N214, N215, N216, N217, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n11, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620;

  DFFARX1 kout2_reg ( .D(n411), .CLK(clk), .RSTB(n121), .Q(kout2) );
  DFFARX1 \datout_reg[4]  ( .D(N214), .CLK(clk), .RSTB(n145), .Q(datout[4]) );
  DFFARX1 \datout_reg[3]  ( .D(N213), .CLK(clk), .RSTB(n144), .Q(datout[3]) );
  DFFARX1 \datout_reg[2]  ( .D(N212), .CLK(clk), .RSTB(n118), .Q(datout[2]) );
  DFFARX1 \datout_reg[1]  ( .D(N211), .CLK(clk), .RSTB(n120), .Q(datout[1]) );
  DFFARX1 \datout_reg[0]  ( .D(N210), .CLK(clk), .RSTB(n146), .Q(datout[0]) );
  DFFARX1 code_err2_reg ( .D(N215), .CLK(clk), .RSTB(n119), .Q(code_err2) );
  DFFARX1 disp_err_reg ( .D(N217), .CLK(clk), .RSTB(n147), .Q(disp_err) );
  AO22X1 U3 ( .IN1(n96), .IN2(n1), .IN3(n2), .IN4(n3), .Q(N217) );
  INVX0 U4 ( .INP(n95), .ZN(n3) );
  AO22X1 U5 ( .IN1(n214), .IN2(n238), .IN3(n507), .IN4(n7), .Q(n2) );
  NAND2X0 U6 ( .IN1(n8), .IN2(n9), .QN(n7) );
  AO22X1 U9 ( .IN1(n416), .IN2(n213), .IN3(n260), .IN4(n16), .Q(n1) );
  NAND2X0 U10 ( .IN1(n18), .IN2(n19), .QN(n16) );
  NAND2X0 U13 ( .IN1(n21), .IN2(n22), .QN(n5) );
  OAI22X1 U16 ( .IN1(n23), .IN2(n198), .IN3(n24), .IN4(n173), .QN(N215) );
  OA22X1 U17 ( .IN1(n133), .IN2(n25), .IN3(n250), .IN4(n216), .Q(n24) );
  NOR2X0 U18 ( .IN1(n409), .IN2(n432), .QN(n25) );
  OA22X1 U19 ( .IN1(n26), .IN2(n253), .IN3(n218), .IN4(n437), .Q(n23) );
  NOR2X0 U20 ( .IN1(n413), .IN2(n540), .QN(n26) );
  INVX0 U21 ( .INP(n203), .ZN(n12) );
  INVX0 U23 ( .INP(n259), .ZN(n6) );
  NAND4X0 U26 ( .IN1(n29), .IN2(n30), .IN3(n31), .IN4(n32), .QN(N214) );
  AOI21X1 U28 ( .IN1(n202), .IN2(n178), .IN3(n439), .QN(n35) );
  INVX0 U29 ( .INP(n200), .ZN(N216) );
  OA22X1 U30 ( .IN1(n399), .IN2(n243), .IN3(n224), .IN4(n220), .Q(n31) );
  AO21X1 U31 ( .IN1(n230), .IN2(n189), .IN3(n257), .Q(n30) );
  NAND2X0 U32 ( .IN1(n429), .IN2(n48), .QN(n29) );
  NAND4X0 U33 ( .IN1(n407), .IN2(n422), .IN3(n454), .IN4(n424), .QN(n48) );
  NAND4X0 U34 ( .IN1(n227), .IN2(n463), .IN3(n55), .IN4(n56), .QN(N213) );
  OA221X1 U35 ( .IN1(n510), .IN2(n232), .IN3(n229), .IN4(n222), .IN5(n59), .Q(
        n56) );
  OA221X1 U36 ( .IN1(n421), .IN2(n248), .IN3(n60), .IN4(n241), .IN5(n190), .Q(
        n59) );
  AND3X1 U38 ( .IN1(n195), .IN2(n194), .IN3(n166), .Q(n40) );
  OA21X1 U39 ( .IN1(n170), .IN2(n177), .IN3(n246), .Q(n55) );
  NAND4X0 U40 ( .IN1(n448), .IN2(n443), .IN3(n68), .IN4(n464), .QN(N212) );
  OA22X1 U42 ( .IN1(n612), .IN2(n398), .IN3(n261), .IN4(n225), .Q(n39) );
  NAND2X0 U43 ( .IN1(n207), .IN2(n181), .QN(n44) );
  OA22X1 U44 ( .IN1(n440), .IN2(n193), .IN3(n242), .IN4(n180), .Q(n68) );
  NAND4X0 U45 ( .IN1(n245), .IN2(n449), .IN3(n74), .IN4(n452), .QN(N211) );
  OA21X1 U46 ( .IN1(n192), .IN2(n477), .IN3(n151), .Q(n65) );
  OA22X1 U47 ( .IN1(n418), .IN2(n196), .IN3(n211), .IN4(n176), .Q(n74) );
  OA221X1 U48 ( .IN1(n75), .IN2(n191), .IN3(n201), .IN4(n221), .IN5(n76), .Q(
        n66) );
  OA21X1 U49 ( .IN1(n240), .IN2(n474), .IN3(n256), .Q(n76) );
  NAND2X0 U50 ( .IN1(n208), .IN2(n160), .QN(n36) );
  NAND4X0 U52 ( .IN1(n255), .IN2(n442), .IN3(n451), .IN4(n79), .QN(N210) );
  OA221X1 U53 ( .IN1(n419), .IN2(n165), .IN3(n247), .IN4(n406), .IN5(n80), .Q(
        n79) );
  OA22X1 U54 ( .IN1(n593), .IN2(n524), .IN3(n516), .IN4(n251), .Q(n80) );
  NAND2X0 U55 ( .IN1(n483), .IN2(n158), .QN(n50) );
  NAND2X0 U56 ( .IN1(n186), .IN2(n182), .QN(n45) );
  AND3X1 U57 ( .IN1(n179), .IN2(n175), .IN3(n154), .Q(n49) );
  NAND2X0 U58 ( .IN1(n489), .IN2(n156), .QN(n69) );
  NAND2X0 U59 ( .IN1(n184), .IN2(n164), .QN(n61) );
  NAND2X0 U60 ( .IN1(n188), .IN2(n162), .QN(n72) );
  NOR2X0 U61 ( .IN1(n585), .IN2(n428), .QN(n46) );
  NAND2X0 U62 ( .IN1(n206), .IN2(n161), .QN(n63) );
  NOR2X0 U63 ( .IN1(n415), .IN2(n543), .QN(n38) );
  INVX0 U64 ( .INP(n521), .ZN(n47) );
  INVX0 U65 ( .INP(n263), .ZN(n15) );
  OA22X1 U66 ( .IN1(n519), .IN2(n239), .IN3(n262), .IN4(n236), .Q(n73) );
  INVX0 U67 ( .INP(n494), .ZN(n58) );
  NAND2X0 U68 ( .IN1(n231), .IN2(n212), .QN(n10) );
  NAND2X0 U69 ( .IN1(n125), .IN2(n434), .QN(n57) );
  NAND2X0 U70 ( .IN1(n185), .IN2(n159), .QN(n37) );
  NOR2X0 U71 ( .IN1(n446), .IN2(n139), .QN(n82) );
  NAND2X0 U72 ( .IN1(n504), .IN2(n157), .QN(n64) );
  NOR2X0 U73 ( .IN1(n461), .IN2(n129), .QN(n70) );
  OA21X1 U74 ( .IN1(n223), .IN2(n244), .IN3(n228), .Q(n77) );
  NOR3X0 U75 ( .IN1(n466), .IN2(n470), .IN3(n87), .QN(n53) );
  NOR2X0 U77 ( .IN1(n233), .IN2(n436), .QN(n33) );
  NOR2X0 U78 ( .IN1(n455), .IN2(n597), .QN(n34) );
  INVX0 U79 ( .INP(n431), .ZN(n14) );
  NOR2X0 U80 ( .IN1(n122), .IN2(n116), .QN(n4) );
  NAND2X0 U81 ( .IN1(n209), .IN2(n187), .QN(n51) );
  NOR2X0 U82 ( .IN1(n401), .IN2(n457), .QN(n81) );
  NAND2X0 U84 ( .IN1(n124), .IN2(n91), .QN(n20) );
  NAND2X0 U85 ( .IN1(n501), .IN2(n155), .QN(n42) );
  NOR2X0 U86 ( .IN1(n143), .IN2(n404), .QN(n71) );
  OA21X1 U88 ( .IN1(n219), .IN2(n486), .IN3(n234), .Q(n67) );
  NAND2X0 U89 ( .IN1(n205), .IN2(n183), .QN(n52) );
  NOR2X0 U90 ( .IN1(n445), .IN2(n460), .QN(n83) );
  INVX0 U91 ( .INP(n93), .ZN(n86) );
  INVX0 U92 ( .INP(n127), .ZN(n27) );
  NOR2X0 U93 ( .IN1(n141), .IN2(n150), .QN(n84) );
  INVX0 U95 ( .INP(n92), .ZN(n85) );
  NAND2X0 U96 ( .IN1(n210), .IN2(n163), .QN(n62) );
  NOR2X0 U97 ( .IN1(n458), .IN2(n99), .QN(n78) );
  INVX0 U98 ( .INP(n98), .ZN(n89) );
  NOR2X0 U99 ( .IN1(n128), .IN2(n137), .QN(n88) );
  DELLN2X2 U7 ( .INP(n134), .Z(n11) );
  DELLN2X2 U8 ( .INP(n134), .Z(n90) );
  DELLN2X2 U11 ( .INP(n115), .Z(n91) );
  DELLN2X2 U12 ( .INP(n115), .Z(n92) );
  DELLN2X2 U14 ( .INP(n136), .Z(n93) );
  DELLN2X2 U15 ( .INP(n136), .Z(n94) );
  DELLN2X2 U22 ( .INP(rdispin), .Z(n95) );
  DELLN2X2 U24 ( .INP(rdispin), .Z(n96) );
  DELLN2X2 U25 ( .INP(n140), .Z(n97) );
  DELLN2X2 U27 ( .INP(n140), .Z(n98) );
  DELLN2X2 U37 ( .INP(n135), .Z(n99) );
  DELLN2X2 U41 ( .INP(n135), .Z(n100) );
  DELLN2X2 U51 ( .INP(n130), .Z(n101) );
  DELLN2X2 U76 ( .INP(n130), .Z(n102) );
  DELLN2X2 U83 ( .INP(n131), .Z(n103) );
  DELLN2X2 U87 ( .INP(n131), .Z(n104) );
  DELLN2X2 U94 ( .INP(datin[1]), .Z(n105) );
  DELLN2X2 U100 ( .INP(datin[1]), .Z(n106) );
  DELLN2X2 U101 ( .INP(datin[2]), .Z(n107) );
  DELLN2X2 U102 ( .INP(datin[2]), .Z(n108) );
  DELLN2X2 U103 ( .INP(datin[3]), .Z(n109) );
  DELLN2X2 U104 ( .INP(datin[3]), .Z(n110) );
  DELLN2X2 U105 ( .INP(datin[4]), .Z(n111) );
  DELLN2X2 U106 ( .INP(datin[4]), .Z(n112) );
  DELLN2X2 U107 ( .INP(datin[5]), .Z(n113) );
  DELLN2X2 U108 ( .INP(datin[5]), .Z(n114) );
  DELLN2X2 U109 ( .INP(datin[0]), .Z(n115) );
  DELLN2X2 U110 ( .INP(datin[0]), .Z(n116) );
  DELLN2X2 U111 ( .INP(reset_n), .Z(n117) );
  DELLN2X2 U112 ( .INP(n104), .Z(n118) );
  DELLN2X2 U113 ( .INP(n103), .Z(n119) );
  DELLN2X2 U114 ( .INP(n102), .Z(n120) );
  DELLN2X2 U115 ( .INP(n101), .Z(n121) );
  DELLN2X2 U116 ( .INP(n105), .Z(n122) );
  DELLN2X2 U117 ( .INP(n106), .Z(n123) );
  DELLN2X2 U118 ( .INP(n105), .Z(n124) );
  DELLN2X2 U119 ( .INP(n106), .Z(n125) );
  DELLN2X2 U120 ( .INP(n114), .Z(n126) );
  DELLN2X2 U121 ( .INP(n113), .Z(n127) );
  DELLN2X2 U122 ( .INP(n114), .Z(n128) );
  DELLN2X2 U123 ( .INP(n113), .Z(n129) );
  DELLN2X2 U124 ( .INP(n117), .Z(n130) );
  DELLN2X2 U125 ( .INP(n117), .Z(n131) );
  DELLN2X2 U126 ( .INP(n107), .Z(n132) );
  DELLN2X2 U127 ( .INP(n108), .Z(n133) );
  DELLN2X2 U128 ( .INP(n107), .Z(n134) );
  DELLN2X2 U129 ( .INP(n108), .Z(n135) );
  DELLN2X2 U130 ( .INP(n109), .Z(n136) );
  DELLN2X2 U131 ( .INP(n110), .Z(n137) );
  DELLN2X2 U132 ( .INP(n109), .Z(n138) );
  DELLN2X2 U133 ( .INP(n110), .Z(n139) );
  DELLN2X2 U134 ( .INP(n111), .Z(n140) );
  DELLN2X2 U135 ( .INP(n112), .Z(n141) );
  DELLN2X2 U136 ( .INP(n111), .Z(n142) );
  DELLN2X2 U137 ( .INP(n112), .Z(n143) );
  DELLN2X2 U138 ( .INP(n104), .Z(n144) );
  DELLN2X2 U139 ( .INP(n102), .Z(n145) );
  DELLN2X2 U140 ( .INP(n103), .Z(n146) );
  DELLN2X2 U141 ( .INP(n101), .Z(n147) );
  DELLN2X2 U142 ( .INP(n402), .Z(n148) );
  DELLN2X2 U143 ( .INP(n402), .Z(n149) );
  INVX0 U144 ( .INP(n148), .ZN(n150) );
  NAND3X1 U145 ( .IN1(n172), .IN2(n204), .IN3(n100), .QN(n19) );
  DELLN2X2 U146 ( .INP(n566), .Z(n151) );
  DELLN2X2 U147 ( .INP(n566), .Z(n152) );
  OAI22X1 U148 ( .IN1(n167), .IN2(n152), .IN3(n423), .IN4(n249), .QN(n87) );
  DELLN2X2 U149 ( .INP(n480), .Z(n153) );
  DELLN2X2 U150 ( .INP(n480), .Z(n154) );
  DELLN2X2 U151 ( .INP(n551), .Z(n155) );
  DELLN2X2 U152 ( .INP(n551), .Z(n156) );
  DELLN2X2 U153 ( .INP(n554), .Z(n157) );
  DELLN2X2 U154 ( .INP(n554), .Z(n158) );
  DELLN2X2 U155 ( .INP(n546), .Z(n159) );
  DELLN2X2 U156 ( .INP(n546), .Z(n160) );
  DELLN2X2 U157 ( .INP(n548), .Z(n161) );
  DELLN2X2 U158 ( .INP(n548), .Z(n162) );
  DELLN2X2 U159 ( .INP(n545), .Z(n163) );
  DELLN2X2 U160 ( .INP(n545), .Z(n164) );
  DELLN2X2 U161 ( .INP(n473), .Z(n165) );
  DELLN2X2 U162 ( .INP(n473), .Z(n166) );
  DELLN2X2 U163 ( .INP(n613), .Z(n167) );
  DELLN2X2 U164 ( .INP(n613), .Z(n168) );
  DELLN2X2 U165 ( .INP(n615), .Z(n169) );
  DELLN2X2 U166 ( .INP(n615), .Z(n170) );
  DELLN2X2 U167 ( .INP(n495), .Z(n171) );
  DELLN2X2 U168 ( .INP(n495), .Z(n172) );
  DELLN2X2 U169 ( .INP(n564), .Z(n173) );
  DELLN2X2 U170 ( .INP(n564), .Z(n174) );
  DELLN2X2 U171 ( .INP(n491), .Z(n175) );
  DELLN2X2 U172 ( .INP(n491), .Z(n176) );
  DELLN2X2 U173 ( .INP(n561), .Z(n177) );
  DELLN2X2 U174 ( .INP(n561), .Z(n178) );
  DELLN2X2 U175 ( .INP(n476), .Z(n179) );
  DELLN2X2 U176 ( .INP(n476), .Z(n180) );
  DELLN2X2 U177 ( .INP(n552), .Z(n181) );
  DELLN2X2 U178 ( .INP(n552), .Z(n182) );
  DELLN2X2 U179 ( .INP(n488), .Z(n183) );
  DELLN2X2 U180 ( .INP(n488), .Z(n184) );
  DELLN2X2 U181 ( .INP(n549), .Z(n185) );
  DELLN2X2 U182 ( .INP(n549), .Z(n186) );
  DELLN2X2 U183 ( .INP(n482), .Z(n187) );
  DELLN2X2 U184 ( .INP(n482), .Z(n188) );
  DELLN2X2 U185 ( .INP(n570), .Z(n189) );
  DELLN2X2 U186 ( .INP(n570), .Z(n190) );
  DELLN2X2 U187 ( .INP(n601), .Z(n191) );
  DELLN2X2 U188 ( .INP(n601), .Z(n192) );
  DELLN2X2 U189 ( .INP(n518), .Z(n193) );
  DELLN2X2 U190 ( .INP(n518), .Z(n194) );
  DELLN2X2 U191 ( .INP(n485), .Z(n195) );
  DELLN2X2 U192 ( .INP(n485), .Z(n196) );
  DELLN2X2 U193 ( .INP(n506), .Z(n197) );
  DELLN2X2 U194 ( .INP(n506), .Z(n198) );
  DELLN2X2 U195 ( .INP(n39), .Z(n199) );
  DELLN2X2 U196 ( .INP(n39), .Z(n200) );
  OA221X2 U197 ( .IN1(n492), .IN2(n258), .IN3(n397), .IN4(n235), .IN5(n199), 
        .Q(n54) );
  DELLN2X2 U198 ( .INP(n36), .Z(n201) );
  DELLN2X2 U199 ( .INP(n36), .Z(n202) );
  DELLN2X2 U200 ( .INP(n605), .Z(n203) );
  DELLN2X2 U201 ( .INP(n605), .Z(n204) );
  DELLN2X2 U202 ( .INP(n503), .Z(n205) );
  DELLN2X2 U203 ( .INP(n503), .Z(n206) );
  DELLN2X2 U204 ( .INP(n555), .Z(n207) );
  DELLN2X2 U205 ( .INP(n555), .Z(n208) );
  DELLN2X2 U206 ( .INP(n500), .Z(n209) );
  DELLN2X2 U207 ( .INP(n500), .Z(n210) );
  DELLN2X2 U208 ( .INP(n515), .Z(n211) );
  DELLN2X2 U209 ( .INP(n515), .Z(n212) );
  DELLN2X2 U210 ( .INP(n5), .Z(n213) );
  DELLN2X2 U211 ( .INP(n5), .Z(n214) );
  DELLN2X2 U212 ( .INP(n498), .Z(n215) );
  DELLN2X2 U213 ( .INP(n498), .Z(n216) );
  DELLN2X2 U214 ( .INP(n607), .Z(n217) );
  DELLN2X2 U215 ( .INP(n607), .Z(n218) );
  NAND3X1 U216 ( .IN1(n217), .IN2(n226), .IN3(n11), .QN(n8) );
  DELLN2X2 U217 ( .INP(n513), .Z(n219) );
  DELLN2X2 U218 ( .INP(n513), .Z(n220) );
  DELLN2X2 U219 ( .INP(n594), .Z(n221) );
  DELLN2X2 U220 ( .INP(n594), .Z(n222) );
  DELLN2X2 U221 ( .INP(n509), .Z(n223) );
  DELLN2X2 U222 ( .INP(n509), .Z(n224) );
  DELLN2X2 U223 ( .INP(n598), .Z(n225) );
  DELLN2X2 U224 ( .INP(n598), .Z(n226) );
  DELLN2X2 U225 ( .INP(n53), .Z(n227) );
  DELLN2X2 U226 ( .INP(n53), .Z(n228) );
  DELLN2X2 U227 ( .INP(n525), .Z(n229) );
  DELLN2X2 U228 ( .INP(n525), .Z(n230) );
  DELLN2X2 U229 ( .INP(n522), .Z(n231) );
  DELLN2X2 U230 ( .INP(n522), .Z(n232) );
  DELLN2X2 U231 ( .INP(n581), .Z(n233) );
  DELLN2X2 U232 ( .INP(n581), .Z(n234) );
  DELLN2X2 U233 ( .INP(n595), .Z(n235) );
  DELLN2X2 U234 ( .INP(n595), .Z(n236) );
  DELLN2X2 U235 ( .INP(n584), .Z(n237) );
  DELLN2X2 U236 ( .INP(n584), .Z(n238) );
  DELLN2X2 U237 ( .INP(n619), .Z(n239) );
  DELLN2X2 U238 ( .INP(n619), .Z(n240) );
  DELLN2X2 U239 ( .INP(n620), .Z(n241) );
  DELLN2X2 U240 ( .INP(n620), .Z(n242) );
  DELLN2X2 U241 ( .INP(n41), .Z(n243) );
  DELLN2X2 U242 ( .INP(n41), .Z(n244) );
  AND2X4 U243 ( .IN1(n169), .IN2(n512), .Q(n41) );
  DELLN2X2 U244 ( .INP(n65), .Z(n245) );
  DELLN2X2 U245 ( .INP(n65), .Z(n246) );
  DELLN2X2 U246 ( .INP(n602), .Z(n247) );
  DELLN2X2 U247 ( .INP(n602), .Z(n248) );
  DELLN2X2 U248 ( .INP(n599), .Z(n249) );
  DELLN2X2 U249 ( .INP(n599), .Z(n250) );
  DELLN2X2 U250 ( .INP(n578), .Z(n251) );
  DELLN2X2 U251 ( .INP(n578), .Z(n252) );
  AND2X4 U252 ( .IN1(n153), .IN2(n252), .Q(n75) );
  DELLN2X2 U253 ( .INP(n610), .Z(n253) );
  DELLN2X2 U254 ( .INP(n610), .Z(n254) );
  DELLN2X2 U255 ( .INP(n77), .Z(n255) );
  DELLN2X2 U256 ( .INP(n77), .Z(n256) );
  DELLN2X2 U257 ( .INP(n603), .Z(n257) );
  DELLN2X2 U258 ( .INP(n603), .Z(n258) );
  DELLN2X2 U259 ( .INP(n563), .Z(n259) );
  DELLN2X2 U260 ( .INP(n563), .Z(n260) );
  DELLN2X2 U261 ( .INP(n560), .Z(n261) );
  DELLN2X2 U262 ( .INP(n560), .Z(n262) );
  DELLN2X2 U263 ( .INP(n614), .Z(n263) );
  DELLN2X2 U264 ( .INP(n614), .Z(n264) );
  DELLN2X2 U265 ( .INP(n586), .Z(n265) );
  DELLN2X2 U266 ( .INP(n586), .Z(n266) );
  DELLN2X2 U267 ( .INP(n589), .Z(n267) );
  DELLN2X2 U268 ( .INP(n589), .Z(n268) );
  DELLN2X2 U269 ( .INP(n580), .Z(n269) );
  DELLN2X2 U270 ( .INP(n580), .Z(n270) );
  DELLN2X2 U271 ( .INP(n583), .Z(n271) );
  DELLN2X2 U272 ( .INP(n583), .Z(n272) );
  DELLN2X2 U273 ( .INP(n576), .Z(n273) );
  DELLN2X2 U274 ( .INP(n576), .Z(n274) );
  DELLN2X2 U275 ( .INP(n577), .Z(n275) );
  DELLN2X2 U276 ( .INP(n577), .Z(n276) );
  DELLN2X2 U277 ( .INP(n574), .Z(n277) );
  DELLN2X2 U278 ( .INP(n574), .Z(n278) );
  DELLN2X2 U279 ( .INP(n575), .Z(n279) );
  DELLN2X2 U280 ( .INP(n575), .Z(n280) );
  DELLN2X2 U281 ( .INP(n572), .Z(n281) );
  DELLN2X2 U282 ( .INP(n572), .Z(n282) );
  DELLN2X2 U283 ( .INP(n573), .Z(n283) );
  DELLN2X2 U284 ( .INP(n573), .Z(n284) );
  DELLN2X2 U285 ( .INP(n568), .Z(n285) );
  DELLN2X2 U286 ( .INP(n568), .Z(n286) );
  DELLN2X2 U287 ( .INP(n571), .Z(n287) );
  DELLN2X2 U288 ( .INP(n571), .Z(n288) );
  DELLN2X2 U289 ( .INP(n562), .Z(n289) );
  DELLN2X2 U290 ( .INP(n562), .Z(n290) );
  DELLN2X2 U291 ( .INP(n565), .Z(n291) );
  DELLN2X2 U292 ( .INP(n565), .Z(n292) );
  AO22X1 U293 ( .IN1(n94), .IN2(n97), .IN3(n126), .IN4(n469), .Q(n17) );
  DELLN2X2 U294 ( .INP(n556), .Z(n293) );
  DELLN2X2 U295 ( .INP(n556), .Z(n294) );
  DELLN2X2 U296 ( .INP(n559), .Z(n295) );
  DELLN2X2 U297 ( .INP(n559), .Z(n296) );
  DELLN2X2 U298 ( .INP(n550), .Z(n297) );
  DELLN2X2 U299 ( .INP(n550), .Z(n298) );
  DELLN2X2 U300 ( .INP(n553), .Z(n299) );
  DELLN2X2 U301 ( .INP(n553), .Z(n300) );
  DELLN2X2 U302 ( .INP(n544), .Z(n301) );
  DELLN2X2 U303 ( .INP(n544), .Z(n302) );
  DELLN2X2 U304 ( .INP(n547), .Z(n303) );
  DELLN2X2 U305 ( .INP(n547), .Z(n304) );
  DELLN2X2 U306 ( .INP(n538), .Z(n305) );
  DELLN2X2 U307 ( .INP(n538), .Z(n306) );
  DELLN2X2 U308 ( .INP(n541), .Z(n307) );
  DELLN2X2 U309 ( .INP(n541), .Z(n308) );
  DELLN2X2 U310 ( .INP(n535), .Z(n309) );
  DELLN2X2 U311 ( .INP(n535), .Z(n310) );
  DELLN2X2 U312 ( .INP(n536), .Z(n311) );
  DELLN2X2 U313 ( .INP(n536), .Z(n312) );
  DELLN2X2 U314 ( .INP(n532), .Z(n313) );
  DELLN2X2 U315 ( .INP(n532), .Z(n314) );
  DELLN2X2 U316 ( .INP(n533), .Z(n315) );
  DELLN2X2 U317 ( .INP(n533), .Z(n316) );
  DELLN2X2 U318 ( .INP(n529), .Z(n317) );
  DELLN2X2 U319 ( .INP(n529), .Z(n318) );
  DELLN2X2 U320 ( .INP(n530), .Z(n319) );
  DELLN2X2 U321 ( .INP(n530), .Z(n320) );
  DELLN2X2 U322 ( .INP(n526), .Z(n321) );
  DELLN2X2 U323 ( .INP(n526), .Z(n322) );
  DELLN2X2 U324 ( .INP(n527), .Z(n323) );
  DELLN2X2 U325 ( .INP(n527), .Z(n324) );
  DELLN2X2 U326 ( .INP(n520), .Z(n325) );
  DELLN2X2 U327 ( .INP(n520), .Z(n326) );
  DELLN2X2 U328 ( .INP(n523), .Z(n327) );
  DELLN2X2 U329 ( .INP(n523), .Z(n328) );
  DELLN2X2 U330 ( .INP(n514), .Z(n329) );
  DELLN2X2 U331 ( .INP(n514), .Z(n330) );
  DELLN2X2 U332 ( .INP(n517), .Z(n331) );
  DELLN2X2 U333 ( .INP(n517), .Z(n332) );
  DELLN2X2 U334 ( .INP(n508), .Z(n333) );
  DELLN2X2 U335 ( .INP(n508), .Z(n334) );
  DELLN2X2 U336 ( .INP(n511), .Z(n335) );
  DELLN2X2 U337 ( .INP(n511), .Z(n336) );
  DELLN2X2 U338 ( .INP(n502), .Z(n337) );
  DELLN2X2 U339 ( .INP(n502), .Z(n338) );
  DELLN2X2 U340 ( .INP(n505), .Z(n339) );
  DELLN2X2 U341 ( .INP(n505), .Z(n340) );
  DELLN2X2 U342 ( .INP(n496), .Z(n341) );
  DELLN2X2 U343 ( .INP(n496), .Z(n342) );
  DELLN2X2 U344 ( .INP(n499), .Z(n343) );
  DELLN2X2 U345 ( .INP(n499), .Z(n344) );
  DELLN2X2 U346 ( .INP(n490), .Z(n345) );
  DELLN2X2 U347 ( .INP(n490), .Z(n346) );
  DELLN2X2 U348 ( .INP(n493), .Z(n347) );
  DELLN2X2 U349 ( .INP(n493), .Z(n348) );
  DELLN2X2 U350 ( .INP(n484), .Z(n349) );
  DELLN2X2 U351 ( .INP(n484), .Z(n350) );
  DELLN2X2 U352 ( .INP(n487), .Z(n351) );
  DELLN2X2 U353 ( .INP(n487), .Z(n352) );
  DELLN2X2 U354 ( .INP(n478), .Z(n353) );
  DELLN2X2 U355 ( .INP(n478), .Z(n354) );
  DELLN2X2 U356 ( .INP(n481), .Z(n355) );
  DELLN2X2 U357 ( .INP(n481), .Z(n356) );
  DELLN2X2 U358 ( .INP(n472), .Z(n357) );
  DELLN2X2 U359 ( .INP(n472), .Z(n358) );
  DELLN2X2 U360 ( .INP(n475), .Z(n359) );
  DELLN2X2 U361 ( .INP(n475), .Z(n360) );
  DELLN2X2 U362 ( .INP(n462), .Z(n361) );
  DELLN2X2 U363 ( .INP(n462), .Z(n362) );
  DELLN2X2 U364 ( .INP(n465), .Z(n363) );
  DELLN2X2 U365 ( .INP(n465), .Z(n364) );
  DELLN2X2 U366 ( .INP(n456), .Z(n365) );
  DELLN2X2 U367 ( .INP(n456), .Z(n366) );
  DELLN2X2 U368 ( .INP(n459), .Z(n367) );
  DELLN2X2 U369 ( .INP(n459), .Z(n368) );
  DELLN2X2 U370 ( .INP(n450), .Z(n369) );
  DELLN2X2 U371 ( .INP(n450), .Z(n370) );
  DELLN2X2 U372 ( .INP(n453), .Z(n371) );
  DELLN2X2 U373 ( .INP(n453), .Z(n372) );
  DELLN2X2 U374 ( .INP(n444), .Z(n373) );
  DELLN2X2 U375 ( .INP(n444), .Z(n374) );
  DELLN2X2 U376 ( .INP(n447), .Z(n375) );
  DELLN2X2 U377 ( .INP(n447), .Z(n376) );
  DELLN2X2 U378 ( .INP(n438), .Z(n377) );
  DELLN2X2 U379 ( .INP(n438), .Z(n378) );
  DELLN2X2 U380 ( .INP(n441), .Z(n379) );
  DELLN2X2 U381 ( .INP(n441), .Z(n380) );
  DELLN2X2 U382 ( .INP(n430), .Z(n381) );
  DELLN2X2 U383 ( .INP(n430), .Z(n382) );
  DELLN2X2 U384 ( .INP(n435), .Z(n383) );
  DELLN2X2 U385 ( .INP(n435), .Z(n384) );
  DELLN2X2 U386 ( .INP(n420), .Z(n385) );
  DELLN2X2 U387 ( .INP(n420), .Z(n386) );
  DELLN2X2 U388 ( .INP(n427), .Z(n387) );
  DELLN2X2 U389 ( .INP(n427), .Z(n388) );
  DELLN2X2 U390 ( .INP(n414), .Z(n389) );
  DELLN2X2 U391 ( .INP(n414), .Z(n390) );
  DELLN2X2 U392 ( .INP(n417), .Z(n391) );
  DELLN2X2 U393 ( .INP(n417), .Z(n392) );
  DELLN2X2 U394 ( .INP(n405), .Z(n393) );
  DELLN2X2 U395 ( .INP(n405), .Z(n394) );
  DELLN2X2 U396 ( .INP(n28), .Z(n395) );
  DELLN2X2 U397 ( .INP(n28), .Z(n396) );
  DELLN2X2 U398 ( .INP(n569), .Z(n397) );
  DELLN2X2 U399 ( .INP(n569), .Z(n398) );
  DELLN2X2 U400 ( .INP(n40), .Z(n399) );
  DELLN2X2 U401 ( .INP(n40), .Z(n400) );
  AND2X4 U402 ( .IN1(n479), .IN2(n400), .Q(n60) );
  DELLN2X2 U403 ( .INP(n608), .Z(n401) );
  DELLN2X2 U404 ( .INP(n608), .Z(n402) );
  DELLN2X2 U405 ( .INP(n609), .Z(n403) );
  DELLN2X2 U406 ( .INP(n609), .Z(n404) );
  INVX0 U407 ( .INP(n49), .ZN(n405) );
  INVX0 U408 ( .INP(n393), .ZN(n406) );
  INVX0 U409 ( .INP(n394), .ZN(n407) );
  DELLN2X2 U410 ( .INP(n606), .Z(n408) );
  DELLN2X2 U411 ( .INP(n606), .Z(n409) );
  DELLN2X2 U412 ( .INP(N216), .Z(n410) );
  DELLN2X2 U413 ( .INP(N216), .Z(n411) );
  DELLN2X2 U414 ( .INP(n591), .Z(n412) );
  DELLN2X2 U415 ( .INP(n591), .Z(n413) );
  INVX0 U416 ( .INP(n539), .ZN(n414) );
  INVX0 U417 ( .INP(n389), .ZN(n415) );
  INVX0 U418 ( .INP(n390), .ZN(n416) );
  INVX0 U419 ( .INP(n588), .ZN(n417) );
  INVX0 U420 ( .INP(n392), .ZN(n418) );
  INVX0 U421 ( .INP(n391), .ZN(n419) );
  INVX0 U422 ( .INP(n579), .ZN(n420) );
  INVX0 U423 ( .INP(n385), .ZN(n421) );
  INVX0 U424 ( .INP(n386), .ZN(n422) );
  DELLN2X2 U425 ( .INP(n582), .Z(n423) );
  DELLN2X2 U426 ( .INP(n582), .Z(n424) );
  DELLN2X2 U427 ( .INP(n426), .Z(n425) );
  INVX0 U428 ( .INP(n132), .ZN(n426) );
  INVX0 U429 ( .INP(n542), .ZN(n427) );
  INVX0 U430 ( .INP(n387), .ZN(n428) );
  INVX0 U431 ( .INP(n388), .ZN(n429) );
  INVX0 U432 ( .INP(n237), .ZN(n430) );
  INVX0 U433 ( .INP(n381), .ZN(n431) );
  INVX0 U434 ( .INP(n382), .ZN(n432) );
  DELLN2X2 U435 ( .INP(n85), .Z(n433) );
  DELLN2X2 U436 ( .INP(n85), .Z(n434) );
  OR2X4 U437 ( .IN1(n123), .IN2(n433), .Q(n43) );
  INVX0 U438 ( .INP(n264), .ZN(n435) );
  INVX0 U439 ( .INP(n383), .ZN(n436) );
  INVX0 U440 ( .INP(n384), .ZN(n437) );
  INVX0 U441 ( .INP(n587), .ZN(n438) );
  INVX0 U442 ( .INP(n377), .ZN(n439) );
  INVX0 U443 ( .INP(n378), .ZN(n440) );
  INVX0 U444 ( .INP(n67), .ZN(n441) );
  INVX0 U445 ( .INP(n380), .ZN(n442) );
  INVX0 U446 ( .INP(n379), .ZN(n443) );
  INVX0 U447 ( .INP(n558), .ZN(n444) );
  INVX0 U448 ( .INP(n373), .ZN(n445) );
  INVX0 U449 ( .INP(n374), .ZN(n446) );
  INVX0 U450 ( .INP(n66), .ZN(n447) );
  INVX0 U451 ( .INP(n376), .ZN(n448) );
  INVX0 U452 ( .INP(n375), .ZN(n449) );
  INVX0 U453 ( .INP(n73), .ZN(n450) );
  INVX0 U454 ( .INP(n369), .ZN(n451) );
  INVX0 U455 ( .INP(n370), .ZN(n452) );
  INVX0 U456 ( .INP(n567), .ZN(n453) );
  INVX0 U457 ( .INP(n372), .ZN(n454) );
  INVX0 U458 ( .INP(n371), .ZN(n455) );
  INVX0 U459 ( .INP(n89), .ZN(n456) );
  INVX0 U460 ( .INP(n365), .ZN(n457) );
  INVX0 U461 ( .INP(n366), .ZN(n458) );
  INVX0 U462 ( .INP(n86), .ZN(n459) );
  INVX0 U463 ( .INP(n367), .ZN(n460) );
  INVX0 U464 ( .INP(n368), .ZN(n461) );
  INVX0 U465 ( .INP(n54), .ZN(n462) );
  INVX0 U466 ( .INP(n362), .ZN(n463) );
  INVX0 U467 ( .INP(n361), .ZN(n464) );
  INVX0 U468 ( .INP(n34), .ZN(n465) );
  INVX0 U469 ( .INP(n363), .ZN(n466) );
  INVX0 U470 ( .INP(n364), .ZN(n467) );
  XNOR2X2 U471 ( .IN1(n138), .IN2(n142), .Q(n28) );
  INVX0 U472 ( .INP(n395), .ZN(n468) );
  INVX0 U473 ( .INP(n396), .ZN(n469) );
  XOR2X2 U474 ( .IN1(n557), .IN2(n468), .Q(n13) );
  DELLN2X2 U475 ( .INP(n33), .Z(n470) );
  DELLN2X2 U476 ( .INP(n33), .Z(n471) );
  NOR4X1 U477 ( .IN1(n471), .IN2(n410), .IN3(n467), .IN4(n35), .QN(n32) );
  INVX0 U478 ( .INP(n63), .ZN(n472) );
  INVX0 U479 ( .INP(n357), .ZN(n473) );
  INVX0 U480 ( .INP(n358), .ZN(n474) );
  INVX0 U481 ( .INP(n72), .ZN(n475) );
  INVX0 U482 ( .INP(n359), .ZN(n476) );
  INVX0 U483 ( .INP(n360), .ZN(n477) );
  INVX0 U484 ( .INP(n61), .ZN(n478) );
  INVX0 U485 ( .INP(n354), .ZN(n479) );
  INVX0 U486 ( .INP(n353), .ZN(n480) );
  INVX0 U487 ( .INP(n81), .ZN(n481) );
  INVX0 U488 ( .INP(n355), .ZN(n482) );
  INVX0 U489 ( .INP(n356), .ZN(n483) );
  INVX0 U490 ( .INP(n62), .ZN(n484) );
  INVX0 U491 ( .INP(n349), .ZN(n485) );
  INVX0 U492 ( .INP(n350), .ZN(n486) );
  INVX0 U493 ( .INP(n83), .ZN(n487) );
  INVX0 U494 ( .INP(n351), .ZN(n488) );
  INVX0 U495 ( .INP(n352), .ZN(n489) );
  INVX0 U496 ( .INP(n69), .ZN(n490) );
  INVX0 U497 ( .INP(n345), .ZN(n491) );
  INVX0 U498 ( .INP(n346), .ZN(n492) );
  INVX0 U499 ( .INP(n10), .ZN(n493) );
  INVX0 U500 ( .INP(n347), .ZN(n494) );
  INVX0 U501 ( .INP(n348), .ZN(n495) );
  INVX0 U502 ( .INP(n590), .ZN(n496) );
  INVX0 U503 ( .INP(n341), .ZN(n497) );
  INVX0 U504 ( .INP(n342), .ZN(n498) );
  INVX0 U505 ( .INP(n88), .ZN(n499) );
  INVX0 U506 ( .INP(n343), .ZN(n500) );
  INVX0 U507 ( .INP(n344), .ZN(n501) );
  INVX0 U508 ( .INP(n84), .ZN(n502) );
  INVX0 U509 ( .INP(n337), .ZN(n503) );
  INVX0 U510 ( .INP(n338), .ZN(n504) );
  INVX0 U511 ( .INP(n6), .ZN(n505) );
  INVX0 U512 ( .INP(n339), .ZN(n506) );
  INVX0 U513 ( .INP(n340), .ZN(n507) );
  INVX0 U514 ( .INP(n42), .ZN(n508) );
  INVX0 U515 ( .INP(n333), .ZN(n509) );
  INVX0 U516 ( .INP(n334), .ZN(n510) );
  INVX0 U517 ( .INP(n618), .ZN(n511) );
  INVX0 U518 ( .INP(n335), .ZN(n512) );
  INVX0 U519 ( .INP(n336), .ZN(n513) );
  INVX0 U520 ( .INP(n617), .ZN(n514) );
  INVX0 U521 ( .INP(n329), .ZN(n515) );
  INVX0 U522 ( .INP(n330), .ZN(n516) );
  INVX0 U523 ( .INP(n64), .ZN(n517) );
  INVX0 U524 ( .INP(n331), .ZN(n518) );
  INVX0 U525 ( .INP(n332), .ZN(n519) );
  INVX0 U526 ( .INP(n57), .ZN(n520) );
  INVX0 U527 ( .INP(n325), .ZN(n521) );
  INVX0 U528 ( .INP(n326), .ZN(n522) );
  INVX0 U529 ( .INP(n45), .ZN(n523) );
  INVX0 U530 ( .INP(n327), .ZN(n524) );
  INVX0 U531 ( .INP(n328), .ZN(n525) );
  INVX0 U532 ( .INP(n600), .ZN(n526) );
  INVX0 U533 ( .INP(n321), .ZN(n527) );
  INVX0 U534 ( .INP(n322), .ZN(n528) );
  INVX0 U535 ( .INP(n604), .ZN(n529) );
  INVX0 U536 ( .INP(n317), .ZN(n530) );
  INVX0 U537 ( .INP(n318), .ZN(n531) );
  INVX0 U538 ( .INP(n592), .ZN(n532) );
  INVX0 U539 ( .INP(n313), .ZN(n533) );
  INVX0 U540 ( .INP(n314), .ZN(n534) );
  INVX0 U541 ( .INP(n596), .ZN(n535) );
  INVX0 U542 ( .INP(n310), .ZN(n536) );
  INVX0 U543 ( .INP(n309), .ZN(n537) );
  INVX0 U544 ( .INP(n15), .ZN(n538) );
  INVX0 U545 ( .INP(n305), .ZN(n539) );
  INVX0 U546 ( .INP(n306), .ZN(n540) );
  INVX0 U547 ( .INP(n47), .ZN(n541) );
  INVX0 U548 ( .INP(n307), .ZN(n542) );
  INVX0 U549 ( .INP(n308), .ZN(n543) );
  INVX0 U550 ( .INP(n78), .ZN(n544) );
  INVX0 U551 ( .INP(n301), .ZN(n545) );
  INVX0 U552 ( .INP(n302), .ZN(n546) );
  INVX0 U553 ( .INP(n82), .ZN(n547) );
  INVX0 U554 ( .INP(n303), .ZN(n548) );
  INVX0 U555 ( .INP(n304), .ZN(n549) );
  INVX0 U556 ( .INP(n71), .ZN(n550) );
  INVX0 U557 ( .INP(n297), .ZN(n551) );
  INVX0 U558 ( .INP(n298), .ZN(n552) );
  INVX0 U559 ( .INP(n70), .ZN(n553) );
  INVX0 U560 ( .INP(n299), .ZN(n554) );
  INVX0 U561 ( .INP(n300), .ZN(n555) );
  INVX0 U562 ( .INP(n27), .ZN(n556) );
  INVX0 U563 ( .INP(n294), .ZN(n557) );
  INVX0 U564 ( .INP(n293), .ZN(n558) );
  INVX0 U565 ( .INP(n37), .ZN(n559) );
  INVX0 U566 ( .INP(n295), .ZN(n560) );
  INVX0 U567 ( .INP(n296), .ZN(n561) );
  INVX0 U568 ( .INP(n17), .ZN(n562) );
  INVX0 U569 ( .INP(n289), .ZN(n563) );
  INVX0 U570 ( .INP(n290), .ZN(n564) );
  INVX0 U571 ( .INP(n51), .ZN(n565) );
  INVX0 U572 ( .INP(n292), .ZN(n566) );
  INVX0 U573 ( .INP(n291), .ZN(n567) );
  INVX0 U574 ( .INP(n44), .ZN(n568) );
  INVX0 U575 ( .INP(n285), .ZN(n569) );
  INVX0 U576 ( .INP(n286), .ZN(n570) );
  INVX0 U577 ( .INP(n616), .ZN(n571) );
  INVX0 U578 ( .INP(n287), .ZN(n572) );
  INVX0 U579 ( .INP(n288), .ZN(n573) );
  INVX0 U580 ( .INP(n611), .ZN(n574) );
  INVX0 U581 ( .INP(n277), .ZN(n575) );
  INVX0 U582 ( .INP(n278), .ZN(n576) );
  INVX0 U583 ( .INP(n50), .ZN(n577) );
  INVX0 U584 ( .INP(n275), .ZN(n578) );
  INVX0 U585 ( .INP(n276), .ZN(n579) );
  INVX0 U586 ( .INP(n52), .ZN(n580) );
  INVX0 U587 ( .INP(n270), .ZN(n581) );
  INVX0 U588 ( .INP(n269), .ZN(n582) );
  INVX0 U589 ( .INP(n4), .ZN(n583) );
  INVX0 U590 ( .INP(n271), .ZN(n584) );
  INVX0 U591 ( .INP(n272), .ZN(n585) );
  INVX0 U592 ( .INP(n38), .ZN(n586) );
  INVX0 U593 ( .INP(n265), .ZN(n587) );
  INVX0 U594 ( .INP(n266), .ZN(n588) );
  INVX0 U595 ( .INP(n12), .ZN(n589) );
  INVX0 U596 ( .INP(n267), .ZN(n590) );
  INVX0 U597 ( .INP(n268), .ZN(n591) );
  INVX0 U598 ( .INP(n58), .ZN(n592) );
  INVX0 U599 ( .INP(n316), .ZN(n593) );
  INVX0 U600 ( .INP(n534), .ZN(n594) );
  INVX0 U601 ( .INP(n315), .ZN(n595) );
  INVX0 U602 ( .INP(n14), .ZN(n596) );
  INVX0 U603 ( .INP(n537), .ZN(n597) );
  INVX0 U604 ( .INP(n312), .ZN(n598) );
  INVX0 U605 ( .INP(n311), .ZN(n599) );
  INVX0 U606 ( .INP(n46), .ZN(n600) );
  INVX0 U607 ( .INP(n324), .ZN(n601) );
  INVX0 U608 ( .INP(n528), .ZN(n602) );
  INVX0 U609 ( .INP(n323), .ZN(n603) );
  INVX0 U610 ( .INP(n13), .ZN(n604) );
  INVX0 U611 ( .INP(n319), .ZN(n605) );
  INVX0 U612 ( .INP(n531), .ZN(n606) );
  INVX0 U613 ( .INP(n320), .ZN(n607) );
  DELLN2X2 U614 ( .INP(n426), .Z(n608) );
  DELLN2X2 U615 ( .INP(n425), .Z(n609) );
  DELLN2X2 U616 ( .INP(n425), .Z(n610) );
  NAND3X4 U617 ( .IN1(n171), .IN2(n403), .IN3(n215), .QN(n9) );
  NAND3X4 U618 ( .IN1(n149), .IN2(n412), .IN3(n168), .QN(n18) );
  NAND3X4 U619 ( .IN1(n174), .IN2(n408), .IN3(n254), .QN(n21) );
  NAND3X4 U620 ( .IN1(n90), .IN2(n497), .IN3(n197), .QN(n22) );
  INVX0 U621 ( .INP(n20), .ZN(n611) );
  INVX0 U622 ( .INP(n280), .ZN(n612) );
  INVX0 U623 ( .INP(n273), .ZN(n613) );
  INVX0 U624 ( .INP(n279), .ZN(n614) );
  INVX0 U625 ( .INP(n274), .ZN(n615) );
  INVX0 U626 ( .INP(n43), .ZN(n616) );
  INVX0 U627 ( .INP(n281), .ZN(n617) );
  INVX0 U628 ( .INP(n283), .ZN(n618) );
  INVX0 U629 ( .INP(n282), .ZN(n619) );
  INVX0 U630 ( .INP(n284), .ZN(n620) );
endmodule


module dff_width1_1 ( d, reset_n, clk, q );
  input [0:0] d;
  output [0:0] q;
  input reset_n, clk;


  DFFARX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .RSTB(reset_n), .Q(q[0]) );
endmodule


module dff_width8 ( d, reset_n, clk, q );
  input [7:0] d;
  output [7:0] q;
  input reset_n, clk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  DFFARX1 \q_reg[7]  ( .D(d[7]), .CLK(clk), .RSTB(n7), .Q(q[7]) );
  DFFARX1 \q_reg[6]  ( .D(d[6]), .CLK(clk), .RSTB(n11), .Q(q[6]) );
  DFFARX1 \q_reg[5]  ( .D(d[5]), .CLK(clk), .RSTB(n13), .Q(q[5]) );
  DFFARX1 \q_reg[4]  ( .D(d[4]), .CLK(clk), .RSTB(n12), .Q(q[4]) );
  DFFARX1 \q_reg[3]  ( .D(d[3]), .CLK(clk), .RSTB(n5), .Q(q[3]) );
  DFFARX1 \q_reg[2]  ( .D(d[2]), .CLK(clk), .RSTB(n8), .Q(q[2]) );
  DFFARX1 \q_reg[1]  ( .D(d[1]), .CLK(clk), .RSTB(n6), .Q(q[1]) );
  DFFARX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .RSTB(n14), .Q(q[0]) );
  DELLN2X2 U3 ( .INP(reset_n), .Z(n1) );
  DELLN2X2 U4 ( .INP(reset_n), .Z(n4) );
  DELLN2X2 U5 ( .INP(n4), .Z(n2) );
  DELLN2X2 U6 ( .INP(n4), .Z(n3) );
  DELLN2X2 U7 ( .INP(n10), .Z(n5) );
  DELLN2X2 U8 ( .INP(n10), .Z(n6) );
  DELLN2X2 U9 ( .INP(n3), .Z(n7) );
  DELLN2X2 U10 ( .INP(n9), .Z(n8) );
  DELLN2X2 U11 ( .INP(n1), .Z(n9) );
  DELLN2X2 U12 ( .INP(n1), .Z(n10) );
  DELLN2X2 U13 ( .INP(n2), .Z(n11) );
  DELLN2X2 U14 ( .INP(n9), .Z(n12) );
  DELLN2X2 U15 ( .INP(n3), .Z(n13) );
  DELLN2X2 U16 ( .INP(n2), .Z(n14) );
endmodule


module control ( data, code_err1, code_err2, kout1, kout2, rdispin, clk, 
        reset_n, kout, code_err, rdispout );
  input [7:0] data;
  input code_err1, code_err2, kout1, kout2, rdispin, clk, reset_n;
  output kout, code_err, rdispout;
  wire   N26, N27, N39, n23, n24, n25, N9, N8, N6, N5, N4, N3, N10, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107;
  wire   [3:0] counter;

  DFFARX1 kout_reg ( .D(N27), .CLK(clk), .RSTB(n21), .Q(kout) );
  DFFARX1 code_err_reg ( .D(N26), .CLK(clk), .RSTB(n19), .Q(code_err) );
  DFFARX1 rdispout_reg ( .D(N39), .CLK(clk), .RSTB(n20), .Q(rdispout) );
  NOR3X0 U3 ( .IN1(n23), .IN2(n22), .IN3(n24), .QN(N39) );
  NAND2X0 U5 ( .IN1(n25), .IN2(counter[2]), .QN(n23) );
  AO22X1 U4 ( .IN1(n7), .IN2(n84), .IN3(n12), .IN4(n81), .Q(n104) );
  DELLN2X2 U6 ( .INP(n18), .Z(n1) );
  DELLN2X2 U7 ( .INP(data[1]), .Z(n2) );
  DELLN2X2 U8 ( .INP(data[1]), .Z(n3) );
  DELLN2X2 U9 ( .INP(data[4]), .Z(n4) );
  DELLN2X2 U10 ( .INP(data[4]), .Z(n5) );
  DELLN2X2 U11 ( .INP(data[7]), .Z(n6) );
  DELLN2X2 U12 ( .INP(data[7]), .Z(n7) );
  DELLN2X2 U13 ( .INP(data[0]), .Z(n8) );
  DELLN2X2 U14 ( .INP(data[0]), .Z(n9) );
  DELLN2X2 U15 ( .INP(data[3]), .Z(n10) );
  DELLN2X2 U16 ( .INP(data[3]), .Z(n11) );
  DELLN2X2 U17 ( .INP(data[6]), .Z(n12) );
  DELLN2X2 U18 ( .INP(data[6]), .Z(n13) );
  DELLN2X2 U19 ( .INP(data[2]), .Z(n14) );
  DELLN2X2 U20 ( .INP(data[2]), .Z(n15) );
  DELLN2X2 U21 ( .INP(data[5]), .Z(n16) );
  DELLN2X2 U22 ( .INP(data[5]), .Z(n17) );
  DELLN2X2 U23 ( .INP(reset_n), .Z(n18) );
  DELLN2X2 U24 ( .INP(n1), .Z(n19) );
  DELLN2X2 U25 ( .INP(n1), .Z(n20) );
  DELLN2X2 U26 ( .INP(n18), .Z(n21) );
  OR2X4 U27 ( .IN1(n56), .IN2(n96), .Q(n103) );
  XNOR2X2 U28 ( .IN1(rdispin), .IN2(n93), .Q(n25) );
  AND2X1 U29 ( .IN1(n72), .IN2(n87), .Q(n22) );
  XNOR3X2 U30 ( .IN1(n66), .IN2(n99), .IN3(n60), .Q(counter[1]) );
  INVX0 U31 ( .INP(counter[1]), .ZN(n26) );
  XNOR2X2 U32 ( .IN1(n94), .IN2(n26), .Q(n24) );
  XOR2X2 U33 ( .IN1(n86), .IN2(n71), .Q(counter[2]) );
  OR2X4 U34 ( .IN1(code_err1), .IN2(code_err2), .Q(N26) );
  OR2X4 U35 ( .IN1(kout1), .IN2(kout2), .Q(N27) );
  DELLN2X2 U36 ( .INP(n98), .Z(n27) );
  DELLN2X2 U37 ( .INP(n98), .Z(n28) );
  DELLN2X2 U38 ( .INP(n92), .Z(n29) );
  DELLN2X2 U39 ( .INP(n92), .Z(n30) );
  DELLN2X2 U40 ( .INP(n95), .Z(n31) );
  DELLN2X2 U41 ( .INP(n95), .Z(n32) );
  AND2X1 U42 ( .IN1(n88), .IN2(n62), .Q(n102) );
  DELLN2X2 U43 ( .INP(n82), .Z(n33) );
  DELLN2X2 U44 ( .INP(n82), .Z(n34) );
  DELLN2X2 U45 ( .INP(n85), .Z(n35) );
  DELLN2X2 U46 ( .INP(n85), .Z(n36) );
  AND2X1 U47 ( .IN1(n91), .IN2(n69), .Q(N10) );
  DELLN2X2 U48 ( .INP(n76), .Z(n37) );
  DELLN2X2 U49 ( .INP(n76), .Z(n38) );
  DELLN2X2 U50 ( .INP(n79), .Z(n39) );
  DELLN2X2 U51 ( .INP(n79), .Z(n40) );
  DELLN2X2 U52 ( .INP(n70), .Z(n41) );
  DELLN2X2 U53 ( .INP(n70), .Z(n42) );
  DELLN2X2 U54 ( .INP(n73), .Z(n43) );
  DELLN2X2 U55 ( .INP(n73), .Z(n44) );
  DELLN2X2 U56 ( .INP(n64), .Z(n45) );
  DELLN2X2 U57 ( .INP(n64), .Z(n46) );
  DELLN2X2 U58 ( .INP(n67), .Z(n47) );
  DELLN2X2 U59 ( .INP(n67), .Z(n48) );
  DELLN2X2 U60 ( .INP(n58), .Z(n49) );
  DELLN2X2 U61 ( .INP(n58), .Z(n50) );
  DELLN2X2 U62 ( .INP(n61), .Z(n51) );
  DELLN2X2 U63 ( .INP(n61), .Z(n52) );
  DELLN2X2 U64 ( .INP(n55), .Z(n53) );
  DELLN2X2 U65 ( .INP(n55), .Z(n54) );
  INVX0 U66 ( .INP(n100), .ZN(n55) );
  INVX0 U67 ( .INP(n53), .ZN(n56) );
  INVX0 U68 ( .INP(n54), .ZN(n57) );
  INVX0 U69 ( .INP(n97), .ZN(n58) );
  INVX0 U70 ( .INP(n49), .ZN(n59) );
  INVX0 U71 ( .INP(n50), .ZN(n60) );
  INVX0 U72 ( .INP(N5), .ZN(n61) );
  INVX0 U73 ( .INP(n51), .ZN(n62) );
  INVX0 U74 ( .INP(n52), .ZN(n63) );
  INVX0 U75 ( .INP(N9), .ZN(n64) );
  INVX0 U76 ( .INP(n46), .ZN(n65) );
  INVX0 U77 ( .INP(n45), .ZN(n66) );
  INVX0 U78 ( .INP(N4), .ZN(n67) );
  INVX0 U79 ( .INP(n47), .ZN(n68) );
  INVX0 U80 ( .INP(n48), .ZN(n69) );
  INVX0 U81 ( .INP(n101), .ZN(n70) );
  INVX0 U82 ( .INP(n41), .ZN(n71) );
  INVX0 U83 ( .INP(n42), .ZN(n72) );
  INVX0 U84 ( .INP(n107), .ZN(n73) );
  INVX0 U85 ( .INP(n43), .ZN(n74) );
  INVX0 U86 ( .INP(n44), .ZN(n75) );
  INVX0 U87 ( .INP(n106), .ZN(n76) );
  INVX0 U88 ( .INP(n37), .ZN(n77) );
  INVX0 U89 ( .INP(n38), .ZN(n78) );
  INVX0 U90 ( .INP(n105), .ZN(n79) );
  INVX0 U91 ( .INP(n39), .ZN(n80) );
  INVX0 U92 ( .INP(n40), .ZN(n81) );
  INVX0 U93 ( .INP(N3), .ZN(n82) );
  INVX0 U94 ( .INP(n33), .ZN(n83) );
  INVX0 U95 ( .INP(n34), .ZN(n84) );
  INVX0 U96 ( .INP(N10), .ZN(n85) );
  INVX0 U97 ( .INP(n35), .ZN(n86) );
  INVX0 U98 ( .INP(n36), .ZN(n87) );
  DELLN2X2 U99 ( .INP(N8), .Z(n88) );
  DELLN2X2 U100 ( .INP(N8), .Z(n89) );
  XOR2X2 U101 ( .IN1(n89), .IN2(n63), .Q(counter[0]) );
  DELLN2X2 U102 ( .INP(n104), .Z(n90) );
  DELLN2X2 U103 ( .INP(n104), .Z(n91) );
  XOR2X2 U104 ( .IN1(n90), .IN2(n68), .Q(N9) );
  INVX0 U105 ( .INP(counter[0]), .ZN(n92) );
  INVX0 U106 ( .INP(n29), .ZN(n93) );
  INVX0 U107 ( .INP(n30), .ZN(n94) );
  XOR2X2 U108 ( .IN1(n6), .IN2(n83), .Q(n105) );
  XOR2X2 U109 ( .IN1(n4), .IN2(n16), .Q(n107) );
  XOR2X2 U110 ( .IN1(n2), .IN2(n14), .Q(n106) );
  XOR2X2 U111 ( .IN1(n13), .IN2(n80), .Q(N8) );
  XOR2X2 U112 ( .IN1(n11), .IN2(n74), .Q(N5) );
  AO22X2 U113 ( .IN1(n5), .IN2(n17), .IN3(n10), .IN4(n75), .Q(N6) );
  AO22X2 U114 ( .IN1(n3), .IN2(n15), .IN3(n8), .IN4(n78), .Q(N4) );
  XOR2X2 U115 ( .IN1(n9), .IN2(n77), .Q(N3) );
  INVX0 U116 ( .INP(n102), .ZN(n95) );
  INVX0 U117 ( .INP(n32), .ZN(n96) );
  INVX0 U118 ( .INP(n31), .ZN(n97) );
  INVX0 U119 ( .INP(N6), .ZN(n98) );
  INVX0 U120 ( .INP(n28), .ZN(n99) );
  INVX0 U121 ( .INP(n27), .ZN(n100) );
  AO22X1 U122 ( .IN1(n57), .IN2(n59), .IN3(n65), .IN4(n103), .Q(n101) );
endmodule


module decoder ( datin, rdispin, clk, reset_n, code_err, kout, disp_err, 
        rdispout, datout );
  input [9:0] datin;
  output [7:0] datout;
  input rdispin, clk, reset_n;
  output code_err, kout, disp_err, rdispout;
  wire   rdispin_dff, kout1, code_err1, kout2, code_err2, disp_err_dff, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [9:0] datin_dff;
  wire   [2:0] out4b;
  wire   [4:0] out6b;

  dff_width10 dff_data_in ( .d(datin), .reset_n(n27), .clk(clk), .q(datin_dff)
         );
  dff_width1_0 dff_rdispin ( .d(rdispin), .reset_n(n1), .clk(clk), .q(
        rdispin_dff) );
  dec4b dec_4b_3b ( .clk(clk), .reset_n(n24), .datin(datin_dff[3:0]), 
        .code_err1(code_err1), .kout1(kout1), .datout(out4b) );
  dec6b dec_6b_5b ( .clk(clk), .reset_n(n25), .rdispin(n5), .datin(
        datin_dff[9:4]), .code_err2(code_err2), .disp_err(disp_err_dff), 
        .kout2(kout2), .datout(out6b) );
  dff_width1_1 dff_disp_err ( .d(disp_err_dff), .reset_n(n2), .clk(clk), .q(
        disp_err) );
  dff_width8 dff_data_out ( .d({n10, n17, n21, n8, n15, n19, n6, n13}), 
        .reset_n(n3), .clk(clk), .q(datout) );
  control ctrl ( .data({n11, n16, n20, n9, n14, n18, n7, n12}), .code_err1(
        code_err1), .code_err2(code_err2), .kout1(kout1), .kout2(kout2), 
        .rdispin(n4), .clk(clk), .reset_n(n27), .kout(kout), .code_err(
        code_err), .rdispout(rdispout) );
  DELLN2X2 U1 ( .INP(n25), .Z(n1) );
  DELLN2X2 U2 ( .INP(n26), .Z(n2) );
  DELLN2X2 U3 ( .INP(n26), .Z(n3) );
  DELLN2X2 U4 ( .INP(rdispin_dff), .Z(n4) );
  DELLN2X2 U5 ( .INP(rdispin_dff), .Z(n5) );
  DELLN2X2 U6 ( .INP(out6b[1]), .Z(n6) );
  DELLN2X2 U7 ( .INP(out6b[1]), .Z(n7) );
  DELLN2X2 U8 ( .INP(out6b[4]), .Z(n8) );
  DELLN2X2 U9 ( .INP(out6b[4]), .Z(n9) );
  DELLN2X2 U10 ( .INP(out4b[2]), .Z(n10) );
  DELLN2X2 U11 ( .INP(out4b[2]), .Z(n11) );
  DELLN2X2 U12 ( .INP(out6b[0]), .Z(n12) );
  DELLN2X2 U13 ( .INP(out6b[0]), .Z(n13) );
  DELLN2X2 U14 ( .INP(out6b[3]), .Z(n14) );
  DELLN2X2 U15 ( .INP(out6b[3]), .Z(n15) );
  DELLN2X2 U16 ( .INP(out4b[1]), .Z(n16) );
  DELLN2X2 U17 ( .INP(out4b[1]), .Z(n17) );
  DELLN2X2 U18 ( .INP(out6b[2]), .Z(n18) );
  DELLN2X2 U19 ( .INP(out6b[2]), .Z(n19) );
  DELLN2X2 U20 ( .INP(out4b[0]), .Z(n20) );
  DELLN2X2 U21 ( .INP(out4b[0]), .Z(n21) );
  DELLN2X2 U22 ( .INP(reset_n), .Z(n22) );
  DELLN2X2 U23 ( .INP(reset_n), .Z(n23) );
  DELLN2X2 U24 ( .INP(n23), .Z(n24) );
  DELLN2X2 U25 ( .INP(n22), .Z(n25) );
  DELLN2X2 U26 ( .INP(n23), .Z(n26) );
  DELLN2X2 U27 ( .INP(n22), .Z(n27) );
endmodule


module deserializer ( clk, reset_n, datin, datout );
  output [9:0] datout;
  input clk, reset_n, datin;
  wire   N27, N28, N29, N30, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n1, n2, n15, n30, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252;
  wire   [3:0] bit_count;

  INVX0 U4 ( .INP(n143), .ZN(n3) );
  NAND2X0 U5 ( .IN1(n140), .IN2(n127), .QN(n4) );
  AO22X1 U6 ( .IN1(n6), .IN2(n53), .IN3(n122), .IN4(n147), .Q(n35) );
  INVX0 U7 ( .INP(n146), .ZN(n6) );
  NAND2X0 U8 ( .IN1(n208), .IN2(n130), .QN(n7) );
  AO22X1 U9 ( .IN1(n51), .IN2(n47), .IN3(n116), .IN4(n161), .Q(n36) );
  AO22X1 U10 ( .IN1(n10), .IN2(n55), .IN3(n112), .IN4(n159), .Q(n37) );
  INVX0 U11 ( .INP(n158), .ZN(n10) );
  AO22X1 U13 ( .IN1(n13), .IN2(n65), .IN3(n126), .IN4(n157), .Q(n38) );
  INVX0 U14 ( .INP(n156), .ZN(n13) );
  AO22X1 U16 ( .IN1(n17), .IN2(n52), .IN3(n124), .IN4(n153), .Q(n39) );
  INVX0 U17 ( .INP(n152), .ZN(n17) );
  AO22X1 U19 ( .IN1(n19), .IN2(n54), .IN3(n110), .IN4(n145), .Q(n40) );
  INVX0 U20 ( .INP(n144), .ZN(n19) );
  NAND2X0 U21 ( .IN1(n132), .IN2(n44), .QN(n20) );
  AO22X1 U22 ( .IN1(n22), .IN2(n56), .IN3(n114), .IN4(n151), .Q(n41) );
  INVX0 U23 ( .INP(n150), .ZN(n22) );
  NAND2X0 U24 ( .IN1(n133), .IN2(n102), .QN(n23) );
  AO22X1 U25 ( .IN1(n24), .IN2(n50), .IN3(n118), .IN4(n149), .Q(n42) );
  INVX0 U26 ( .INP(n148), .ZN(n24) );
  NAND2X0 U27 ( .IN1(n135), .IN2(n46), .QN(n25) );
  AO22X1 U28 ( .IN1(n27), .IN2(n67), .IN3(n120), .IN4(n155), .Q(n43) );
  INVX0 U29 ( .INP(n154), .ZN(n27) );
  NAND2X0 U30 ( .IN1(n134), .IN2(n95), .QN(n28) );
  AO21X1 U32 ( .IN1(n128), .IN2(n131), .IN3(n48), .Q(N30) );
  INVX0 U33 ( .INP(n160), .ZN(n8) );
  NOR2X0 U38 ( .IN1(n246), .IN2(n197), .QN(n21) );
  NOR2X0 U41 ( .IN1(n200), .IN2(n93), .QN(N28) );
  NOR2X0 U43 ( .IN1(n234), .IN2(n241), .QN(N27) );
  NOR2X0 U44 ( .IN1(n227), .IN2(n230), .QN(n32) );
  NOR2X0 U45 ( .IN1(n249), .IN2(n218), .QN(n26) );
  DFFARX2 \bit_count_reg[2]  ( .D(N29), .CLK(clk), .RSTB(n82), .Q(bit_count[2]), .QN(n98) );
  DFFARX2 \datout_reg[1]  ( .D(n42), .CLK(clk), .RSTB(n78), .Q(datout[1]), 
        .QN(n117) );
  DFFARX2 \datout_reg[7]  ( .D(n36), .CLK(clk), .RSTB(n74), .Q(datout[7]), 
        .QN(n115) );
  DFFARX2 \datout_reg[8]  ( .D(n35), .CLK(clk), .RSTB(n71), .Q(datout[8]), 
        .QN(n121) );
  DFFARX2 \datout_reg[0]  ( .D(n43), .CLK(clk), .RSTB(n81), .Q(datout[0]), 
        .QN(n119) );
  DFFARX2 \datout_reg[9]  ( .D(n34), .CLK(clk), .RSTB(n73), .Q(datout[9]), 
        .QN(n107) );
  DFFARX2 \datout_reg[5]  ( .D(n38), .CLK(clk), .RSTB(n77), .Q(datout[5]), 
        .QN(n125) );
  DFFARX2 \datout_reg[4]  ( .D(n39), .CLK(clk), .RSTB(n70), .Q(datout[4]), 
        .QN(n123) );
  DFFARX2 \bit_count_reg[0]  ( .D(n129), .CLK(clk), .RSTB(n80), .Q(
        bit_count[0]), .QN(n204) );
  DFFARX2 \bit_count_reg[3]  ( .D(N30), .CLK(clk), .RSTB(n76), .Q(bit_count[3]), .QN(n29) );
  DFFARX2 \bit_count_reg[1]  ( .D(N28), .CLK(clk), .RSTB(n72), .Q(bit_count[1]), .QN(n16) );
  DFFARX2 \datout_reg[2]  ( .D(n41), .CLK(clk), .RSTB(n79), .Q(datout[2]), 
        .QN(n113) );
  DFFARX2 \datout_reg[6]  ( .D(n37), .CLK(clk), .RSTB(n69), .Q(datout[6]), 
        .QN(n111) );
  DFFARX2 \datout_reg[3]  ( .D(n40), .CLK(clk), .RSTB(n75), .Q(datout[3]), 
        .QN(n109) );
  NAND2X0 U3 ( .IN1(n213), .IN2(n105), .QN(n1) );
  AO22X1 U12 ( .IN1(n198), .IN2(n31), .IN3(n211), .IN4(n141), .Q(N29) );
  AND2X1 U15 ( .IN1(n2), .IN2(n205), .Q(n5) );
  DELLN2X2 U18 ( .INP(n199), .Z(n2) );
  DELLN2X2 U31 ( .INP(n221), .Z(n15) );
  DELLN2X2 U34 ( .INP(n239), .Z(n30) );
  DELLN2X2 U35 ( .INP(n239), .Z(n44) );
  DELLN2X2 U36 ( .INP(n238), .Z(n45) );
  DELLN2X2 U37 ( .INP(n238), .Z(n46) );
  DELLN2X2 U39 ( .INP(n8), .Z(n47) );
  DELLN2X2 U40 ( .INP(n8), .Z(n48) );
  DELLN2X2 U42 ( .INP(n64), .Z(n49) );
  DELLN2X2 U46 ( .INP(n64), .Z(n50) );
  DELLN2X2 U47 ( .INP(n66), .Z(n51) );
  DELLN2X2 U48 ( .INP(n66), .Z(n52) );
  DELLN2X2 U49 ( .INP(n85), .Z(n53) );
  DELLN2X2 U50 ( .INP(n85), .Z(n54) );
  DELLN2X2 U51 ( .INP(n86), .Z(n55) );
  DELLN2X2 U52 ( .INP(n86), .Z(n56) );
  DELLN2X2 U53 ( .INP(n91), .Z(n57) );
  DELLN2X2 U54 ( .INP(n89), .Z(n58) );
  DELLN2X2 U55 ( .INP(n89), .Z(n59) );
  DELLN2X2 U56 ( .INP(n90), .Z(n60) );
  DELLN2X2 U57 ( .INP(n90), .Z(n61) );
  DELLN2X2 U58 ( .INP(datin), .Z(n62) );
  DELLN2X2 U59 ( .INP(datin), .Z(n63) );
  DELLN2X2 U60 ( .INP(n83), .Z(n64) );
  DELLN2X2 U61 ( .INP(n83), .Z(n65) );
  DELLN2X2 U62 ( .INP(n84), .Z(n66) );
  DELLN2X2 U63 ( .INP(n84), .Z(n67) );
  DELLN2X2 U64 ( .INP(reset_n), .Z(n68) );
  DELLN2X2 U65 ( .INP(n57), .Z(n69) );
  DELLN2X2 U66 ( .INP(n57), .Z(n70) );
  DELLN2X2 U67 ( .INP(n91), .Z(n71) );
  DELLN2X2 U68 ( .INP(n92), .Z(n72) );
  DELLN2X2 U69 ( .INP(n92), .Z(n73) );
  DELLN2X2 U70 ( .INP(reset_n), .Z(n74) );
  DELLN2X2 U71 ( .INP(n59), .Z(n75) );
  DELLN2X2 U72 ( .INP(n58), .Z(n76) );
  DELLN2X2 U73 ( .INP(n59), .Z(n77) );
  DELLN2X2 U74 ( .INP(n58), .Z(n78) );
  DELLN2X2 U75 ( .INP(n61), .Z(n79) );
  DELLN2X2 U76 ( .INP(n60), .Z(n80) );
  DELLN2X2 U77 ( .INP(n61), .Z(n81) );
  DELLN2X2 U78 ( .INP(n60), .Z(n82) );
  DELLN2X2 U79 ( .INP(n63), .Z(n83) );
  DELLN2X2 U80 ( .INP(n62), .Z(n84) );
  DELLN2X2 U81 ( .INP(n63), .Z(n85) );
  DELLN2X2 U82 ( .INP(n62), .Z(n86) );
  DELLN2X2 U83 ( .INP(n68), .Z(n87) );
  DELLN2X2 U84 ( .INP(n68), .Z(n88) );
  DELLN2X2 U85 ( .INP(n88), .Z(n89) );
  DELLN2X2 U86 ( .INP(n87), .Z(n90) );
  DELLN2X2 U87 ( .INP(n88), .Z(n91) );
  DELLN2X2 U88 ( .INP(n87), .Z(n92) );
  NAND3X1 U89 ( .IN1(n45), .IN2(n100), .IN3(n103), .QN(n9) );
  XNOR2X2 U90 ( .IN1(n97), .IN2(n203), .Q(n33) );
  INVX0 U91 ( .INP(n33), .ZN(n93) );
  DELLN2X2 U92 ( .INP(n236), .Z(n94) );
  DELLN2X2 U93 ( .INP(n236), .Z(n95) );
  DELLN2X2 U94 ( .INP(bit_count[0]), .Z(n96) );
  DELLN2X2 U95 ( .INP(bit_count[0]), .Z(n97) );
  NAND3X4 U96 ( .IN1(n30), .IN2(n137), .IN3(bit_count[2]), .QN(n14) );
  DELLN2X2 U97 ( .INP(n252), .Z(n99) );
  DELLN2X2 U98 ( .INP(n252), .Z(n100) );
  DELLN2X2 U99 ( .INP(n237), .Z(n101) );
  DELLN2X2 U100 ( .INP(n237), .Z(n102) );
  NAND3X1 U101 ( .IN1(n251), .IN2(n104), .IN3(n101), .QN(n11) );
  DELLN2X2 U102 ( .INP(n219), .Z(n103) );
  DELLN2X2 U103 ( .INP(n219), .Z(n104) );
  DELLN2X2 U104 ( .INP(n231), .Z(n105) );
  DELLN2X2 U105 ( .INP(n231), .Z(n106) );
  INVX0 U106 ( .INP(n107), .ZN(n108) );
  AO22X1 U107 ( .IN1(n49), .IN2(n3), .IN3(n108), .IN4(n142), .Q(n34) );
  INVX0 U108 ( .INP(n109), .ZN(n110) );
  INVX0 U109 ( .INP(n111), .ZN(n112) );
  INVX0 U110 ( .INP(n113), .ZN(n114) );
  INVX0 U111 ( .INP(n115), .ZN(n116) );
  INVX0 U112 ( .INP(n117), .ZN(n118) );
  INVX0 U113 ( .INP(n119), .ZN(n120) );
  INVX0 U114 ( .INP(n121), .ZN(n122) );
  INVX0 U115 ( .INP(n123), .ZN(n124) );
  INVX0 U116 ( .INP(n125), .ZN(n126) );
  DELLN2X2 U117 ( .INP(n207), .Z(n127) );
  DELLN2X2 U118 ( .INP(n207), .Z(n128) );
  DELLN2X2 U119 ( .INP(n244), .Z(n129) );
  DELLN2X2 U120 ( .INP(n244), .Z(n130) );
  DELLN2X2 U121 ( .INP(n15), .Z(n131) );
  DELLN2X2 U122 ( .INP(n210), .Z(n132) );
  DELLN2X2 U123 ( .INP(n210), .Z(n133) );
  DELLN2X2 U124 ( .INP(n228), .Z(n134) );
  DELLN2X2 U125 ( .INP(n228), .Z(n135) );
  DELLN2X2 U126 ( .INP(n248), .Z(n136) );
  DELLN2X2 U127 ( .INP(n248), .Z(n137) );
  AO21X1 U128 ( .IN1(n222), .IN2(n136), .IN3(n139), .Q(n31) );
  DELLN2X2 U129 ( .INP(n243), .Z(n138) );
  DELLN2X2 U130 ( .INP(n243), .Z(n139) );
  DELLN2X2 U131 ( .INP(n214), .Z(n140) );
  DELLN2X2 U132 ( .INP(n214), .Z(n141) );
  DELLN2X2 U133 ( .INP(n4), .Z(n142) );
  DELLN2X2 U134 ( .INP(n4), .Z(n143) );
  DELLN2X2 U135 ( .INP(n20), .Z(n144) );
  DELLN2X2 U136 ( .INP(n20), .Z(n145) );
  DELLN2X2 U137 ( .INP(n7), .Z(n146) );
  DELLN2X2 U138 ( .INP(n7), .Z(n147) );
  DELLN2X2 U139 ( .INP(n25), .Z(n148) );
  DELLN2X2 U140 ( .INP(n25), .Z(n149) );
  DELLN2X2 U141 ( .INP(n23), .Z(n150) );
  DELLN2X2 U142 ( .INP(n23), .Z(n151) );
  DELLN2X2 U143 ( .INP(n18), .Z(n152) );
  DELLN2X2 U144 ( .INP(n18), .Z(n153) );
  DELLN2X2 U145 ( .INP(n28), .Z(n154) );
  DELLN2X2 U146 ( .INP(n28), .Z(n155) );
  NAND3X1 U147 ( .IN1(n99), .IN2(n202), .IN3(n94), .QN(n18) );
  DELLN2X2 U148 ( .INP(n14), .Z(n156) );
  DELLN2X2 U149 ( .INP(n14), .Z(n157) );
  DELLN2X2 U150 ( .INP(n11), .Z(n158) );
  DELLN2X2 U151 ( .INP(n11), .Z(n159) );
  DELLN2X2 U152 ( .INP(n9), .Z(n160) );
  DELLN2X2 U153 ( .INP(n9), .Z(n161) );
  DELLN2X2 U154 ( .INP(n1), .Z(n162) );
  DELLN2X2 U155 ( .INP(n1), .Z(n163) );
  DELLN2X2 U156 ( .INP(n242), .Z(n164) );
  DELLN2X2 U157 ( .INP(n242), .Z(n165) );
  DELLN2X2 U158 ( .INP(n232), .Z(n166) );
  DELLN2X2 U159 ( .INP(n199), .Z(n167) );
  DELLN2X2 U160 ( .INP(n235), .Z(n168) );
  DELLN2X2 U161 ( .INP(n235), .Z(n169) );
  AND2X4 U162 ( .IN1(n138), .IN2(n106), .Q(n12) );
  DELLN2X2 U163 ( .INP(n226), .Z(n170) );
  DELLN2X2 U164 ( .INP(n226), .Z(n171) );
  DELLN2X2 U165 ( .INP(n229), .Z(n172) );
  DELLN2X2 U166 ( .INP(n229), .Z(n173) );
  DELLN2X2 U167 ( .INP(n223), .Z(n174) );
  DELLN2X2 U168 ( .INP(n223), .Z(n175) );
  DELLN2X2 U169 ( .INP(n224), .Z(n176) );
  DELLN2X2 U170 ( .INP(n224), .Z(n177) );
  DELLN2X2 U171 ( .INP(n217), .Z(n178) );
  DELLN2X2 U172 ( .INP(n217), .Z(n179) );
  DELLN2X2 U173 ( .INP(n220), .Z(n180) );
  DELLN2X2 U174 ( .INP(n220), .Z(n181) );
  DELLN2X2 U175 ( .INP(n212), .Z(n182) );
  DELLN2X2 U176 ( .INP(n212), .Z(n183) );
  DELLN2X2 U177 ( .INP(n98), .Z(n184) );
  DELLN2X2 U178 ( .INP(n98), .Z(n185) );
  DELLN2X2 U179 ( .INP(n206), .Z(n186) );
  DELLN2X2 U180 ( .INP(n206), .Z(n187) );
  DELLN2X2 U181 ( .INP(n209), .Z(n188) );
  DELLN2X2 U182 ( .INP(n209), .Z(n189) );
  DELLN2X2 U183 ( .INP(n232), .Z(n190) );
  DELLN2X2 U184 ( .INP(n221), .Z(n191) );
  DELLN2X2 U185 ( .INP(n201), .Z(n192) );
  DELLN2X2 U186 ( .INP(n201), .Z(n193) );
  DELLN2X2 U187 ( .INP(n196), .Z(n194) );
  DELLN2X2 U188 ( .INP(n196), .Z(n195) );
  INVX0 U189 ( .INP(n250), .ZN(n196) );
  INVX0 U190 ( .INP(n194), .ZN(n197) );
  INVX0 U191 ( .INP(n195), .ZN(n198) );
  INVX0 U192 ( .INP(n233), .ZN(n199) );
  INVX0 U193 ( .INP(n191), .ZN(n200) );
  INVX0 U194 ( .INP(n247), .ZN(n201) );
  INVX0 U195 ( .INP(n192), .ZN(n202) );
  INVX0 U196 ( .INP(n193), .ZN(n203) );
  INVX0 U197 ( .INP(n204), .ZN(n205) );
  INVX0 U198 ( .INP(bit_count[3]), .ZN(n206) );
  INVX0 U199 ( .INP(n186), .ZN(n207) );
  INVX0 U200 ( .INP(n187), .ZN(n208) );
  INVX0 U201 ( .INP(n21), .ZN(n209) );
  INVX0 U202 ( .INP(n188), .ZN(n210) );
  INVX0 U203 ( .INP(n189), .ZN(n211) );
  INVX0 U204 ( .INP(n5), .ZN(n212) );
  INVX0 U205 ( .INP(n182), .ZN(n213) );
  INVX0 U206 ( .INP(n183), .ZN(n214) );
  INVX0 U207 ( .INP(n184), .ZN(n215) );
  INVX0 U208 ( .INP(n185), .ZN(n216) );
  INVX0 U209 ( .INP(bit_count[1]), .ZN(n217) );
  INVX0 U210 ( .INP(n178), .ZN(n218) );
  INVX0 U211 ( .INP(n179), .ZN(n219) );
  INVX0 U212 ( .INP(n190), .ZN(n220) );
  INVX0 U213 ( .INP(n180), .ZN(n221) );
  INVX0 U214 ( .INP(n181), .ZN(n222) );
  INVX0 U215 ( .INP(n245), .ZN(n223) );
  INVX0 U216 ( .INP(n174), .ZN(n224) );
  INVX0 U217 ( .INP(n175), .ZN(n225) );
  INVX0 U218 ( .INP(n26), .ZN(n226) );
  INVX0 U219 ( .INP(n170), .ZN(n227) );
  INVX0 U220 ( .INP(n171), .ZN(n228) );
  INVX0 U221 ( .INP(n29), .ZN(n229) );
  INVX0 U222 ( .INP(n172), .ZN(n230) );
  INVX0 U223 ( .INP(n173), .ZN(n231) );
  INVX0 U224 ( .INP(n32), .ZN(n232) );
  INVX0 U225 ( .INP(n166), .ZN(n233) );
  INVX0 U226 ( .INP(n167), .ZN(n234) );
  INVX0 U227 ( .INP(n12), .ZN(n235) );
  INVX0 U228 ( .INP(n168), .ZN(n236) );
  INVX0 U229 ( .INP(n169), .ZN(n237) );
  INVX0 U230 ( .INP(n162), .ZN(n238) );
  INVX0 U231 ( .INP(n163), .ZN(n239) );
  INVX0 U232 ( .INP(n96), .ZN(n240) );
  INVX0 U233 ( .INP(n240), .ZN(n241) );
  INVX0 U234 ( .INP(N27), .ZN(n242) );
  INVX0 U235 ( .INP(n164), .ZN(n243) );
  INVX0 U236 ( .INP(n165), .ZN(n244) );
  INVX0 U237 ( .INP(n16), .ZN(n245) );
  INVX0 U238 ( .INP(n176), .ZN(n246) );
  INVX0 U239 ( .INP(n225), .ZN(n247) );
  INVX0 U240 ( .INP(n177), .ZN(n248) );
  DELLN2X2 U241 ( .INP(n215), .Z(n249) );
  DELLN2X2 U242 ( .INP(n216), .Z(n250) );
  DELLN2X2 U243 ( .INP(n216), .Z(n251) );
  DELLN2X2 U244 ( .INP(n215), .Z(n252) );
endmodule


module receiver ( sclk, pclk, reset_n, sdata, rdispin, pdata, kout, code_err, 
        rdispout, disp_err );
  output [7:0] pdata;
  input sclk, pclk, reset_n, sdata, rdispin;
  output kout, code_err, rdispout, disp_err;
  wire   n1, n2, n3;
  wire   [9:0] datin;

  decoder dec ( .datin(datin), .rdispin(rdispin), .clk(pclk), .reset_n(n3), 
        .code_err(code_err), .kout(kout), .disp_err(disp_err), .rdispout(
        rdispout), .datout(pdata) );
  deserializer ds ( .clk(sclk), .reset_n(n2), .datin(sdata), .datout(datin) );
  DELLN2X2 U1 ( .INP(reset_n), .Z(n1) );
  DELLN2X2 U2 ( .INP(n1), .Z(n2) );
  DELLN2X2 U3 ( .INP(n1), .Z(n3) );
endmodule


module system ( data_in_8b, kin, rdispout, k_err, pdata, kout, code_err, 
        disp_err, fun_sclk, fun_pclk, scan_clk, fun_rst_n, scan_rst, test_mode
 );
  input [7:0] data_in_8b;
  output [7:0] pdata;
  input kin, fun_sclk, fun_pclk, scan_clk, fun_rst_n, scan_rst, test_mode;
  output rdispout, k_err, kout, code_err, disp_err;
  wire   sclk, pclk, reset_n, rdispout_trans, data_out_s, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14;

  mux2to1_1 sclk_mux ( .A(fun_sclk), .B(n14), .sel(n11), .out(sclk) );
  mux2to1_2 pclk_mux ( .A(fun_pclk), .B(n13), .sel(n10), .out(pclk) );
  mux2to1_0 rst_mux ( .A(fun_rst_n), .B(scan_rst), .sel(n3), .out(reset_n) );
  transmitter transmitter ( .sclk(sclk), .pclk(pclk), .reset_n(reset_n), 
        .data_in_8b(data_in_8b), .kin(kin), .rdispout(rdispout_trans), .k_err(
        k_err), .data_out_s(data_out_s) );
  receiver receiver ( .sclk(sclk), .pclk(pclk), .reset_n(reset_n), .sdata(
        data_out_s), .rdispin(rdispout_trans), .pdata(pdata), .kout(kout), 
        .code_err(code_err), .rdispout(rdispout), .disp_err(disp_err) );
  DELLN2X2 U1 ( .INP(n12), .Z(n1) );
  DELLN2X2 U2 ( .INP(n12), .Z(n2) );
  DELLN2X2 U3 ( .INP(n7), .Z(n3) );
  DELLN2X2 U4 ( .INP(n7), .Z(n4) );
  DELLN2X2 U5 ( .INP(n8), .Z(n5) );
  DELLN2X2 U6 ( .INP(n8), .Z(n6) );
  INVX0 U7 ( .INP(n9), .ZN(n7) );
  INVX0 U8 ( .INP(n4), .ZN(n8) );
  INVX0 U9 ( .INP(test_mode), .ZN(n9) );
  INVX0 U10 ( .INP(n5), .ZN(n10) );
  INVX0 U11 ( .INP(n6), .ZN(n11) );
  INVX0 U12 ( .INP(scan_clk), .ZN(n12) );
  INVX0 U13 ( .INP(n2), .ZN(n13) );
  INVX0 U14 ( .INP(n1), .ZN(n14) );
endmodule


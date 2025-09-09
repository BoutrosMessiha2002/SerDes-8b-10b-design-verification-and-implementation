// IC Compiler II Verilog Writer
// Generated on 08/26/2025 at 08:22:57
// Library Name: SerDes.dlib
// Block Name: SerDes_pl
// User Label: 
// Write Command: write_verilog -include { all } ../output/SerDes.v
module deserializer ( clk , reset_n , datin , datout , test_si2 , test_si1 , 
    test_se , VDD , VSS , dftopt2 , dftopt0 , dftopt1 , dftopt3 , dftopt4 , 
    dftopt5 , dftopt6 , dftopt7 , dftopt8 , dftopt10 , dftopt9 , dftopt11 ) ;
input  clk ;
input  reset_n ;
input  datin ;
output [9:0] datout ;
input  test_si2 ;
input  test_si1 ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt2 ;
input  dftopt0 ;
output dftopt1 ;
input  dftopt3 ;
input  dftopt4 ;
output dftopt5 ;
input  dftopt6 ;
output dftopt7 ;
input  dftopt8 ;
input  dftopt10 ;
input  dftopt9 ;
input  dftopt11 ;

wire N28 ;
wire N29 ;
wire N30 ;
wire n16 ;
wire n29 ;
wire n34 ;
wire n35 ;
wire n36 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n41 ;
wire n42 ;
wire n43 ;
wire n98 ;
wire n107 ;
wire n109 ;
wire n111 ;
wire n113 ;
wire n115 ;
wire n117 ;
wire n119 ;
wire n121 ;
wire n123 ;
wire n125 ;
wire n204 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n17 ;
wire n18 ;
wire n20 ;
wire n22 ;
wire n24 ;
wire n25 ;
wire n27 ;
wire n28 ;
wire n32 ;
wire n33 ;
wire n44 ;
wire n45 ;
wire n46 ;
wire n253 ;
wire n254 ;
wire n255 ;
wire n256 ;
wire n257 ;
wire n258 ;
wire n259 ;
wire n260 ;
wire n261 ;
wire n262 ;
wire n263 ;
wire n264 ;
wire n265 ;
wire n266 ;
wire n267 ;
wire n268 ;
wire n269 ;
wire n270 ;
wire n271 ;
wire n272 ;
wire n273 ;
wire n274 ;
wire n275 ;
wire n276 ;
wire n277 ;
wire n278 ;
wire n279 ;
wire n280 ;
wire n281 ;
wire n282 ;
wire n283 ;
wire n284 ;
wire n285 ;
wire n286 ;
wire n287 ;
wire n288 ;
wire n289 ;
wire n290 ;
wire n291 ;
wire n292 ;
wire n293 ;
wire n294 ;
wire n295 ;
wire n296 ;
wire n297 ;
wire n298 ;
wire n299 ;
wire n300 ;
wire n301 ;
wire n302 ;
wire n303 ;
wire n304 ;
wire n305 ;
wire n306 ;
wire n307 ;
wire n308 ;
wire n309 ;
wire n310 ;
wire n311 ;
wire n312 ;
wire n313 ;
wire n314 ;
wire n315 ;
wire n316 ;
wire n317 ;
wire n318 ;
wire n319 ;
wire n320 ;
wire n321 ;
wire n322 ;
wire n323 ;
wire n324 ;
wire n325 ;
wire n326 ;
wire n327 ;
wire n328 ;
wire n329 ;
wire n330 ;
wire n331 ;
wire n332 ;
wire n333 ;
wire n334 ;
wire n335 ;
wire n336 ;
wire n337 ;
wire n338 ;
wire n339 ;
wire n340 ;
wire n341 ;
wire n342 ;
supply1 VDD ;
supply0 VSS ;

AND3X1 U39 ( .IN1 ( n29 ) , .IN2 ( n332 ) , .IN3 ( n336 ) , .Q ( n20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U45 ( .IN1 ( n8 ) , .IN2 ( n324 ) , .IN3 ( n9 ) , .Q ( N30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[1] ( .D ( n42 ) , .SI ( dftopt9 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n265 ) , .Q ( datout[1] ) , .QN ( n117 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[7] ( .D ( n36 ) , .SI ( dftopt11 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n268 ) , .Q ( datout[7] ) , .QN ( n115 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[8] ( .D ( n35 ) , .SI ( dftopt2 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n273 ) , .Q ( datout[8] ) , .QN ( n121 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[0] ( .D ( n43 ) , .SI ( dftopt3 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n271 ) , .Q ( datout[0] ) , .QN ( n119 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[9] ( .D ( n34 ) , .SI ( dftopt8 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n276 ) , .Q ( datout[9] ) , .QN ( n107 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[5] ( .D ( n38 ) , .SI ( datout[4] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n264 ) , .Q ( datout[5] ) , .QN ( n125 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[4] ( .D ( n39 ) , .SI ( datout[1] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n274 ) , .Q ( datout[4] ) , .QN ( n123 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \bit_count_reg[3] ( .D ( N30 ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n266 ) , .Q ( dftopt1 ) , .QN ( n29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[2] ( .D ( n41 ) , .SI ( dftopt10 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n277 ) , .Q ( datout[2] ) , .QN ( n113 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[6] ( .D ( n37 ) , .SI ( datout[2] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n255 ) , .Q ( datout[6] ) , .QN ( n111 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[3] ( .D ( n40 ) , .SI ( datout[6] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n269 ) , .Q ( datout[3] ) , .QN ( n109 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \bit_count_reg[1] ( .D ( N28 ) , .SI ( n300 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n278 ) , .Q ( dftopt5 ) , .QN ( n16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \bit_count_reg[2] ( .D ( N29 ) , .SI ( dftopt6 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n267 ) , .Q ( dftopt7 ) , .QN ( n98 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \bit_count_reg[0] ( .D ( n311 ) , .SI ( dftopt4 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n272 ) , .Q ( n300 ) , .QN ( n204 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( n279 ) , .ZN ( n253 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( n253 ) , .ZN ( n254 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( n253 ) , .ZN ( n255 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( n270 ) , .ZN ( n256 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( n256 ) , .ZN ( n257 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U8 ( .INP ( n256 ) , .ZN ( n258 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( n270 ) , .ZN ( n259 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( n259 ) , .ZN ( n260 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( n259 ) , .ZN ( n261 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( n279 ) , .ZN ( n262 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U13 ( .INP ( reset_n ) , .ZN ( n263 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U14 ( .INP ( n275 ) , .ZN ( n264 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U15 ( .INP ( n275 ) , .ZN ( n265 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U16 ( .INP ( n261 ) , .ZN ( n266 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( n260 ) , .ZN ( n267 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U18 ( .INP ( n261 ) , .ZN ( n268 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U19 ( .INP ( n260 ) , .ZN ( n269 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U20 ( .INP ( n254 ) , .ZN ( n270 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U21 ( .INP ( n258 ) , .ZN ( n271 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U22 ( .INP ( n257 ) , .ZN ( n272 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U23 ( .INP ( n258 ) , .ZN ( n273 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U24 ( .INP ( n257 ) , .ZN ( n274 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U25 ( .INP ( n254 ) , .ZN ( n275 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U26 ( .INP ( n262 ) , .ZN ( n276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U27 ( .INP ( n263 ) , .ZN ( n277 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U28 ( .INP ( n262 ) , .ZN ( n278 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U29 ( .INP ( n263 ) , .ZN ( n279 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U30 ( .IN1 ( n8 ) , .IN2 ( n307 ) , .Q ( n45 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U31 ( .INP ( n45 ) , .ZN ( n280 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1 U32 ( .IN1 ( n111 ) , .IN2 ( n27 ) , .IN3 ( n281 ) , .IN4 ( n315 ) , 
    .QN ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U33 ( .INP ( n27 ) , .ZN ( n281 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U34 ( .IN1 ( n326 ) , .IN2 ( n321 ) , .IN3 ( n313 ) , .QN ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X2 U35 ( .IN1 ( n327 ) , .IN2 ( n32 ) , .IN3 ( n33 ) , .QN ( N29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U36 ( .IN1 ( n204 ) , .IN2 ( n308 ) , .Q ( n46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U37 ( .INP ( n46 ) , .ZN ( n282 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U38 ( .IN1 ( n22 ) , .IN2 ( n336 ) , .Q ( n283 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X4 U40 ( .IN1 ( n335 ) , .IN2 ( n323 ) , .Q ( n284 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OAI22X1 U41 ( .IN1 ( n109 ) , .IN2 ( n283 ) , .IN3 ( n292 ) , .IN4 ( n342 ) , 
    .QN ( n40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1 U42 ( .IN1 ( n107 ) , .IN2 ( n284 ) , .IN3 ( n289 ) , .IN4 ( n316 ) , 
    .QN ( n34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U43 ( .IN1 ( n20 ) , .IN2 ( n339 ) , .Q ( n285 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X4 U44 ( .IN1 ( n311 ) , .IN2 ( n324 ) , .Q ( n286 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OAI22X1 U46 ( .IN1 ( n125 ) , .IN2 ( n285 ) , .IN3 ( n291 ) , .IN4 ( n317 ) , 
    .QN ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1 U47 ( .IN1 ( n121 ) , .IN2 ( n286 ) , .IN3 ( n295 ) , .IN4 ( n17 ) , 
    .QN ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U48 ( .IN1 ( n22 ) , .IN2 ( n337 ) , .Q ( n287 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OAI22X1 U49 ( .IN1 ( n113 ) , .IN2 ( n287 ) , .IN3 ( n294 ) , .IN4 ( n315 ) , 
    .QN ( n41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1 U50 ( .IN1 ( n123 ) , .IN2 ( n25 ) , .IN3 ( n290 ) , .IN4 ( n317 ) , 
    .QN ( n39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U51 ( .IN1 ( n20 ) , .IN2 ( n327 ) , .Q ( n288 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OAI22X1 U52 ( .IN1 ( n117 ) , .IN2 ( n288 ) , .IN3 ( n293 ) , .IN4 ( n316 ) , 
    .QN ( n42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1 U53 ( .IN1 ( n119 ) , .IN2 ( n18 ) , .IN3 ( n297 ) , .IN4 ( n341 ) , 
    .QN ( n43 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U54 ( .INP ( n284 ) , .ZN ( n289 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U55 ( .INP ( n25 ) , .ZN ( n290 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U56 ( .INP ( n285 ) , .ZN ( n291 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U57 ( .INP ( n283 ) , .ZN ( n292 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U58 ( .IN1 ( n16 ) , .IN2 ( n340 ) , .IN3 ( n337 ) , .Q ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U59 ( .INP ( n288 ) , .ZN ( n293 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U60 ( .INP ( n287 ) , .ZN ( n294 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U61 ( .INP ( n286 ) , .ZN ( n295 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U62 ( .IN1 ( n320 ) , .IN2 ( n339 ) , .IN3 ( n313 ) , .Q ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U63 ( .INP ( n28 ) , .ZN ( n296 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U64 ( .IN1 ( n309 ) , .IN2 ( n340 ) , .IN3 ( n7 ) , .Q ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X2 U65 ( .IN1 ( n115 ) , .IN2 ( n28 ) , .IN3 ( n342 ) , .IN4 ( n296 ) , 
    .QN ( n36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U66 ( .INP ( n18 ) , .ZN ( n297 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X4 U67 ( .IN1 ( n326 ) , .IN2 ( n29 ) , .IN3 ( n307 ) , .IN4 ( n332 ) , 
    .Q ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U68 ( .INP ( n320 ) , .ZN ( n298 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U69 ( .INP ( n321 ) , .ZN ( n299 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U70 ( .INP ( n338 ) , .ZN ( n301 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U71 ( .INP ( n301 ) , .ZN ( n302 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U72 ( .INP ( n44 ) , .ZN ( n303 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U73 ( .INP ( n303 ) , .ZN ( n304 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U74 ( .INP ( n303 ) , .ZN ( n305 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U75 ( .INP ( n300 ) , .ZN ( n306 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U76 ( .INP ( n300 ) , .ZN ( n307 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U77 ( .INP ( n298 ) , .ZN ( n308 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U78 ( .INP ( n299 ) , .ZN ( n309 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U79 ( .INP ( n7 ) , .ZN ( n310 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U80 ( .INP ( n310 ) , .ZN ( n311 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U81 ( .INP ( n335 ) , .ZN ( n312 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U82 ( .INP ( n312 ) , .ZN ( n313 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U83 ( .INP ( n341 ) , .ZN ( n314 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U84 ( .INP ( n314 ) , .ZN ( n315 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U85 ( .INP ( n314 ) , .ZN ( n316 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U86 ( .INP ( n328 ) , .ZN ( n317 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U87 ( .INP ( dftopt7 ) , .ZN ( n318 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U88 ( .INP ( dftopt5 ) , .ZN ( n319 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U89 ( .INP ( n319 ) , .ZN ( n320 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U90 ( .INP ( n319 ) , .ZN ( n321 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U91 ( .INP ( dftopt1 ) , .ZN ( n322 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U92 ( .INP ( n322 ) , .ZN ( n323 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U93 ( .INP ( n322 ) , .ZN ( n324 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U94 ( .INP ( n98 ) , .ZN ( n325 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U95 ( .INP ( n325 ) , .ZN ( n326 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U96 ( .INP ( n325 ) , .ZN ( n327 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U97 ( .INP ( n17 ) , .ZN ( n328 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U98 ( .INP ( n44 ) , .ZN ( n329 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U99 ( .INP ( n329 ) , .ZN ( n330 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U100 ( .INP ( n16 ) , .ZN ( n331 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U101 ( .INP ( n331 ) , .ZN ( n332 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U102 ( .INP ( n331 ) , .ZN ( n333 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U103 ( .INP ( n24 ) , .ZN ( n334 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U104 ( .INP ( n334 ) , .ZN ( n335 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U105 ( .INP ( n334 ) , .ZN ( n336 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U106 ( .INP ( n310 ) , .ZN ( n337 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U107 ( .INP ( n98 ) , .ZN ( n338 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U108 ( .INP ( n318 ) , .ZN ( n339 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U109 ( .INP ( n318 ) , .ZN ( n340 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U110 ( .INP ( datin ) , .ZN ( n341 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U111 ( .INP ( n328 ) , .ZN ( n342 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U115 ( .INP ( n330 ) , .ZN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U116 ( .INP ( n296 ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U117 ( .INP ( n280 ) , .ZN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1 U118 ( .IN1 ( n338 ) , .IN2 ( n309 ) , .IN3 ( n323 ) , .Q ( n44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U119 ( .IN1 ( n304 ) , .IN2 ( n306 ) , .QN ( n24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA21X1 U120 ( .IN1 ( n330 ) , .IN2 ( dftopt5 ) , .IN3 ( n280 ) , .Q ( n32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U121 ( .INP ( datin ) , .ZN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U122 ( .IN1 ( n305 ) , .IN2 ( n282 ) , .QN ( N28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U123 ( .IN1 ( n302 ) , .IN2 ( n333 ) , .QN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module control ( data , code_err1 , code_err2 , kout1 , kout2 , rdispin , 
    clk , reset_n , kout , code_err , rdispout , test_si1 , test_se , VDD , 
    VSS ) ;
input  [7:0] data ;
input  code_err1 ;
input  code_err2 ;
input  kout1 ;
input  kout2 ;
input  rdispin ;
input  clk ;
input  reset_n ;
output kout ;
output code_err ;
output rdispout ;
input  test_si1 ;
input  test_se ;
input  VDD ;
input  VSS ;

wire N26 ;
wire N27 ;
wire N39 ;
wire n1 ;
wire n3 ;
wire n5 ;
wire n6 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n19 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n25 ;
wire n26 ;
wire n108 ;
wire n109 ;
wire n110 ;
wire n111 ;
wire n112 ;
wire n113 ;
wire n114 ;
wire n115 ;
wire n116 ;
wire n117 ;
wire n118 ;
wire n119 ;
wire n120 ;
wire n121 ;
wire n122 ;
wire n123 ;
wire n124 ;
wire n125 ;
wire n126 ;
wire n127 ;
wire n128 ;
wire n129 ;
wire n130 ;
wire n131 ;
wire n132 ;
wire n133 ;
wire n134 ;
wire n135 ;
wire n136 ;
wire n137 ;
wire n138 ;
wire n139 ;
wire n140 ;
wire n141 ;
wire n142 ;
wire n143 ;
wire n144 ;
wire n145 ;
wire n146 ;
wire n147 ;
wire n148 ;
wire n149 ;
wire n150 ;
wire n151 ;
wire n152 ;
wire n153 ;
wire n154 ;
wire n155 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;

NOR3X0 U17 ( .IN1 ( n121 ) , .IN2 ( n122 ) , .IN3 ( n128 ) , .QN ( N39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 kout_reg ( .D ( N27 ) , .SI ( kout1 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n118 ) , .Q ( kout ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 code_err_reg ( .D ( N26 ) , .SI ( rdispout ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n117 ) , .Q ( code_err ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 rdispout_reg ( .D ( N39 ) , .SI ( kout ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n119 ) , .Q ( rdispout ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( n142 ) , .ZN ( n108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( n134 ) , .ZN ( n109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X2 U5 ( .IN1 ( n1 ) , .IN2 ( n3 ) , .IN3 ( n12 ) , .IN4 ( n145 ) , 
    .QN ( n132 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( n116 ) , .ZN ( n110 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( n110 ) , .ZN ( n111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U8 ( .INP ( n1 ) , .ZN ( n112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( n6 ) , .ZN ( n113 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( n11 ) , .ZN ( n114 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( n12 ) , .ZN ( n115 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( reset_n ) , .ZN ( n116 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U13 ( .INP ( n111 ) , .ZN ( n117 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U14 ( .INP ( n111 ) , .ZN ( n118 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U15 ( .INP ( n116 ) , .ZN ( n119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U16 ( .INP ( n19 ) , .ZN ( n120 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X2 U18 ( .IN1 ( n115 ) , .IN2 ( n146 ) , .IN3 ( n150 ) , .Q ( n13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U19 ( .INP ( n13 ) , .ZN ( n121 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X2 U20 ( .IN1 ( n134 ) , .IN2 ( n19 ) , .IN3 ( n124 ) , .IN4 ( n123 ) , 
    .QN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U21 ( .INP ( n14 ) , .ZN ( n122 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X2 U22 ( .IN1 ( n6 ) , .IN2 ( n8 ) , .IN3 ( n152 ) , .IN4 ( n5 ) , 
    .QN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U23 ( .INP ( n23 ) , .ZN ( n123 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X2 U24 ( .IN1 ( n10 ) , .IN2 ( n11 ) , .IN3 ( n142 ) , .IN4 ( n9 ) , 
    .QN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U25 ( .INP ( n22 ) , .ZN ( n124 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U26 ( .INP ( n123 ) , .ZN ( n125 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U27 ( .INP ( n124 ) , .ZN ( n126 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X4 U28 ( .IN1 ( code_err1 ) , .IN2 ( code_err2 ) , .Q ( N26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X4 U29 ( .IN1 ( kout1 ) , .IN2 ( kout2 ) , .Q ( N27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U30 ( .INP ( n125 ) , .ZN ( n127 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U31 ( .IN1 ( n16 ) , .IN2 ( n17 ) , .Q ( n15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U32 ( .INP ( n15 ) , .ZN ( n128 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X2 U33 ( .IN1 ( n144 ) , .IN2 ( n153 ) , .IN3 ( n138 ) , .Q ( n21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U34 ( .IN1 ( n114 ) , .IN2 ( n148 ) , .Q ( n129 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X2 U35 ( .IN1 ( n155 ) , .IN2 ( n141 ) , .Q ( n130 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U36 ( .INP ( n3 ) , .ZN ( n131 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U37 ( .IN1 ( n127 ) , .IN2 ( n140 ) , .Q ( n19 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U38 ( .INP ( n109 ) , .ZN ( n133 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U39 ( .INP ( n132 ) , .ZN ( n134 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U40 ( .INP ( n8 ) , .ZN ( n135 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U41 ( .INP ( n135 ) , .ZN ( n136 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U42 ( .INP ( n131 ) , .ZN ( n137 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U43 ( .INP ( n130 ) , .ZN ( n138 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U44 ( .INP ( n130 ) , .ZN ( n139 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U45 ( .INP ( n126 ) , .ZN ( n140 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U46 ( .INP ( n108 ) , .ZN ( n141 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U47 ( .INP ( n129 ) , .ZN ( n142 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U48 ( .INP ( n5 ) , .ZN ( n143 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U49 ( .INP ( n143 ) , .ZN ( n144 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U50 ( .INP ( n26 ) , .ZN ( n145 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U51 ( .INP ( n145 ) , .ZN ( n146 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U52 ( .INP ( n10 ) , .ZN ( n147 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U53 ( .INP ( n147 ) , .ZN ( n148 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U54 ( .INP ( n21 ) , .ZN ( n149 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U55 ( .INP ( n149 ) , .ZN ( n150 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U56 ( .INP ( n149 ) , .ZN ( n151 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U57 ( .INP ( n25 ) , .ZN ( n152 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U58 ( .INP ( n152 ) , .ZN ( n153 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U59 ( .INP ( n9 ) , .ZN ( n154 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U60 ( .INP ( n154 ) , .ZN ( n155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U61 ( .IN1 ( n112 ) , .IN2 ( n137 ) , .Q ( n26 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X2 U62 ( .IN1 ( n113 ) , .IN2 ( n136 ) , .Q ( n25 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U63 ( .IN1 ( n139 ) , .IN2 ( n151 ) , .QN ( n16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U64 ( .IN1 ( n133 ) , .IN2 ( n120 ) , .QN ( n17 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U65 ( .INP ( data[7] ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U66 ( .INP ( rdispin ) , .ZN ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U67 ( .INP ( data[0] ) , .ZN ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U68 ( .INP ( data[4] ) , .ZN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U69 ( .INP ( data[2] ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U70 ( .INP ( data[1] ) , .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U71 ( .INP ( data[3] ) , .ZN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U72 ( .INP ( data[5] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U73 ( .INP ( data[6] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module dff_width8 ( d , reset_n , clk , q , test_si2 , test_si1 , test_se , 
    VDD , VSS , dftopt0 ) ;
input  [7:0] d ;
input  reset_n ;
input  clk ;
output [7:0] q ;
input  test_si2 ;
input  test_si1 ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;

wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;

SDFFARX1 \q_reg[6] ( .D ( d[6] ) , .SI ( q[1] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n22 ) , .Q ( q[6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[5] ( .D ( d[5] ) , .SI ( q[7] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n28 ) , .Q ( q[5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[3] ( .D ( d[3] ) , .SI ( q[0] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n24 ) , .Q ( q[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[2] ( .D ( d[2] ) , .SI ( q[3] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n23 ) , .Q ( q[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1] ( .D ( d[1] ) , .SI ( d[6] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n27 ) , .Q ( q[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0] ( .D ( d[0] ) , .SI ( d[4] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n25 ) , .Q ( q[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[4] ( .D ( d[4] ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n29 ) , .Q ( q[4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[7] ( .D ( d[7] ) , .SI ( q[6] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n17 ) , .Q ( q[7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( n18 ) , .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( n15 ) , .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( n26 ) , .ZN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( n26 ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( n16 ) , .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U8 ( .INP ( n16 ) , .ZN ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( n18 ) , .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( n20 ) , .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( n19 ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( n20 ) , .ZN ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U13 ( .INP ( n15 ) , .ZN ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U14 ( .INP ( reset_n ) , .ZN ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U15 ( .INP ( n21 ) , .ZN ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U16 ( .INP ( n19 ) , .ZN ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( n21 ) , .ZN ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module dff_width1_1 ( d , reset_n , clk , q , test_si , test_se , VDD , VSS , 
    dftopt20 ) ;
input  [0:0] d ;
input  reset_n ;
input  clk ;
output [0:0] q ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt20 ;

supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;

SDFFARX1 \q_reg[0] ( .D ( d[0] ) , .SI ( dftopt20 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( reset_n ) , .Q ( q[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module dec6b ( clk , reset_n , rdispin , datin , code_err2 , disp_err , 
    kout2 , datout , test_si , test_se , VDD , VSS , dftopt0 , dftopt1 , 
    dftopt2 , dftopt17 , dftopt21 ) ;
input  clk ;
input  reset_n ;
input  rdispin ;
input  [5:0] datin ;
output code_err2 ;
output disp_err ;
output kout2 ;
output [4:0] datout ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
input  dftopt1 ;
input  dftopt2 ;
input  dftopt17 ;
input  dftopt21 ;

wire N210 ;
wire N211 ;
wire N212 ;
wire N213 ;
wire N214 ;
wire N215 ;
wire N217 ;
wire n1 ;
wire n2 ;
wire n3 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n18 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n36 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n41 ;
wire n42 ;
wire n43 ;
wire n44 ;
wire n45 ;
wire n46 ;
wire n47 ;
wire n48 ;
wire n49 ;
wire n50 ;
wire n51 ;
wire n52 ;
wire n54 ;
wire n55 ;
wire n56 ;
wire n59 ;
wire n60 ;
wire n61 ;
wire n62 ;
wire n64 ;
wire n65 ;
wire n66 ;
wire n67 ;
wire n68 ;
wire n69 ;
wire n70 ;
wire n71 ;
wire n72 ;
wire n73 ;
wire n74 ;
wire n75 ;
wire n76 ;
wire n77 ;
wire n78 ;
wire n79 ;
wire n80 ;
wire n81 ;
wire n82 ;
wire n83 ;
wire n84 ;
wire n85 ;
wire n86 ;
wire n87 ;
wire n88 ;
wire n89 ;
wire n91 ;
wire n92 ;
wire n93 ;
wire n621 ;
wire n622 ;
wire n623 ;
wire n624 ;
wire n625 ;
wire n626 ;
wire n627 ;
wire n628 ;
wire n629 ;
wire n630 ;
wire n631 ;
wire n632 ;
wire n633 ;
wire n634 ;
wire n635 ;
wire n636 ;
wire n637 ;
wire n638 ;
wire n639 ;
wire n640 ;
wire n641 ;
wire n642 ;
wire n643 ;
wire n644 ;
wire n645 ;
wire n646 ;
wire n647 ;
wire n648 ;
wire n649 ;
wire n650 ;
wire n651 ;
wire n652 ;
wire n653 ;
wire n654 ;
wire n655 ;
wire n656 ;
wire n657 ;
wire n658 ;
wire n659 ;
wire n660 ;
wire n661 ;
wire n662 ;
wire n663 ;
wire n664 ;
wire n665 ;
wire n666 ;
wire n667 ;
wire n668 ;
wire n669 ;
wire n670 ;
wire n671 ;
wire n672 ;
wire n673 ;
wire n674 ;
wire n675 ;
wire n676 ;
wire n677 ;
wire n678 ;
wire n679 ;
wire n680 ;
wire n681 ;
wire n682 ;
wire n683 ;
wire n684 ;
wire n685 ;
wire n686 ;
wire n687 ;
wire n688 ;
wire n689 ;
wire n690 ;
wire n691 ;
wire n692 ;
wire n693 ;
wire n694 ;
wire n695 ;
wire n696 ;
wire n697 ;
wire n698 ;
wire n699 ;
wire n700 ;
wire n701 ;
wire n702 ;
wire n703 ;
wire n704 ;
wire n705 ;
wire n706 ;
wire n707 ;
wire n708 ;
wire n709 ;
wire n710 ;
wire n711 ;
wire n712 ;
wire n713 ;
wire n714 ;
wire n715 ;
wire n716 ;
wire n717 ;
wire n718 ;
wire n719 ;
wire n720 ;
wire n721 ;
wire n722 ;
wire n723 ;
wire n724 ;
wire n725 ;
wire n726 ;
wire n727 ;
wire n728 ;
wire n729 ;
wire n730 ;
wire n731 ;
wire n732 ;
wire n733 ;
wire n734 ;
wire n735 ;
wire n736 ;
wire n737 ;
wire n738 ;
wire n739 ;
wire n740 ;
wire n741 ;
wire n742 ;
wire n743 ;
wire n744 ;
wire n745 ;
wire n746 ;
wire n747 ;
wire n748 ;
wire n749 ;
wire n750 ;
wire n751 ;
wire n752 ;
wire n753 ;
wire n754 ;
wire n755 ;
wire n756 ;
wire n757 ;
wire n758 ;
wire n759 ;
wire n760 ;
wire n761 ;
wire n762 ;
wire n763 ;
wire n764 ;
wire n765 ;
wire n766 ;
wire n767 ;
wire n768 ;
wire n769 ;
wire n770 ;
wire n771 ;
wire n772 ;
wire n773 ;
wire n774 ;
wire n775 ;
wire n776 ;
wire n777 ;
wire n778 ;
wire n779 ;
wire n780 ;
wire n781 ;
wire n782 ;
wire n783 ;
wire n784 ;
wire n785 ;
wire n786 ;
wire n787 ;
wire n788 ;
wire n789 ;
wire n790 ;
wire n791 ;
wire n792 ;
wire n793 ;
wire n794 ;
wire n795 ;
wire n796 ;
wire n797 ;
wire n798 ;
wire n799 ;
wire n800 ;
wire n801 ;
wire n802 ;
wire n803 ;
wire n804 ;
wire n805 ;
wire n806 ;
wire n807 ;
wire n808 ;
wire n809 ;
wire n810 ;
wire n811 ;
wire n812 ;
wire n813 ;
wire n814 ;
wire n815 ;
wire n816 ;
wire n817 ;
wire n818 ;
wire n819 ;
wire n820 ;
wire n821 ;
wire n822 ;
wire n823 ;
wire n824 ;
wire n825 ;
wire n826 ;
wire n827 ;
wire n828 ;
wire n829 ;
wire n830 ;
wire n831 ;
wire n832 ;
wire n833 ;
wire n834 ;
wire n835 ;
wire n836 ;
wire n837 ;
wire n838 ;
wire n839 ;
wire n840 ;
wire n841 ;
wire n842 ;
wire n843 ;
wire n844 ;
wire n845 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;

NOR4X1 U8 ( .IN1 ( n734 ) , .IN2 ( n733 ) , .IN3 ( n7 ) , .IN4 ( n735 ) , 
    .QN ( n47 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U62 ( .IN1 ( n22 ) , .IN2 ( n782 ) , .IN3 ( n23 ) , .IN4 ( n831 ) , 
    .Q ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U63 ( .IN1 ( n827 ) , .IN2 ( n12 ) , .IN3 ( n744 ) , .Q ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U65 ( .IN1 ( n732 ) , .IN2 ( n29 ) , .IN3 ( n23 ) , .IN4 ( n763 ) , 
    .Q ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U66 ( .IN1 ( n31 ) , .IN2 ( n32 ) , .Q ( n23 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U69 ( .IN1 ( n33 ) , .IN2 ( n34 ) , .Q ( n29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OAI22X1 U72 ( .IN1 ( n35 ) , .IN2 ( n731 ) , .IN3 ( n36 ) , .IN4 ( n781 ) , 
    .QN ( N215 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U73 ( .IN1 ( n37 ) , .IN2 ( n694 ) , .IN3 ( n845 ) , .IN4 ( n834 ) , 
    .Q ( n36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U74 ( .IN1 ( n622 ) , .IN2 ( n40 ) , .IN3 ( n827 ) , .IN4 ( n830 ) , 
    .Q ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA222X1 U77 ( .IN1 ( n823 ) , .IN2 ( n47 ) , .IN3 ( n49 ) , .IN4 ( n747 ) , 
    .IN5 ( n806 ) , .IN6 ( n51 ) , .Q ( n46 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U80 ( .IN1 ( n5 ) , .IN2 ( n722 ) , .IN3 ( n759 ) , .IN4 ( n784 ) , 
    .Q ( n44 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U81 ( .IN1 ( n688 ) , .IN2 ( n730 ) , .IN3 ( n61 ) , .IN4 ( n62 ) , 
    .QN ( N213 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X1 U82 ( .IN1 ( n802 ) , .IN2 ( n801 ) , .IN3 ( n64 ) , .IN4 ( n65 ) , 
    .Q ( n62 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U83 ( .IN1 ( n825 ) , .IN2 ( n755 ) , .IN3 ( n842 ) , .IN4 ( n756 ) , 
    .Q ( n65 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U85 ( .IN1 ( n726 ) , .IN2 ( n765 ) , .IN3 ( n810 ) , .IN4 ( n762 ) , 
    .Q ( n61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U88 ( .IN1 ( n696 ) , .IN2 ( n698 ) , .IN3 ( n738 ) , .IN4 ( n80 ) , 
    .QN ( N212 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1 U89 ( .IN1 ( n806 ) , .IN2 ( n740 ) , .IN3 ( n841 ) , .IN4 ( n787 ) , 
    .IN5 ( n81 ) , .Q ( n80 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1 U92 ( .IN1 ( n805 ) , .IN2 ( n745 ) , .IN3 ( n812 ) , .IN4 ( n743 ) , 
    .IN5 ( n803 ) , .Q ( n84 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U101 ( .IN1 ( n844 ) , .IN2 ( n759 ) , .IN3 ( n783 ) , .Q ( n92 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 kout2_reg ( .D ( n672 ) , .SI ( datout[3] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n648 ) , .Q ( kout2 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[3] ( .D ( N213 ) , .SI ( dftopt17 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n665 ) , .Q ( datout[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[2] ( .D ( N212 ) , .SI ( datin[1] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n652 ) , .Q ( datout[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[1] ( .D ( N211 ) , .SI ( dftopt1 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n653 ) , .Q ( datout[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 code_err2_reg ( .D ( N215 ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n651 ) , .Q ( code_err2 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 disp_err_reg ( .D ( N217 ) , .SI ( dftopt21 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n649 ) , .Q ( disp_err ) , 
    .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[4] ( .D ( N214 ) , .SI ( rdispin ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n654 ) , .Q ( datout[4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[0] ( .D ( N210 ) , .SI ( dftopt2 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n655 ) , .Q ( datout[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1 U3 ( .IN1 ( n20 ) , .IN2 ( n1 ) , .IN3 ( n636 ) , .IN4 ( n21 ) , 
    .QN ( N217 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( n624 ) , .ZN ( n621 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( n621 ) , .ZN ( n622 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( n635 ) , .ZN ( n623 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( n623 ) , .ZN ( n624 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( n800 ) , .ZN ( n625 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( n723 ) , .ZN ( n626 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( n626 ) , .ZN ( n627 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( n638 ) , .ZN ( n628 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U13 ( .INP ( datin[1] ) , .ZN ( n629 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U14 ( .INP ( n629 ) , .ZN ( n630 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U15 ( .INP ( n629 ) , .ZN ( n631 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U16 ( .INP ( datin[3] ) , .ZN ( n632 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( n632 ) , .ZN ( n633 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U18 ( .INP ( n632 ) , .ZN ( n634 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U19 ( .INP ( n637 ) , .ZN ( n635 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U20 ( .INP ( n1 ) , .ZN ( n636 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U21 ( .INP ( n693 ) , .ZN ( n637 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U22 ( .INP ( datin[5] ) , .ZN ( n638 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U23 ( .INP ( datin[0] ) , .ZN ( n639 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U24 ( .INP ( n639 ) , .ZN ( n640 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U25 ( .INP ( n639 ) , .ZN ( n641 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U26 ( .INP ( n668 ) , .ZN ( n642 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U27 ( .INP ( datin[3] ) , .ZN ( n643 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U28 ( .INP ( n643 ) , .ZN ( n644 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U29 ( .INP ( datin[1] ) , .ZN ( n645 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U30 ( .INP ( n645 ) , .ZN ( n646 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U31 ( .INP ( n666 ) , .ZN ( n647 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U32 ( .INP ( n647 ) , .ZN ( n648 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U33 ( .INP ( n647 ) , .ZN ( n649 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U34 ( .INP ( n666 ) , .ZN ( n650 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U35 ( .INP ( n650 ) , .ZN ( n651 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U36 ( .INP ( n650 ) , .ZN ( n652 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U37 ( .INP ( n664 ) , .ZN ( n653 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U38 ( .INP ( n642 ) , .ZN ( n654 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U39 ( .INP ( n667 ) , .ZN ( n655 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U40 ( .INP ( datin[5] ) , .ZN ( n656 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U41 ( .INP ( n638 ) , .ZN ( n657 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U42 ( .INP ( n656 ) , .ZN ( n658 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U43 ( .INP ( n656 ) , .ZN ( n659 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U44 ( .INP ( datin[2] ) , .ZN ( n660 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U45 ( .INP ( n660 ) , .ZN ( n661 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U46 ( .INP ( n637 ) , .ZN ( n662 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U47 ( .INP ( n660 ) , .ZN ( n663 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U48 ( .INP ( n668 ) , .ZN ( n664 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U49 ( .INP ( n642 ) , .ZN ( n665 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U50 ( .INP ( n664 ) , .ZN ( n666 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U51 ( .INP ( reset_n ) , .ZN ( n667 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U52 ( .INP ( n667 ) , .ZN ( n668 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U53 ( .IN1 ( n87 ) , .IN2 ( n816 ) , .Q ( n67 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U54 ( .INP ( n67 ) , .ZN ( n669 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U55 ( .IN1 ( n748 ) , .IN2 ( n819 ) , .Q ( n68 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U56 ( .INP ( n68 ) , .ZN ( n670 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U57 ( .IN1 ( n742 ) , .IN2 ( n818 ) , .Q ( n75 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U58 ( .INP ( n75 ) , .ZN ( n671 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U59 ( .IN1 ( n679 ) , .IN2 ( n84 ) , .IN3 ( n737 ) , .QN ( N211 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X2 U60 ( .IN1 ( n800 ) , .IN2 ( n780 ) , .IN3 ( n809 ) , .IN4 ( n831 ) , 
    .QN ( n672 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U61 ( .IN1 ( n44 ) , .IN2 ( n46 ) , .IN3 ( n45 ) , .QN ( N214 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U64 ( .INP ( n18 ) , .ZN ( n673 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U67 ( .IN1 ( n15 ) , .IN2 ( n823 ) , .Q ( n26 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U68 ( .INP ( n26 ) , .ZN ( n674 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U70 ( .INP ( n673 ) , .ZN ( n675 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U71 ( .IN1 ( n834 ) , .IN2 ( n744 ) , .IN3 ( n635 ) , .QN ( n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U75 ( .IN1 ( n624 ) , .IN2 ( n829 ) , .IN3 ( n832 ) , .Q ( n24 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U76 ( .IN1 ( n6 ) , .IN2 ( n721 ) , .Q ( n71 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U78 ( .INP ( n71 ) , .ZN ( n676 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U79 ( .IN1 ( n10 ) , .IN2 ( n742 ) , .Q ( n52 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U84 ( .INP ( n52 ) , .ZN ( n677 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U86 ( .IN1 ( n3 ) , .IN2 ( n773 ) , .Q ( n72 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U87 ( .INP ( n72 ) , .ZN ( n678 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI221X1 U90 ( .IN1 ( n820 ) , .IN2 ( n670 ) , .IN3 ( n750 ) , .IN4 ( n809 ) , 
    .IN5 ( n91 ) , .QN ( n83 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U91 ( .INP ( n83 ) , .ZN ( n679 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U93 ( .INP ( n672 ) , .ZN ( n680 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U94 ( .IN1 ( n10 ) , .IN2 ( n798 ) , .Q ( n69 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U95 ( .INP ( n69 ) , .ZN ( n681 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U96 ( .IN1 ( n644 ) , .IN2 ( datin[4] ) , .Q ( n39 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U97 ( .INP ( n39 ) , .ZN ( n682 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U98 ( .IN1 ( n797 ) , .IN2 ( n815 ) , .Q ( n54 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U99 ( .INP ( n54 ) , .ZN ( n683 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U100 ( .IN1 ( n692 ) , .IN2 ( n829 ) , .Q ( n66 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U102 ( .INP ( n66 ) , .ZN ( n684 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U103 ( .IN1 ( n740 ) , .IN2 ( n745 ) , .IN3 ( n788 ) , .Q ( n59 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U104 ( .INP ( n59 ) , .ZN ( n685 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U105 ( .IN1 ( n748 ) , .IN2 ( n741 ) , .Q ( n55 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U106 ( .INP ( n55 ) , .ZN ( n686 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U107 ( .INP ( n689 ) , .ZN ( n687 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U108 ( .INP ( n687 ) , .ZN ( n688 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X2 U109 ( .IN1 ( n762 ) , .IN2 ( n802 ) , .IN3 ( n830 ) , .IN4 ( n752 ) , 
    .QN ( n60 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U110 ( .INP ( n60 ) , .ZN ( n689 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U111 ( .IN1 ( n85 ) , .IN2 ( n815 ) , .Q ( n74 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U112 ( .INP ( n74 ) , .ZN ( n690 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U113 ( .IN1 ( n743 ) , .IN2 ( n787 ) , .IN3 ( n681 ) , .Q ( n56 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U114 ( .INP ( n56 ) , .ZN ( n691 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U115 ( .IN1 ( n646 ) , .IN2 ( n18 ) , .Q ( n48 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U116 ( .INP ( n48 ) , .ZN ( n692 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U117 ( .INP ( n838 ) , .ZN ( n693 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U118 ( .INP ( n693 ) , .ZN ( n694 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U119 ( .INP ( n78 ) , .ZN ( n695 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U120 ( .INP ( n695 ) , .ZN ( n696 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X4 U121 ( .IN1 ( n676 ) , .IN2 ( n93 ) , .IN3 ( n92 ) , .IN4 ( n678 ) , 
    .Q ( n78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U122 ( .IN1 ( n677 ) , .IN2 ( n810 ) , .Q ( n51 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U123 ( .INP ( n725 ) , .ZN ( n697 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U124 ( .INP ( n697 ) , .ZN ( n698 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U125 ( .IN1 ( n679 ) , .IN2 ( n86 ) , .IN3 ( n725 ) , .QN ( N210 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U126 ( .IN1 ( n646 ) , .IN2 ( n640 ) , .Q ( n699 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X4 U127 ( .IN1 ( n794 ) , .IN2 ( n818 ) , .Q ( n700 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X4 U128 ( .IN1 ( n822 ) , .IN2 ( n845 ) , .Q ( n50 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X4 U129 ( .IN1 ( n797 ) , .IN2 ( n819 ) , .Q ( n701 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X4 U130 ( .IN1 ( n88 ) , .IN2 ( n798 ) , .Q ( n702 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U131 ( .INP ( n670 ) , .ZN ( n703 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U132 ( .IN1 ( n659 ) , .IN2 ( n739 ) , .Q ( n27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U133 ( .INP ( n754 ) , .ZN ( n704 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U134 ( .IN1 ( n39 ) , .IN2 ( n795 ) , .Q ( n705 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X4 U135 ( .IN1 ( n816 ) , .IN2 ( n794 ) , .Q ( n706 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U136 ( .INP ( n87 ) , .ZN ( n707 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U137 ( .INP ( n671 ) , .ZN ( n708 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U138 ( .INP ( n669 ) , .ZN ( n709 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U139 ( .INP ( n88 ) , .ZN ( n710 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U140 ( .INP ( n85 ) , .ZN ( n711 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U141 ( .INP ( n690 ) , .ZN ( n712 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U142 ( .INP ( n691 ) , .ZN ( n713 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U143 ( .INP ( n38 ) , .ZN ( n714 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U144 ( .INP ( n6 ) , .ZN ( n715 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U145 ( .INP ( n3 ) , .ZN ( n716 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U146 ( .INP ( n45 ) , .ZN ( n717 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X4 U147 ( .IN1 ( n676 ) , .IN2 ( n70 ) , .IN3 ( n678 ) , .IN4 ( n680 ) , 
    .Q ( n45 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U148 ( .INP ( n784 ) , .ZN ( n718 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U149 ( .INP ( n737 ) , .ZN ( n719 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U150 ( .INP ( n728 ) , .ZN ( n720 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U151 ( .IN1 ( n683 ) , .IN2 ( n754 ) , .Q ( n49 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U152 ( .INP ( n779 ) , .ZN ( n721 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U153 ( .INP ( n721 ) , .ZN ( n722 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U154 ( .INP ( n11 ) , .ZN ( n723 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U155 ( .INP ( n723 ) , .ZN ( n724 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI221X1 U156 ( .IN1 ( n747 ) , .IN2 ( n669 ) , .IN3 ( n760 ) , 
    .IN4 ( n671 ) , .IN5 ( n715 ) , .QN ( n77 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U157 ( .INP ( n77 ) , .ZN ( n725 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U158 ( .INP ( n718 ) , .ZN ( n726 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U159 ( .INP ( n833 ) , .ZN ( n727 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U160 ( .INP ( n727 ) , .ZN ( n728 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U161 ( .INP ( n720 ) , .ZN ( n729 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U162 ( .INP ( n717 ) , .ZN ( n730 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U163 ( .INP ( n808 ) , .ZN ( n731 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U164 ( .INP ( n731 ) , .ZN ( n732 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U165 ( .INP ( n715 ) , .ZN ( n733 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U166 ( .INP ( n716 ) , .ZN ( n734 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U167 ( .INP ( n713 ) , .ZN ( n735 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U168 ( .INP ( n835 ) , .ZN ( n736 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U169 ( .IN1 ( n780 ) , .IN2 ( n837 ) , .IN3 ( n828 ) , .QN ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI222X1 U170 ( .IN1 ( n820 ) , .IN2 ( n786 ) , .IN3 ( n14 ) , .IN4 ( n677 ) , 
    .IN5 ( n840 ) , .IN6 ( n788 ) , .QN ( n79 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U171 ( .INP ( n79 ) , .ZN ( n737 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U172 ( .INP ( n719 ) , .ZN ( n738 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U173 ( .INP ( n714 ) , .ZN ( n739 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U174 ( .INP ( n712 ) , .ZN ( n740 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U175 ( .INP ( n710 ) , .ZN ( n741 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U176 ( .INP ( n711 ) , .ZN ( n742 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U177 ( .INP ( n709 ) , .ZN ( n743 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U178 ( .INP ( n750 ) , .ZN ( n744 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U179 ( .INP ( n708 ) , .ZN ( n745 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U180 ( .INP ( n16 ) , .ZN ( n746 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U181 ( .INP ( n746 ) , .ZN ( n747 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U182 ( .INP ( n707 ) , .ZN ( n748 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U183 ( .INP ( n840 ) , .ZN ( n749 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U184 ( .INP ( n674 ) , .ZN ( n750 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U185 ( .INP ( n824 ) , .ZN ( n751 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U186 ( .INP ( n706 ) , .ZN ( n752 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U187 ( .INP ( n686 ) , .ZN ( n753 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U188 ( .INP ( n753 ) , .ZN ( n754 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U189 ( .INP ( n704 ) , .ZN ( n755 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U190 ( .INP ( n705 ) , .ZN ( n756 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U191 ( .INP ( n705 ) , .ZN ( n757 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U192 ( .INP ( n15 ) , .ZN ( n758 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U193 ( .INP ( n758 ) , .ZN ( n759 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U194 ( .INP ( n758 ) , .ZN ( n760 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U195 ( .INP ( n843 ) , .ZN ( n761 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U196 ( .INP ( n761 ) , .ZN ( n762 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U197 ( .INP ( n761 ) , .ZN ( n763 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U198 ( .INP ( n822 ) , .ZN ( n764 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U199 ( .INP ( n764 ) , .ZN ( n765 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U200 ( .INP ( n41 ) , .ZN ( n766 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U201 ( .INP ( n766 ) , .ZN ( n767 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U202 ( .INP ( n837 ) , .ZN ( n768 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U203 ( .INP ( n2 ) , .ZN ( n769 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U204 ( .INP ( n2 ) , .ZN ( n770 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U205 ( .INP ( n41 ) , .ZN ( n771 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U206 ( .INP ( n771 ) , .ZN ( n772 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U207 ( .INP ( n771 ) , .ZN ( n773 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U208 ( .INP ( n42 ) , .ZN ( n774 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U209 ( .INP ( n42 ) , .ZN ( n775 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U210 ( .INP ( n43 ) , .ZN ( n776 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U211 ( .INP ( n43 ) , .ZN ( n777 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U212 ( .INP ( n844 ) , .ZN ( n778 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U213 ( .INP ( n778 ) , .ZN ( n779 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U214 ( .INP ( n778 ) , .ZN ( n780 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U215 ( .INP ( n8 ) , .ZN ( n781 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U216 ( .INP ( n781 ) , .ZN ( n782 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U217 ( .INP ( n702 ) , .ZN ( n783 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U218 ( .INP ( n702 ) , .ZN ( n784 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U219 ( .IN1 ( n8 ) , .IN2 ( n838 ) , .IN3 ( n728 ) , .QN ( n32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U220 ( .INP ( n681 ) , .ZN ( n785 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U221 ( .INP ( n785 ) , .ZN ( n786 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U222 ( .INP ( n703 ) , .ZN ( n787 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U223 ( .IN1 ( n741 ) , .IN2 ( n795 ) , .Q ( n76 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U224 ( .INP ( n76 ) , .ZN ( n788 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U225 ( .INP ( n76 ) , .ZN ( n789 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA222X2 U226 ( .IN1 ( n805 ) , .IN2 ( n789 ) , .IN3 ( n842 ) , .IN4 ( n786 ) , 
    .IN5 ( n751 ) , .IN6 ( n686 ) , .Q ( n86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U227 ( .INP ( n9 ) , .ZN ( n790 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U228 ( .INP ( n790 ) , .ZN ( n791 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U229 ( .INP ( n790 ) , .ZN ( n792 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U230 ( .INP ( n89 ) , .ZN ( n793 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U231 ( .INP ( n793 ) , .ZN ( n794 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U232 ( .INP ( n793 ) , .ZN ( n795 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U233 ( .INP ( n82 ) , .ZN ( n796 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U234 ( .INP ( n796 ) , .ZN ( n797 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U235 ( .INP ( n796 ) , .ZN ( n798 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U236 ( .INP ( n683 ) , .ZN ( n799 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U237 ( .INP ( n799 ) , .ZN ( n800 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U238 ( .INP ( n625 ) , .ZN ( n801 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U239 ( .INP ( n701 ) , .ZN ( n802 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U240 ( .INP ( n701 ) , .ZN ( n803 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U241 ( .INP ( n50 ) , .ZN ( n804 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U242 ( .INP ( n804 ) , .ZN ( n805 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U243 ( .INP ( n804 ) , .ZN ( n806 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U244 ( .INP ( n28 ) , .ZN ( n807 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U245 ( .INP ( n807 ) , .ZN ( n808 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U246 ( .INP ( n700 ) , .ZN ( n809 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U247 ( .INP ( n700 ) , .ZN ( n810 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U248 ( .INP ( n763 ) , .ZN ( n811 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U249 ( .INP ( n839 ) , .ZN ( n812 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U250 ( .INP ( n812 ) , .ZN ( n813 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U251 ( .IN1 ( n644 ) , .IN2 ( n11 ) , .Q ( n42 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U252 ( .INP ( n774 ) , .ZN ( n814 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U253 ( .INP ( n774 ) , .ZN ( n815 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U254 ( .INP ( n775 ) , .ZN ( n816 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U255 ( .INP ( n776 ) , .ZN ( n817 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U256 ( .INP ( n776 ) , .ZN ( n818 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U257 ( .INP ( n777 ) , .ZN ( n819 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U258 ( .INP ( n746 ) , .ZN ( n820 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U259 ( .INP ( n692 ) , .ZN ( n821 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U260 ( .INP ( n821 ) , .ZN ( n822 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U261 ( .INP ( n821 ) , .ZN ( n823 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U262 ( .INP ( n14 ) , .ZN ( n824 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U263 ( .INP ( n824 ) , .ZN ( n825 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U264 ( .INP ( n769 ) , .ZN ( n826 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U265 ( .INP ( n770 ) , .ZN ( n827 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U266 ( .INP ( n769 ) , .ZN ( n828 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U267 ( .INP ( n772 ) , .ZN ( n829 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U268 ( .INP ( n773 ) , .ZN ( n830 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U269 ( .INP ( n772 ) , .ZN ( n831 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U270 ( .INP ( n27 ) , .ZN ( n832 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U271 ( .INP ( n828 ) , .ZN ( n833 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U272 ( .INP ( n27 ) , .ZN ( n834 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U273 ( .INP ( n12 ) , .ZN ( n835 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U274 ( .INP ( n768 ) , .ZN ( n836 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U275 ( .INP ( n835 ) , .ZN ( n837 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U276 ( .INP ( n768 ) , .ZN ( n838 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U277 ( .IN1 ( n661 ) , .IN2 ( n720 ) , .IN3 ( n808 ) , .QN ( n31 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U278 ( .INP ( n760 ) , .ZN ( n839 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U279 ( .INP ( n813 ) , .ZN ( n840 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U280 ( .INP ( n813 ) , .ZN ( n841 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U281 ( .INP ( n749 ) , .ZN ( n842 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U282 ( .INP ( n699 ) , .ZN ( n843 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U283 ( .INP ( n811 ) , .ZN ( n844 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U284 ( .INP ( n811 ) , .ZN ( n845 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1 U285 ( .IN1 ( n751 ) , .IN2 ( n801 ) , .IN3 ( n680 ) , .Q ( n81 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1 U286 ( .IN1 ( n841 ) , .IN2 ( n690 ) , .IN3 ( n78 ) , .Q ( n91 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U287 ( .INP ( n674 ) , .ZN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U288 ( .INP ( n803 ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U289 ( .INP ( n757 ) , .ZN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U290 ( .IN1 ( n13 ) , .IN2 ( n826 ) , .QN ( n37 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U291 ( .INP ( n752 ) , .ZN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U292 ( .INP ( n684 ) , .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U293 ( .INP ( n28 ) , .ZN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U294 ( .INP ( n73 ) , .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U295 ( .IN1 ( n691 ) , .IN2 ( n684 ) , .QN ( n64 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA21X1 U296 ( .IN1 ( n66 ) , .IN2 ( n756 ) , .IN3 ( n689 ) , .Q ( n93 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U297 ( .INP ( n832 ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U298 ( .IN1 ( n814 ) , .IN2 ( n817 ) , .QN ( n38 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U299 ( .IN1 ( n73 ) , .IN2 ( n685 ) , .QN ( n70 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U300 ( .INP ( n685 ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U301 ( .IN1 ( n736 ) , .IN2 ( n792 ) , .QN ( n87 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U302 ( .INP ( n843 ) , .ZN ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1 U303 ( .IN1 ( n9 ) , .IN2 ( n38 ) , .IN3 ( n682 ) , .Q ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U304 ( .INP ( n682 ) , .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U305 ( .IN1 ( n836 ) , .IN2 ( n658 ) , .QN ( n82 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U306 ( .INP ( n661 ) , .ZN ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U307 ( .IN1 ( n631 ) , .IN2 ( n675 ) , .QN ( n73 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U308 ( .IN1 ( n633 ) , .IN2 ( n724 ) , .QN ( n43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U309 ( .INP ( n640 ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U310 ( .IN1 ( n24 ) , .IN2 ( n25 ) , .QN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U311 ( .INP ( rdispin ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U312 ( .INP ( datin[4] ) , .ZN ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U313 ( .IN1 ( n767 ) , .IN2 ( n729 ) , .QN ( n40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U314 ( .IN1 ( n662 ) , .IN2 ( n791 ) , .QN ( n89 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U315 ( .IN1 ( n641 ) , .IN2 ( n630 ) , .QN ( n41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U316 ( .IN1 ( n663 ) , .IN2 ( n657 ) , .QN ( n85 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U317 ( .INP ( n628 ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U318 ( .IN1 ( n627 ) , .IN2 ( n634 ) , .QN ( n88 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module dec4b ( clk , reset_n , datin , code_err1 , kout1 , datout , test_si , 
    test_se , VDD , VSS , dftopt0 , dftopt1 , dftopt7 ) ;
input  clk ;
input  reset_n ;
input  [3:0] datin ;
output code_err1 ;
output kout1 ;
output [2:0] datout ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
input  dftopt1 ;
input  dftopt7 ;

wire N53 ;
wire N54 ;
wire N55 ;
wire N56 ;
wire N57 ;
wire n1 ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n139 ;
wire n140 ;
wire n141 ;
wire n142 ;
wire n143 ;
wire n144 ;
wire n145 ;
wire n146 ;
wire n147 ;
wire n148 ;
wire n149 ;
wire n150 ;
wire n151 ;
wire n152 ;
wire n153 ;
wire n154 ;
wire n155 ;
wire n156 ;
wire n157 ;
wire n158 ;
wire n159 ;
wire n160 ;
wire n161 ;
wire n162 ;
wire n163 ;
wire n164 ;
wire n165 ;
wire n166 ;
wire n167 ;
wire n168 ;
wire n169 ;
wire n170 ;
wire n171 ;
wire n172 ;
wire n173 ;
wire n174 ;
wire n175 ;
wire n176 ;
wire n177 ;
wire n178 ;
wire n179 ;
wire n180 ;
wire n181 ;
wire n182 ;
wire n183 ;
wire n184 ;
wire n185 ;
wire n186 ;
wire n187 ;
wire n188 ;
wire n189 ;
wire n190 ;
wire n191 ;
wire n192 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;

NAND4X0 U22 ( .IN1 ( n142 ) , .IN2 ( n140 ) , .IN3 ( n152 ) , .IN4 ( n174 ) , 
    .QN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1 U27 ( .IN1 ( n23 ) , .IN2 ( n24 ) , .Q ( n17 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND4X0 U28 ( .IN1 ( n141 ) , .IN2 ( n151 ) , .IN3 ( n155 ) , .IN4 ( n173 ) , 
    .QN ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 code_err1_reg ( .D ( N56 ) , .SI ( dftopt1 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n166 ) , .Q ( code_err1 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 kout1_reg ( .D ( N57 ) , .SI ( datout[0] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n167 ) , .Q ( kout1 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[1] ( .D ( N54 ) , .SI ( datout[2] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n168 ) , .Q ( datout[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[0] ( .D ( N53 ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n148 ) , .Q ( datout[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \datout_reg[2] ( .D ( N55 ) , .SI ( dftopt7 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n149 ) , .Q ( datout[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( n164 ) , .ZN ( n139 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( n139 ) , .ZN ( n140 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( n139 ) , .ZN ( n141 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( n143 ) , .ZN ( n142 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( n171 ) , .ZN ( n143 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U8 ( .INP ( n169 ) , .ZN ( n144 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( n165 ) , .ZN ( n145 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( n145 ) , .ZN ( n146 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( n145 ) , .ZN ( n147 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( n147 ) , .ZN ( n148 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U13 ( .INP ( n165 ) , .ZN ( n149 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U14 ( .INP ( datin[0] ) , .ZN ( n150 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U15 ( .INP ( n150 ) , .ZN ( n151 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U16 ( .INP ( n150 ) , .ZN ( n152 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( datin[1] ) , .ZN ( n153 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U18 ( .INP ( n144 ) , .ZN ( n154 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U19 ( .INP ( n153 ) , .ZN ( n155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U20 ( .INP ( n153 ) , .ZN ( n156 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U21 ( .INP ( datin[3] ) , .ZN ( n157 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U23 ( .INP ( n157 ) , .ZN ( n158 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U24 ( .INP ( n143 ) , .ZN ( n159 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U25 ( .INP ( n157 ) , .ZN ( n160 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U26 ( .INP ( datin[2] ) , .ZN ( n161 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U29 ( .INP ( n161 ) , .ZN ( n162 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U30 ( .INP ( n161 ) , .ZN ( n163 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U31 ( .INP ( n4 ) , .ZN ( n164 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U32 ( .INP ( reset_n ) , .ZN ( n165 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U33 ( .INP ( n146 ) , .ZN ( n166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U34 ( .INP ( n147 ) , .ZN ( n167 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U35 ( .INP ( n146 ) , .ZN ( n168 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X4 U36 ( .IN1 ( n170 ) , .IN2 ( n21 ) , .IN3 ( n17 ) , .Q ( n18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U37 ( .INP ( n5 ) , .ZN ( n169 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U38 ( .IN1 ( n181 ) , .IN2 ( n3 ) , .IN3 ( n160 ) , .QN ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U39 ( .IN1 ( n192 ) , .IN2 ( n189 ) , .IN3 ( n159 ) , .QN ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U40 ( .IN1 ( n2 ) , .IN2 ( n183 ) , .IN3 ( n158 ) , .QN ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U41 ( .IN1 ( n177 ) , .IN2 ( n189 ) , .IN3 ( n159 ) , .QN ( n20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U42 ( .IN1 ( n162 ) , .IN2 ( n192 ) , .IN3 ( n160 ) , .QN ( n21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U43 ( .IN1 ( n177 ) , .IN2 ( n179 ) , .IN3 ( n164 ) , .QN ( n19 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U44 ( .IN1 ( n188 ) , .IN2 ( n1 ) , .IN3 ( n185 ) , .Q ( n22 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U45 ( .INP ( n22 ) , .ZN ( n170 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U46 ( .INP ( n179 ) , .ZN ( n171 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X2 U47 ( .IN1 ( n5 ) , .IN2 ( n191 ) , .IN3 ( n176 ) , .IN4 ( n188 ) , 
    .QN ( n172 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U48 ( .INP ( n171 ) , .ZN ( n173 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U49 ( .INP ( n169 ) , .ZN ( n174 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U50 ( .INP ( n14 ) , .ZN ( n175 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U51 ( .INP ( n14 ) , .ZN ( n176 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U52 ( .INP ( n176 ) , .ZN ( n177 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U53 ( .INP ( n186 ) , .ZN ( n178 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U54 ( .INP ( n186 ) , .ZN ( n179 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U55 ( .INP ( n11 ) , .ZN ( n180 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U56 ( .INP ( n180 ) , .ZN ( n181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U57 ( .INP ( n172 ) , .ZN ( n182 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U58 ( .INP ( n172 ) , .ZN ( n183 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U59 ( .INP ( n7 ) , .ZN ( n184 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U60 ( .INP ( n7 ) , .ZN ( n185 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U61 ( .INP ( n1 ) , .ZN ( n186 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U62 ( .IN1 ( n15 ) , .IN2 ( n16 ) , .IN3 ( n17 ) , .QN ( N55 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U63 ( .INP ( n4 ) , .ZN ( n187 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U64 ( .INP ( n187 ) , .ZN ( n188 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U65 ( .INP ( n187 ) , .ZN ( n189 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U66 ( .INP ( n184 ) , .ZN ( n190 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U67 ( .INP ( n184 ) , .ZN ( n191 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U68 ( .INP ( n185 ) , .ZN ( n192 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X2 U69 ( .IN1 ( n25 ) , .IN2 ( n170 ) , .IN3 ( n156 ) , .Q ( n23 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U70 ( .IN1 ( n154 ) , .IN2 ( n190 ) , .Q ( n14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X4 U71 ( .IN1 ( n2 ) , .IN2 ( n178 ) , .IN3 ( n183 ) , .QN ( n13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U72 ( .IN1 ( n3 ) , .IN2 ( n178 ) , .IN3 ( n11 ) , .QN ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U73 ( .IN1 ( n163 ) , .IN2 ( n175 ) , .Q ( n11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U74 ( .INP ( n182 ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U75 ( .INP ( n181 ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U76 ( .INP ( n158 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U77 ( .IN1 ( n20 ) , .IN2 ( n18 ) , .QN ( N53 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U78 ( .IN1 ( n19 ) , .IN2 ( n18 ) , .QN ( N54 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U79 ( .INP ( datin[0] ) , .ZN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U80 ( .IN1 ( n191 ) , .IN2 ( n156 ) , .QN ( n15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U81 ( .IN1 ( n8 ) , .IN2 ( n9 ) , .QN ( N57 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U82 ( .IN1 ( n12 ) , .IN2 ( n13 ) , .QN ( N56 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U83 ( .INP ( n162 ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U84 ( .INP ( datin[1] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module dff_width1_0 ( d , reset_n , clk , q , test_si , test_se , VDD , VSS , 
    dftopt16 ) ;
input  [0:0] d ;
input  reset_n ;
input  clk ;
output [0:0] q ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt16 ;

supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;

SDFFARX1 \q_reg[0] ( .D ( d[0] ) , .SI ( dftopt16 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( reset_n ) , .Q ( q[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module dff_width10 ( d , reset_n , clk , q , test_si , test_se , VDD , VSS , 
    dftopt0 , dftopt5 , dftopt8 , dftopt14 ) ;
input  [9:0] d ;
input  reset_n ;
input  clk ;
output [9:0] q ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
input  dftopt5 ;
input  dftopt8 ;
input  dftopt14 ;

wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n36 ;
wire n37 ;
wire n38 ;
wire n39 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;
wire SYNOPSYS_UNCONNECTED_9 ;
wire SYNOPSYS_UNCONNECTED_10 ;

SDFFARX1 \q_reg[6] ( .D ( d[6] ) , .SI ( d[7] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n26 ) , .Q ( q[6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[2] ( .D ( d[2] ) , .SI ( dftopt8 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n30 ) , .Q ( q[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[3] ( .D ( d[3] ) , .SI ( dftopt5 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n34 ) , .Q ( q[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1] ( .D ( d[1] ) , .SI ( d[5] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n22 ) , .Q ( q[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[9] ( .D ( d[9] ) , .SI ( q[6] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n28 ) , .Q ( q[9] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[7] ( .D ( d[7] ) , .SI ( q[8] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n32 ) , .Q ( q[7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[5] ( .D ( d[5] ) , .SI ( dftopt14 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n35 ) , .Q ( q[5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[4] ( .D ( d[4] ) , .SI ( d[3] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n27 ) , .Q ( q[4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[8] ( .D ( d[8] ) , .SI ( q[9] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n23 ) , .Q ( q[8] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0] ( .D ( d[0] ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n31 ) , .Q ( q[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( n36 ) , .ZN ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( n37 ) , .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( n21 ) , .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( n38 ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( n39 ) , .ZN ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U8 ( .INP ( n36 ) , .ZN ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( n25 ) , .ZN ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( n20 ) , .ZN ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( n25 ) , .ZN ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( n37 ) , .ZN ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U13 ( .INP ( n29 ) , .ZN ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U14 ( .INP ( n29 ) , .ZN ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U15 ( .INP ( n20 ) , .ZN ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U16 ( .INP ( n39 ) , .ZN ( n33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( n24 ) , .ZN ( n34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U18 ( .INP ( n33 ) , .ZN ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U19 ( .INP ( n24 ) , .ZN ( n36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U20 ( .INP ( n33 ) , .ZN ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U21 ( .INP ( reset_n ) , .ZN ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U22 ( .INP ( n38 ) , .ZN ( n39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module decoder ( datin , rdispin , clk , reset_n , code_err , kout , 
    disp_err , rdispout , datout , test_si3 , test_si2 , test_si1 , test_so1 , 
    test_se , VDD , VSS , dftopt0 , dftopt1 , \datin_dff[0] , dftopt5 , 
    \datin_dff[3] , dftopt7 , dftopt8 , \datin_dff[2] , \datin_dff[4] , 
    \datin_dff[1] , \out6b[0] , dftopt14 , \out6b[2] , dftopt16 , dftopt17 , 
    dftopt2 , dftopt20 , dftopt21 , dftopt3 ) ;
input  [9:0] datin ;
input  rdispin ;
input  clk ;
input  reset_n ;
output code_err ;
output kout ;
output disp_err ;
output rdispout ;
output [7:0] datout ;
input  test_si3 ;
input  test_si2 ;
input  test_si1 ;
output test_so1 ;
input  test_se ;
input  VDD ;
input  VSS ;
output dftopt0 ;
input  dftopt1 ;
output \datin_dff[0] ;
input  dftopt5 ;
output \datin_dff[3] ;
input  dftopt7 ;
input  dftopt8 ;
output \datin_dff[2] ;
output \datin_dff[4] ;
output \datin_dff[1] ;
output \out6b[0] ;
input  dftopt14 ;
output \out6b[2] ;
input  dftopt16 ;
input  dftopt17 ;
output dftopt2 ;
input  dftopt20 ;
input  dftopt21 ;
output dftopt3 ;

wire rdispin_dff ;
wire kout1 ;
wire code_err1 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire [9:5] datin_dff ;
wire [2:0] out4b ;
wire [4:1] out6b ;
supply1 VDD ;
supply0 VSS ;

assign rdispin_dff = test_so1 ;
assign out6b[2] = \out6b[2] ;

dff_width10 dff_data_in ( .d ( datin ) , .reset_n ( n34 ) , .clk ( clk ) ,
    .q ( { datin_dff[9] , datin_dff[8] , datin_dff[7] , datin_dff[6] , 
        datin_dff[5] , \datin_dff[4] , \datin_dff[3] , \datin_dff[2] , 
        \datin_dff[1] , \datin_dff[0] } ) ,
    .test_si ( test_si2 ) , .test_se ( test_se ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .dftopt0 ( code_err1 ) , .dftopt5 ( dftopt5 ) , 
    .dftopt8 ( dftopt8 ) , .dftopt14 ( dftopt14 ) ) ;
dff_width1_0 dff_rdispin (
    .d ( { rdispin } ) ,
    .reset_n ( n32 ) , .clk ( clk ) ,
    .q ( { test_so1 } ) ,
    .test_si ( datout[7] ) , .test_se ( test_se ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .dftopt16 ( dftopt16 ) ) ;
dec4b dec_4b_3b ( .clk ( clk ) , .reset_n ( n29 ) ,
    .datin ( { \datin_dff[3] , \datin_dff[2] , \datin_dff[1] , \datin_dff[0] } ) ,
    .code_err1 ( code_err1 ) , .kout1 ( kout1 ) , .datout ( out4b ) , 
    .test_si ( kout ) , .test_se ( test_se ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( out6b[1] ) , .dftopt1 ( code_err ) , .dftopt7 ( dftopt7 ) ) ;
dec6b dec_6b_5b ( .clk ( clk ) , .reset_n ( n34 ) , .rdispin ( test_so1 ) ,
    .datin ( { datin_dff[9] , datin_dff[8] , datin_dff[7] , datin_dff[6] , 
        datin_dff[5] , \datin_dff[4] } ) ,
    .code_err2 ( dftopt0 ) , .disp_err ( dftopt3 ) , .kout2 ( dftopt2 ) ,
    .datout ( { out6b[4] , out6b[3] , \out6b[2] , out6b[1] , \out6b[0] } ) ,
    .test_si ( kout1 ) , .test_se ( test_se ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( datin[8] ) , .dftopt1 ( dftopt1 ) , .dftopt2 ( datout[4] ) , 
    .dftopt17 ( dftopt17 ) , .dftopt21 ( dftopt21 ) ) ;
dff_width1_1 dff_disp_err (
    .d ( { dftopt3 } ) ,
    .reset_n ( n33 ) , .clk ( clk ) ,
    .q ( { disp_err } ) ,
    .test_si ( datin[7] ) , .test_se ( test_se ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .dftopt20 ( dftopt20 ) ) ;
dff_width8 dff_data_out (
    .d ( { out4b[2] , out4b[1] , out4b[0] , out6b[4] , out6b[3] , \out6b[2] , 
        out6b[1] , \out6b[0] } ) ,
    .reset_n ( n35 ) , .clk ( clk ) , .q ( datout ) , .test_si2 ( test_si3 ) , 
    .test_si1 ( datin_dff[9] ) , .test_se ( test_se ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .dftopt0 ( datin_dff[7] ) ) ;
control ctrl (
    .data ( { out4b[2] , out4b[1] , out4b[0] , out6b[4] , out6b[3] , 
        \out6b[2] , out6b[1] , \out6b[0] } ) ,
    .code_err1 ( code_err1 ) , .code_err2 ( dftopt0 ) , .kout1 ( kout1 ) , 
    .kout2 ( dftopt2 ) , .rdispin ( test_so1 ) , .clk ( clk ) , 
    .reset_n ( n29 ) , .kout ( kout ) , .code_err ( code_err ) , 
    .rdispout ( rdispout ) , .test_si1 ( test_si1 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U1 ( .INP ( n35 ) , .ZN ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U2 ( .INP ( n28 ) , .ZN ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( reset_n ) , .ZN ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( reset_n ) , .ZN ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( n30 ) , .ZN ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( n30 ) , .ZN ( n33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( n31 ) , .ZN ( n34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U8 ( .INP ( n31 ) , .ZN ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module receiver ( sclk , pclk , reset_n , sdata , rdispin , pdata , kout , 
    code_err , rdispout , disp_err , test_si4 , test_si3 , test_si2 , 
    test_si1 , test_so1 , test_se , VDD , VSS , dftopt2 , \datin[0] , 
    dftopt4 , dftopt6 , dftopt7 , dftopt10 , dftopt13 , dftopt14 , dftopt15 , 
    dftopt16 , dftopt17 , dftopt19 , dftopt20 , dftopt21 , dftopt23 ) ;
input  sclk ;
input  pclk ;
input  reset_n ;
input  sdata ;
input  rdispin ;
output [7:0] pdata ;
output kout ;
output code_err ;
output rdispout ;
output disp_err ;
input  test_si4 ;
input  test_si3 ;
input  test_si2 ;
input  test_si1 ;
output test_so1 ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt2 ;
output \datin[0] ;
input  dftopt4 ;
output dftopt6 ;
input  dftopt7 ;
input  dftopt10 ;
output dftopt13 ;
input  dftopt14 ;
output dftopt15 ;
input  dftopt16 ;
input  dftopt17 ;
output dftopt19 ;
input  dftopt20 ;
input  dftopt21 ;
output dftopt23 ;

wire [9:1] datin ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n8 ;
supply1 VDD ;
supply0 VSS ;
wire dftopt0 ;
wire dftopt1 ;
wire dftopt3 ;
wire dftopt5 ;
wire dftopt8 ;
wire dftopt9 ;
wire dftopt11 ;
wire dftopt12 ;

assign datin[9] = test_so1 ;

decoder dec (
    .datin ( { test_so1 , datin[8] , datin[7] , datin[6] , datin[5] , 
        datin[4] , datin[3] , datin[2] , datin[1] , \datin[0] } ) ,
    .rdispin ( rdispin ) , .clk ( pclk ) , .reset_n ( n6 ) , 
    .code_err ( code_err ) , .kout ( kout ) , .disp_err ( disp_err ) , 
    .rdispout ( rdispout ) , .datout ( pdata ) , .test_si3 ( test_si3 ) , 
    .test_si2 ( test_si2 ) , .test_si1 ( test_si1 ) , .test_so1 ( n8 ) , 
    .test_se ( test_se ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( dftopt0 ) , .dftopt1 ( dftopt1 ) , .\datin_dff[0] ( dftopt3 ) , 
    .dftopt5 ( dftopt5 ) , .\datin_dff[3] ( dftopt6 ) , .dftopt7 ( dftopt7 ) , 
    .dftopt8 ( dftopt8 ) , .\datin_dff[2] ( dftopt9 ) , 
    .\datin_dff[4] ( dftopt11 ) , .\datin_dff[1] ( dftopt12 ) , 
    .\out6b[0] ( dftopt13 ) , .dftopt14 ( dftopt14 ) , 
    .\out6b[2] ( dftopt15 ) , .dftopt16 ( dftopt16 ) , 
    .dftopt17 ( dftopt17 ) , .dftopt2 ( dftopt19 ) , .dftopt20 ( dftopt20 ) , 
    .dftopt21 ( dftopt21 ) , .dftopt3 ( dftopt23 ) ) ;
deserializer ds ( .clk ( sclk ) , .reset_n ( n5 ) , .datin ( sdata ) ,
    .datout ( { test_so1 , datin[8] , datin[7] , datin[6] , datin[5] , 
        datin[4] , datin[3] , datin[2] , datin[1] , \datin[0] } ) ,
    .test_si2 ( test_si4 ) , .test_si1 ( n8 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt2 ( dftopt2 ) , 
    .dftopt0 ( dftopt0 ) , .dftopt1 ( dftopt1 ) , .dftopt3 ( dftopt3 ) , 
    .dftopt4 ( dftopt4 ) , .dftopt5 ( dftopt5 ) , .dftopt6 ( pdata[5] ) , 
    .dftopt7 ( dftopt8 ) , .dftopt8 ( dftopt9 ) , .dftopt10 ( dftopt10 ) , 
    .dftopt9 ( dftopt11 ) , .dftopt11 ( dftopt12 ) ) ;
INVX0 U1 ( .INP ( reset_n ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U2 ( .INP ( n4 ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( n4 ) , .ZN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module control_enc ( kin , data_4b , data_6b , datain , rdispin , 
    ones_counter_4b , ones_counter_6b , rdispout , dataout , k_err , valid , 
    VDD , VSS ) ;
input  kin ;
input  [3:0] data_4b ;
input  [5:0] data_6b ;
input  [7:0] datain ;
input  rdispin ;
input  [1:0] ones_counter_4b ;
input  [2:0] ones_counter_6b ;
output rdispout ;
output [9:0] dataout ;
output k_err ;
output valid ;
input  VDD ;
input  VSS ;

wire n1 ;
wire n4 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n83 ;
wire n84 ;
wire n85 ;
wire n86 ;
wire n87 ;
wire n88 ;
wire n89 ;
wire n90 ;
wire n91 ;
wire n92 ;
wire n93 ;
wire n94 ;
wire n95 ;
wire n96 ;
wire n97 ;
wire n98 ;
wire n99 ;
supply1 VDD ;
supply0 VSS ;

AO21X1 U12 ( .IN1 ( n9 ) , .IN2 ( n10 ) , .IN3 ( n93 ) , .Q ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1 U15 ( .IN1 ( ones_counter_6b[1] ) , .IN2 ( n98 ) , 
    .IN3 ( ones_counter_6b[2] ) , .IN4 ( ones_counter_4b[1] ) , .IN5 ( n12 ) , 
    .Q ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI21X1 U16 ( .IN1 ( ones_counter_6b[2] ) , .IN2 ( ones_counter_6b[1] ) , 
    .IN3 ( n92 ) , .QN ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U18 ( .IN1 ( n13 ) , .IN2 ( n14 ) , .IN3 ( kin ) , .Q ( k_err ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U19 ( .IN1 ( n84 ) , .IN2 ( datain[5] ) , .IN3 ( datain[7] ) , 
    .IN4 ( datain[6] ) , .QN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U22 ( .IN1 ( n96 ) , .IN2 ( n88 ) , .IN3 ( datain[4] ) , 
    .IN4 ( n83 ) , .QN ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1 U3 ( .IN1 ( n7 ) , .IN2 ( rdispin ) , .IN3 ( n4 ) , .IN4 ( n8 ) , 
    .QN ( rdispout ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( datain[1] ) , .ZN ( n83 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI221X1 U5 ( .IN1 ( datain[3] ) , .IN2 ( datain[2] ) , .IN3 ( n1 ) , 
    .IN4 ( datain[0] ) , .IN5 ( n16 ) , .QN ( n15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( n15 ) , .ZN ( n84 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U7 ( .IN1 ( n97 ) , .IN2 ( n17 ) , .Q ( n16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U8 ( .INP ( n6 ) , .ZN ( n85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U9 ( .IN1 ( datain[3] ) , .IN2 ( datain[2] ) , .Q ( n86 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U10 ( .IN1 ( ones_counter_6b[0] ) , .IN2 ( ones_counter_4b[0] ) , 
    .Q ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( n1 ) , .ZN ( n87 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U13 ( .INP ( n87 ) , .ZN ( n88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U14 ( .INP ( n86 ) , .ZN ( n89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( n86 ) , .ZN ( n90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U20 ( .INP ( n11 ) , .ZN ( n91 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U21 ( .INP ( n91 ) , .ZN ( n92 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U23 ( .INP ( n91 ) , .ZN ( n93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U24 ( .INP ( n85 ) , .ZN ( n94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U25 ( .INP ( datain[0] ) , .ZN ( n95 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U26 ( .INP ( datain[0] ) , .ZN ( n96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U27 ( .INP ( datain[1] ) , .ZN ( n97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U28 ( .INP ( ones_counter_4b[1] ) , .ZN ( n98 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U29 ( .INP ( ones_counter_4b[1] ) , .ZN ( n99 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X4 U30 ( .IN1 ( n98 ) , .IN2 ( n6 ) , .IN3 ( ones_counter_6b[2] ) , 
    .QN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X2 U31 ( .IN1 ( n99 ) , .IN2 ( ones_counter_6b[2] ) , .IN3 ( n94 ) , 
    .Q ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U32 ( .INP ( ones_counter_6b[1] ) , .ZN ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U33 ( .IN1 ( n89 ) , .IN2 ( n95 ) , .QN ( n17 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U34 ( .INP ( n90 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U35 ( .INP ( rdispin ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4 U36 ( .INP ( data_6b[5] ) , .Z ( dataout[9] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U37 ( .INP ( data_6b[4] ) , .Z ( dataout[8] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U38 ( .INP ( data_6b[3] ) , .Z ( dataout[7] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U39 ( .INP ( data_6b[2] ) , .Z ( dataout[6] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U40 ( .INP ( data_6b[1] ) , .Z ( dataout[5] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U41 ( .INP ( data_6b[0] ) , .Z ( dataout[4] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U42 ( .INP ( data_4b[3] ) , .Z ( dataout[3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U43 ( .INP ( data_4b[2] ) , .Z ( dataout[2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U44 ( .INP ( data_4b[1] ) , .Z ( dataout[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U45 ( .INP ( data_4b[0] ) , .Z ( dataout[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module enc_5b ( datain , kin , rdispin , ones_counter_6b , disparity_6b , 
    dout , VDD , VSS ) ;
input  [4:0] datain ;
input  kin ;
input  rdispin ;
output [2:0] ones_counter_6b ;
output [2:0] disparity_6b ;
output [5:0] dout ;
input  VDD ;
input  VSS ;

wire n998 ;
wire n1000 ;
wire n1001 ;
wire n996 ;
wire n997 ;
wire n2 ;
wire n4 ;
wire n6 ;
wire n7 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n19 ;
wire n20 ;
wire n22 ;
wire n23 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n36 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n44 ;
wire n45 ;
wire n46 ;
wire n47 ;
wire n48 ;
wire n49 ;
wire n50 ;
wire n51 ;
wire n52 ;
wire n53 ;
wire n54 ;
wire n55 ;
wire n59 ;
wire n60 ;
wire n61 ;
wire n62 ;
wire n64 ;
wire n65 ;
wire n68 ;
wire n69 ;
wire n70 ;
wire n71 ;
wire n72 ;
wire n73 ;
wire n74 ;
wire n75 ;
wire n76 ;
wire n78 ;
wire n79 ;
wire n80 ;
wire n81 ;
wire n82 ;
wire n83 ;
wire n84 ;
wire n85 ;
wire n86 ;
wire n87 ;
wire n88 ;
wire n89 ;
wire n90 ;
wire n91 ;
wire n92 ;
wire n93 ;
wire n94 ;
wire n95 ;
wire n96 ;
wire n97 ;
wire n98 ;
wire n99 ;
wire n100 ;
wire n101 ;
wire n104 ;
wire n105 ;
wire n106 ;
wire n107 ;
wire n108 ;
wire n109 ;
wire n110 ;
wire n111 ;
wire n112 ;
wire n113 ;
wire n114 ;
wire n115 ;
wire n116 ;
wire n748 ;
wire n749 ;
wire n750 ;
wire n751 ;
wire n752 ;
wire n753 ;
wire n754 ;
wire n755 ;
wire n756 ;
wire n757 ;
wire n758 ;
wire n759 ;
wire n760 ;
wire n761 ;
wire n762 ;
wire n763 ;
wire n764 ;
wire n765 ;
wire n766 ;
wire n767 ;
wire n768 ;
wire n769 ;
wire n770 ;
wire n771 ;
wire n772 ;
wire n773 ;
wire n774 ;
wire n775 ;
wire n776 ;
wire n777 ;
wire n778 ;
wire n779 ;
wire n780 ;
wire n781 ;
wire n782 ;
wire n783 ;
wire n784 ;
wire n785 ;
wire n786 ;
wire n787 ;
wire n788 ;
wire n789 ;
wire n790 ;
wire n791 ;
wire n792 ;
wire n793 ;
wire n794 ;
wire n795 ;
wire n796 ;
wire n797 ;
wire n798 ;
wire n799 ;
wire n800 ;
wire n801 ;
wire n802 ;
wire n803 ;
wire n804 ;
wire n805 ;
wire n806 ;
wire n807 ;
wire n808 ;
wire n809 ;
wire n810 ;
wire n811 ;
wire n812 ;
wire n813 ;
wire n814 ;
wire n815 ;
wire n816 ;
wire n817 ;
wire n818 ;
wire n819 ;
wire n820 ;
wire n821 ;
wire n822 ;
wire n823 ;
wire n824 ;
wire n825 ;
wire n826 ;
wire n827 ;
wire n828 ;
wire n829 ;
wire n830 ;
wire n831 ;
wire n832 ;
wire n833 ;
wire n834 ;
wire n835 ;
wire n836 ;
wire n837 ;
wire n838 ;
wire n839 ;
wire n840 ;
wire n841 ;
wire n842 ;
wire n843 ;
wire n844 ;
wire n845 ;
wire n846 ;
wire n847 ;
wire n848 ;
wire n849 ;
wire n850 ;
wire n851 ;
wire n852 ;
wire n853 ;
wire n854 ;
wire n855 ;
wire n856 ;
wire n857 ;
wire n858 ;
wire n859 ;
wire n861 ;
wire n863 ;
wire n865 ;
wire n867 ;
wire n868 ;
wire n870 ;
wire n872 ;
wire n873 ;
wire n874 ;
wire n875 ;
wire n876 ;
wire n877 ;
wire n878 ;
wire n879 ;
wire n880 ;
wire n881 ;
wire n882 ;
wire n883 ;
wire n884 ;
wire n885 ;
wire n886 ;
wire n887 ;
wire n888 ;
wire n889 ;
wire n890 ;
wire n891 ;
wire n892 ;
wire n893 ;
wire n894 ;
wire n895 ;
wire n896 ;
wire n897 ;
wire n898 ;
wire n899 ;
wire n900 ;
wire n901 ;
wire n902 ;
wire n903 ;
wire n904 ;
wire n905 ;
wire n906 ;
wire n907 ;
wire n908 ;
wire n909 ;
wire n910 ;
wire n911 ;
wire n912 ;
wire n913 ;
wire n914 ;
wire n915 ;
wire n916 ;
wire n917 ;
wire n918 ;
wire n919 ;
wire n920 ;
wire n921 ;
wire n922 ;
wire n923 ;
wire n924 ;
wire n925 ;
wire n926 ;
wire n927 ;
wire n928 ;
wire n929 ;
wire n930 ;
wire n931 ;
wire n932 ;
wire n934 ;
wire n935 ;
wire n936 ;
wire n937 ;
wire n938 ;
wire n939 ;
wire n940 ;
wire n941 ;
wire n942 ;
wire n943 ;
wire n944 ;
wire n945 ;
wire n946 ;
wire n947 ;
wire n948 ;
wire n949 ;
wire n950 ;
wire n951 ;
wire n952 ;
wire n953 ;
wire n954 ;
wire n955 ;
wire n956 ;
wire n957 ;
wire n958 ;
wire n959 ;
wire n960 ;
wire n961 ;
wire n962 ;
wire n963 ;
wire n964 ;
wire n965 ;
wire n967 ;
wire n968 ;
wire n969 ;
wire n970 ;
wire n971 ;
wire n972 ;
wire n973 ;
wire n974 ;
wire n976 ;
wire n977 ;
wire n978 ;
wire n979 ;
wire n980 ;
wire n981 ;
wire n982 ;
wire n983 ;
wire n984 ;
wire n985 ;
wire n986 ;
wire n987 ;
wire n988 ;
wire n989 ;
wire n990 ;
wire n991 ;
wire n992 ;
wire n993 ;
wire n994 ;
wire n995 ;
supply1 VDD ;
supply0 VSS ;

NOR4X1 U20 ( .IN1 ( n785 ) , .IN2 ( n935 ) , .IN3 ( n842 ) , .IN4 ( n874 ) , 
    .QN ( n90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR3X0 U81 ( .IN1 ( n886 ) , .IN2 ( n894 ) , .IN3 ( n883 ) , .QN ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1 U90 ( .IN1 ( n803 ) , .IN2 ( n798 ) , .IN3 ( n39 ) , .IN4 ( n897 ) , 
    .IN5 ( n40 ) , .Q ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1 U93 ( .IN1 ( n48 ) , .IN2 ( n773 ) , .IN3 ( n15 ) , .IN4 ( n50 ) , 
    .QN ( n1000 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1 U94 ( .IN1 ( n945 ) , .IN2 ( n895 ) , .IN3 ( n53 ) , .IN4 ( n54 ) , 
    .IN5 ( n55 ) , .Q ( n50 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1 U99 ( .IN1 ( n61 ) , .IN2 ( n898 ) , .IN3 ( n62 ) , .IN4 ( n901 ) , 
    .IN5 ( n801 ) , .Q ( n60 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U104 ( .IN1 ( n928 ) , .IN2 ( n23 ) , .IN3 ( n799 ) , .IN4 ( n777 ) , 
    .Q ( n75 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U105 ( .IN1 ( n79 ) , .IN2 ( n830 ) , .IN3 ( n930 ) , .IN4 ( n972 ) , 
    .Q ( n72 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1 U112 ( .IN1 ( n897 ) , .IN2 ( n98 ) , .IN3 ( n99 ) , .IN4 ( n977 ) , 
    .IN5 ( n100 ) , .Q ( n97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U114 ( .IN1 ( n841 ) , .IN2 ( n920 ) , .IN3 ( n800 ) , .Q ( n101 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1 U117 ( .IN1 ( n107 ) , .IN2 ( n899 ) , .IN3 ( n108 ) , .IN4 ( n987 ) , 
    .IN5 ( n109 ) , .Q ( n106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1 U119 ( .IN1 ( n985 ) , .IN2 ( n911 ) , .IN3 ( n993 ) , .Q ( n110 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( VDD ) , .ZN ( disparity_6b[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X4 U5 ( .IN1 ( n801 ) , .IN2 ( n791 ) , .Q ( n748 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1 U6 ( .IN1 ( n70 ) , .IN2 ( n71 ) , .Q ( n749 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U7 ( .IN1 ( n750 ) , .IN2 ( n751 ) , .QN ( n28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U8 ( .IN1 ( n34 ) , .IN2 ( n2 ) , .QN ( n750 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( n32 ) , .ZN ( n751 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( n751 ) , .ZN ( n752 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( n765 ) , .ZN ( n753 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( n753 ) , .ZN ( n754 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U13 ( .INP ( n768 ) , .ZN ( n755 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U14 ( .INP ( n755 ) , .ZN ( n756 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U15 ( .INP ( datain[4] ) , .ZN ( n757 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U16 ( .INP ( n757 ) , .ZN ( n758 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( n757 ) , .ZN ( n759 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U18 ( .INP ( datain[3] ) , .ZN ( n760 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U19 ( .INP ( n760 ) , .ZN ( n761 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U21 ( .INP ( n760 ) , .ZN ( n762 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U22 ( .INP ( datain[2] ) , .ZN ( n763 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U23 ( .INP ( n763 ) , .ZN ( n764 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U24 ( .INP ( n763 ) , .ZN ( n765 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U25 ( .INP ( datain[0] ) , .ZN ( n766 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U26 ( .INP ( n766 ) , .ZN ( n767 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U27 ( .INP ( n766 ) , .ZN ( n768 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U28 ( .IN1 ( n908 ) , .IN2 ( n938 ) , .Q ( n73 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U29 ( .INP ( n73 ) , .ZN ( n769 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U30 ( .IN1 ( n955 ) , .IN2 ( n6 ) , .Q ( n84 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U31 ( .INP ( n84 ) , .ZN ( n770 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U32 ( .IN1 ( n923 ) , .IN2 ( n991 ) , .Q ( n94 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U33 ( .INP ( n94 ) , .ZN ( n771 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X4 U34 ( .IN1 ( n793 ) , .IN2 ( n770 ) , .IN3 ( n802 ) , .IN4 ( n792 ) , 
    .Q ( n775 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U35 ( .IN1 ( n930 ) , .IN2 ( n985 ) , .Q ( n104 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U36 ( .INP ( n104 ) , .ZN ( n772 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U37 ( .IN1 ( n846 ) , .IN2 ( n764 ) , .Q ( n49 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U38 ( .INP ( n49 ) , .ZN ( n773 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X4 U39 ( .IN1 ( n769 ) , .IN2 ( n75 ) , .IN3 ( n789 ) , .Q ( n61 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI21X1 U40 ( .IN1 ( n865 ) , .IN2 ( n940 ) , .IN3 ( n752 ) , .QN ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U41 ( .INP ( n25 ) , .ZN ( n774 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U42 ( .INP ( n775 ) , .ZN ( n776 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U43 ( .IN1 ( n82 ) , .IN2 ( n891 ) , .Q ( n78 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U44 ( .INP ( n78 ) , .ZN ( n777 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI21X1 U45 ( .IN1 ( n69 ) , .IN2 ( n837 ) , .IN3 ( n779 ) , .QN ( n30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U46 ( .INP ( n30 ) , .ZN ( n778 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U47 ( .INP ( n797 ) , .ZN ( n779 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U48 ( .IN1 ( n748 ) , .IN2 ( n749 ) , .QN ( n1001 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA222X2 U49 ( .IN1 ( n775 ) , .IN2 ( n898 ) , .IN3 ( n72 ) , .IN4 ( n890 ) , 
    .IN5 ( n988 ) , .IN6 ( n61 ) , .Q ( n71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X4 U50 ( .IN1 ( n35 ) , .IN2 ( n36 ) , .IN3 ( n37 ) , .Q ( n780 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U51 ( .INP ( n2 ) , .ZN ( n781 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U52 ( .INP ( n837 ) , .ZN ( n782 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U53 ( .INP ( n867 ) , .ZN ( n783 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U54 ( .IN1 ( n762 ) , .IN2 ( n110 ) , .IN3 ( n980 ) , .QN ( n109 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA222X2 U55 ( .IN1 ( n755 ) , .IN2 ( n900 ) , .IN3 ( n795 ) , .IN4 ( n767 ) , 
    .IN5 ( n903 ) , .IN6 ( n23 ) , .Q ( n48 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U56 ( .INP ( n803 ) , .ZN ( n784 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X4 U57 ( .IN1 ( n881 ) , .IN2 ( n92 ) , .IN3 ( n771 ) , .Q ( n91 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U58 ( .INP ( n91 ) , .ZN ( n785 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U59 ( .INP ( n929 ) , .ZN ( n786 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X4 U60 ( .IN1 ( n786 ) , .IN2 ( n843 ) , .Q ( n70 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND3X4 U61 ( .IN1 ( n878 ) , .IN2 ( n105 ) , .IN3 ( n106 ) , .Q ( n787 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U62 ( .INP ( n787 ) , .ZN ( n788 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U63 ( .IN1 ( n951 ) , .IN2 ( n953 ) , .Q ( n998 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X4 U64 ( .IN1 ( n956 ) , .IN2 ( n81 ) , .Q ( n74 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U65 ( .INP ( n74 ) , .ZN ( n789 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U66 ( .IN1 ( n939 ) , .IN2 ( n948 ) , .Q ( n34 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND3X1 U67 ( .IN1 ( n964 ) , .IN2 ( n944 ) , .IN3 ( n980 ) , .Q ( n89 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U68 ( .INP ( n89 ) , .ZN ( n790 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U69 ( .IN1 ( n20 ) , .IN2 ( n938 ) , .Q ( n68 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U70 ( .INP ( n68 ) , .ZN ( n791 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U71 ( .IN1 ( n955 ) , .IN2 ( n914 ) , .Q ( n86 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U72 ( .INP ( n86 ) , .ZN ( n792 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U73 ( .IN1 ( n20 ) , .IN2 ( n958 ) , .Q ( n83 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U74 ( .INP ( n83 ) , .ZN ( n793 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U75 ( .IN1 ( n964 ) , .IN2 ( n937 ) , .Q ( n45 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U76 ( .INP ( n45 ) , .ZN ( n794 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U77 ( .IN1 ( n973 ) , .IN2 ( n900 ) , .Q ( n52 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U78 ( .INP ( n52 ) , .ZN ( n795 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U79 ( .IN1 ( n796 ) , .IN2 ( n797 ) , .QN ( n26 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U80 ( .IN1 ( n867 ) , .IN2 ( n941 ) , .QN ( n796 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U82 ( .INP ( n33 ) , .ZN ( n797 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U83 ( .IN1 ( n764 ) , .IN2 ( n968 ) , .Q ( n38 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U84 ( .INP ( n38 ) , .ZN ( n798 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U85 ( .INP ( n992 ) , .ZN ( n799 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U86 ( .INP ( n799 ) , .ZN ( n800 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X4 U87 ( .IN1 ( n789 ) , .IN2 ( n116 ) , .IN3 ( n802 ) , .Q ( n47 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI21X1 U88 ( .IN1 ( n987 ) , .IN2 ( n790 ) , .IN3 ( n90 ) , .QN ( n64 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U89 ( .INP ( n64 ) , .ZN ( n801 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U91 ( .IN1 ( n932 ) , .IN2 ( n997 ) , .Q ( disparity_6b[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U92 ( .IN1 ( n888 ) , .IN2 ( n943 ) , .IN3 ( n908 ) , .Q ( n85 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U95 ( .INP ( n85 ) , .ZN ( n802 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U96 ( .IN1 ( n65 ) , .IN2 ( n895 ) , .Q ( n803 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U97 ( .INP ( rdispin ) , .ZN ( n994 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U98 ( .IN1 ( datain[2] ) , .IN2 ( n768 ) , .Q ( n804 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U100 ( .INP ( n995 ) , .ZN ( n805 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U101 ( .INP ( n805 ) , .ZN ( n806 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U102 ( .IN1 ( n920 ) , .IN2 ( n911 ) , .Q ( n807 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U103 ( .INP ( n997 ) , .ZN ( n808 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U106 ( .IN1 ( n893 ) , .IN2 ( n31 ) , .Q ( n997 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND3X4 U107 ( .IN1 ( n878 ) , .IN2 ( n96 ) , .IN3 ( n97 ) , .Q ( n809 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X4 U108 ( .IN1 ( n35 ) , .IN2 ( n59 ) , .IN3 ( n60 ) , .Q ( n810 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U109 ( .IN1 ( n905 ) , .IN2 ( n978 ) , .Q ( n87 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X4 U110 ( .IN1 ( n19 ) , .IN2 ( n22 ) , .Q ( n811 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X4 U111 ( .IN1 ( n943 ) , .IN2 ( n890 ) , .Q ( n812 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U113 ( .INP ( n905 ) , .ZN ( n813 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U115 ( .IN1 ( datain[4] ) , .IN2 ( datain[3] ) , .Q ( n814 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U116 ( .IN1 ( n19 ) , .IN2 ( n767 ) , .Q ( n815 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U118 ( .INP ( n795 ) , .ZN ( n816 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U120 ( .IN1 ( n848 ) , .IN2 ( n877 ) , .Q ( n29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X4 U121 ( .IN1 ( n769 ) , .IN2 ( n111 ) , .Q ( n817 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X4 U122 ( .IN1 ( n770 ) , .IN2 ( n771 ) , .Q ( n818 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U123 ( .INP ( n774 ) , .ZN ( n819 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U124 ( .INP ( n888 ) , .ZN ( n820 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U125 ( .IN1 ( n880 ) , .IN2 ( n876 ) , .QN ( n821 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND3X4 U126 ( .IN1 ( n881 ) , .IN2 ( n112 ) , .IN3 ( n792 ) , .Q ( n822 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U127 ( .INP ( n26 ) , .ZN ( n823 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U128 ( .INP ( n846 ) , .ZN ( n824 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U130 ( .INP ( n926 ) , .ZN ( n825 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U131 ( .IN1 ( n788 ) , .IN2 ( n949 ) , .Q ( n69 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U132 ( .INP ( n989 ) , .ZN ( n826 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U133 ( .INP ( n914 ) , .ZN ( n827 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U134 ( .IN1 ( n754 ) , .IN2 ( n845 ) , .QN ( n51 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U135 ( .INP ( n51 ) , .ZN ( n828 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U136 ( .INP ( n989 ) , .ZN ( n829 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U137 ( .INP ( n829 ) , .ZN ( n830 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U138 ( .INP ( n827 ) , .ZN ( n831 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U139 ( .INP ( n69 ) , .ZN ( n832 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U140 ( .INP ( n832 ) , .ZN ( n833 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U141 ( .INP ( n34 ) , .ZN ( n834 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U142 ( .INP ( n834 ) , .ZN ( n835 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U143 ( .INP ( n782 ) , .ZN ( n836 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U144 ( .INP ( n1001 ) , .ZN ( n837 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U145 ( .INP ( n781 ) , .ZN ( n838 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U146 ( .INP ( n983 ) , .ZN ( n839 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U147 ( .INP ( n839 ) , .ZN ( n840 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U148 ( .INP ( n839 ) , .ZN ( n841 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U149 ( .INP ( n899 ) , .ZN ( n842 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U150 ( .INP ( n825 ) , .ZN ( n843 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U151 ( .INP ( n981 ) , .ZN ( n844 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U152 ( .INP ( n824 ) , .ZN ( n845 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U153 ( .INP ( n844 ) , .ZN ( n846 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U154 ( .IN1 ( n990 ) , .IN2 ( n12 ) , .Q ( n46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U155 ( .INP ( n46 ) , .ZN ( n847 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U156 ( .IN1 ( n794 ) , .IN2 ( n847 ) , .IN3 ( n47 ) , .QN ( n44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U157 ( .INP ( n823 ) , .ZN ( n848 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U158 ( .INP ( n4 ) , .ZN ( n849 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U159 ( .INP ( n849 ) , .ZN ( n850 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U160 ( .INP ( n849 ) , .ZN ( n851 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U161 ( .INP ( n821 ) , .ZN ( n852 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U162 ( .INP ( n821 ) , .ZN ( n853 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U163 ( .INP ( n822 ) , .ZN ( n854 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U164 ( .INP ( n822 ) , .ZN ( n855 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U165 ( .INP ( n974 ) , .ZN ( n856 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U166 ( .INP ( n820 ) , .ZN ( n857 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U167 ( .INP ( n856 ) , .ZN ( n858 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U168 ( .INP ( n940 ) , .ZN ( n859 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U169 ( .INP ( n859 ) , .ZN ( dout[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U170 ( .INP ( n941 ) , .ZN ( n861 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U171 ( .INP ( n861 ) , .ZN ( dout[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U172 ( .INP ( n1000 ) , .ZN ( n863 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U173 ( .INP ( n863 ) , .ZN ( dout[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U174 ( .INP ( n863 ) , .ZN ( n865 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U175 ( .INP ( n809 ) , .ZN ( dout[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U176 ( .INP ( n809 ) , .ZN ( n867 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U177 ( .INP ( n780 ) , .ZN ( n868 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U178 ( .INP ( n780 ) , .ZN ( dout[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U179 ( .INP ( n1001 ) , .ZN ( n870 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U180 ( .INP ( n870 ) , .ZN ( dout[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U181 ( .INP ( n11 ) , .ZN ( n872 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U182 ( .INP ( n872 ) , .ZN ( n873 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U183 ( .INP ( n872 ) , .ZN ( n874 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U184 ( .INP ( n818 ) , .ZN ( n875 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U185 ( .INP ( n818 ) , .ZN ( n876 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U186 ( .INP ( n819 ) , .ZN ( n877 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI221X1 U187 ( .IN1 ( n988 ) , .IN2 ( n47 ) , .IN3 ( n903 ) , .IN4 ( n901 ) , 
    .IN5 ( n40 ) , .QN ( n95 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U188 ( .INP ( n95 ) , .ZN ( n878 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U189 ( .INP ( n817 ) , .ZN ( n879 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U190 ( .INP ( n817 ) , .ZN ( n880 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U191 ( .IN1 ( n956 ) , .IN2 ( n944 ) , .Q ( n93 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U192 ( .INP ( n93 ) , .ZN ( n881 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U193 ( .INP ( n30 ) , .ZN ( n882 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U194 ( .INP ( n950 ) , .ZN ( n883 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U195 ( .INP ( n28 ) , .ZN ( n884 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U196 ( .INP ( n884 ) , .ZN ( n885 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U197 ( .INP ( n884 ) , .ZN ( n886 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U198 ( .INP ( n856 ) , .ZN ( n887 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U199 ( .INP ( n806 ) , .ZN ( n888 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U200 ( .INP ( n978 ) , .ZN ( n889 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U201 ( .INP ( n889 ) , .ZN ( n890 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U202 ( .INP ( n889 ) , .ZN ( n891 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U203 ( .INP ( n29 ) , .ZN ( n892 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U204 ( .INP ( n892 ) , .ZN ( n893 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U205 ( .INP ( n892 ) , .ZN ( n894 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U206 ( .INP ( n816 ) , .ZN ( n895 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U207 ( .INP ( n986 ) , .ZN ( n896 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U208 ( .INP ( n896 ) , .ZN ( n897 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U209 ( .INP ( n986 ) , .ZN ( n898 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U210 ( .INP ( n976 ) , .ZN ( n899 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U211 ( .INP ( n814 ) , .ZN ( n900 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U212 ( .INP ( n815 ) , .ZN ( n901 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U213 ( .INP ( n812 ) , .ZN ( n902 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U214 ( .INP ( n812 ) , .ZN ( n903 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U215 ( .INP ( n81 ) , .ZN ( n904 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U216 ( .INP ( n904 ) , .ZN ( n905 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U217 ( .INP ( n813 ) , .ZN ( n906 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U218 ( .INP ( n815 ) , .ZN ( n907 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U219 ( .INP ( n907 ) , .ZN ( n908 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U220 ( .INP ( n907 ) , .ZN ( n909 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U221 ( .INP ( n10 ) , .ZN ( n910 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U222 ( .INP ( n910 ) , .ZN ( n911 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U223 ( .INP ( n910 ) , .ZN ( n912 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U224 ( .INP ( n82 ) , .ZN ( n913 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U225 ( .INP ( n913 ) , .ZN ( n914 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U226 ( .INP ( n9 ) , .ZN ( n915 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U227 ( .INP ( n915 ) , .ZN ( n916 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U228 ( .INP ( n841 ) , .ZN ( n917 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U229 ( .INP ( n982 ) , .ZN ( n918 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U230 ( .INP ( n14 ) , .ZN ( n919 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U231 ( .INP ( n919 ) , .ZN ( n920 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U232 ( .INP ( n919 ) , .ZN ( n921 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U233 ( .INP ( n87 ) , .ZN ( n922 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U234 ( .INP ( n922 ) , .ZN ( n923 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U235 ( .INP ( n922 ) , .ZN ( n924 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U236 ( .INP ( n65 ) , .ZN ( n925 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U237 ( .INP ( n925 ) , .ZN ( n926 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U238 ( .IN1 ( n958 ) , .IN2 ( n16 ) , .Q ( n76 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U239 ( .INP ( n76 ) , .ZN ( n927 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U240 ( .INP ( n76 ) , .ZN ( n928 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U241 ( .INP ( n80 ) , .ZN ( n929 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U242 ( .INP ( n929 ) , .ZN ( n930 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U243 ( .IN1 ( n793 ) , .IN2 ( n927 ) , .IN3 ( n790 ) , .QN ( n115 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U244 ( .INP ( n998 ) , .ZN ( n931 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U245 ( .INP ( n931 ) , .ZN ( n932 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U246 ( .INP ( n931 ) , .ZN ( disparity_6b[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U247 ( .INP ( n4 ) , .ZN ( n934 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U248 ( .INP ( n934 ) , .ZN ( n935 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U249 ( .INP ( n88 ) , .ZN ( n936 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U250 ( .INP ( n936 ) , .ZN ( n937 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U251 ( .INP ( n936 ) , .ZN ( n938 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U252 ( .INP ( n810 ) , .ZN ( n939 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U253 ( .INP ( n810 ) , .ZN ( n940 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U254 ( .INP ( n787 ) , .ZN ( n941 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U255 ( .INP ( n814 ) , .ZN ( n942 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U256 ( .INP ( n942 ) , .ZN ( n943 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U257 ( .INP ( n942 ) , .ZN ( n944 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U258 ( .INP ( n828 ) , .ZN ( n945 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U259 ( .INP ( n828 ) , .ZN ( n946 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U260 ( .IN1 ( n971 ) , .IN2 ( n968 ) , .IN3 ( n945 ) , .QN ( n55 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U261 ( .INP ( n865 ) , .ZN ( n947 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U262 ( .INP ( n947 ) , .ZN ( n948 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U263 ( .INP ( n783 ) , .ZN ( n949 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U264 ( .INP ( n778 ) , .ZN ( n950 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U265 ( .INP ( n950 ) , .ZN ( n951 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U266 ( .INP ( n28 ) , .ZN ( n952 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U267 ( .INP ( n952 ) , .ZN ( n953 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U268 ( .INP ( n113 ) , .ZN ( n954 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U269 ( .INP ( n954 ) , .ZN ( n955 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U270 ( .INP ( n954 ) , .ZN ( n956 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U271 ( .INP ( n12 ) , .ZN ( n957 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U272 ( .INP ( n957 ) , .ZN ( n958 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U273 ( .INP ( n957 ) , .ZN ( n959 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U274 ( .INP ( n6 ) , .ZN ( n960 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U275 ( .INP ( n960 ) , .ZN ( n961 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U276 ( .INP ( n960 ) , .ZN ( n962 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U277 ( .INP ( n16 ) , .ZN ( n963 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U278 ( .INP ( n963 ) , .ZN ( n964 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U279 ( .INP ( n963 ) , .ZN ( n965 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U280 ( .INP ( n808 ) , .ZN ( ones_counter_6b[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U281 ( .INP ( n22 ) , .ZN ( n967 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U282 ( .INP ( n967 ) , .ZN ( n968 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U283 ( .INP ( n826 ) , .ZN ( n969 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U284 ( .INP ( n811 ) , .ZN ( n970 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U285 ( .INP ( n807 ) , .ZN ( n971 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U286 ( .INP ( n807 ) , .ZN ( n972 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U287 ( .INP ( n995 ) , .ZN ( n973 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U288 ( .INP ( n891 ) , .ZN ( n974 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI21X1 U289 ( .IN1 ( n774 ) , .IN2 ( n26 ) , .IN3 ( n27 ) , .QN ( n996 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U290 ( .INP ( n996 ) , .ZN ( ones_counter_6b[2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U291 ( .INP ( n994 ) , .ZN ( n976 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U292 ( .INP ( n976 ) , .ZN ( n977 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U293 ( .INP ( n973 ) , .ZN ( n978 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U294 ( .INP ( n805 ) , .ZN ( n979 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U295 ( .INP ( datain[1] ) , .ZN ( n995 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U296 ( .INP ( n806 ) , .ZN ( n980 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U297 ( .INP ( n918 ) , .ZN ( n981 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U298 ( .INP ( n994 ) , .ZN ( n982 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U299 ( .IN1 ( n759 ) , .IN2 ( n101 ) , .IN3 ( n887 ) , .QN ( n100 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U300 ( .IN1 ( n887 ) , .IN2 ( n961 ) , .IN3 ( n829 ) , .QN ( n111 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X2 U301 ( .IN1 ( n927 ) , .IN2 ( kin ) , .IN3 ( n981 ) , .QN ( n114 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U302 ( .INP ( n804 ) , .ZN ( n983 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U303 ( .INP ( n917 ) , .ZN ( n984 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U304 ( .INP ( n804 ) , .ZN ( n985 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U305 ( .INP ( n824 ) , .ZN ( n986 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U306 ( .INP ( n918 ) , .ZN ( n987 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U307 ( .INP ( n844 ) , .ZN ( n988 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X2 U308 ( .IN1 ( n756 ) , .IN2 ( n946 ) , .Q ( n54 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U309 ( .INP ( n811 ) , .ZN ( n989 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U310 ( .INP ( n969 ) , .ZN ( n990 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U311 ( .INP ( n970 ) , .ZN ( n991 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U312 ( .INP ( n970 ) , .ZN ( n992 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U313 ( .INP ( n969 ) , .ZN ( n993 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U314 ( .INP ( n932 ) , .ZN ( ones_counter_6b[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U315 ( .INP ( n847 ) , .ZN ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U316 ( .IN1 ( n875 ) , .IN2 ( n7 ) , .QN ( n107 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U317 ( .INP ( n98 ) , .ZN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U318 ( .IN1 ( n882 ) , .IN2 ( n885 ) , .QN ( n31 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U319 ( .IN1 ( n854 ) , .IN2 ( n873 ) , .QN ( n98 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U320 ( .IN1 ( n850 ) , .IN2 ( n852 ) , .QN ( n99 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U321 ( .IN1 ( n853 ) , .IN2 ( n855 ) , .QN ( n39 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U322 ( .INP ( n902 ) , .ZN ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U323 ( .INP ( n794 ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U324 ( .IN1 ( n835 ) , .IN2 ( n838 ) , .QN ( n32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U325 ( .IN1 ( n78 ) , .IN2 ( n992 ) , .QN ( n112 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U326 ( .IN1 ( n833 ) , .IN2 ( n836 ) , .QN ( n33 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U327 ( .INP ( n868 ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U328 ( .IN1 ( n991 ) , .IN2 ( n937 ) , .QN ( n116 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U329 ( .IN1 ( n851 ) , .IN2 ( n879 ) , .QN ( n108 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U330 ( .INP ( n777 ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U331 ( .IN1 ( n916 ) , .IN2 ( n924 ) , .QN ( n65 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U332 ( .INP ( n972 ) , .ZN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U333 ( .IN1 ( n965 ) , .IN2 ( n909 ) , .QN ( n80 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U334 ( .IN1 ( n776 ) , .IN2 ( n977 ) , .QN ( n59 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U335 ( .IN1 ( n959 ) , .IN2 ( n784 ) , .QN ( n62 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U336 ( .IN1 ( n990 ) , .IN2 ( n961 ) , .QN ( n92 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U337 ( .IN1 ( n44 ) , .IN2 ( rdispin ) , .QN ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U338 ( .IN1 ( n979 ) , .IN2 ( n840 ) , .QN ( n113 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U339 ( .INP ( n984 ) , .ZN ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1 U340 ( .IN1 ( n984 ) , .IN2 ( n926 ) , .IN3 ( n791 ) , .Q ( n35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U341 ( .IN1 ( n971 ) , .IN2 ( n857 ) , .QN ( n88 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U342 ( .INP ( n798 ) , .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U343 ( .IN1 ( n906 ) , .IN2 ( n831 ) , .QN ( n79 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U344 ( .IN1 ( n9 ) , .IN2 ( n772 ) , .QN ( n96 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U345 ( .INP ( datain[0] ) , .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U346 ( .INP ( n765 ) , .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U347 ( .INP ( n773 ) , .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U348 ( .IN1 ( n923 ) , .IN2 ( n772 ) , .QN ( n105 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U349 ( .IN1 ( n962 ) , .IN2 ( n858 ) , .QN ( n53 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U350 ( .IN1 ( n114 ) , .IN2 ( n115 ) , .QN ( n40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U351 ( .INP ( n762 ) , .ZN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U352 ( .IN1 ( n921 ) , .IN2 ( n758 ) , .QN ( n81 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U353 ( .INP ( n759 ) , .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U354 ( .IN1 ( n912 ) , .IN2 ( n761 ) , .QN ( n82 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U355 ( .INP ( kin ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module enc_3b ( datain , rdispin , kin , disparity_6b , ones_counter_4b , 
    disparity_4b , dataout , VDD , VSS ) ;
input  [2:0] datain ;
input  rdispin ;
input  kin ;
input  [2:0] disparity_6b ;
output [1:0] ones_counter_4b ;
output [2:0] disparity_4b ;
output [3:0] dataout ;
input  VDD ;
input  VSS ;

wire n435 ;
wire n437 ;
wire n436 ;
wire n433 ;
wire n3 ;
wire n4 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n36 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n41 ;
wire n42 ;
wire n43 ;
wire n44 ;
wire n45 ;
wire n46 ;
wire n47 ;
wire n48 ;
wire n49 ;
wire n50 ;
wire n51 ;
wire n328 ;
wire n329 ;
wire n330 ;
wire n331 ;
wire n332 ;
wire n333 ;
wire n334 ;
wire n335 ;
wire n336 ;
wire n337 ;
wire n338 ;
wire n339 ;
wire n340 ;
wire n341 ;
wire n342 ;
wire n343 ;
wire n344 ;
wire n345 ;
wire n346 ;
wire n347 ;
wire n348 ;
wire n349 ;
wire n350 ;
wire n351 ;
wire n352 ;
wire n353 ;
wire n354 ;
wire n355 ;
wire n356 ;
wire n357 ;
wire n358 ;
wire n359 ;
wire n360 ;
wire n361 ;
wire n362 ;
wire n363 ;
wire n364 ;
wire n365 ;
wire n366 ;
wire n367 ;
wire n368 ;
wire n369 ;
wire n370 ;
wire n371 ;
wire n372 ;
wire n373 ;
wire n374 ;
wire n375 ;
wire n376 ;
wire n377 ;
wire n378 ;
wire n379 ;
wire n380 ;
wire n381 ;
wire n382 ;
wire n383 ;
wire n384 ;
wire n385 ;
wire n386 ;
wire n388 ;
wire n390 ;
wire n393 ;
wire n394 ;
wire n395 ;
wire n396 ;
wire n397 ;
wire n398 ;
wire n400 ;
wire n401 ;
wire n402 ;
wire n403 ;
wire n404 ;
wire n405 ;
wire n406 ;
wire n407 ;
wire n408 ;
wire n409 ;
wire n410 ;
wire n411 ;
wire n412 ;
wire n413 ;
wire n414 ;
wire n415 ;
wire n416 ;
wire n417 ;
wire n418 ;
wire n419 ;
wire n420 ;
wire n421 ;
wire n422 ;
wire n423 ;
wire n424 ;
wire n425 ;
wire n426 ;
wire n427 ;
wire n428 ;
wire n429 ;
wire n430 ;
wire n431 ;
supply1 VDD ;
supply0 VSS ;

OA221X1 U32 ( .IN1 ( n354 ) , .IN2 ( n3 ) , .IN3 ( n393 ) , .IN4 ( n363 ) , 
    .IN5 ( n4 ) , .Q ( disparity_4b[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1 U37 ( .IN1 ( n24 ) , .IN2 ( n410 ) , .IN3 ( n7 ) , .IN4 ( n398 ) , 
    .Q ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U39 ( .IN1 ( n28 ) , .IN2 ( n29 ) , .IN3 ( n30 ) , .IN4 ( n383 ) , 
    .QN ( n435 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR3X0 U48 ( .IN1 ( n331 ) , .IN2 ( n332 ) , .IN3 ( n381 ) , .QN ( n41 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1 U57 ( .IN1 ( n16 ) , .IN2 ( n12 ) , .IN3 ( n51 ) , .IN4 ( n421 ) , 
    .IN5 ( n431 ) , .Q ( n50 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR3X0 U59 ( .IN1 ( disparity_6b[2] ) , .IN2 ( disparity_6b[1] ) , 
    .IN3 ( disparity_6b[0] ) , .QN ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( VDD ) , .ZN ( disparity_4b[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( n336 ) , .ZN ( n328 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( n328 ) , .ZN ( n329 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( n346 ) , .ZN ( n330 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U8 ( .INP ( n330 ) , .ZN ( n331 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( n333 ) , .ZN ( n332 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( n404 ) , .ZN ( n333 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( rdispin ) , .ZN ( n334 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( n334 ) , .ZN ( n335 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U13 ( .INP ( n334 ) , .ZN ( n336 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U14 ( .INP ( datain[2] ) , .ZN ( n337 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U15 ( .INP ( n337 ) , .ZN ( n338 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U16 ( .INP ( n337 ) , .ZN ( n339 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( kin ) , .ZN ( n340 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U18 ( .INP ( n340 ) , .ZN ( n341 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U19 ( .INP ( n340 ) , .ZN ( n342 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U20 ( .INP ( datain[0] ) , .ZN ( n343 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U21 ( .INP ( n11 ) , .ZN ( n344 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U22 ( .INP ( n343 ) , .ZN ( n345 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U23 ( .INP ( n343 ) , .ZN ( n346 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U24 ( .INP ( datain[1] ) , .ZN ( n347 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U25 ( .INP ( n347 ) , .ZN ( n348 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U26 ( .INP ( n347 ) , .ZN ( n349 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U27 ( .INP ( n333 ) , .ZN ( n350 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U28 ( .IN1 ( n431 ) , .IN2 ( n39 ) , .IN3 ( n344 ) , .QN ( n38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X4 U29 ( .IN1 ( n360 ) , .IN2 ( n44 ) , .IN3 ( n358 ) , .Q ( n437 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U30 ( .INP ( n377 ) , .ZN ( n351 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X4 U31 ( .IN1 ( n357 ) , .IN2 ( n22 ) , .IN3 ( n358 ) , .Q ( n371 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U33 ( .INP ( n384 ) , .ZN ( n352 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X2 U34 ( .IN1 ( n396 ) , .IN2 ( n27 ) , .Q ( n24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U35 ( .INP ( n388 ) , .ZN ( n353 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U36 ( .INP ( n388 ) , .ZN ( n354 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U38 ( .IN1 ( n8 ) , .IN2 ( n415 ) , .IN3 ( n366 ) , .QN ( n29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X4 U40 ( .IN1 ( n349 ) , .IN2 ( n38 ) , .IN3 ( n37 ) , .IN4 ( n339 ) , 
    .Q ( n372 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI221X1 U41 ( .IN1 ( n365 ) , .IN2 ( n397 ) , .IN3 ( n50 ) , .IN4 ( n364 ) , 
    .IN5 ( n359 ) , .QN ( n49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U42 ( .INP ( n49 ) , .ZN ( n355 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U43 ( .IN1 ( n395 ) , .IN2 ( n394 ) , .Q ( n433 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U44 ( .INP ( n433 ) , .ZN ( n356 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X2 U45 ( .IN1 ( n373 ) , .IN2 ( n361 ) , .IN3 ( n43 ) , .QN ( n20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U46 ( .INP ( n20 ) , .ZN ( n357 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X2 U47 ( .IN1 ( n361 ) , .IN2 ( n382 ) , .IN3 ( n45 ) , .QN ( n21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U49 ( .INP ( n21 ) , .ZN ( n358 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U50 ( .IN1 ( n418 ) , .IN2 ( n427 ) , .IN3 ( n429 ) , .Q ( n32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U51 ( .INP ( n32 ) , .ZN ( n359 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X4 U52 ( .IN1 ( n338 ) , .IN2 ( n47 ) , .IN3 ( n48 ) , .IN4 ( n428 ) , 
    .Q ( n33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U53 ( .INP ( n33 ) , .ZN ( n360 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1 U54 ( .IN1 ( n422 ) , .IN2 ( n417 ) , .IN3 ( n349 ) , .Q ( n42 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U55 ( .INP ( n42 ) , .ZN ( n361 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI21X1 U56 ( .IN1 ( n348 ) , .IN2 ( n412 ) , .IN3 ( n41 ) , .QN ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U58 ( .INP ( n25 ) , .ZN ( n362 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI21X1 U61 ( .IN1 ( n377 ) , .IN2 ( n6 ) , .IN3 ( n374 ) , .QN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U62 ( .INP ( n17 ) , .ZN ( n363 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U63 ( .IN1 ( n339 ) , .IN2 ( n345 ) , .Q ( n23 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U64 ( .INP ( n23 ) , .ZN ( n364 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U65 ( .IN1 ( n344 ) , .IN2 ( n9 ) , .Q ( n46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U66 ( .INP ( n46 ) , .ZN ( n365 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U67 ( .IN1 ( n359 ) , .IN2 ( n360 ) , .Q ( n30 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U68 ( .INP ( n375 ) , .ZN ( n366 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U69 ( .IN1 ( n342 ) , .IN2 ( n421 ) , .Q ( n40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U70 ( .INP ( n40 ) , .ZN ( n367 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U71 ( .INP ( disparity_4b[1] ) , .ZN ( n368 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4 U72 ( .INP ( n356 ) , .Z ( disparity_4b[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND4X4 U73 ( .IN1 ( n357 ) , .IN2 ( n35 ) , .IN3 ( n36 ) , .IN4 ( n384 ) , 
    .Q ( n436 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U74 ( .INP ( n436 ) , .ZN ( n369 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U75 ( .INP ( n363 ) , .ZN ( n370 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U76 ( .INP ( n382 ) , .ZN ( n373 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U77 ( .INP ( n4 ) , .ZN ( n374 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U78 ( .INP ( n407 ) , .ZN ( n375 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U79 ( .IN1 ( n353 ) , .IN2 ( n413 ) , .Q ( n19 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U80 ( .INP ( n351 ) , .ZN ( n376 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U81 ( .INP ( n19 ) , .ZN ( n377 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U82 ( .INP ( n6 ) , .ZN ( n378 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U83 ( .INP ( n378 ) , .ZN ( n379 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U84 ( .INP ( n426 ) , .ZN ( n380 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U85 ( .INP ( n373 ) , .ZN ( n381 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U86 ( .INP ( n380 ) , .ZN ( n382 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U87 ( .INP ( n352 ) , .ZN ( n383 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U88 ( .INP ( n372 ) , .ZN ( n384 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U89 ( .INP ( n420 ) , .ZN ( n385 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U90 ( .INP ( n435 ) , .ZN ( n386 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U91 ( .INP ( n3 ) , .ZN ( dataout[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U92 ( .INP ( n371 ) , .ZN ( n388 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U93 ( .INP ( n354 ) , .ZN ( dataout[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U94 ( .INP ( n437 ) , .ZN ( n390 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U95 ( .INP ( n437 ) , .ZN ( dataout[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U96 ( .INP ( n393 ) , .ZN ( dataout[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U97 ( .INP ( n369 ) , .ZN ( n393 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U98 ( .INP ( n369 ) , .ZN ( n394 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U99 ( .INP ( n370 ) , .ZN ( n395 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U100 ( .INP ( n16 ) , .ZN ( n396 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U101 ( .INP ( n13 ) , .ZN ( n397 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U102 ( .INP ( n397 ) , .ZN ( n398 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U103 ( .INP ( n368 ) , .ZN ( ones_counter_4b[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U104 ( .INP ( n367 ) , .ZN ( n400 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U105 ( .INP ( n14 ) , .ZN ( n401 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U106 ( .INP ( n14 ) , .ZN ( n402 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U107 ( .INP ( n427 ) , .ZN ( n403 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U108 ( .INP ( n428 ) , .ZN ( n404 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U109 ( .INP ( n366 ) , .ZN ( n405 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U110 ( .INP ( n404 ) , .ZN ( n406 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U111 ( .INP ( n10 ) , .ZN ( n407 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U112 ( .INP ( n364 ) , .ZN ( n408 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U113 ( .INP ( n408 ) , .ZN ( n409 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U114 ( .INP ( n408 ) , .ZN ( n410 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U115 ( .INP ( n8 ) , .ZN ( n411 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U116 ( .INP ( n411 ) , .ZN ( n412 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U117 ( .INP ( n386 ) , .ZN ( n413 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U118 ( .INP ( n34 ) , .ZN ( n414 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U119 ( .INP ( n414 ) , .ZN ( n415 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U120 ( .INP ( n11 ) , .ZN ( n416 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U121 ( .INP ( n416 ) , .ZN ( n417 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U122 ( .INP ( n416 ) , .ZN ( n418 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U123 ( .INP ( n26 ) , .ZN ( n419 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U124 ( .INP ( n419 ) , .ZN ( n420 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U125 ( .INP ( n419 ) , .ZN ( n421 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U126 ( .INP ( n401 ) , .ZN ( n422 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U127 ( .INP ( n401 ) , .ZN ( n423 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U128 ( .INP ( n402 ) , .ZN ( n424 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U129 ( .INP ( n9 ) , .ZN ( n425 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U130 ( .INP ( n403 ) , .ZN ( n426 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U131 ( .INP ( n425 ) , .ZN ( n427 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U132 ( .INP ( n407 ) , .ZN ( n428 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X4 U133 ( .IN1 ( n355 ) , .IN2 ( n406 ) , .Q ( n44 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X4 U134 ( .IN1 ( n430 ) , .IN2 ( n375 ) , .IN3 ( n46 ) , .QN ( n45 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U135 ( .IN1 ( n412 ) , .IN2 ( n405 ) , .IN3 ( n423 ) , .QN ( n36 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X4 U136 ( .IN1 ( n405 ) , .IN2 ( n426 ) , .IN3 ( n422 ) , .QN ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U137 ( .INP ( n400 ) , .ZN ( n429 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U138 ( .INP ( n40 ) , .ZN ( n430 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U139 ( .INP ( n400 ) , .ZN ( n431 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X2 U140 ( .IN1 ( n335 ) , .IN2 ( n385 ) , .Q ( n34 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X2 U141 ( .IN1 ( n350 ) , .IN2 ( n424 ) , .IN3 ( n409 ) , .Q ( n43 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U142 ( .IN1 ( n376 ) , .IN2 ( n379 ) , .QN ( n18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U143 ( .INP ( n390 ) , .ZN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U144 ( .INP ( n362 ) , .ZN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U145 ( .INP ( n429 ) , .ZN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U146 ( .INP ( disparity_4b[2] ) , .ZN ( ones_counter_4b[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U147 ( .INP ( n435 ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U148 ( .INP ( n18 ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U149 ( .IN1 ( n398 ) , .IN2 ( n362 ) , .QN ( n35 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U150 ( .INP ( n420 ) , .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U151 ( .INP ( n415 ) , .ZN ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U152 ( .IN1 ( n15 ) , .IN2 ( n12 ) , .QN ( n51 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U153 ( .INP ( n365 ) , .ZN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U154 ( .IN1 ( n423 ) , .IN2 ( n417 ) , .QN ( n37 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U155 ( .IN1 ( n34 ) , .IN2 ( n15 ) , .QN ( n39 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U156 ( .IN1 ( n414 ) , .IN2 ( n418 ) , .QN ( n47 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U157 ( .IN1 ( n430 ) , .IN2 ( n345 ) , .QN ( n48 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U158 ( .INP ( n336 ) , .ZN ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U159 ( .IN1 ( n341 ) , .IN2 ( n329 ) , .QN ( n27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U160 ( .INP ( n346 ) , .ZN ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U161 ( .INP ( n348 ) , .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U162 ( .INP ( n338 ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U163 ( .INP ( n342 ) , .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module dff_enc_WIDTH10 ( rst_n , d , clk , q , test_si2 , test_si1 , test_se , 
    VDD , VSS , dftopt0 , dftopt1 , dftopt3 , dftopt9 , dftopt11 ) ;
input  rst_n ;
input  [9:0] d ;
input  clk ;
output [9:0] q ;
input  test_si2 ;
input  test_si1 ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
input  dftopt1 ;
input  dftopt3 ;
input  dftopt9 ;
input  dftopt11 ;

wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n36 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;
wire SYNOPSYS_UNCONNECTED_9 ;
wire SYNOPSYS_UNCONNECTED_10 ;

SDFFARX1 \q_reg[9] ( .D ( d[9] ) , .SI ( dftopt1 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n20 ) , .Q ( q[9] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[8] ( .D ( d[8] ) , .SI ( q[6] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n29 ) , .Q ( q[8] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[7] ( .D ( d[7] ) , .SI ( dftopt3 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n33 ) , .Q ( q[7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[6] ( .D ( d[6] ) , .SI ( q[5] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n34 ) , .Q ( q[6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[5] ( .D ( d[5] ) , .SI ( test_si2 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n31 ) , .Q ( q[5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[4] ( .D ( d[4] ) , .SI ( dftopt11 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n27 ) , .Q ( q[4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[3] ( .D ( d[3] ) , .SI ( q[4] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n26 ) , .Q ( q[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[2] ( .D ( d[2] ) , .SI ( dftopt9 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n25 ) , .Q ( q[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1] ( .D ( d[1] ) , .SI ( q[3] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n35 ) , .Q ( q[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0] ( .D ( d[0] ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n30 ) , .Q ( q[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( n36 ) , .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( n32 ) , .ZN ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( n32 ) , .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( n21 ) , .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( n21 ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U8 ( .INP ( rst_n ) , .ZN ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( n24 ) , .ZN ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( n19 ) , .ZN ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( n24 ) , .ZN ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( n36 ) , .ZN ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U13 ( .INP ( n28 ) , .ZN ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U14 ( .INP ( n19 ) , .ZN ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U15 ( .INP ( n28 ) , .ZN ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U16 ( .INP ( rst_n ) , .ZN ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( n23 ) , .ZN ( n33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U18 ( .INP ( n22 ) , .ZN ( n34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U19 ( .INP ( n23 ) , .ZN ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U20 ( .INP ( n22 ) , .ZN ( n36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module dff_enc_WIDTH8 ( rst_n , d , clk , q , test_si , test_se , VDD , VSS , 
    dftopt12 , dftopt16 ) ;
input  rst_n ;
input  [7:0] d ;
input  clk ;
output [7:0] q ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt12 ;
input  dftopt16 ;

wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;

SDFFARX1 \q_reg[7] ( .D ( d[7] ) , .SI ( q[3] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n21 ) , .Q ( q[7] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[0] ( .D ( d[0] ) , .SI ( q[6] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n29 ) , .Q ( q[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[6] ( .D ( d[6] ) , .SI ( q[5] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n26 ) , .Q ( q[6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[5] ( .D ( d[5] ) , .SI ( q[7] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n24 ) , .Q ( q[5] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[2] ( .D ( d[2] ) , .SI ( q[0] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n20 ) , .Q ( q[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[3] ( .D ( d[3] ) , .SI ( q[1] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n28 ) , .Q ( q[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[4] ( .D ( d[4] ) , .SI ( dftopt12 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n27 ) , .Q ( q[4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \q_reg[1] ( .D ( d[1] ) , .SI ( dftopt16 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n23 ) , .Q ( q[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( n25 ) , .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( n25 ) , .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( n16 ) , .ZN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( n15 ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( n16 ) , .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U8 ( .INP ( n18 ) , .ZN ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( n17 ) , .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( rst_n ) , .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( n22 ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( n22 ) , .ZN ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U13 ( .INP ( rst_n ) , .ZN ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U14 ( .INP ( n19 ) , .ZN ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U15 ( .INP ( n18 ) , .ZN ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U16 ( .INP ( n17 ) , .ZN ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( n19 ) , .ZN ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module dff_enc_1 ( rst_n , d , clk , q , test_si , test_se , VDD , VSS , 
    dftopt0 ) ;
input  rst_n ;
input  [0:0] d ;
input  clk ;
output [0:0] q ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;

supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;

SDFFARX1 \q_reg[0] ( .D ( d[0] ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( q[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module dff_enc_2 ( rst_n , d , clk , q , test_si , test_se , VDD , VSS , 
    dftopt5 ) ;
input  rst_n ;
input  [0:0] d ;
input  clk ;
output [0:0] q ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt5 ;

supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;

SDFFARX1 \q_reg[0] ( .D ( d[0] ) , .SI ( dftopt5 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( q[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module dff_enc_0 ( rst_n , d , clk , q , test_si , test_se , VDD , VSS , 
    dftopt0 ) ;
input  rst_n ;
input  [0:0] d ;
input  clk ;
output [0:0] q ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;

supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;

SDFFARX1 \q_reg[0] ( .D ( d[0] ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( q[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module encoder ( clk , rest_n , datain_8b , kin , dataout_10b , rdispout , 
    k_err , valid , test_si3 , test_si2 , test_si1 , test_so1 , test_se , 
    VDD , VSS , dftopt0 , dftopt1 , dftopt3 , dftopt5 , dftopt9 , n105 , 
    dftopt11 , dftopt12 , \data_reg[4] , dftopt16 , \data_reg[2] ) ;
input  clk ;
input  rest_n ;
input  [7:0] datain_8b ;
input  kin ;
output [9:0] dataout_10b ;
output rdispout ;
output k_err ;
output valid ;
input  test_si3 ;
input  test_si2 ;
input  test_si1 ;
output test_so1 ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
output dftopt1 ;
input  dftopt3 ;
input  dftopt5 ;
input  dftopt9 ;
output n105 ;
input  dftopt11 ;
input  dftopt12 ;
output \data_reg[4] ;
input  dftopt16 ;
output \data_reg[2] ;

wire n106 ;
wire kin_reg ;
wire k_err_in ;
wire rdispout_in ;
wire n2 ;
wire n4 ;
wire n53 ;
wire n54 ;
wire n55 ;
wire n56 ;
wire n57 ;
wire n58 ;
wire n59 ;
wire n60 ;
wire n61 ;
wire n62 ;
wire n63 ;
wire n64 ;
wire n65 ;
wire n66 ;
wire n67 ;
wire n68 ;
wire n69 ;
wire n70 ;
wire n71 ;
wire n72 ;
wire n73 ;
wire n74 ;
wire n75 ;
wire n76 ;
wire n77 ;
wire n78 ;
wire n79 ;
wire n80 ;
wire n81 ;
wire n82 ;
wire n83 ;
wire n84 ;
wire n85 ;
wire n86 ;
wire n87 ;
wire n88 ;
wire n90 ;
wire n91 ;
wire n92 ;
wire n93 ;
wire n94 ;
wire n95 ;
wire n96 ;
wire n97 ;
wire n99 ;
wire n100 ;
wire [7:0] data_reg ;
wire [9:0] dataout_10b_in ;
wire [2:0] disparity_6b ;
wire [1:0] ones_counter_4b ;
wire [3:0] dataout_4b ;
wire [2:0] ones_counter_6b ;
wire [5:0] dataout_6b ;
wire SYNOPSYS_UNCONNECTED__0 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;

assign n106 = test_so1 ;
assign data_reg[4] = \data_reg[4] ;
assign data_reg[2] = \data_reg[2] ;

dff_enc_0 kin_ff ( .rst_n ( n83 ) ,
    .d ( { kin } ) ,
    .clk ( clk ) ,
    .q ( { kin_reg } ) ,
    .test_si ( dataout_10b[9] ) , .test_se ( test_se ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .dftopt0 ( dataout_10b[0] ) ) ;
dff_enc_2 k_err_ff ( .rst_n ( n93 ) ,
    .d ( { k_err_in } ) ,
    .clk ( clk ) ,
    .q ( { k_err } ) ,
    .test_si ( test_si3 ) , .test_se ( test_se ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .dftopt5 ( dftopt5 ) ) ;
dff_enc_1 curr_dis_ff ( .rst_n ( n94 ) ,
    .d ( { rdispout_in } ) ,
    .clk ( clk ) ,
    .q ( { n105 } ) ,
    .test_si ( dftopt1 ) , .test_se ( test_se ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .dftopt0 ( dataout_10b[2] ) ) ;
dff_enc_WIDTH8 data_ff ( .rst_n ( n72 ) , .d ( datain_8b ) , .clk ( clk ) ,
    .q ( { data_reg[7] , data_reg[6] , data_reg[5] , \data_reg[4] , 
        data_reg[3] , \data_reg[2] , data_reg[1] , data_reg[0] } ) ,
    .test_si ( n105 ) , .test_se ( test_se ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt12 ( dftopt12 ) , .dftopt16 ( dftopt16 ) ) ;
dff_enc_WIDTH10 dataout_ff ( .rst_n ( n75 ) , .d ( dataout_10b_in ) , 
    .clk ( clk ) , .q ( dataout_10b ) , .test_si2 ( test_si2 ) , 
    .test_si1 ( data_reg[7] ) , .test_se ( test_se ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .dftopt0 ( dftopt0 ) , .dftopt1 ( kin_reg ) , 
    .dftopt3 ( dftopt3 ) , .dftopt9 ( dftopt9 ) , .dftopt11 ( dftopt11 ) ) ;
enc_3b enc_inst_3b ( .datain ( data_reg[7:5] ) , .rdispin ( rdispout ) , 
    .kin ( n79 ) ,
    .disparity_6b ( { disparity_6b[2] , disparity_6b[1] , VSS } ) ,
    .ones_counter_4b ( ones_counter_4b ) ,
    .disparity_4b ( { SYNOPSYS_UNCONNECTED_1 , SYNOPSYS_UNCONNECTED_2 , 
        SYNOPSYS_UNCONNECTED_3 } ) ,
    .dataout ( dataout_4b ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
enc_5b enc_inst_5b (
    .datain ( { n56 , n63 , n66 , data_reg[1] , n81 } ) ,
    .kin ( n78 ) , .rdispin ( n88 ) , .ones_counter_6b ( ones_counter_6b ) ,
    .disparity_6b ( { disparity_6b[2] , disparity_6b[1] , 
        SYNOPSYS_UNCONNECTED__0 } ) ,
    .dout ( dataout_6b ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
control_enc controller ( .kin ( n79 ) , .data_4b ( dataout_4b ) , 
    .data_6b ( dataout_6b ) ,
    .datain ( { n61 , n54 , n59 , n57 , n64 , n67 , n69 , n82 } ) ,
    .rdispin ( n90 ) , .ones_counter_4b ( ones_counter_4b ) , 
    .ones_counter_6b ( ones_counter_6b ) , .rdispout ( rdispout_in ) , 
    .dataout ( dataout_10b_in ) , .k_err ( k_err_in ) , 
    .valid ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 valid_reg ( .D ( n2 ) , .SI ( dataout_10b[7] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n73 ) , .Q ( test_so1 ) , .QN ( n100 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 counter_reg ( .D ( n4 ) , .SI ( dataout_10b[9] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n76 ) , .Q ( dftopt1 ) , .QN ( n95 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( data_reg[6] ) , .ZN ( n53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( n53 ) , .ZN ( n54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( \data_reg[4] ) , .ZN ( n55 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( n55 ) , .ZN ( n56 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( n55 ) , .ZN ( n57 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U8 ( .INP ( data_reg[5] ) , .ZN ( n58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( n58 ) , .ZN ( n59 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( data_reg[7] ) , .ZN ( n60 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( n60 ) , .ZN ( n61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( data_reg[3] ) , .ZN ( n62 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U13 ( .INP ( n62 ) , .ZN ( n63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U14 ( .INP ( n62 ) , .ZN ( n64 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U15 ( .INP ( \data_reg[2] ) , .ZN ( n65 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U16 ( .INP ( n65 ) , .ZN ( n66 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( n65 ) , .ZN ( n67 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U18 ( .INP ( data_reg[1] ) , .ZN ( n68 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U19 ( .INP ( n68 ) , .ZN ( n69 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U20 ( .INP ( n105 ) , .ZN ( n70 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U21 ( .INP ( n92 ) , .ZN ( n71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U22 ( .INP ( n71 ) , .ZN ( n72 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U23 ( .INP ( n71 ) , .ZN ( n73 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U24 ( .INP ( n92 ) , .ZN ( n74 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U25 ( .INP ( n74 ) , .ZN ( n75 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U26 ( .INP ( n74 ) , .ZN ( n76 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U27 ( .INP ( kin_reg ) , .ZN ( n77 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U28 ( .INP ( n77 ) , .ZN ( n78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U29 ( .INP ( n77 ) , .ZN ( n79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U30 ( .INP ( data_reg[0] ) , .ZN ( n80 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U31 ( .INP ( n80 ) , .ZN ( n81 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U32 ( .INP ( n80 ) , .ZN ( n82 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U33 ( .INP ( n91 ) , .ZN ( n83 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U34 ( .INP ( n91 ) , .ZN ( n84 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U35 ( .INP ( n84 ) , .ZN ( n85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U36 ( .INP ( n84 ) , .ZN ( n86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U37 ( .INP ( n105 ) , .ZN ( n87 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U38 ( .INP ( n70 ) , .ZN ( n88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U39 ( .INP ( n87 ) , .ZN ( rdispout ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U40 ( .INP ( n87 ) , .ZN ( n90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U41 ( .INP ( rest_n ) , .ZN ( n91 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U42 ( .INP ( n86 ) , .ZN ( n92 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U43 ( .INP ( n86 ) , .ZN ( n93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U44 ( .INP ( n85 ) , .ZN ( n94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U45 ( .INP ( n95 ) , .ZN ( n96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X4 U46 ( .IN1 ( n100 ) , .IN2 ( n96 ) , .Q ( n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR2X4 U47 ( .IN1 ( n99 ) , .IN2 ( dftopt1 ) , .Q ( n2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U48 ( .INP ( test_so1 ) , .ZN ( n97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U49 ( .INP ( n97 ) , .ZN ( valid ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U51 ( .INP ( n97 ) , .ZN ( n99 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module serializer ( data_in , clk , data_out , reset_n , valid , test_si , 
    test_se , VDD , VSS , dftopt0 , dftopt6 , dftopt1 , dftopt2 ) ;
input  [9:0] data_in ;
input  clk ;
output data_out ;
input  reset_n ;
input  valid ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
input  dftopt6 ;
output dftopt1 ;
output dftopt2 ;

wire n8 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n37 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n36 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n41 ;
wire n189 ;
wire n190 ;
wire n191 ;
wire n192 ;
wire n193 ;
wire n194 ;
wire n195 ;
wire n196 ;
wire n197 ;
wire n198 ;
wire n199 ;
wire n200 ;
wire n201 ;
wire n202 ;
wire n203 ;
wire n204 ;
wire n205 ;
wire n206 ;
wire n207 ;
wire n208 ;
wire n209 ;
wire n210 ;
wire n211 ;
wire n212 ;
wire n213 ;
wire n214 ;
wire n215 ;
wire n216 ;
wire n217 ;
wire n218 ;
wire n219 ;
wire n220 ;
wire n221 ;
wire n222 ;
wire n223 ;
wire n224 ;
wire n225 ;
wire n226 ;
wire n227 ;
wire n228 ;
wire n229 ;
wire n230 ;
wire n231 ;
wire n232 ;
wire n233 ;
wire n234 ;
wire n235 ;
wire n236 ;
wire n237 ;
wire n238 ;
wire n239 ;
wire n240 ;
wire n241 ;
wire n242 ;
wire n243 ;
wire n244 ;
wire n245 ;
wire n246 ;
wire n247 ;
wire n248 ;
wire n250 ;
wire n252 ;
wire n253 ;
supply1 VDD ;
supply0 VSS ;

OA22X1 U26 ( .IN1 ( n13 ) , .IN2 ( n35 ) , .IN3 ( n14 ) , .IN4 ( n243 ) , 
    .Q ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X1 U27 ( .IN1 ( n15 ) , .IN2 ( n16 ) , .IN3 ( n17 ) , .IN4 ( n18 ) , 
    .Q ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X1 U30 ( .IN1 ( n23 ) , .IN2 ( n24 ) , .IN3 ( n25 ) , .IN4 ( n26 ) , 
    .Q ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0 U37 ( .IN1 ( n190 ) , .IN2 ( n215 ) , .IN3 ( n244 ) , .IN4 ( n217 ) , 
    .QN ( n41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 data_out_reg ( .D ( n37 ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n202 ) , .Q ( data_out ) , .QN ( n250 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[1] ( .D ( n32 ) , .SI ( data_in[8] ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n192 ) , .Q ( n8 ) , .QN ( n252 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[0] ( .D ( n34 ) , .SI ( n9 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n203 ) , .Q ( dftopt2 ) , .QN ( n35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[2] ( .D ( n31 ) , .SI ( dftopt6 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n204 ) , .Q ( dftopt1 ) , .QN ( n253 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1 \counter_reg[3] ( .D ( n33 ) , .SI ( n8 ) , .SE ( test_se ) , 
    .CLK ( clk ) , .RSTB ( n201 ) , .Q ( n9 ) , .QN ( n30 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( n195 ) , .ZN ( n189 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( n189 ) , .ZN ( n190 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( valid ) , .ZN ( n191 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( n200 ) , .ZN ( n192 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( valid ) , .ZN ( n193 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U8 ( .INP ( n191 ) , .ZN ( n194 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U9 ( .INP ( n193 ) , .ZN ( n195 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U10 ( .INP ( n193 ) , .ZN ( n196 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U11 ( .INP ( n200 ) , .ZN ( n197 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( n197 ) , .ZN ( n198 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U13 ( .INP ( n197 ) , .ZN ( n199 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U14 ( .INP ( reset_n ) , .ZN ( n200 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U15 ( .INP ( n199 ) , .ZN ( n201 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U16 ( .INP ( n198 ) , .ZN ( n202 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U17 ( .INP ( n199 ) , .ZN ( n203 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U18 ( .INP ( n198 ) , .ZN ( n204 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4 U19 ( .IN1 ( n223 ) , .IN2 ( n246 ) , .Q ( n36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U20 ( .INP ( n36 ) , .ZN ( n205 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X4 U21 ( .IN1 ( n205 ) , .IN2 ( n29 ) , .IN3 ( n195 ) , .Q ( n210 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X4 U22 ( .IN1 ( n214 ) , .IN2 ( n194 ) , .IN3 ( n219 ) , .IN4 ( n239 ) , 
    .Q ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI21X2 U23 ( .IN1 ( n40 ) , .IN2 ( n238 ) , .IN3 ( n41 ) , .QN ( n32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U24 ( .INP ( n205 ) , .ZN ( n206 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U25 ( .INP ( n219 ) , .ZN ( n207 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U28 ( .INP ( n239 ) , .ZN ( n208 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U29 ( .INP ( n38 ) , .ZN ( n209 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U31 ( .IN1 ( n30 ) , .IN2 ( data_in[0] ) , .IN3 ( n19 ) , 
    .QN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1 U32 ( .IN1 ( n250 ) , .IN2 ( n210 ) , .IN3 ( n11 ) , .IN4 ( n228 ) , 
    .QN ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI222X1 U33 ( .IN1 ( n221 ) , .IN2 ( n209 ) , .IN3 ( n248 ) , .IN4 ( n226 ) , 
    .IN5 ( n40 ) , .IN6 ( n225 ) , .QN ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U34 ( .INP ( n230 ) , .ZN ( n211 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U35 ( .INP ( n211 ) , .ZN ( n212 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U36 ( .INP ( n242 ) , .ZN ( n213 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U38 ( .INP ( n213 ) , .ZN ( n214 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U39 ( .INP ( n206 ) , .ZN ( n215 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U40 ( .INP ( n237 ) , .ZN ( n216 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U41 ( .INP ( n216 ) , .ZN ( n217 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U42 ( .INP ( n207 ) , .ZN ( n218 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U43 ( .INP ( n252 ) , .ZN ( n219 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U44 ( .INP ( n240 ) , .ZN ( n220 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U45 ( .INP ( n224 ) , .ZN ( n221 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U46 ( .INP ( n241 ) , .ZN ( n222 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U47 ( .INP ( n253 ) , .ZN ( n223 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U48 ( .INP ( n222 ) , .ZN ( n224 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U49 ( .INP ( n223 ) , .ZN ( n225 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U50 ( .INP ( n22 ) , .ZN ( n226 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U51 ( .INP ( n226 ) , .ZN ( n227 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U52 ( .INP ( n210 ) , .ZN ( n228 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U53 ( .INP ( n19 ) , .ZN ( n229 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U54 ( .INP ( n229 ) , .ZN ( n230 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U55 ( .INP ( n245 ) , .ZN ( n231 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U56 ( .INP ( n231 ) , .ZN ( n232 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U57 ( .INP ( n231 ) , .ZN ( n233 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U58 ( .INP ( dftopt2 ) , .ZN ( n234 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U59 ( .INP ( n214 ) , .ZN ( n235 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U60 ( .INP ( n252 ) , .ZN ( n236 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U61 ( .INP ( n236 ) , .ZN ( n237 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U62 ( .INP ( n236 ) , .ZN ( n238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U63 ( .INP ( n9 ) , .ZN ( n239 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X1 U64 ( .IN1 ( n230 ) , .IN2 ( data_in[1] ) , .IN3 ( n30 ) , 
    .QN ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U65 ( .INP ( n253 ) , .ZN ( n240 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U66 ( .INP ( n240 ) , .ZN ( n241 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U67 ( .INP ( n234 ) , .ZN ( n242 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U68 ( .INP ( n235 ) , .ZN ( n243 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U69 ( .INP ( n234 ) , .ZN ( n244 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U70 ( .INP ( n208 ) , .ZN ( n245 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U71 ( .INP ( n232 ) , .ZN ( n246 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U72 ( .INP ( n233 ) , .ZN ( n247 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U73 ( .INP ( n232 ) , .ZN ( n248 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X2 U75 ( .IN1 ( n235 ) , .IN2 ( n196 ) , .IN3 ( n243 ) , .IN4 ( n228 ) , 
    .QN ( n34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X2 U76 ( .IN1 ( n27 ) , .IN2 ( n28 ) , .IN3 ( n237 ) , .Q ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X2 U77 ( .IN1 ( n20 ) , .IN2 ( n21 ) , .IN3 ( n238 ) , .Q ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X2 U78 ( .IN1 ( n225 ) , .IN2 ( n209 ) , .IN3 ( n39 ) , .IN4 ( n245 ) , 
    .QN ( n33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U79 ( .IN1 ( n220 ) , .IN2 ( n218 ) , .QN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0 U80 ( .IN1 ( data_in[9] ) , .IN2 ( n248 ) , .QN ( n23 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U81 ( .IN1 ( data_in[8] ) , .IN2 ( n246 ) , .QN ( n15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U82 ( .IN1 ( data_in[4] ) , .IN2 ( n227 ) , .QN ( n16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U83 ( .IN1 ( data_in[5] ) , .IN2 ( n227 ) , .QN ( n24 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U84 ( .IN1 ( data_in[2] ) , .IN2 ( n224 ) , .QN ( n21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U85 ( .IN1 ( data_in[3] ) , .IN2 ( n241 ) , .QN ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U86 ( .IN1 ( n216 ) , .IN2 ( n247 ) , .QN ( n29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0 U87 ( .IN1 ( n212 ) , .IN2 ( n10 ) , .QN ( n39 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0 U88 ( .INP ( n194 ) , .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0 U89 ( .IN1 ( dftopt1 ) , .IN2 ( n8 ) , .QN ( n19 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA21X1 U90 ( .IN1 ( n242 ) , .IN2 ( n247 ) , .IN3 ( n196 ) , .Q ( n40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U91 ( .IN1 ( data_in[6] ) , .IN2 ( n222 ) , .QN ( n20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0 U92 ( .IN1 ( data_in[7] ) , .IN2 ( n221 ) , .QN ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module transmitter ( sclk , pclk , reset_n , data_in_8b , kin , rdispout , 
    k_err , data_out_s , test_si2 , test_si1 , test_so1 , test_se , VDD , 
    VSS , dftopt0 , dftopt2 , dftopt3 , dftopt4 , dftopt5 , dftopt6 , 
    dftopt8 , dftopt9 , dftopt10 , dftopt11 , \dataout_10b[1] , dftopt12 , 
    dftopt13 , dftopt15 , dftopt16 , dftopt17 ) ;
input  sclk ;
input  pclk ;
input  reset_n ;
input  [7:0] data_in_8b ;
input  kin ;
output rdispout ;
output k_err ;
output data_out_s ;
input  test_si2 ;
input  test_si1 ;
output test_so1 ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
output dftopt2 ;
input  dftopt3 ;
output dftopt4 ;
input  dftopt5 ;
input  dftopt6 ;
output dftopt8 ;
input  dftopt9 ;
output dftopt10 ;
input  dftopt11 ;
output \dataout_10b[1] ;
input  dftopt12 ;
output dftopt13 ;
output dftopt15 ;
input  dftopt16 ;
output dftopt17 ;

wire [0:9] dataout_10b ;
wire valid ;
wire n4 ;
wire n5 ;
supply1 VDD ;
supply0 VSS ;

assign dataout_10b[2] = test_so1 ;
assign dataout_10b[1] = \dataout_10b[1] ;

serializer serial (
    .data_in ( { dataout_10b[9] , dataout_10b[8] , dataout_10b[7] , 
        dataout_10b[6] , dataout_10b[5] , dataout_10b[4] , dataout_10b[3] , 
        test_so1 , \dataout_10b[1] , dataout_10b[0] } ) ,
    .clk ( sclk ) , .data_out ( data_out_s ) , .reset_n ( n5 ) , 
    .valid ( valid ) , .test_si ( dftopt4 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( test_si1 ) , 
    .dftopt6 ( dftopt6 ) , .dftopt1 ( dftopt8 ) , .dftopt2 ( dftopt15 ) ) ;
encoder enc ( .clk ( pclk ) , .rest_n ( n5 ) , .datain_8b ( data_in_8b ) , 
    .kin ( kin ) ,
    .dataout_10b ( { dataout_10b[9] , dataout_10b[8] , dataout_10b[7] , 
        dataout_10b[6] , dataout_10b[5] , dataout_10b[4] , dataout_10b[3] , 
        test_so1 , \dataout_10b[1] , dataout_10b[0] } ) ,
    .rdispout ( rdispout ) , .k_err ( k_err ) , .valid ( valid ) , 
    .test_si3 ( data_out_s ) , .test_si2 ( test_si2 ) , 
    .test_si1 ( test_si1 ) , .test_so1 ( dftopt4 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( dftopt0 ) , 
    .dftopt1 ( dftopt2 ) , .dftopt3 ( dftopt3 ) , .dftopt5 ( dftopt5 ) , 
    .dftopt9 ( dftopt9 ) , .n105 ( dftopt10 ) , .dftopt11 ( dftopt11 ) , 
    .dftopt12 ( dftopt12 ) , .\data_reg[4] ( dftopt13 ) , 
    .dftopt16 ( dftopt16 ) , .\data_reg[2] ( dftopt17 ) ) ;
INVX0 U1 ( .INP ( reset_n ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U2 ( .INP ( n4 ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module mux2to1_0 ( A , B , sel , out , VDD , VSS ) ;
input  A ;
input  B ;
input  sel ;
output out ;
input  VDD ;
input  VSS ;

wire N0 ;
supply1 VDD ;
supply0 VSS ;

assign N0 = sel ;

MUX21X2 U3 ( .IN1 ( A ) , .IN2 ( B ) , .S ( sel ) , .Q ( out ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module mux2to1_2 ( A , B , sel , out , VDD , VSS ) ;
input  A ;
input  B ;
input  sel ;
output out ;
input  VDD ;
input  VSS ;

wire N0 ;
supply1 VDD ;
supply0 VSS ;

assign N0 = sel ;

MUX21X2 U1 ( .IN1 ( A ) , .IN2 ( B ) , .S ( sel ) , .Q ( out ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module mux2to1_1 ( A , B , sel , out , VDD , VSS ) ;
input  A ;
input  B ;
input  sel ;
output out ;
input  VDD ;
input  VSS ;

wire N0 ;
supply1 VDD ;
supply0 VSS ;

assign N0 = sel ;

MUX21X2 U1 ( .IN1 ( A ) , .IN2 ( B ) , .S ( sel ) , .Q ( out ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module system ( data_in_8b , kin , rdispout , k_err , pdata , kout , 
    code_err , disp_err , fun_sclk , fun_pclk , scan_clk , fun_rst_n , 
    scan_rst , test_mode , scan_en , scan_in_1 , scan_out_1 , scan_in_2 , 
    scan_out_2 , scan_in_3 , scan_out_3 , scan_in_4 , scan_out_4 , scan_in_5 , 
    scan_out_5 , VDD , VSS ) ;
input  [7:0] data_in_8b ;
input  kin ;
output rdispout ;
output k_err ;
output [7:0] pdata ;
output kout ;
output code_err ;
output disp_err ;
input  fun_sclk ;
input  fun_pclk ;
input  scan_clk ;
input  fun_rst_n ;
input  scan_rst ;
input  test_mode ;
input  scan_en ;
input  scan_in_1 ;
output scan_out_1 ;
input  scan_in_2 ;
output scan_out_2 ;
input  scan_in_3 ;
output scan_out_3 ;
input  scan_in_4 ;
output scan_out_4 ;
input  scan_in_5 ;
output scan_out_5 ;
input  VDD ;
input  VSS ;

wire hvoHier_scan_out_1 ;
wire hvoHier_scan_out_2 ;
wire hvoHier_scan_out_3 ;
wire hvoHier_scan_out_4 ;
wire hvoHier_scan_out_5 ;
wire sclk ;
wire pclk ;
wire reset_n ;
wire rdispout_trans ;
wire n1 ;
wire n2 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n23 ;
wire n28 ;
wire n30 ;
wire n32 ;
wire n34 ;
supply1 VDD ;
supply0 VSS ;
wire optlc_net_0 ;
wire optlc_net_1 ;
wire optlc_net_2 ;
wire optlc_net_3 ;
wire optlc_net_4 ;
wire optlc_net_5 ;
wire optlc_net_6 ;
wire optlc_net_7 ;
wire optlc_net_8 ;
wire optlc_net_9 ;
wire optlc_net_10 ;
wire optlc_net_11 ;
wire optlc_net_12 ;
wire optlc_net_13 ;
wire optlc_net_14 ;
wire dftopt1 ;
wire dftopt2 ;
wire dftopt6 ;
wire dftopt7 ;
wire dftopt10 ;
wire dftopt15 ;
wire dftopt3 ;
wire dftopt14 ;
wire dftopt16 ;
wire dftopt17 ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;
wire SYNOPSYS_UNCONNECTED_9 ;
wire SYNOPSYS_UNCONNECTED_10 ;

mux2to1_1 sclk_mux ( .A ( fun_sclk ) , .B ( n14 ) , .sel ( n19 ) , 
    .out ( sclk ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
mux2to1_2 pclk_mux ( .A ( fun_pclk ) , .B ( n13 ) , .sel ( n18 ) , 
    .out ( pclk ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
mux2to1_0 rst_mux ( .A ( fun_rst_n ) , .B ( scan_rst ) , .sel ( n17 ) , 
    .out ( reset_n ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
transmitter transmitter ( .sclk ( sclk ) , .pclk ( pclk ) , 
    .reset_n ( reset_n ) , .data_in_8b ( data_in_8b ) , .kin ( kin ) , 
    .rdispout ( rdispout_trans ) , .k_err ( k_err ) , 
    .data_out_s ( scan_out_2 ) , .test_si2 ( scan_in_5 ) , .test_si1 ( n23 ) , 
    .test_so1 ( hvoHier_scan_out_4 ) , .test_se ( scan_en ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .dftopt0 ( scan_in_1 ) , .dftopt2 ( dftopt1 ) , 
    .dftopt3 ( scan_in_2 ) , .dftopt4 ( dftopt2 ) , .dftopt5 ( dftopt6 ) , 
    .dftopt6 ( scan_in_3 ) , .dftopt8 ( dftopt7 ) , .dftopt9 ( scan_in_4 ) , 
    .dftopt10 ( dftopt10 ) , .dftopt11 ( dftopt15 ) , 
    .\dataout_10b[1] ( dftopt3 ) , .dftopt12 ( pdata[2] ) , 
    .dftopt13 ( dftopt14 ) , .dftopt15 ( dftopt16 ) , .dftopt16 ( disp_err ) , 
    .dftopt17 ( dftopt17 ) ) ;
receiver receiver ( .sclk ( sclk ) , .pclk ( pclk ) , .reset_n ( reset_n ) , 
    .sdata ( scan_out_2 ) , .rdispin ( rdispout_trans ) , .pdata ( pdata ) , 
    .kout ( kout ) , .code_err ( code_err ) , .rdispout ( rdispout ) , 
    .disp_err ( disp_err ) , .test_si4 ( scan_in_4 ) , 
    .test_si3 ( scan_in_3 ) , .test_si2 ( scan_in_2 ) , 
    .test_si1 ( scan_in_1 ) , .test_so1 ( n23 ) , .test_se ( scan_en ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt2 ( dftopt1 ) , 
    .\datin[0] ( scan_out_1 ) , .dftopt4 ( dftopt2 ) , .dftopt6 ( dftopt6 ) , 
    .dftopt7 ( k_err ) , .dftopt10 ( dftopt7 ) , .dftopt13 ( scan_out_3 ) , 
    .dftopt14 ( dftopt10 ) , .dftopt15 ( dftopt15 ) , .dftopt16 ( dftopt3 ) , 
    .dftopt17 ( dftopt14 ) , .dftopt19 ( scan_out_4 ) , 
    .dftopt20 ( dftopt16 ) , .dftopt21 ( dftopt17 ) , 
    .dftopt23 ( scan_out_5 ) ) ;
DELLN2X2 U1 ( .INP ( n12 ) , .Z ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN2X2 U2 ( .INP ( n12 ) , .Z ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U12 ( .INP ( scan_clk ) , .ZN ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U13 ( .INP ( n2 ) , .ZN ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U14 ( .INP ( n1 ) , .ZN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U3 ( .INP ( test_mode ) , .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U4 ( .INP ( test_mode ) , .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U5 ( .INP ( n15 ) , .ZN ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U6 ( .INP ( n16 ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0 U7 ( .INP ( n15 ) , .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX32 U8 ( .INP ( disp_err ) , .ZN ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX32 U9 ( .INP ( n28 ) , .ZN ( hvoHier_scan_out_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX32 U10 ( .INP ( pdata[5] ) , .ZN ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX32 U11 ( .INP ( n30 ) , .ZN ( hvoHier_scan_out_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX32 U15 ( .INP ( k_err ) , .ZN ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX32 U16 ( .INP ( n32 ) , .ZN ( hvoHier_scan_out_5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX32 U17 ( .INP ( rdispout ) , .ZN ( n34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX32 U18 ( .INP ( n34 ) , .ZN ( hvoHier_scan_out_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X2 SpareCell_0 ( .IN1 ( optlc_net_14 ) , .IN2 ( optlc_net_2 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_1 ( .IN1 ( optlc_net_0 ) , .IN2 ( optlc_net_11 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_2 ( .IN1 ( optlc_net_3 ) , .IN2 ( optlc_net_13 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_3 ( .IN1 ( optlc_net_5 ) , .IN2 ( optlc_net_12 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X2 SpareCell_4 ( .IN1 ( optlc_net_6 ) , .IN2 ( optlc_net_10 ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 SpareCell_0_0 ( .INP ( optlc_net_8 ) , .ZN ( SYNOPSYS_UNCONNECTED_6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 SpareCell_0_1 ( .INP ( optlc_net_7 ) , .ZN ( SYNOPSYS_UNCONNECTED_7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 SpareCell_0_2 ( .INP ( optlc_net_4 ) , .ZN ( SYNOPSYS_UNCONNECTED_8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 SpareCell_0_3 ( .INP ( optlc_net_1 ) , .ZN ( SYNOPSYS_UNCONNECTED_9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1 SpareCell_0_4 ( .INP ( optlc_net_9 ) , .ZN ( SYNOPSYS_UNCONNECTED_10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_1 ( .ZN ( optlc_net_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_2 ( .ZN ( optlc_net_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_3 ( .ZN ( optlc_net_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_4 ( .ZN ( optlc_net_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_5 ( .ZN ( optlc_net_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_6 ( .ZN ( optlc_net_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_7 ( .ZN ( optlc_net_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_8 ( .ZN ( optlc_net_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_9 ( .ZN ( optlc_net_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_10 ( .ZN ( optlc_net_9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_11 ( .ZN ( optlc_net_10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_12 ( .ZN ( optlc_net_11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_13 ( .ZN ( optlc_net_12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_14 ( .ZN ( optlc_net_13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL PLACE_optlc_15 ( .ZN ( optlc_net_14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule



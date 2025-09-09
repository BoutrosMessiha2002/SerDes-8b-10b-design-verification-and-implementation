`include "control.v"
`include "control_enc.v"
`include "dec4b.v"
`include "dec6b.v"
`include "decoder.v"
`include "deserializer.v"
`include "dff.v"
`include "dff_enc.v"
`include "enc_3b.v"
`include "enc_5b.v"
`include "encoder.v"
`include "receiver.v"
`include "serializer.v"
`include "transmitter.v"
`include "mux2to1.v"

module system(data_in_8b, kin, rdispout, k_err, pdata, kout, code_err, disp_err,fun_sclk,fun_pclk,scan_clk,fun_rst_n,scan_rst,test_mode);
input fun_sclk, fun_pclk, fun_rst_n, kin, test_mode,scan_clk,scan_rst;
input [7:0] data_in_8b;
output rdispout, k_err,kout, code_err, disp_err;
output [7:0] pdata;
wire rdispout_trans,data_out_s, sclk,pclk,reset_n;

mux2to1 sclk_mux(
.A(fun_sclk),
.B(scan_clk),
.sel(test_mode),
.out(sclk));

mux2to1 pclk_mux(
.A(fun_pclk),
.B(scan_clk),
.sel(test_mode),
.out(pclk));

mux2to1 rst_mux(
.A(fun_rst_n),
.B(scan_rst),
.sel(test_mode),
.out(reset_n));

transmitter transmitter(.sclk(sclk), .pclk(pclk), .reset_n(reset_n), .data_in_8b(data_in_8b), .kin(kin), .rdispout(rdispout_trans), .k_err(k_err), .data_out_s(data_out_s));
receiver receiver(.sclk(sclk), .pclk(pclk), .reset_n(reset_n), .sdata(data_out_s), .rdispin(rdispout_trans), .pdata(pdata), .kout(kout), .code_err(code_err), .rdispout(rdispout), .disp_err(disp_err));
endmodule

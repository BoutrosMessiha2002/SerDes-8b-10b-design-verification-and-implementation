module transmitter (sclk,pclk,reset_n,data_in_8b,kin,rdispout,k_err,data_out_s);
input sclk,pclk,reset_n,kin;
input [7:0] data_in_8b;
output  data_out_s,k_err,rdispout;
wire valid;
wire [9:0] dataout_10b;
serializer serial(.data_in(dataout_10b),.clk(sclk),.data_out(data_out_s),.reset_n(reset_n),.valid(valid));
encoder enc(.clk(pclk),.rest_n(reset_n),.datain_8b(data_in_8b),.kin(kin),.dataout_10b(dataout_10b),.rdispout(rdispout),.k_err(k_err),.valid(valid));
endmodule
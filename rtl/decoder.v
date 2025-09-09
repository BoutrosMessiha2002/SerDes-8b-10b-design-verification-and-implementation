module decoder (datin, rdispin, clk, reset_n, 
code_err, kout, disp_err, rdispout, datout);
input [9:0] datin;
input rdispin, clk, reset_n;
output kout, code_err, rdispout;
output disp_err;
output [7:0] datout;

wire [9:0] datin_dff;
wire rdispin_dff;
wire [4:0] out6b;
wire [2:0] out4b;
wire code_err1, code_err2, disp_err_dff, kout1, kout2;
wire [7:0] datout_dff;

dff #(10) dff_data_in (.d(datin), .reset_n(reset_n), .clk(clk), .q(datin_dff));
dff #(1) dff_rdispin (.d(rdispin), .reset_n(reset_n), .clk(clk), .q(rdispin_dff));
dec4b dec_4b_3b (
    .clk(clk), 
    .reset_n(reset_n), 
    .datin(datin_dff[3:0]),
    .kout1(kout1), 
    .code_err1(code_err1), 
    .datout(out4b)
);

dec6b dec_6b_5b (
    .clk(clk), 
    .reset_n(reset_n), 
    .datin(datin_dff[9:4]), 
    .rdispin(rdispin_dff),
    .kout2(kout2),
    .code_err2(code_err2), 
    .disp_err(disp_err_dff), 
    .datout(out6b)
);

assign datout_dff = {out4b, out6b};

dff #(1) dff_disp_err (.d(disp_err_dff), .reset_n(reset_n), .clk(clk), .q(disp_err));
dff #(8) dff_data_out (.d(datout_dff), .reset_n(reset_n), .clk(clk), .q(datout));
control ctrl (
    .data(datout_dff), 
    .code_err1(code_err1), 
    .code_err2(code_err2), 
    .rdispin(rdispin_dff),
    .kout1(kout1),
    .kout2(kout2),
    .clk(clk), 
    .reset_n(reset_n), 
    .kout(kout), 
    .code_err(code_err), 
    .rdispout(rdispout)
);

endmodule
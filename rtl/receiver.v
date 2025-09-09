module receiver (sclk, pclk, reset_n, sdata, rdispin, 
pdata, kout, code_err, rdispout, disp_err);
    input sclk, pclk, reset_n, rdispin;
    input sdata;
    output [7:0] pdata;
    output kout, code_err, rdispout, disp_err;

    wire [9:0] datin;

    decoder dec (
        .clk(pclk),
        .reset_n(reset_n),
        .datin(datin),
        .rdispin(rdispin),
        .datout(pdata),
        .kout(kout),
        .code_err(code_err),
        .rdispout(rdispout),
        .disp_err(disp_err)
    );

    deserializer ds (
        .clk(sclk),
        .reset_n(reset_n),
        .datin(sdata),
        .datout(datin)
    );

endmodule
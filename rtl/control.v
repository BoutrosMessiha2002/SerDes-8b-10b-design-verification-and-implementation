module control (data, code_err1, code_err2, kout1, kout2, rdispin, clk, reset_n, kout, code_err, rdispout);
    input [7:0] data;
    input clk, reset_n, rdispin, code_err1, code_err2, kout1, kout2;
    output reg kout, code_err, rdispout;
    wire [3:0] counter;

    assign counter = data[0] + data[1] + data[2] + data[3] + data[4] + data[5] + data[6] + data[7];

always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        kout <= 1'b0;
        code_err <= 1'b0;
        rdispout <= 1'b0;
    end else begin
        code_err <= (code_err1 | code_err2);
        kout <= (kout1 | kout2);
        if (~rdispin) begin
            if (counter == 5) begin
                rdispout <= 0;
            end
            else if (counter == 6) begin
                rdispout <= 1;
            end
            else begin
                rdispout <= 0;
            end
        end else begin
            if (counter == 4) begin
                rdispout <= 0;
            end
            else if (counter == 5) begin
                rdispout <= 1;
            end
            else begin
                rdispout <= 0;
            end
        end
    end
end
endmodule
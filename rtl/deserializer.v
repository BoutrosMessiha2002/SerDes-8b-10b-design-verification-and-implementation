module deserializer (clk, reset_n, datin, datout);
    input clk, reset_n;
    input datin;
    output reg [9:0] datout;
    reg [3:0] bit_count;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            datout <= 10'b0;
            bit_count <= 4'b0;
        end else begin
            if (bit_count < 4'b1010) begin
                datout[bit_count] <= datin; 
                bit_count <= bit_count + 1; 
            end
            else begin
            bit_count <= 4'b0;
            end
            end
        end
endmodule
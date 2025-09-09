module serializer( data_in, clk, data_out,reset_n,valid);
input clk,reset_n,valid;
input [9:0]data_in;
output reg data_out;
wire [9:0]data_out_reg;
reg [3:0] counter;
assign data_out_reg = data_in;
always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        counter <= 4'b0000;
        data_out <= 0;
    end 
    else begin
        if (valid) begin
        if (counter < 4'b1010) begin
            counter <= counter + 1;
            data_out <= data_out_reg[counter];
        end
        else begin
            counter <= 0;
        end
    end
    end
end

endmodule
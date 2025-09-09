module dff_enc (rst_n,d,clk,q);
parameter WIDTH = 1;
input rst_n,clk;
input [WIDTH-1:0]d;
output reg [WIDTH-1:0]q;
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        q <=0;
    end
    else begin
        q <= d;
    end
end
endmodule
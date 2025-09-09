module dff (d,reset_n,clk,q);
parameter width = 10;
input [(width-1):0] d;
input reset_n,clk;
output reg [(width-1):0] q;
always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        q<=0;
    end
    else begin
            q<=d;
    end    
end
endmodule
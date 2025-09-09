module dec4b (clk, reset_n, datin, code_err1, kout1, datout);
input clk, reset_n;
input [3:0] datin;
output reg code_err1, kout1;
output reg [2:0] datout;
always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        code_err1 <= 1'b0;
        kout1 <= 1'b0;
        datout <= 3'b000;
    end else begin
        case (datin)
            4'b0100, 4'b1011: begin  
                datout <= 3'b000;
                code_err1 <= 1'b0;
                kout1 <= 1'b0;
            end
            4'b1001: begin  
                datout <= 3'b001;
                code_err1 <= 1'b0;
                kout1 <= 1'b0;
            end
            4'b0101: begin  
                datout <= 3'b010;
                code_err1 <= 1'b0;
                kout1 <= 1'b0;
            end
            4'b0011, 4'b1100: begin  
                datout <= 3'b011;
                code_err1 <= 1'b0;
                kout1 <= 1'b0;
            end
            4'b0010, 4'b1101: begin 
                datout <= 3'b100;
                code_err1 <= 1'b0;
                kout1 <= 1'b0;
            end
            4'b1010: begin 
                datout <= 3'b101;
                code_err1 <= 1'b0;
                kout1 <= 1'b0;
            end
            4'b0110: begin  
                datout <= 3'b110;
                code_err1 <= 1'b0;
                kout1 <= 1'b0;
            end
            4'b0001, 4'b1110: begin  
                datout <= 3'b111;
                code_err1 <= 1'b0;
                kout1 <= 1'b0;
            end
            4'b1000, 4'b0111: begin  
                datout <= 3'b111;
                code_err1 <= 1'b0;
                kout1 <= 1'b1;
            end
            default: begin  // invalid input
                datout <= 3'b000; 
                code_err1 <= 1'b1;
                kout1 <= 1'b0;
            end
        endcase
    end
end
endmodule
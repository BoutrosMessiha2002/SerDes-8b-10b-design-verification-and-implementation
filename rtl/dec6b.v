module dec6b (clk, reset_n, rdispin, datin, code_err2, disp_err,kout2 , datout);
input clk, reset_n, rdispin;
input [5:0] datin;
output reg code_err2, disp_err, kout2;
output reg [4:0] datout;

always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        code_err2 <= 1'b0;
        datout <= 5'b00000;
        disp_err <= 1'b0;
        kout2 <= 1'b0;
    end else begin
        case (datin)
            6'b100111: begin  
                datout <= 5'b00000;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b011000: begin
                datout <= 5'b00000;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (~rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b011101: begin  
                datout <= 5'b00001;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (rdispin) begin
                    disp_err <= 1'b1;
                end
                else begin
                    disp_err <= 1'b0;
                end
            end
            6'b100010: begin  
                datout <= 5'b00001;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (~rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b101101: begin  
                datout <= 5'b00010;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (rdispin) begin
                    disp_err <= 1'b1;
                end
                else begin
                    disp_err <= 1'b0;
                end
            end
            6'b010010: begin  
                datout <= 5'b00010;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (~rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b110001: begin  
                datout <= 5'b00011;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b110101: begin  
                datout <= 5'b00100;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b001010: begin  
                datout <= 5'b00100;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (~rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b101001: begin  
                datout <= 5'b00101;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b011001: begin  
                datout <= 5'b00110;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b111000: begin  
                datout <= 5'b00111;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b000111: begin  
                datout <= 5'b00111;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (~rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b111001: begin  
                datout <= 5'b01000;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b000110: begin  
                datout <= 5'b01000;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (~rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b100101: begin  
                datout <= 5'b01001;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b010101: begin  
                datout <= 5'b01010;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b110100: begin  
                datout <= 5'b01011;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b001101: begin  
                datout <= 5'b01100;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b101100: begin
                datout <= 5'b01101;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b011100: begin  
                datout <= 5'b01110;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b010111: begin  
                datout <= 5'b01111;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b101000: begin  
                datout <= 5'b01111;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (~rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b011011: begin  
                datout <= 5'b10000;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b100100: begin  
                datout <= 5'b10000;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (~rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b100011: begin  
                datout <= 5'b10001;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b010011: begin  
                datout <= 5'b10010;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b110010: begin  
                datout <= 5'b10011;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b001011: begin  
                datout <= 5'b10100;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b101010: begin  
                datout <= 5'b10101;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b011010: begin  
                datout <= 5'b10110;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b111010: begin  
                datout <= 5'b10111;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b000101: begin  
                datout <= 5'b10111;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (~rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b110011: begin  
                datout <= 5'b11000;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b001100: begin  
                datout <= 5'b11000;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (~rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b100110: begin
                datout <= 5'b11001;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b010110: begin
                datout <= 5'b11010;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b110110: begin
                datout <= 5'b11011;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b001001: begin
                datout <= 5'b11011;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (~rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b001110: begin
                datout <= 5'b11100;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                disp_err <= 1'b0;
            end
            6'b001111: begin
                datout <= 5'b11100;
                code_err2 <= 1'b0;
                kout2 <= 1'b1;
                if (rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b110000: begin
                datout <= 5'b11100;
                code_err2 <= 1'b0;
                kout2 <= 1'b1;
                if (~rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b101110: begin
                datout <= 5'b11101;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b010001: begin
                datout <= 5'b11101;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (~rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b011110: begin
                datout <= 5'b11110;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b100001: begin
                datout <= 5'b11110;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (~rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b101011: begin
                datout <= 5'b11111;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            6'b010100: begin
                datout <= 5'b11111;
                code_err2 <= 1'b0;
                kout2 <= 1'b0;
                if (~rdispin) begin
                    disp_err <= 1'b1;
                end else begin
                    disp_err <= 1'b0;
                end
            end
            default: begin  // invalid input
                datout <= 5'b00000;  
                code_err2 <= 1'b1;
                disp_err <= 1'b0; 
                kout2 <= 1'b0;
            end
        endcase
    end
end
endmodule
module enc_5b(datain ,kin ,rdispin,ones_counter_6b,disparity_6b,dout);
input kin,rdispin;
input [4:0]datain;
output reg [2:0] ones_counter_6b, disparity_6b;
output reg [5:0]dout;
always @(*) begin
    case (datain)
        0:begin
            if (rdispin) begin
                dout  = 6'b01_1000;
            end
            else begin
                dout  = 6'b10_0111;
            end
        end
        1:begin
            if (rdispin) begin
                dout  = 6'b10_0010;
            end
            else begin
                dout  = 6'b01_1101;
            end
        end
        2:begin
            if (rdispin) begin
                dout  = 6'b01_0010;
            end
            else begin
                dout  = 6'b10_1101;
            end
        end
        3:begin
            dout  = 6'b11_0001;
        end
        4:begin
            if (rdispin) begin
                dout  = 6'b00_1010;
            end
            else begin
                dout  = 6'b11_0101;
            end
        end
        5:begin
            dout  = 6'b10_1001;
        end
        6:begin
            dout  = 6'b01_1001;
        end
        7:begin
            if (rdispin) begin
                dout  = 6'b00_0111;
            end
            else begin
                dout  = 6'b11_1000;
            end
        end
        8:begin
            if (rdispin) begin
                dout  = 6'b00_0110;
            end
            else begin
                dout  = 6'b11_1001;
            end
        end
        9:begin
            dout  = 6'b10_0101;
        end
        10:begin
            dout  = 6'b01_0101;
        end 
        11:begin
            dout  = 6'b11_0100;
        end
        12:begin
            dout  = 6'b00_1101;
        end
        13:begin
            dout  = 6'b10_1100;
        end
        14:begin
            dout  = 6'b01_1100;
        end
        15:begin
            if (rdispin) begin
                dout  = 6'b10_1000;
            end
            else begin
                dout  = 6'b01_0111;
            end
        end
        16:begin
            if (rdispin) begin
                dout  = 6'b10_0100;
            end
            else begin
                dout  = 6'b01_1011;
            end
        end
        17:begin
            dout  = 6'b10_0011;
        end
        18:begin
            dout  = 6'b01_0011;
        end
        19:begin
            dout  = 6'b11_0010;
        end
        20:begin
            dout  = 6'b00_1011;
        end
        21:begin
            dout  = 6'b10_1010;
        end
        22:begin
            dout  = 6'b01_1010;
        end
        23:begin
            if (rdispin) begin
                dout  = 6'b00_0101;
            end
            else begin
                dout  = 6'b11_1010;
            end
        end
        24:begin
            if (rdispin) begin
                dout  = 6'b00_1100;
            end
            else begin
                dout  = 6'b11_0011;
            end
        end
        25:begin
            dout  = 6'b10_0110;
        end
        26:begin
            dout  = 6'b01_0110;
        end
        27:begin
            if (rdispin) begin
                dout  = 6'b00_1001;
            end
            else begin
                dout  = 6'b11_0110;
            end
        end
        28:begin
            if (!kin) begin
                dout  = 6'b00_1110;
            end 
            else if (rdispin) begin
                dout  = 6'b11_0000;
            end
            else begin
                dout  = 6'b00_1111;
            end
                
        end
        29:begin
            if (rdispin) begin
                dout  = 6'b01_0001;
            end
            else begin
                dout  = 6'b10_1110;
            end
        end
        30:begin
            if (rdispin) begin
                dout  = 6'b10_0001;
            end
            else begin
                dout  = 6'b01_1110;
            end
        end
        31:begin
            if (rdispin) begin
                dout  = 6'b01_0100;
            end
            else begin
                dout  = 6'b10_1011;
            end
        end 
        endcase
        ones_counter_6b = dout[0]+dout[1]+dout[2]+dout[3]+dout[4]+dout[5];
        disparity_6b = ones_counter_6b - (6 - ones_counter_6b);
end
endmodule
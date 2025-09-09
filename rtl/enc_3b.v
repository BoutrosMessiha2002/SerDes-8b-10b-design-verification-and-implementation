module enc_3b(datain,rdispin, kin ,disparity_6b,ones_counter_4b,disparity_4b ,dataout);
input kin,rdispin;
input [2:0] datain;
input [2:0] disparity_6b;
output reg [2:0] disparity_4b;
output reg [1:0] ones_counter_4b;
output reg [3:0] dataout;
always @(*) begin
    case (datain)
        0:begin
            if(disparity_6b > 0) begin
                if (~rdispin) begin
                    dataout = 4'b0100;
                end
                else begin
                    dataout = 4'b0100;
                end
            end
            else begin
                if (rdispin) begin
                    dataout = 4'b0100;
                end
                else begin
                    dataout = 4'b0100;
                end
            end
        end
        1:begin
            if (kin) begin
                if (disparity_6b > 0) begin
                    dataout = 4'b1001;
                end
                else begin
                    dataout = 4'b0110;
                end 
            end
            else begin
            dataout = 4'b1001;    
            end
            
        end
        2:begin
           if (kin) begin
                if (disparity_6b > 0) begin
                    dataout = 4'b0101;
                end
                else begin
                    dataout = 4'b1010;
                end 
            end
            else begin
            dataout = 4'b0101;    
            end
        end
        3:begin
            if(disparity_6b > 0) begin
                if (~rdispin) begin
                    dataout = 4'b0011;
                end
                else begin
                    dataout = 4'b1100;
                end
            end
            else begin
                if (rdispin) begin
                    dataout = 4'b0011;
                end
                else begin
                    dataout = 4'b1100;
                end
            end  
        end
        4:begin
            if(disparity_6b > 0) begin
                if (~rdispin) begin
                    dataout = 4'b0010;
                end
                else begin
                    dataout = 4'b1101;
                end
            end
            else begin
                if (rdispin) begin
                    dataout = 4'b0010;
                end
                else begin
                    dataout = 4'b1101;
                end
            end  
        end
        5:begin
            if (kin) begin
                if (disparity_6b > 0) begin
                    dataout = 4'b1010;
                end
                else begin
                    dataout = 4'b0101;
                end 
            end
            else begin
            dataout = 4'b1010;    
            end
        end
        6:begin
            if (kin) begin
                if (disparity_6b > 0) begin
                    dataout = 4'b0110;
                end
                else begin
                    dataout = 4'b1001;
                end 
            end
            else begin
            dataout = 4'b0110;    
            end
        end
        7:begin
            if(disparity_6b > 0) begin
                if (!kin) begin
                    if (~rdispin) begin
                        dataout = 4'b0001;        
                    end
                    else begin
                        dataout = 4'b1110;
                    end
                end
                else begin
                    dataout = 4'b1000;
                end
            end
            else begin
                if (!kin) begin
                 if (rdispin) begin
                        dataout = 4'b0001;        
                    end
                    else begin
                        dataout = 4'b1110;
                    end
                end
                else begin
                    dataout = 4'b0111;
                end
            end
        end
    endcase
    ones_counter_4b = dataout[0] + dataout[1] + dataout[2] + dataout[3];
    disparity_4b = ones_counter_4b - (4 - ones_counter_4b);
end
endmodule

module control_enc(kin,data_4b,data_6b,datain,rdispin,ones_counter_4b,ones_counter_6b,rdispout,dataout,k_err,valid);
input kin;
input rdispin;
input [1:0]ones_counter_4b;
input [2:0]ones_counter_6b;
input [7:0]datain;
input [3:0]data_4b;
input [5:0]data_6b;
output reg rdispout;
output reg k_err,valid;
output reg [9:0]dataout;
reg [2:0] summer;
always @(*) begin
    if(kin)begin
        if (datain [4:0] != 28) begin
            if (datain [7:5] == 7) begin
                if(datain [3:0] != 7)begin
                    if(datain [3:0] != 11)begin
                        if(datain [3:0] != 13)begin
                            if(datain [3:0] != 14)begin
                                k_err = 1'b1;
                                end
                                else begin
                                    k_err = 1'b0;
                                    end
                                    end
                                    else begin
                                        k_err = 1'b0;
                                        end
                                        end
                                        else begin
                                            k_err = 1'b0;
                                            end
                                            end
                                            else begin
                                                k_err = 1'b0;
                                            end
                                            end
                                            else begin
                                                k_err = 1'b1;
                                                end
                                                end
                                                else begin
                                                    k_err = 1'b0;
                                                end
                                                end
                                                else begin
                                                    k_err = 1'b0;
                                                    end
end
always @(*) begin
    summer = ones_counter_4b + ones_counter_6b;
    if (rdispin) begin
        if(summer == 5)begin
            rdispout = 1'b1;
        end
        else begin
            rdispout = 1'b0;
        end
    end
    else  begin
        if(summer == 5)begin
            rdispout = 1'b0;
        end
        else begin
            rdispout = 1'b1;
        end
    end
        dataout = {data_6b,data_4b};
end
endmodule

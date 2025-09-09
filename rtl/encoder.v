module encoder(clk,rest_n,datain_8b,kin,dataout_10b,rdispout,k_err,valid);
input clk,rest_n,kin;
input [7:0] datain_8b;
output  rdispout, k_err;
output reg valid;
output [9:0] dataout_10b;
reg counter;
wire kin_reg,curr_dis,rdispout_in,rdispout_in_2,k_err_in;
wire [1:0]ones_counter_4b;//ones_counter_4b_reg;
wire [2:0]ones_counter_6b,disparity_4b,disparity_6b;//disparity_6b_reg;//ones_counter_6b_reg;
wire [3:0] dataout_4b;
wire [5:0] dataout_6b;
wire [7:0] data_reg;
wire [9:0] dataout_10b_in;
dff_enc kin_ff (.rst_n(rest_n), .d(kin), .clk(clk), .q(kin_reg));
dff_enc k_err_ff (.rst_n(rest_n), .d(k_err_in), .clk(clk), .q(k_err));
dff_enc curr_dis_ff (.rst_n(rest_n), .d(rdispout_in), .clk(clk), .q(rdispout));
dff_enc #(.WIDTH(8))data_ff (.rst_n(rest_n), .d(datain_8b), .clk(clk), .q(data_reg));
dff_enc #(.WIDTH(10))dataout_ff (.rst_n(rest_n), .d(dataout_10b_in), .clk(clk), .q(dataout_10b));
enc_3b enc_inst_3b (.datain(data_reg[7:5]) ,.kin(kin_reg) ,.rdispin(rdispout),.disparity_6b(disparity_6b),.ones_counter_4b(ones_counter_4b),.disparity_4b(disparity_4b) ,.dataout(dataout_4b));
enc_5b enc_inst_5b (.datain(data_reg[4:0]) ,.kin(kin_reg) ,.rdispin(rdispout),.ones_counter_6b(ones_counter_6b),.disparity_6b(disparity_6b),.dout(dataout_6b));
control_enc controller (.kin(kin_reg),.data_4b(dataout_4b),.data_6b(dataout_6b),.datain(data_reg),.rdispin(rdispout),.ones_counter_4b(ones_counter_4b),.ones_counter_6b(ones_counter_6b),.rdispout(rdispout_in),.dataout(dataout_10b_in),.k_err(k_err_in));
always @(posedge clk or negedge rest_n) begin
    if (!rest_n) begin
        valid <= 0;
        counter <= 0;
    end
    else begin
        if(valid !=1 && counter != 1) begin
            counter <= counter + 1;
        end
        else begin
            valid <= 1'b1;
        end
    end
        
end
endmodule
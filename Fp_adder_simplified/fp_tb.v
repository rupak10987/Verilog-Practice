`timescale 1ns/1ps
module fp_tb (
);
localparam T =8 ;
reg[7:0] frac1,frac2;
reg[3:0] exp1,exp2;
reg sign1,sign2;
wire[7:0] out_frac;
wire[3:0] out_exp;
wire out_sign;

fp uut(frac1,frac2,exp1,exp2,sign1,sign2,out_exp,out_frac,out_sign);
initial begin
    frac1=8'b1111_0000;
    frac2=8'b1111_1111;
    exp1=4'b0010;
    exp2=4'b0101;
    sign1=0;
    sign2=0;
    #40;
end
initial begin
    $monitor("frac-%bexp-%b  +  frac-%bexp-%b = frac-%bexp-%b",frac1,exp1,frac2,exp2,out_frac,out_exp);
end
endmodule

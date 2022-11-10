module fp (
    input wire [7:0] frac1,frac2,
    input wire [3:0] exp1,exp2,
    input wire sign1,sign2,
    output reg [3:0]out_exp,
    output reg [7:0]out_frac,
    output reg out_sign
);
reg[7:0]frac_b,frac_s,frac_n;
reg[3:0]exp_b,exp_s,exp_diff,exp_n;
reg[8:0]sum,sum_n;
reg[3:0]lead0;
always @*
begin
if({exp1,frac1}>{exp2,frac2})
    begin
        exp_b=exp1;
        exp_s=exp2;
        frac_b=frac1;
        exp_diff=exp_b-exp_s;
        frac_n=frac2>>exp_diff;
    end    
else
    begin
        exp_b=exp2;
        exp_s=exp1;
        frac_b=frac2;
        exp_diff=exp_b-exp_s;
        frac_n=frac1>>exp_diff;
    end
if(sign1==sign2)
sum={1'b0,frac_b}+{1'b0,frac_n};
else
sum={1'b0,frac_b}-{1'b0,frac_n};
if(sum[7])
lead0=3'o0;
else if(sum[6])
lead0=3'o1;
else if(sum[5])
lead0=3'o2;
else if(sum[4])
lead0=3'o3;
else if(sum[3])
lead0=3'o4;
else if(sum[2])
lead0=3'o5;
else if(sum[1])
lead0=3'o6;
else if(sum[0])
lead0=3'o7;

sum_n=sum<<lead0;
if (sum[8]) // with carry out; shift frac lo right 
begin 
exp_n = exp_b + 1; 
frac_n = sum [8:1] ; 
end 
else if (lead0 > exp_b) // too small to normalize 
begin 
exp_n = 0; // set to 0 
frac_n = 0; 
end 
else 
begin 
exp_n = exp_b - lead0; 
frac_n = sum_n; 
end 
end
always@*
begin
out_frac=sum_n;
out_exp=exp_n;
out_sign= 1;
end

endmodule
`timescale 1ns/1ps
module free_reg_tb();
localparam N=4;
reg[N-1:0] i;
reg rst,enb,CLK;
wire[N-1:0]o;
free_reg #(.N(N)) cir1(.clk(CLK),.reset(rst),.enable(enb),.S_in(i),.S_out(o));
always begin
    CLK=~CLK;
    #20;
end
initial begin
CLK<=1'b0;
rst=1'b1;
i=4'b1100;
enb=1;
#40;
rst=1'b0;
#40;
enb=1'b0;
#40000;
$finish;
end
initial begin
    $monitor("reset=%b, clk=%b, en= %b, S_in=%b || S_out=%b",rst,CLK,enb,i,o);
end
endmodule
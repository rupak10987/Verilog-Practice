`timescale 1ns/1ps
module DFF_tb;
reg d,clk;
wire q;
DFF uut(.clk(clk),.d(d),.q(q));
always
begin
    clk=~clk;
    #20;
end
initial begin
    $dumpfile("DFF.vcd");
    $dumpvars(0,DFF_tb);
    clk<=0;
    d<=0;
    #40;
    d<=1;
    #40;
    d<=0;
    #40;
    $finish;
end
initial begin
    $monitor("clk = %b ,D = %b || Q=%b ",clk,d,q);
end
endmodule
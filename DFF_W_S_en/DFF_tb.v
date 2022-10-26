`timescale 1ns/1ps
module DFF_tb;
reg d,clk,reset,en;
wire q;
DFF uut(.clk(clk),.d(d),.q(q),.reset(reset),.en(en));
always
begin
    clk=~clk;
    #20;
end
initial begin
    $dumpfile("DFF.vcd");
    $dumpvars(0,DFF_tb);
    en=0;
    reset=0;
    clk<=0;
    d<=0;
    #40;
    d<=1;
    #40;
    reset=1;
    d<=0;
    #40;
    $finish;
end
initial begin
    $monitor("reset= %b, clk = %b en = %b,D = %b || Q=%b ",reset,clk,en,d,q);
end
endmodule
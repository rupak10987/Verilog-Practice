`timescale 1ns/1ps
module counter_tb();
localparam N = 8;
localparam M= 100;
reg clk,reset,up,en;
reg[N-1:0]start;
wire[N-1:0]out;
counter#(.N(N),.M(M)) circuit1
(
    .clk(clk),
    .reset(reset),
    .up(up),
    .en(en),
    .start(start),
    .out(out)
);
always
begin
    clk=~clk;
    #20;
end
initial begin
    $dumpfile("count.vcd");
    $dumpvars(0,counter_tb);
    clk=0;
    reset=1;
    en=0;
    up=0;
    start=8'b0000_0111;
    #40;
    reset=0;
    #40;
    en=1;
    #460;
    $finish;
end
initial begin
    $monitor("reset=%b, clk=%b, en=%b, up=%b, start=%b || out= %b",reset,clk,en,up,start,out);
end
endmodule

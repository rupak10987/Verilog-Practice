`timescale 1ns/1ps
module DFF_tb;
localparam N=8;
reg[N-1:0] d;
reg clk,reset,en;
wire[N-1:0] q;
DFF #(.N(N))uut(.clk(clk),.d(d),.q(q),.reset(reset),.en(en));
always
begin
    clk=~clk;
    #20;
end
initial begin
    $dumpfile("DFF.vcd");
    $dumpvars(0,DFF_tb);
    en=1;
    reset=0;
    clk<=0;
    d<=8'b0000_1111;
    #40;
    d<=8'b0011_0011;
    #40;
    reset=1;
    d<=8'b111_0000;
    #40;
    $finish;
end
initial begin
    $monitor("reset= %b, clk = %b en = %b,D = %8b || Q=%b ",reset,clk,en,d,q);
end
endmodule
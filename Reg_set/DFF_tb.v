`timescale 1ns/1ps
module DFF_tb;
localparam N=8;
localparam w=3;

reg[N-1:0] d;
reg[w-1:0]read_addr,Wr_addr;
reg clk,wen;
wire[N-1:0] q;

DFF #(.N(N),.w(w))uut(.clk(clk),.d(d),.q(q),.Wr_addr(Wr_addr),.read_addr(read_addr),.wen(wen));
always
begin
    clk=~clk;
    #10;
end
initial begin
    $dumpfile("DFF.vcd");
    $dumpvars(0,DFF_tb);
    wen=1;
    clk<=0;
    d<=8'b0000_1111;
    Wr_addr=3'b001;
    read_addr=3'b001;
    #40;
    d<=8'b0011_0011;
    Wr_addr=3'b011;
    read_addr=3'b001;
    #40;
    d<=8'b111_0000;
    Wr_addr=3'b011;
    read_addr=3'b011;
    #40;
    $finish;
end
initial begin
    $monitor("read_addr= %b, wrt_addr=%b clk = %b wen = %b,D = %8b || Q=%b ",read_addr,Wr_addr,clk,wen,d,q);
end
endmodule
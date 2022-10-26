`timescale 1ns/1ps
module tri_tb;
wire[3:0]b;
reg[3:0]s_in;
reg oe;
wire[3:0]s_out;
tri uut(.s_in(s_in), .s_out(s_out), .oe(oe), .b(b));
initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,tri_tb);
    oe=1;
    s_in=4'b0101;
    b=4'b1111;
    #40;
    oe=0;
    b=4'b1111;
    #40;
    b=4'b0011;
    #40;
    $finish;
end
initial begin
    $monitor("s_in = %4b | oe= %1b || b = %4b || s_out = %4b",s_in,oe,b,s_out);
end
endmodule
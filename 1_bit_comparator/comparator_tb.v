`timescale 1ns/1ps
module comparator_tb;
reg a,b;
wire out;
comparator uut
(.i0(a), .i1(b), .eq(out));
initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,comparator_tb);
    a=1'b0;
    b=1'b0;
    #40;
    a=1'b0;
    b=1'b1;
    #40;
    a=1'b1;
    b=1'b0;
    #40;
    a=1'b1;
    b=1'b1;
    #40;
    $finish;
end
initial begin
    $monitor("i0 = %b, i1 = %b || eq = %b",a,b,out);
end
endmodule
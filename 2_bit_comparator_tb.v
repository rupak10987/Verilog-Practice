`timescale 1ns/1ps
module two_bit_comparator_tb;
reg[1:0] a,b;
wire out;
two_bit_comparator uut
(.A(a), .B(b), .O(out));
initial begin
    a=2'b00;
    b=2'b00;
    #40;
    a=2'b10;
    b=2'b01;
    #40;
    a=2'b10;
    b=2'b10;
    #40;
    a=2'b01;
    b=2'b01;
    #40;
    $stop;
end
initial begin
    $monitor("i0 = %2b, i1 = %2b || eq = %b",a,b,out);
end
endmodule
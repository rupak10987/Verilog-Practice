`timescale 1ns/1ps
module shifter_tb;
reg[3:0]I;
reg[1:0]S;
wire[3:0] O;
shifter uut(.I(I), .S(S), .O(O));
initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,shifter_tb);
    I=4'b1111;
    S=2'b00;
    #40;
    S=2'b01;
    #40;
    S=2'b10;
    #40;
    S=2'b11;
    #40;
    $finish;
end
initial begin
    $monitor("I=%4b, S=%2b || O=%4b",I,S,O);
end
endmodule
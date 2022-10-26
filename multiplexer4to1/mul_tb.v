`timescale 1ns/1ps
module mul_tb;
reg[3:0]I1,I2,I3,I4;
reg[1:0]S;
wire[3:0]O;
mul uut(.I1(I1),.I2(I2),.I3(I3),.I4(I4),.O(O),.S(S));
initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,mul_tb);
    I1=4'b0001;
    I2=4'b0011;
    I3=4'b0111;
    I4=4'b1111;
    S=2'b00;
    #40;
    S=2'b01;
    #40
    S=2'b10;
    #40;
    S=2'b11;
    #40;
    $finish;
end
initial begin
    $monitor("I1=%4b, I2=%4b, I3=%4b, I4=%4b || S=%2b ||| O=%4b",I1,I2,I3,I4,S,O);
end
endmodule
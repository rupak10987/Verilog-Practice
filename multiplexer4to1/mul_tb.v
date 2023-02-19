`timescale 1ns/1ps
module mul_tb;
wire[3:0]I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16;
reg[3:0]S;
reg[3:0]O;
mul uut(
.I1(I1),
.I2(I2),
.I3(I3),
.I4(I4),
.I5(I5),
.I6(I6),
.I7(I7),
.I8(I8),
.I9(I9),
.I10(I10),
.I11(I11),
.I12(I12),
.I13(I13),
.I14(I14),
.I15(I15),
.I16(I16),
.O(O),
.S(S));
initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,mul_tb);
   O=4'b1111;
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
    $monitor("I1=%4b, I2=%4b, I3=%4b, I4=%4b || S=%2b ||| O=%4b",I1,I2,I3,I4,S,O);//and much more
end
endmodule
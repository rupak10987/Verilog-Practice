`timescale 1ns/1ps
module sum_tb;
reg[3:0] A,B;
wire[3:0]O;
wire[1:0]C;
sum uut(.A(A),.B(B),.sum(O),.carry(C));
initial begin
    A=4'b0011;
    B=4'b1100;
    #40;
    A=4'b1111;
    B=4'b1000;
    #40;
    A=4'b1111;
    B=4'b1111;
    #40;
    $finish;
end
initial begin
    $monitor("A = %4b, B = %4b || SUM = %4b , Carry= %2b",A,B,O,C);
end
endmodule

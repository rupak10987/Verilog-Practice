`timescale 1ns/1ps
module sum_tb;
localparam N=8;
reg[N-1:0] A,B;
wire[N-1:0]O;
wire[1:0]C;
sum #(.N(N-1)) sum1(.A(A),.B(B),.sum(O),.carry(C));
initial begin
    A=8'b0011_0000;
    B=8'b1100_0000;
    #40;
    A=8'b1111_0000;
    B=8'b1000_0000;
    #40;
    A=8'b1111_0000;
    B=8'b1111_0000;
    #40;
    $finish;
end
initial begin
    $monitor("A = %4b, B = %4b || SUM = %4b , Carry= %2b",A,B,O,C);
end
endmodule

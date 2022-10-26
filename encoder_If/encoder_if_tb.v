`timescale 1ns/1ps
module encoder_if_tb;
reg [3:0]A;
wire[1:0]O;
encoder_if uut(A,O);
initial begin
    A=4'b0000;
    #40;
    A=4'b0001;
    #40;
    A=4'b0010;
    #40;
    A=4'b0100;
    #40;
    A=4'b1100;
    #40;
    $finish;
end
initial begin
    $monitor("A = %4b, O=%2b",A,O);
end
endmodule
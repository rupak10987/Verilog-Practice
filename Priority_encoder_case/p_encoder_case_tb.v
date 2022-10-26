`timescale 1ns/1ps
module p_encoder_case_tb;
reg [3:0]A;
wire[2:0]O;
p_encoder_case uut(A,O);
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
    $monitor("A = %4b, O=%3b",A,O);
end
endmodule
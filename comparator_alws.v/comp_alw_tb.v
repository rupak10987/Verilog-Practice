`timescale 1ns/1ps
module comp_alw_tb;
reg i1,i2;
wire eq;
comp_alw uut(.i1(i1),.i2(i2),.eq(eq));
initial begin
    i1=0;
    i2=0;
    #40;
    i1=1;
    #40;
    $finish;
end
initial begin
    $monitor("i1 = %b i2 = %b eq= %b ",i1,i2,eq);
end
endmodule
`timescale 1ns/1ps
module b_counter_tb();

localparam N = 8;
reg clk,reset,cnt_start;
reg[N-1:0]start;
wire[N-1:0]q;

b_counter #(.N(N))count
(
.clk(clk),
.reset(reset),
.start(start),
.q(q),
.cnt_start(cnt_start)
);
always
begin
    clk=1'b0;
    #20;
    clk=1'b1;
    #20;
end
initial begin
    $dumpfile("count_wave.vcd");
    $dumpvars(0,b_counter_tb);
    cnt_start=1'b1;
    reset=1'b0;
    start=0;
    #20
    cnt_start=1'b0;
    #400000;
    $finish;
end
initial begin
    $monitor(" clk=%b || Q= %b",clk,q);
end
endmodule
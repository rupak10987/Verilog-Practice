module b_counter
#(parameter N = 4) 
(
input wire clk,reset,cnt_start,
input wire[N-1:0]start,
output reg[N-1:0] q

);
reg[N-1:0] r_next,r_reg;
always @(posedge clk,posedge reset)//memory
begin
    if(reset==1'b0)
    r_reg<=r_next;
    else
    r_reg<=0;
end
always@*//next state logic
begin
    if(cnt_start==1'b0)
    r_next=r_reg+1;
    else
    r_next=start;
end
always@*
begin//out logic
    q<=r_reg;
end
endmodule
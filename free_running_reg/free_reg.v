module free_reg
#(parameter N = 4)
(
    input wire reset,clk,enable,
    input wire[N-1:0] S_in,
    output reg[N-1:0] S_out

);
reg[3:0]r_reg,r_next;
localparam n =N-1;
always @(posedge clk,posedge reset) 
begin
if(reset)
r_reg<=0;
else
r_reg=r_next;   
end
always@*
begin
    if(enable)
    r_next=S_in;
    else
    r_next={r_reg[n-1:0],r_reg[n]};
end
always@*
S_out=r_reg;
    
endmodule
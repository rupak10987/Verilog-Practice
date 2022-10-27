module counter
#(parameter N = 4,
 parameter M=10 )
(
    input wire clk,reset,up,en,
    input wire[N-1:0]start,
    output reg[N-1:0] out
);
reg[N-1:0]r_next,r_reg;
//memory segment 
always @(posedge clk,posedge reset) 
begin
if(reset==1'b0)
r_reg<=r_next;
else
r_reg<=0;    
end
//next state logic
always @* 
begin
if(en)//enabled
begin
if(up)//up
if(r_reg>=M)
r_next=0;
else
r_next=r_reg+1;
else//down
if(r_reg<=0)
r_next=start;
else
r_next=r_reg-1;    
end
else//not enabled
r_next=start;
end
//outlogic
always @* 
begin
out=r_reg;    
end    
endmodule
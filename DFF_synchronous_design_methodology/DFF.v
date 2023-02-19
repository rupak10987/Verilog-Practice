module DFF
#(parameter N = 30)
(
    input wire clk,en,
    input wire reset,
    input wire[N-1:0]d,
    output reg[N-1:0] q
);
localparam N1 = N-1;
reg[N1:0] r_reg,r_next;
always @(posedge clk)//synchronous reset
begin
   if(reset==1'b1)
   r_reg=r_next;
   else
   r_reg=0; 
end
always@*//asynchronous en //everything sensitive
begin
    if(en)
    r_next=d;
    else
    r_next=r_reg;
end
always@*
begin
    q<=r_reg;
end
endmodule
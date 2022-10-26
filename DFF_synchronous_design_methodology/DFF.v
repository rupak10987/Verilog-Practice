module DFF
#(parameter N = 4)
(
    input wire clk,reset,en,
    input wire[N-1:0]d,
    output reg[N-1:0] q
);
localparam N1 = N-1;
reg[N1:0] r_reg,r_next;
always @(posedge clk, posedge reset)
begin
   if(reset==1'b0)
   r_reg=r_next;
   else
   r_reg='b0; 
end
always@*
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
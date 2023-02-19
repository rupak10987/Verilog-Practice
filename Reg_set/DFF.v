module DFF
#(parameter N = 4,
 parameter w=2 )//w is the num of address bit
(
    input wire clk,wen,
    input wire[N-1:0]d,
    input wire [w-1]Wr_addr,read_addr,
    output reg[N-1:0] q
);

reg[N-1:0] reg_set[2**w-1:0];
always @(posedge clk)
begin
if(wen==1'b1)
reg_set[Wr_addr]=d;
q=reg_set[read_addr];    
end
endmodule
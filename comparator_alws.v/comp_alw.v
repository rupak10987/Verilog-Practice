module comp_alw (
    input wire i1,i2,
    output reg eq
);
always@(i1,i2)
begin
if (i1==i2)
eq=1'b1;
else
eq=1'b0;    
end
endmodule
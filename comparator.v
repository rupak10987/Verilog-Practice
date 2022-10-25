module comparator (
    input wire i0;
    input wire i1;
    output wire eq
);
//product terms
wire p0,p1;
//sum of products
assign p0=i0 & i1;
assign p1=~i0 & ~i1;
assign eq=p0 | p1;
endmodule
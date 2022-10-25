module two_bit_comparator(
    input wire[1:0]A,B,
    output wire O
);
wire p0,p1;
comparator bit0(.i0(A[0]),.i1(B[0]),.eq(p0));
comparator bit1(.i0(A[1]),.i1(B[1]),.eq(p1));
assign O=p0 & p1;
endmodule
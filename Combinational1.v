module comb1(
    input wire [3:0] a;
    output wire [1:0] o;
);
assign o=(a==4'b0001)?2'b00,
(a==4'b0010)?2'b01,
(a==4'b0100)?2'b10,
(a==4'b1000)?2'b11,xx;
endmodule
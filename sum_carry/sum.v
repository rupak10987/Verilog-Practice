module sum (
    input wire[3:0]A,B,
    output wire[1:0] carry,
    output wire[3:0] sum
);
wire[5:0] sum_ext;
assign sum_ext={2'b00,A}+{2'b00,B};
assign sum=sum_ext[3:0];
assign carry=sum_ext[5:4];
endmodule
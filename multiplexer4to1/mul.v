module mul (
    output reg [3:0] I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,
    input wire[3:0]S,
    input wire[3:0] O
);

always @*
begin
case(S)
4'b0000:I1=O;
4'b0001:I2=O;
4'b0010:I3=O;
4'b0011:I4=O;
4'b0100:I5=O;
4'b0101:I6=O;
4'b0110:I7=O;
4'b0111:I8=O;
4'b1000:I9=O;
4'b1001:I10=O;
4'b1010:I11=O;
4'b1011:I12=O;
4'b1100:I13=O;
4'b1101:I14=O;
4'b1110:I15=O;
4'b1111:I16=O;
endcase
end

endmodule
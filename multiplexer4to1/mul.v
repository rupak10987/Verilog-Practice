module mul (
    input wire[3:0]I1,I2,I3,I4,
    input wire[1:0]S,
    output wire[3:0] O
);
assign O=(S==(2'b00))?I1:
         (S==(2'b01))?I2:
         (S==(2'b10))?I3:
         (S==(2'b11))?I4:
                4'bxxxx;
endmodule
module encoder_case (
    input wire[3:0] A,
    output reg [1:0]O 
);
always @(A)
begin
case(A)
4'b0000:O=2'b00;
4'b0001:O=2'b00;
4'b0010:O=2'b01;
4'b0100:O=2'b10;
4'b1000:O=2'b11;
default:O=2'bzz;
endcase
end
endmodule
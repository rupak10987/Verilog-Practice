module p_encoder_case (
    input wire[7:0] A,
    output reg [2:0]O 
);
always @(A)
begin
if(A==8'b00000001)
O=3'b001;
else if(A[7:1]==8'b0000001)
O=3'b010;
else if(A[7:2]==8'b000001)
O=3'b011;
else if(A[7:3]==8'b00001)
O=3'b100;
else if(A[7:4]==8'b0001)
O=3'b101;
//and so on
end
endmodule
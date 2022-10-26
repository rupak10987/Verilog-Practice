module p_encoder_case (
    input wire[3:0] A,
    output reg [2:0]O 
);
always @(A)
begin
casex(A)
4'b0001:O=3'b001;
4'b001?:O=3'b010;
4'b01??:O=3'b011;
4'b1???:O=3'b100;
default:O=3'b000;
endcase
end
endmodule
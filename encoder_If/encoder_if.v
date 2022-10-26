module encoder_if (
    input wire[3:0] A,
    output reg [1:0]O 
);
always @(A)
begin
if (A==4'b0000)
O=2'b00;
else if(A==4'b0001)
O=2'b00;
else if(A==4'b0010)
O=2'b01;
else if(A==4'b0100)
O=2'b10;
else if(A==4'b1000)
O=2'b11;
else
O=2'bzz;   
end
endmodule
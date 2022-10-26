module shifter
(
    input wire[3:0]I,
    input wire[1:0]S,
    output reg[3:0]O
);
always @(S)
begin
 casez(S)
 2'b00:O=I;
 2'b01:O={I[2:0],I[3]};
 2'b10:O={I[1:0],I[3:2]};
 2'b10:O={I[0],I[3:1]};
 default:O=I;
 endcase   
end
endmodule
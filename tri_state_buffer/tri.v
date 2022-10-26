module tri (
    input wire oe,
    input wire [3:0] s_in,
    input wire [3:0] b,
    output wire [3:0] s_out
);
b=(oe==1'b1)?s_in:4'bzzzz;
assign s_out=b;    
endmodule
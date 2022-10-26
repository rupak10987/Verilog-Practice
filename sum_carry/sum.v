module sum
#(parameter N = 8) 
(
    input wire[N-1:0]A,B,
    output wire[1:0] carry,
    output wire[N-1:0] sum
);
localparam N1 = N+1;
wire[N1:0] sum_ext;
assign sum_ext={2'b00,A}+{2'b00,B};
assign sum=sum_ext[N1-2:0];
assign carry=sum_ext[N1:N1-1];
endmodule
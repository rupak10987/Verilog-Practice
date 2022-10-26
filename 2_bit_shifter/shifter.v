module shifter (
    input wire[3:0]I,
    input wire[1:0]S,
    output wire[3:0]O
);
    assign O=(S==2'b00)?I:
             (S==2'b01)?{I[2:0],1'b0}:
             (S==2'b01)?{I[1:0],2'b00}:
             (S==2'b10)?{I[0],3'b000}:
             (S==2'b11)?4'b0000:
                        4'bxxxx;
endmodule
module encoder_con (
    input wire[3:0] A,
    output wire [1:0]O 
);
    assign O=(A==4'b0000)?2'b00:
             (A==4'b0001)?2'b00:
             (A==4'b0010)?2'b01:
             (A==4'b0100)?2'b10:
             (A==4'b1000)?2'b11:
             2'bzz;
endmodule
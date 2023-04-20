//32 by 4 --> 32 words where each word is 4 bits
module s_ram (
    input wire[4:0] read_addr,
    input wire[4:0] write_addr,
    input wire wr_enable,
    input wire[3:0] wr_data,
    output wire [3:0] read_data
);
 reg [3:0] mem[31:0];
 always @(*)
begin
if(wr_enable==1'b1)
begin
mem[write_addr]=wr_data;
end  
end   
assign read_data=mem[read_addr];  
endmodule

//tb
`timescale 1ns/10ps
module tb();
reg [4:0] r_a,w_a;
reg [3:0] w_d;
reg w_en;
wire [3:0] r_d;
s_ram instance0(
    .read_addr(r_a),
    .write_addr(w_a),
    .read_data(r_d),
    .wr_data(w_d),
    .wr_enable(w_en)
);
initial begin
w_en=1'b1;
r_a=5'b00001;
w_a=5'b00000;
w_d=4'b1010;
#40; 
w_en=1'b1;
r_a=5'b00000;
w_a=5'b00001;
w_d=4'b1111;
#40;
w_en=1'b0;
r_a=5'b00001;
w_a=5'b00000;
w_d=4'b1000;
#40;
w_en=1'b0;
r_a=5'b00000;
end
initial begin
    $monitor("wen = %b | w_data = %b | w_addr = %b | rd_data = %b | rd_addr = %b",w_en, w_d, w_a, r_d, r_a);
end
endmodule
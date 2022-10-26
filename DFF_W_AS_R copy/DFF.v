module DFF (
    input wire clk,d,reset,
    output reg q
);
    always @(posedge clk,reset)
    begin
    case(reset)
    1'b0:q<=d;
    default:q<=0;
    endcase    
    end
endmodule
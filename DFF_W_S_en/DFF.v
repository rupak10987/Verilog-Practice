module DFF (
    input wire clk,d,reset,en,
    output reg q
);
    always @(posedge clk, posedge reset)
    begin
    case(reset)
    
    1'b0:
    begin
    if(en==1'b1)
    q<=d;
    else
    q<=q;
    end
    default:q<=0;
    endcase    
    end
endmodule
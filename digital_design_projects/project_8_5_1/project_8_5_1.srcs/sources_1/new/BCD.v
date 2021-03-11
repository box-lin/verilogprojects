`timescale 1ns / 1ps

module BCD(
    input CEN,
    input CLK,
    input RST,
    output TC,
    output reg [3:0] B
    );
always @(posedge CLK,posedge RST) 
begin
    if (RST)
        B = 4'b0000;
    else if(CEN) begin
       if( B == 4'b1001) 
       begin
            B = 4'b0000;
        end
        else 
        begin
            B = B + 1;
        end
    end
end
    
assign TC = (B == 4'b1001) ? 1 : 0;
    
endmodule


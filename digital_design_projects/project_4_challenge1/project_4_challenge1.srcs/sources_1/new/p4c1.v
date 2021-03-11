`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/14 14:00:02
// Design Name: 
// Module Name: p4c1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module p4c1(
    input [1:0] I, //sw0 sw1
    input [1:0] Sel, //sw2 sw3
    output Y
    );
    
    reg Y;
    
    always@(I,Sel)
    begin
        case(Sel)
            2'd0: Y = I[0] & I[1];
            2'd1: Y = ~I[0];
            2'd2: Y = ~I[1] | (I[1] & ~I[0]);
            2'd3: Y = ~I[1]&I[0];
            default: Y = 1'b0;
        endcase
            
    end
endmodule

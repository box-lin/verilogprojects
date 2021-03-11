`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/00 11:54:24
// Design Name: 
// Module Name: alu
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


module alu(
    input [7:0] A, B,
    input [2:0] sel,
    output reg [7:0] Y
    );
    always @(A,B,sel)begin
    case(sel)
        3'd0: Y = A+B;
        3'd1: Y = A+1;
        3'd2: Y = A-B;
        3'd3: Y = A^B;
        3'd4: Y = A|B;
        3'd5: Y = A&B;
        default: Y = 8'd0;
    endcase      
    end
endmodule

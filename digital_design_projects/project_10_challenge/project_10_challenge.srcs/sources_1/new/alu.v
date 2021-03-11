`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/04 15:34:41
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
    output reg [7:0] Y,
    output reg [3:0] status
    );
    always @(A,B,sel,Y)begin
    case(sel)
        3'd0: Y = A+B;
        3'd1: Y = A+1;
        3'd2: Y = A-B;
        3'd3: Y = A^B;
        3'd4: Y = A|B;
        3'd5: Y = A&B;
        default: Y = 8'd0;
    endcase      
    status = {status[1]^status[2],Y[7],Y[6],Y==0};
    end
endmodule
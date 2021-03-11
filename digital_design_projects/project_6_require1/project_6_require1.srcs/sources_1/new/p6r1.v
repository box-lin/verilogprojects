`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/22 16:30:20
// Design Name: 
// Module Name: p6r1
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


module p6r1(
   input A,
   input B,
   input C,
   output X
    );
    
    wire N1, N2, N3;

    assign #1 N1 = A & B;
    assign #1 N2 = ~B;
    assign #1 N3 = N2 & C;
    assign #1 X = N1 | N3;
    
    
endmodule

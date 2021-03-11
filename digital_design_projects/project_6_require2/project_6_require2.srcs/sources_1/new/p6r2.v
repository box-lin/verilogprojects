`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/22 17:01:51
// Design Name: 
// Module Name: p6r2
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


module p6r2(
   input A,
   input B,
   input C,
   output X
    );
    
    wire N1, N2, N3;

    // AND gate with 1ns delay
    assign #1 N1 = A & B;
    // Not Gate with 1ns delay
    assign #1 N2 = ~B;
    // And Gate with 1ns delay
    assign #1 N3 = N2 & C;
    // Or Gate with 2ns delay
    assign #2 X = N1 | N3;
    
endmodule

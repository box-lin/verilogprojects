`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/23 22:10:07
// Design Name: 
// Module Name: p6r3
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


module p6r3(
   input A,
   input B,
   input C,
   output X
    );
    
    wire N1, N2, N3;

    // AND gate with 5ns delay
    assign #5 N1 = A & B;
    // Not Gate with 5ns delay
    assign #5 N2 = ~B;
    // And Gate with 5ns delay
    assign #5 N3 = N2 & C;
    // Or Gate with 5ns delay
    assign #5 X = N1 | N3;
    
endmodule

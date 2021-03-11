`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/22 19:18:29
// Design Name: 
// Module Name: p6r2sim
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


module p6r2sim;

   reg A;
   reg B;
   reg C;
   wire X;
   
   p6r2 cut(
   .A(A),
   .B(B),  
   .C(C),   
   .X(X)
   );
   
   integer k = 0;

    initial 
    begin
    // Initialize Inputs
    A = 0;
    B = 0;
    C = 0;

    // Wait 100 ns for global reset to finish
    // Add stimulus here

    for(k = 0; k < 4; k=k+1)
    begin
        {A,C} = k;
        #5 B = 1;
        #5 B = 0;
        #5 ;
    end
    end
endmodule

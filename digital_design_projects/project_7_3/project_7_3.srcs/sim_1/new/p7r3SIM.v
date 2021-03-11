`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/30 14:32:22
// Design Name: 
// Module Name: p7r3SIM
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


module p7r3SIM;

    reg D;
    reg G;
    wire Q;
    wire Qn;

    p7r3 cut(
        .D(D),
        .G(G),
        .Q(Q),
        .Qn(Qn)
    );
    

   initial begin
    // Initialize Inputs
    D = 1;
    G = 1;

    // Add stimulus here
    #100 D = 0;
    #100 D = 1;
    #100 G = 0;
    #100 G = 1;
    #100 D = 0;
         G = 0;
    #100 D = 1;
         G = 1;
    #100 D = 0;
         G = 0;
    #100 ;
end
    
   
endmodule

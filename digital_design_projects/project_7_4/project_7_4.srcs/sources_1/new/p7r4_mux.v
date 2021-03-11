`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/30 15:34:10
// Design Name: 
// Module Name: p7r4_mux
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


module p7r4_mux(

    input [7:0] I0, I1,
    input Sel,
    output reg [7:0] Y
    
    );
    
    always @ (*)
    begin
       if (Sel == 1) Y = I1;
       else Y = I0; 
   end    
endmodule

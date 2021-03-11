`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 16:18:04
// Design Name: 
// Module Name: p7r6_top
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


module p7r6_top(
    input CLK, RST, I0,
    output [7:0] Y
    );
    p7r6_sipo sipoIn (.Iconnect(I0),.CLK(CLK),.RST(RST),.Y(Y));
endmodule

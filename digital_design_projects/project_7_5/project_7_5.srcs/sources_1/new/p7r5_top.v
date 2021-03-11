`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 14:48:40
// Design Name: 
// Module Name: p7r5_top
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


module p7r5_top(
    input CLK, RST,
    input [7:0] I,
    input [1:0] btn,
    output [15:0] Y
    );
    wire clking;
    wire [1:0] Connect;
    p7r5_counter clkin (.clk(CLK),.cntr(clking),.divider(5'd25));
    p7r5_piso first (.Iconnect(Connect[1]),.I(I),.CLK(clking),.RST(RST),.Oconnect(Connect[0]),.Y(Y[7:0]),.btn(btn[0]));
    p7r5_piso second (.Iconnect(Connect[0]),.I(I),.CLK(clking),.RST(RST),.Oconnect(Connect[1]),.Y(Y[15:8]),.btn(btn[1]));
    
endmodule

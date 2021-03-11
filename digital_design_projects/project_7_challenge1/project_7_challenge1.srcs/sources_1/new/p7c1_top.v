`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 16:59:51
// Design Name: 
// Module Name: p7c1_top
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


module p7c1_top(
    input CLK,RST,F,D,R,
    input [7:0] I,
    output [7:0] Y
    );
    wire [7:0] connect;
    p7c1_pipo(.CLK(CLK),.RST(RST),.I(I),.Y(connect));
    p7c1_shifter(.D(D),.R(R),.F(F),.A(I[3:0]),.I(connect),.Y(Y));
endmodule

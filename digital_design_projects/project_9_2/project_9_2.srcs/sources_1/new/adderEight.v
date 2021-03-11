`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/21 21:25:19
// Design Name: 
// Module Name: adderEight
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


module adderEight(
    input Cin,
    input [7:0] A,
    input [7:0] B,
    output reg [8:0] S
    );
    reg [7:0] temp;
    always@ * begin
    temp = A + {{7{1'b0}},Cin};
    S = B + temp;
    end
endmodule

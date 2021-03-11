`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/14 18:17:29
// Design Name: 
// Module Name: encoder2_4
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


module encoder2_4(
    input [1:0] in,
    output reg [3:0] out
    );
    always@* begin
    case(in)
        2'b00:  out = 4'b1110;
        2'b01:  out = 4'b1101;
        2'b10:  out = 4'b1111;
        2'b11:  out = 4'b1111;
        default : out = 4'b0000;
    endcase
    end
endmodule


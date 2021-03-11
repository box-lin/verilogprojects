`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/09 14:27:03
// Design Name: 
// Module Name: Mux4_1
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


module Mux4_1(
    input [3:0] I0,
    input [3:0] I1,
    input [3:0] I2,
    input [3:0] I3,
    input [1:0] Sel,
    output reg [3:0] Y
    );
    always @ (*)begin
        case(Sel)
        2'b00:  Y = I0;
        2'b01:  Y = I1;
        2'b10:  Y = I2;
        2'b11:  Y = I3;
        endcase
    end
endmodule

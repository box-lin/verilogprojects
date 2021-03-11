`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/20 22:20:29
// Design Name: 
// Module Name: p5r3segcontrol
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


module p5r3segcontrol(
    input [3:0] I,
    output reg [6:0] seg
    );
    

    always @(I)
    begin
        case(I)     
             4'b0000: seg = 7'b1000000; //0
             4'b0001: seg = 7'b1111001; //1
             4'b0010: seg = 7'b0100100; //2
             4'b0011: seg = 7'b0110000; //3
             4'b0100: seg = 7'b0011001; //4
             4'b0101: seg = 7'b0010010; //5
             4'b0110: seg = 7'b0000010; //6
             4'b0111: seg = 7'b1111000; //7
             4'b1000: seg = 7'b0000000; //8
             4'b1001: seg = 7'b0011000; //9
             4'b1010: seg = 7'b0001000; //A
             4'b1011: seg = 7'b0000011; //b
             4'b1100: seg = 7'b1000110; //C
             8'b1101: seg = 7'b0100001; //d
             8'b1110: seg = 7'b0000110; //E
             8'b1111: seg = 7'b0001110; //F
        endcase
    end
    
endmodule

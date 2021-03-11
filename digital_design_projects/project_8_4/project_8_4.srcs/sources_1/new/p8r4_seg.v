`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/07 21:12:29
// Design Name: 
// Module Name: p8r3_seg
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


module p8r4_seg(
    input [3:0] sw,
    output reg [6:0] segs
    );
    
    always @(sw)
    begin
        case(sw)
            
             4'b0000: segs = 7'b1000000; //0
             4'b0001: segs = 7'b1111001; //1
             4'b0010: segs = 7'b0100100; //2
             4'b0011: segs = 7'b0110000; //3
             4'b0100: segs = 7'b0011001; //4
             4'b0101: segs = 7'b0010010; //5
             4'b0110: segs = 7'b0000010; //6
             4'b0111: segs = 7'b1111000; //7
             4'b1000: segs = 7'b0000000; //8
             4'b1001: segs = 7'b0011000; //9
             
        endcase
    end
endmodule

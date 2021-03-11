`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/02 15:18:33
// Design Name: 
// Module Name: challenge2
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


module challenge2(
    input sw,
    input [2:0] btn,
    output [2:0] RGB_led_A
    );
   
   assign  RGB_led_A[0] = btn [0] && sw;
   assign  RGB_led_A[1] = btn [1] && sw;
   assign  RGB_led_A[2] = btn [2] && sw;
   
   
endmodule

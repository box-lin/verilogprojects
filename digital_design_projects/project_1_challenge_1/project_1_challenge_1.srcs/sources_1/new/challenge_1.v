`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/02 14:31:50
// Design Name: 
// Module Name: challenge_1
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


module challenge_1(
    
    input [2:0] btn,
    output [2:0] RGB_led_A
    
    );
  
    assign RGB_led_A[0] = btn[0];
    assign RGB_led_A[1] = btn[1];
    assign RGB_led_A[2] = btn[2];

    
endmodule

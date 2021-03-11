`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/01 23:49:14
// Design Name: 
// Module Name: led_reverse
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


module led_reverse(
    input [11:0] sw,
    output [9:0] led,
    output [2:0] RGB_led_A,
    output [2:0] RGB_led_B
    );
    assign led[0] = sw[11];
    assign led[1] = sw[10];
    assign led[2] = sw[9];
    assign led[3] = sw[8];
    assign led[4] = sw[7];
    assign led[5] = sw[6];
    assign led[6] = sw[5];
    assign led[7] = sw[4];
    assign led[8] = sw[3];
    assign led[9] = sw[2];
    assign RGB_led_A[0] = sw[1];
    assign RGB_led_A[1] = sw[1];
    assign RGB_led_A[2] = sw[1];
    assign RGB_led_B[0] = sw[0];
    assign RGB_led_B[1] = sw[0];
    assign RGB_led_B[2] = sw[0];
    
endmodule

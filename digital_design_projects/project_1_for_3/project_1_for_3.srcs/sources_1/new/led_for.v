`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/02 14:10:41
// Design Name: 
// Module Name: led_for
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
module led_for(

    input [11:0] sw,
    output [9:0] led,
    output [2:0] RGB_led_A,
    output [2:0] RGB_led_B
    
    );
    
    genvar x,y;
    for(x=0;x<10;x=x+1)
    begin
    assign led[x] = sw[x]; 
    end
    
    for(y=0;y<3;y=y+1) 
    begin
    assign RGB_led_A[y] = sw[10];
    assign RGB_led_B[y] = sw[11];
    end
   
    
endmodule


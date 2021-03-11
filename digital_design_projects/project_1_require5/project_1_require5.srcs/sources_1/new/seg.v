`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/02 11:14:30
// Design Name: 
// Module Name: seg
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


module seg(
    input [3:0] btn,
    input [7:0] sw,
    output [7:0] seg_cat,
    output [3:0] seg_an
    );
    
    assign seg_an[0] = !btn[0];
    assign seg_an[1] = !btn[1];
    assign seg_an[2] = !btn[2];
    assign seg_an[3] = !btn[3];
    
    assign seg_cat[0] = !sw[0];
    assign seg_cat[1] = !sw[1];
    assign seg_cat[2] = !sw[2];
    assign seg_cat[3] = !sw[3];
    assign seg_cat[4] = !sw[4];
    assign seg_cat[5] = !sw[5];
    assign seg_cat[6] = !sw[6];
    assign seg_cat[7] = !sw[7];
    
    
endmodule

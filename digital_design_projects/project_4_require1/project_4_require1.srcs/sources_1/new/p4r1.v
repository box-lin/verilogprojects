`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/09 21:26:23
// Design Name: 
// Module Name: p4r1
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


module p4r1(
    //data selector
    input [1:0] S,
    //input signals
    input I0,I1,I2,I3,
    //output
    output Y
    ); 
    assign Y = (S == 2'd0) ? I0 : (
                (S == 2'd1) ? I1 : (
                    (S == 2'd2) ? I2 : I3
                )
            );
endmodule




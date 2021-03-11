`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/16 14:55:46
// Design Name: 
// Module Name: p2_require2
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


module p2_require2(
    input [7:0] sw,
    output [2:0] led
    );
    
    assign led[0] = (sw[0]|sw[1]) & (~sw[0]|~sw[1]);
    assign led[1] = (~sw[1]|sw[2]|sw[3]) & (sw[1]|~sw[2]|sw[3]) & (sw[1]|sw[2]|~sw[3]) & (sw[1]|~sw[2]|~sw[3]) & (~sw[1]|~sw[2]|~sw[3]);
    assign led[2] = (sw[4]|sw[5]|sw[6]|sw[7]) & (sw[4]|~sw[5]|sw[6]|sw[7]) & (~sw[4]|sw[5]|~sw[6]|sw[7]) & (sw[4]|~sw[5]|~sw[6]|sw[7]) 
                     & (~sw[4]|~sw[5]|~sw[6]|sw[7]) & (sw[4]|sw[5]|sw[6]|~sw[7]) & (~sw[4]|sw[5]|sw[6]|~sw[7]) & (sw[4]|~sw[5]|sw[6]|~sw[7])
                     & (~sw[4]|~sw[5]|sw[6]|~sw[7]) & (sw[4]|sw[5]|~sw[6]|~sw[7]) & (~sw[4]|sw[5]|~sw[6]|~sw[7]) & (sw[4]|~sw[5]|~sw[6]|~sw[7]);
                     
endmodule

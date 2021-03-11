`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/09 14:29:21
// Design Name: 
// Module Name: Counter2bits
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


module Counter2bits(
    input clk,
    output reg [1:0] counterout
    );
    
 always @ (posedge(clk))
 begin
     counterout = counterout + 1;
end
endmodule
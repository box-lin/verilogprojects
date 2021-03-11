`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 14:44:29
// Design Name: 
// Module Name: p7r5_counter
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


module p7r5_counter(
    input clk,
    input [4:0] divider,
    output reg cntr
    );
    reg [100:0] counter;
    always @ (posedge(clk))begin
         counter = counter + 1;
         cntr = counter[divider];
    end
endmodule

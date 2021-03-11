`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/07 15:01:27
// Design Name: 
// Module Name: p8r3_top
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


module p8r3_top(
    input clk,rst,
    output led
    );
    wire connect;
    p8r3_ClkDivider Mhz100 (.clk(clk),.terminalcount(50000-1),.rst(rst),.clk_div(connect));
    p8r3_ClkDivider Khz1 (.clk(connect),.terminalcount(500-1),.rst(rst),.clk_div(led));
endmodule

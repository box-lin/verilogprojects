`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/07 21:14:45
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


module p8r4_top(
    input clk,rst,
    output [6:0] seg,
    output [3:0] seg_an
    );
    assign seg_an = 4'b1110;
    wire [3:0] connect;
    wire passclk;
    wire downgrade;
    p8r4_clkdivider(.clk(clk),.rst(rst),.terminalcount(49999),.clk_div(downgrade));
    p8r4_clkdivider(.clk(downgrade),.rst(rst),.terminalcount(499),.clk_div(passclk));
    p8r4_BCD(.clk(passclk),.rst(rst),.bcd_digit(connect));
    p8r4_seg(.sw(connect),.segs(seg));
     
    
endmodule

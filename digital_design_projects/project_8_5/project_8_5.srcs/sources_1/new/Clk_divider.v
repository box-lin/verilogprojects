`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/09 14:27:44
// Design Name: 
// Module Name: Clk_divider
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


module Clk_divider(
    input clk, rst,
    output reg clk_div,
    input [15:0] terminalcount
    );
	

    reg [15:0] count;
    wire tc;

    assign tc = (count == terminalcount);	
    
    always @ (posedge(clk), posedge(rst))
    begin
        if (rst) count <= 0;
        else if (tc) count <= 0;		
        else count <= count + 1;
    end
    
    always @ (posedge(clk), posedge(rst))
    begin
        if (rst) clk_div <= 0;
        else if (tc) clk_div = !clk_div;	
    end
endmodule


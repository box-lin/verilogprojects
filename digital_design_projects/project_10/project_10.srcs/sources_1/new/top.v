`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/00 11:30:11
// Design Name: 
// Module Name: top
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


module top(
    input rst,clk,
    input [7:0] sw, 
    input [2:0] sel,
    inout [1:0] load,
    output [3:0] segan,
    output [7:0] seg
    );
    wire [7:0] Aconnect, Bconnect;
    wire [15:0] Yconnect;
    
    pipo btn0(.I(sw),.en(load[0]),.rst(rst),.Y(Aconnect));
    pipo btn1(.I(sw),.en(load[1]),.rst(rst),.Y(Bconnect));
    alu(.A(Aconnect),.B(Bconnect),.sel(sel),.Y(Yconnect));
    SSD(.clk(clk),.seg(seg),.segan(segan),.b(Yconnect));
    

   
endmodule

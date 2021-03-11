`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/12 18:19:04
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
    input clk,
    input Cin,
    input rst,
    input [7:0] bin, 
    output [7:0] cat,
    output [3:0] segan
    );
    wire [7:0] binConnect;
    wire [1:0] S;
    wire connect;
    wire [3:0] muxConnect;
    CLAHadder(.A(bin[3:0]),.B(bin[7:4]),.Cin(Cin),.S(binConnect));
    clkdiv(.clk(clk),.rst(rst),.terminalcount(199999),.clk_div(connect));
    counter(.clk(connect),.out(S));
    mux4_1(.I0(binConnect[3:0]),.I1(binConnect[7:4]),.Y(muxConnect),.sel(S));
    seg_decoder(.in(muxConnect),.rst(rst),.out(cat));
    encoder2_4(.in(S),.out(segan));
    
    
endmodule

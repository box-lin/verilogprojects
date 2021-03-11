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
    input En,
    input rst,
    input sub,
    input [7:0] bin,
    output Cout, 
    output [7:0] cat,
    output [3:0] segan
    );
    wire [1:0] Sel;
    wire connect;
    wire [3:0] muxConnect;
    wire [7:0] A,B;
    wire [8:0] S;
    
    assign A[0] = bin[0]^sub;
    assign A[1] = bin[1]^sub;
    assign A[2] = bin[2]^sub;
    assign A[3] = bin[3]^sub;
    assign A[4] = bin[4]^sub;
    assign A[5] = bin[5]^sub;
    assign A[6] = bin[6]^sub;
    assign A[7] = bin[7]^sub;
    assign Cout = S[8];
    
    clkdiv(.clk(clk),.rst(rst),.terminalcount(199999),.clk_div(connect));
    counter(.clk(connect),.out(Sel));
    pipo (.in(bin),.En(En),.Rst(rst),.out(B));
    adderEight(.A(A),.B(B),.Cin(sub),.S(S)); 
    mux4_1(.I0(S[3:0]),.I1(S[7:4]),.Y(muxConnect),.sel(Sel));
    seg_decoder(.in(muxConnect),.rst(rst),.out(cat));
    encoder2_4(.in(Sel),.out(segan));
     
    
endmodule

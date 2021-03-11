`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/21 08:29:30
// Design Name: 
// Module Name: p5c1_wrapper
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


module p5c1_wrapper(
    output [6:0] seg,
    output [3:0] seg_an,
    input S,
    input [3:0] swP0,
    input [7:4] swP1,
    input clk
    );
    
    wire [3:0] connect;
    wire B;
    
    p5c1_mux in(
        .S(B),
        .swP0(swP0),
        .swP1(swP1),
        .sw(connect)
    );
    
    p5c1_bin2seg in1 (
        .I(connect),
        .seg(seg)
    );
    
    p5c1_counter in2 (
        .clk(clk),
        .Y(B)
    );
    
    assign seg_an[0] = B;
    assign seg_an[1] = ~B;
    assign seg_an[2] = 1;
    assign seg_an[3] = 1;
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/19 23:23:35
// Design Name: 
// Module Name: p5r3wrapper
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


module p5r3wrapper(
    input [3:0] swP0,
    input [7:4] swP1,
    input S,
    output [3:0] seg_an,
    output [6:0] seg
    );

    wire [3:0] connect;
    
    p5r3mux in(
        .S(S),
        .swP0(swP0),
        .swP1(swP1),
        .Y(connect)
        );
   
    
    p5r3segcontrol in1 (
        .I(connect),
        .seg(seg)
    );
    
    assign seg_an[0] = S; 
    assign seg_an[1] = ~S;
    assign seg_an[2] = 1;
    assign seg_an[3] = 1;
    
        
endmodule

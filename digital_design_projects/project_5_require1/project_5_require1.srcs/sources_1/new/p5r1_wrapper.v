`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/16 15:26:04
// Design Name: 
// Module Name: p5r1_wrapper
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


module p5r1_wrapper(
    I0, I1, I2, I3,I4,I5,I6, I7,Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7, S0, S1,S2,clk,led
    );
    input I7, I6, I5, I4, I3, I2, I1, I0, S2 ,S1, S0,clk;
    output Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7,led;
    
    wire B0,B1,B2,sdata;
    
    p5r1_mux input_mux(
        .I7(I7),
        .I6(I6),
        .I5(I5),
        .I4(I4),
        .I3(I3),
        .I2(I2),
        .I1(I1),
        .I0(I0),
        .S0(B0),
        .S1(B1),
        .S2(B2),
        .Y(sdata)
    );
    
    p5r1_demux output_demux(
        .En(sdata),
        .I0(B0),
        .I1(B1),
        .I2(B2),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3),
        .Y4(Y4),
        .Y5(Y5),
        .Y6(Y6),
        .Y7(Y7)
        );
        
    p5r1_counter clock(
        .clk(clk),
        .Y2(B2),
        .Y1(B1),
        .Y0(B0)
        );
        assign led = sdata;
endmodule

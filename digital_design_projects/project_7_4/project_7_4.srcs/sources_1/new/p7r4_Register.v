`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/30 15:34:48
// Design Name: 
// Module Name: p7r4_Register
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


module p7r4_Register(
    input [7:0] I,
    input Sel, save, Rst,
    output [7:0] Out
    );   
    wire [7:0] connect;
    
    p7r4_mux muxin(.I0(I), .I1(connect), .Sel(Sel), .Y(Out) );
    p7r4_Ff f0( .D(I[0]), .CLK(save), .RST(Rst), .Q(connect[0]) );        
    p7r4_Ff f1( .D(I[1]), .CLK(save), .RST(Rst), .Q(connect[1]) );        
    p7r4_Ff f2( .D(I[2]), .CLK(save), .RST(Rst), .Q(connect[2]) );        
    p7r4_Ff f3( .D(I[3]), .CLK(save), .RST(Rst), .Q(connect[3]) );        
    p7r4_Ff f4( .D(I[4]), .CLK(save), .RST(Rst), .Q(connect[4]) );    
    p7r4_Ff f5( .D(I[5]), .CLK(save), .RST(Rst), .Q(connect[5]) );
    p7r4_Ff f6( .D(I[6]), .CLK(save), .RST(Rst), .Q(connect[6]) );
    p7r4_Ff f7( .D(I[7]), .CLK(save), .RST(Rst), .Q(connect[7]) );

 
endmodule

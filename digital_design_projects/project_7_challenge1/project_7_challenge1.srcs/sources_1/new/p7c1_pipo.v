`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 16:32:40
// Design Name: 
// Module Name: p7c1_pipo
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


module p7c1_pipo(
    input CLK,RST,
    input [7:0] I,
    output [7:0] Y
    );
    wire [7:0] load;
    
    p7c1_DFF block0(.CLK(CLK),.RST(RST),.D(I[0]),.Q(load[0]));
    p7c1_DFF block1(.CLK(CLK),.RST(RST),.D(I[1]),.Q(load[1]));
    p7c1_DFF block2(.CLK(CLK),.RST(RST),.D(I[2]),.Q(load[2]));
    p7c1_DFF block3(.CLK(CLK),.RST(RST),.D(I[3]),.Q(load[3]));
    p7c1_DFF block4(.CLK(CLK),.RST(RST),.D(I[4]),.Q(load[4]));
    p7c1_DFF block5(.CLK(CLK),.RST(RST),.D(I[5]),.Q(load[5]));
    p7c1_DFF block6(.CLK(CLK),.RST(RST),.D(I[6]),.Q(load[6]));
    p7c1_DFF block7(.CLK(CLK),.RST(RST),.D(I[7]),.Q(load[7]));
    
    assign Y = load;
  
endmodule

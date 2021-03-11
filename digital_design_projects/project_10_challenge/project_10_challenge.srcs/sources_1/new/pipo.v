`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/04 15:35:42
// Design Name: 
// Module Name: pipo
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


module pipo(
    input [7:0] I,
    input en,
	input rst,
    output [7:0] Y
    );
    generate
    genvar i;
    for(i = 0 ; i < 8 ; i = i+1) begin : dff
        dff dff(.d(I[i]),.en(en),.rst(rst),.q(Y[i]));
        end
    endgenerate
       
endmodule



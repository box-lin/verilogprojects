`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/21 21:18:08
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
module PIPOsize #(parameter WIDTH = 8) (
    input [WIDTH-1:0] DataIn,
    input En,
	input Rst,
    output [WIDTH-1:0] DataOut
    );
    generate
    genvar i;
    for(i = 0 ; i < WIDTH ; i = i+1) begin : dff
        dff dff(.D(DataIn[i]),.En(En),.RST(Rst),.Q(DataOut[i]));
        end
    endgenerate
       
endmodule


module pipo(
    input [7:0] in,
    input En,
	input Rst,
    output [7:0] out
    );
   dff d0(.D(in[0]),.En(En),.RST(Rst),.Q(out[0]));
   dff d1(.D(in[1]),.En(En),.RST(Rst),.Q(out[1]));
   dff d2(.D(in[2]),.En(En),.RST(Rst),.Q(out[2]));
   dff d3(.D(in[3]),.En(En),.RST(Rst),.Q(out[3]));
   dff d4(.D(in[4]),.En(En),.RST(Rst),.Q(out[4]));
   dff d5(.D(in[5]),.En(En),.RST(Rst),.Q(out[5]));
   dff d6(.D(in[6]),.En(En),.RST(Rst),.Q(out[6]));
   dff d7(.D(in[7]),.En(En),.RST(Rst),.Q(out[7]));
endmodule

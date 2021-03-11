`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/21 08:22:18
// Design Name: 
// Module Name: p5c1_counter
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


module p5c1_counter(
    input clk,
	output Y
    );
    reg [27:0] counter;

    always @ (posedge clk)
    begin
	   counter <= counter + 100;
    end

    assign Y = counter[27];
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/16 15:51:53
// Design Name: 
// Module Name: p5r1_counter
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


module p5r1_counter(
    input clk,
	output Y2, Y1, Y0
);

    reg [27:0] counter;

    always @ (posedge clk)
    begin
        counter <= counter + 1'b1;
    end

    
    assign Y2 = counter[27];
    assign Y1 = counter[26];
    assign Y0 = counter[25];


endmodule

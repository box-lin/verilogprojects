`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/06 18:55:09
// Design Name: 
// Module Name: p8r2_dff
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


module p8r2_dff(
    input D,
    input clk,
    input rst,
    output reg Q
    );
    always @(posedge clk,posedge rst)
    begin
    if(rst)
        Q <= 1'b0;
    else
        Q <= D;
    end
    
    
endmodule

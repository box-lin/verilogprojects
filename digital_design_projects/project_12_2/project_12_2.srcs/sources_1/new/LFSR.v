`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/15 18:16:50
// Design Name: 
// Module Name: LFSR
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

`timescale 1ns / 1ps

module LFSR(
    input clk,
    input rst,
    output reg [15:0] q
    );
    
    wire feedback;
    assign feedback = ~(q[15] ^ q[12] ^ q[10]);
    
    always @(posedge clk) begin
    if (rst)
        q = 16'b0;
    else
        q = {q[14:0],feedback};
    end
endmodule


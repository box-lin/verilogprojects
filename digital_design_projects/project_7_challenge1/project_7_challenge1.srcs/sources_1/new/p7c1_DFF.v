`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 16:32:04
// Design Name: 
// Module Name: p7c1_DFF
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


module p7c1_DFF(
    input D,CLK,RST,
    output reg Q
    );
    always @(posedge CLK,posedge RST)begin
        if(RST) Q<=1'b0;
        else Q<=D;
    end
endmodule

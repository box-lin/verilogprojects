`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/31 15:22:39
// Design Name: 
// Module Name: p7r4_Ff
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


module p7r4_Ff(
    input D,CLK, RST,
    output reg Q
    );
    always @(posedge CLK,posedge RST)
    begin
        if(RST) Q <= 1'b0;
        else Q <= D;
    end
endmodule

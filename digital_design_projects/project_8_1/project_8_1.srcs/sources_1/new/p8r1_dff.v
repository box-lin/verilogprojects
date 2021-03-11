`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/06 15:08:57
// Design Name: 
// Module Name: p8r1_dff
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


module p8r1_dff(
    input D,
    input CLK,
    input RST,
    output reg Q
    );
    always @(posedge CLK,posedge RST)
    begin
    if(RST)
        Q <= 1'b0;
    else
        Q <= D;
    end

endmodule

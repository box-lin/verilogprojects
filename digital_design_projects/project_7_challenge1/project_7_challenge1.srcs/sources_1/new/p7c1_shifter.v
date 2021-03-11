`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 16:39:15
// Design Name: 
// Module Name: p7c1_shifter
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


module p7c1_shifter(
    input R,D,F,
    input [7:0] I,
    input [3:0] A, 
    output reg [7:0] Y
    );
    reg [23:0] Temp,Stored;
    always @(*)begin
        if (R == 0) Temp = {{8{F}},I,{8{F}}};
        else Temp = {I,I,I};
        
        Stored <= D ? Temp >> A : Temp << A;
        
        Y <= Stored[15:8];
    end
 
endmodule


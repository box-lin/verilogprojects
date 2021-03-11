`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/20 20:21:32
// Design Name: 
// Module Name: cla
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


module cla(
    input Cin,
    input [3:0] A,
    input [3:0] B,
    output reg [4:0] C
    );
    reg [3:0] G,P;
    integer i;
    always @* begin
    for(i = 0; i <= 4;i = i + 1) begin
         if(i != 4)
             begin
                 G[i] = A[i] & B[i];
                 P[i] = A[i] | B[i];
             end
         if(i != 0)
             begin
                C[i] = G[i-1] | (P[i-1]&C[i-1]);
             end
         end
         
    C[0] = Cin;
    end
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/20 20:03:58
// Design Name: 
// Module Name: CLAHadder
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


module CLAHadder(
    input Cin,
    input [3:0] A,
    input [3:0] B,
    output reg [7:0] S
    );
    wire [4:0] C1; 
    wire [3:0] C2;
    fulladder a0(.A(A[0]),.B(B[0]),.Cin(Cin),.S(C2[0]));
    fulladder a1(.A(A[1]),.B(B[1]),.Cin(C1[1]),.S(C2[1]));
    fulladder a2(.A(A[2]),.B(B[2]),.Cin(C1[2]),.S(C2[2]));
    fulladder a3(.A(A[3]),.B(B[3]),.Cin(C1[3]),.S(C2[3]));
    cla(.Cin(Cin),.C(C1),.A(A),.B(B));     
    always@*begin
    S = {C1[4],C2};
    end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/09 15:48:45
// Design Name: 
// Module Name: MUX
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
module MUX(
    input [3:0] IN0,
    input [3:0] IN1,
    input [3:0] IN2,
    input [3:0] IN3,
    output reg [3:0] OUT,
    input [2:0] SEL
    );
    
    always@*
    case(SEL)
        2'b00:  OUT = IN0;
        2'b01:  OUT = IN1;
        2'b10:  OUT = IN2;
        2'b11:  OUT = IN3;
    endcase
endmodule



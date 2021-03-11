`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/13 12:51:04
// Design Name: 
// Module Name: p4r2
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


module p4r2(
    input [1:0] I,
    input [3:0] btn,
    output [3:0] Y
    );

reg [3:0] Y;

always @ (I,btn)
begin
    if (btn == 4'd1 & I == 2'd0)
        Y = 4'd1;
    else if (btn == 4'd2 & I == 2'd1)
        Y = 4'd2;
    else if (btn == 4'd4 & I == 2'd2)
        Y = 4'd4;
     else if (btn == 4'd8 & I == 2'd3)
        Y = 4'd8;
    else
        Y = 4'd0;
end
endmodule

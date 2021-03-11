`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/19 23:17:06
// Design Name: 
// Module Name: p5r3mux
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


module p5r3mux(
    input S,
    input [3:0] swP0,
    input [7:4] swP1,
    output reg [3:0] Y
    );
    
    always @ (S,swP0,swP1)
    begin
        case (S)
            1'd1:
                Y = swP1;
            default: 
                Y = swP0;
        endcase
   end
    
endmodule

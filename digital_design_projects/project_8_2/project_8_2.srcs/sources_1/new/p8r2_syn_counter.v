`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/06 16:03:55
// Design Name: 
// Module Name: p8r2_syn_counter
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


module p8r2_syn_counter(
    input clk, rst,
    output reg [3:0] counterout
    );
    
 always @ (posedge(clk), posedge(rst))
 begin
     if (rst) counterout <= 0;
     else counterout <= counterout + 1;
end
endmodule

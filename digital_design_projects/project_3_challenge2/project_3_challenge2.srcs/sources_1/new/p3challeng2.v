`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/27 01:12:51
// Design Name: 
// Module Name: p3challeng3
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


module p3challeng2(
    
    input [7:0] sw,
    input [3:0] btn,
    output [1:0] led
    
    );
    
    assign led[0] = sw[0]^sw[2]^sw[4]^sw[6];
    assign led[1] = led[0] & ( (btn[0]^btn[2]) | (btn[0]&btn[1]&btn[2]&btn[3]) ); 
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/25 19:18:38
// Design Name: 
// Module Name: p3require1
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


module p3require1(

    input [4:0] sw,
    output led
    
    );
    
    assign led = sw[0]^sw[1]^sw[2]^sw[3]^sw[4];
                 
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/27 00:50:38
// Design Name: 
// Module Name: p3challenge1
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


module p3challenge1(
    
    input [7:0] sw,
    output [1:0] led
    
    );
    
    assign led[0] = sw[0]^sw[1]^sw[2]^sw[3]^sw[4]^sw[5]^sw[6]^sw[7]; //1,3,5 7 on off led1
    assign led[1] = ~led[0];
    
    //sw[0]~^sw[1]~^sw[2]~^sw[3]~^sw[4]~^sw[5]~^sw[6]~^sw[7];//0 2 4 6 on off led2
    
endmodule

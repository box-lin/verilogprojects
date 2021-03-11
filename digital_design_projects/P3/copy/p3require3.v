`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/26 17:16:23
// Design Name: 
// Module Name: p3require3
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


module p3require3(

    input [7:0] sw,
    output led
    //binary 11111111  -> sw[7]....sw[0]
    );
    
    assign led = (sw[7]&~sw[6]&sw[5]&~sw[3])|
                 (sw[7]&~sw[6]&sw[5]&~sw[4])|
                 (sw[7]&~sw[6]&sw[5]&sw[3]&~sw[2]&~sw[1]);
                 
endmodule

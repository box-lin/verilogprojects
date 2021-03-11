`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/16 15:33:00
// Design Name: 
// Module Name: p2_require3
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


module p2_require3(

    input [6:3] sw,
    output led3
    
    );
    //sop form
    assign led3 = (sw[3] & ~sw[4] & ~sw[5] & ~sw[6]) | (sw[3] & sw[4] & ~sw[5] & ~sw[6]) | (~sw[3] & ~sw[4] & sw[5] & ~sw[6]) 
                  | (~sw[3] & sw[4] & sw[5] & ~sw[6]) | (sw[3] & ~sw[4] & ~sw[5] & sw[6]) | (sw[3] & sw[4] & ~sw[5] & sw[6])
                  | (~sw[3] & ~sw[4] & sw[5] & sw[6]) | (~sw[3] & sw[4] & sw[5] & sw[6]);
                  
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/16 22:38:02
// Design Name: 
// Module Name: p2_challenge
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


module p2_challenge(
    
    input [7:0] sw,
    output [1:0] led

    );
    
    assign led[0] = (~sw[0] & ~sw[1] & sw[2] & sw[3]) | (~sw[0] & sw[1] & ~sw[2] & sw[3]) | (~sw[0] & sw[1] & sw[2] & ~sw[3]) | 
                    (sw[0] & ~sw[1] & ~sw[2] & sw[3]) | (sw[0] & ~sw[1] & sw[2] & ~sw[3]) | (sw[0] & sw[1] & ~sw[2] & ~sw[3]);
                    
    assign led[1] = (~sw[4] & ~sw[5] & ~sw[6] & sw[7])  | (~sw[4] & ~sw[5] & sw[6] & ~sw[7])| (~sw[4] & sw[5] & ~sw[6] & ~sw[7]) | 
                    (sw[4] & ~sw[5] & ~sw[6] & ~sw[7]);
    
    
endmodule

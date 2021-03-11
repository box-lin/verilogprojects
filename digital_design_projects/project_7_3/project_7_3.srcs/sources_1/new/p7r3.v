`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/30 14:18:46
// Design Name: 
// Module Name: p7r3
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


module p7r3(
    input D, G,
    output Q, Qn
    );
    
    wire Q_int, Qn_int, S, R, D_inv;
    
    assign #1 D_inv = ~D;
    assign #1 S = ~(D & G);
    assign #1 R = ~(D_inv & G);
    assign #1 Q_int = ~(S & Qn_int);
    assign #1 Qn_int = ~(R & Q_int); 
    assign Q = Q_int;
    assign Qn = Qn_int;  
    
endmodule

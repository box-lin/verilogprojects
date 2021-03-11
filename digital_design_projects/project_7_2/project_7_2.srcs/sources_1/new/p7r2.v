`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/30 13:43:56
// Design Name: 
// Module Name: p7r2
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


module p7r2(

    input S,
    input R,
    output Q,
    output Qn
    );
    
    wire Q_int, Qn_int;
   

    assign #1 Q_int = ~(S|Qn_int);
    assign #1 Qn_int = ~(R|Q_int);
    assign Q = Q_int;
    assign Qn = Qn_int;

endmodule

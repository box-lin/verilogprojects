`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/16 14:10:58
// Design Name: 
// Module Name: p5r1_mux
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


module p5r1_mux(
    I0,I1,I2,I3,I4,I5,I6,I7,S0,S1,S2,Y
    );
    input I0,I1,I2,I3,I4,I5,I6,I7,S0,S1,S2;
    output reg Y;
    
    always @ (S0,S1,S2,I0,I1,I2,I3,I4,I5,I6,I7)
    begin
        if (S2 == 0 & S1 == 0 & S0 == 0)
              Y = I0;
        else if (S2 == 0 & S1 == 0 & S0 == 1)
              Y = I1;
        else if (S2 == 0 & S1 == 1 & S0 == 0)
              Y = I2;
        else if (S2 == 0 & S1 == 1 & S0 == 1)
              Y = I3;
        else if (S2 == 1 & S1 == 0 & S0 == 0)
              Y = I4;
        else if (S2 == 1 & S1 == 0 & S0 == 1)
              Y = I5;
        else if (S2 == 1 & S1 == 1 & S0 == 0)
              Y = I6;
        else 
              Y = I7;
    end   
endmodule

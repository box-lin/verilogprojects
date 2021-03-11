`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/16 14:55:29
// Design Name: 
// Module Name: p5r1_demux
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


module p5r1_demux(

    En, I0, I1,I2, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7
    );
    
    input En, I0, I1,I2;
    output reg Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;
    
    always @ (I0,I1,I2,En)
    begin
    {Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7} = 8'd0;
    
        if(En == 1)
            if(I2 == 0 & I1 == 0 & I0 == 0)
                Y0 = 1;
            else if (I2 == 0 & I1 == 0 & I0 == 1)
                Y1 = 1;
            else if (I2 == 0 & I1 == 1 & I0 == 0)
                Y2 = 1;
            else if (I2 == 0 & I1 ==1 & I0 == 1)
                Y3 = 1;
            else if (I2 == 1 & I1 == 0 & I0 == 0)
                Y4 = 1;
            else if (I2 == 1 & I1 == 0 & I0 == 1)
                Y5 = 1;
            else if (I2 == 1 & I1 == 1 & I0 == 0)
                Y6 = 1;   
            else
                Y7 = 1;
    end
endmodule

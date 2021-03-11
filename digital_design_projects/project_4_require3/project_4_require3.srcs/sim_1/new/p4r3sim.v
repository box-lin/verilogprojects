`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/13 15:44:12
// Design Name: 
// Module Name: p4r3sim
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


module p4r3sim;

    reg[3:0] I;
    reg Ein;
    wire [1:0] Y;
    wire GS;
    wire Eout;
    
    p4r3 cut(
        .I(I),
        .Ein(Ein),
        .Y(Y),
        .GS(GS),
        .Eout(Eout)
        );
        
    integer k;
    integer j;
    
    initial 
    begin
        I = 0;
        Ein = 0;
        
        for(j=0;j<2;j=j+1)begin
             #5 Ein = j;
             for(k=0; k<16;k=k+1)begin
                 #5 I = k;
             end 
        end
        
        #5 $finish;
   end
   
endmodule

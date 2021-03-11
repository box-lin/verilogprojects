`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/14 15:02:31
// Design Name: 
// Module Name: p4c1sim
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


module p4c1sim;
    reg [1:0] Sel;
    reg [1:0] I;
    wire Y;
    
    p4c1 cut(
    .Sel(Sel),
    .I(I),
    .Y(Y)
    );
    
    integer k,j;
    
    initial
    begin
        for(k=0;k<4;k=k+1)begin
            #20 Sel = k;
            for(j=0;j<4;j=j+1)begin
                #20 I = j;
            end
        end
        #20 $finish;
    end
                
endmodule

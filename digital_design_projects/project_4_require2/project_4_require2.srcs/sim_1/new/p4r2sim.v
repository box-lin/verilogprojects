`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/14 12:07:16
// Design Name: 
// Module Name: p4r2sim
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


module p4r2sim;

    reg [1:0] I;
    reg [3:0] btn;
    wire [3:0] Y;
    
    p4r2 cut(
    .I(I),
    .btn(btn),
    .Y(Y)
    );
    
    integer k,j;
    
    initial 
    begin
        for(k=0;k<4;k=k+1)begin
            #10 I = k;
            for(j=0;j<16;j=j+1)begin
                #10 btn = j;
            end
        end
        #10 $finish;
   end
               
endmodule

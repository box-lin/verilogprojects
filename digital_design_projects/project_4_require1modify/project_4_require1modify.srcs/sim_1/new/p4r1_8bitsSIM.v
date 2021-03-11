`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/16 11:02:17
// Design Name: 
// Module Name: p4r1_8bitsSIM
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


module p4r1_8bitsSIM;
    reg [7:0] I;
    reg [2:0] Sel;
    wire [7:0] Y;
    
    p4r1_8bits cut(
    .I(I),
    .Sel(Sel),
    .Y(Y)
    );
    
    integer k;
    integer j;
    
    initial 
    begin 
   
           for(k=0;k<8;k=k+1)begin
               #0.1 Sel = k;
               for(j=1;j<256;j=j)begin
                #0.1 I = j;
               end
           end
           #0.1 $finish;
    end
   
endmodule

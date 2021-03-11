`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/14 11:31:44
// Design Name: 
// Module Name: p4r4sim
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


module p4r4sim;
    reg [7:0] I; 
    reg [1:0] A;
    reg F; 
    reg R; 
    reg D;    
    wire [7:0] Y;
    

p4r4 cut(
    .I(I),
    .A(A),
    .F(F),
    .R(R),
    .D(D),
    .Y(Y)
    );
    
    integer r,d,k,a;
    
    

    
    initial
    begin
    F=0;
    for(r=0;r<2;r=r+1)begin
        #0.1 R = r;
        for(d=0;d<2;d=d+1)begin
            #0.1 D = d;
             for(k=0;k<256;k=k+1)begin
                 # 0.1 I=k;
                 for(a=0;a<4;a=a+1)begin
                    #0.1 A =a;
                 end
             end
        end
     end
     #0.1 $finish;
     end
    
          

endmodule

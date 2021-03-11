`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/09 21:28:40
// Design Name: 
// Module Name: p4r1sim
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


module p4r1sim;

    reg I0,I1,I2,I3;
    reg [1:0] S;
    wire Y;

p4r1 mux(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .S(S),
    .Y(Y)
    );
    
    integer k;
    integer j;
 
   
    
    initial 
    begin
 
//    I0 = 0;
//    I1 = 1;
//    I2 = 0;
//    I3 = 1;
   
    for (k=0;k<4;k=k+1)begin
        #20 S = k;
        for(j=0;j<2;j=j+1)begin
          #20 I0 =j;
          #20 I1 =j;
          #20 I2 =j; 
          #20 I3 =j;
          end
    end
        

    
    #20 $finish;
    
    end
endmodule

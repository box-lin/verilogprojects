`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/08 16:49:34
// Design Name: 
// Module Name: p11_1SIM
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


module p11_1SIM;
    reg A,B,rst;
    reg clk;
    wire Cout, F;
  
    p11_1 cut(.A(A),.B(B),.clk(clk),.rst(rst),.F(F),.Cout(Cout));
    
    always begin
      #10 clk = ~clk;
    end;
    
    integer k;
    
initial
begin
    A=0;
    B=0; 
    clk = 0;    
    
        #5 rst = 1;
        #10 rst = 0;
    // S0 to S0
        #10 A=0;
            B=0;
    // S0 to S1
        #10 A=1;
            B=0;
    // S1 to S1
        #25 A=0;
            B=1;
    // S1 to S0
        #10 A=0;
            B=0;
    // S0 to S2
        #10 A=1;
            B=1;
    // S2 to S2;
        #10 A=1;
            B=0;
    // S2 to S1;
        #10 A=0;
            B=0;
    // S1 to S2
        #10 A=1;
            B=1;   
    // S2 to S3
        #10 A=1;
            B=1;
    // S3 to S3
        #10;
    // S3 to S2;
        #10 A=0;
            B=1;
    // S2 to S3
        #10 A=1;
            B=1;
    // S3 to S1
        #10 A=0;
            B=0;
    // Reset
        #10 rst=1;
            A=0;
            B=0;
        #10 rst=0;
    end
endmodule



    


    
    

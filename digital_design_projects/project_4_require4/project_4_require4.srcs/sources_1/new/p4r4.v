`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/13 16:07:59
// Design Name: 
// Module Name: p4r4
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


module p4r4(
    input [7:0] I,  
    input [1:0] A,
    input F, 
    input R, 
    input D,    
    output [7:0] Y   
    );

    reg [7:0] Y;
    integer k;
    always @ (I, A, D, R, F) begin
       Y=I;
       for(k = 0; k < A; k = k + 1)begin
       
            if(R==0) 
                Y = (D==0) ? ( {Y[6:0], F} )  : ( {F, Y[7:1]} );
            else 
                Y = (D==0) ? ( {Y[6:0], Y[7]} ) : ( {Y[0], Y[7:1]} );
        end   
    end           
    
endmodule


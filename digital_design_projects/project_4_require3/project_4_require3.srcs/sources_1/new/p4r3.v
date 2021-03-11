`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/13 14:10:25
// Design Name: 
// Module Name: p4r3
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


module p4r3(
    input [3:0] I,
    input Ein,
    output [1:0] Y,
    output GS,
    output Eout
    );
    
reg [1:0] Y;
reg GS;
reg Eout;


//y's
always @ (I, Ein)
begin
    if(Ein == 1)
        Y = (I[3] == 1) ? 2'd3 : (
                (I[2] == 1) ? 2'd2 : (
                    (I[1] == 1) ? 2'd1 : 2'd0
                )
            );
    else
        Y = 2'd0;
end

//eout
always @ (I, Ein)
begin
    if (Ein == 1 && I == 0)
        Eout = 1'b1;
    else
        Eout = 1'b0;
end


//gs
always @ (I, Ein)
begin
    if (Ein == 1 && I != 0)
        GS = 1'b1;
    else
        GS = 1'b0;
end


endmodule

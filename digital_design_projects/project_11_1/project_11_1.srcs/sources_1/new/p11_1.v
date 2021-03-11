`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/08 16:38:23
// Design Name: 
// Module Name: p11_1
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


module p11_1(
    input A,
    input B,
    output F,
    output Cout,
    input clk,
    input rst
    );
    
    localparam S0 = 2'b00;
    localparam S1 = 2'b01;
    localparam S2 = 2'b10;
    localparam S3 = 2'b11;

    reg [1:0] pState, nState;
    
    always @ (pState, A, B)
    begin
    case (pState)
        S0:begin
            if (A == 1'b0 && B == 1'b0)
                nState = S0;
            else if (A == 1'b1 && B == 1'b1)
                nState = S2;
            else
                nState = S1;
            end
        S1:
            if (A == 1'b0 && B == 1'b0)
                nState = S0;
            else if (A == 1'b1 && B == 1'b1)
                nState = S2;
            else
                nState = S1;
        S2:
            if (A == 1'b0 && B == 1'b0)
                nState = S1;
            else if (A == 1'b1 && B == 1'b1)
                nState = S3;
            else
                nState = S2;
        S3:
            if (A == 1'b0 && B == 1'b0)
                nState = S1	;
            else if (A == 1'b1 && B == 1'b1)
                nState = S3;
            else
                nState = S2;
        default:
            nState = S0;
    endcase
end

// State Registers
always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        pState <= S0;
    else
        pState <= nState;
end

// Output Logic
assign F = (pState == S1 || pState == S3) ? 1'b1 : 1'b0;
assign Cout = (pState == S2 || pState == S3) ? 1'b1 : 1'b0;

endmodule
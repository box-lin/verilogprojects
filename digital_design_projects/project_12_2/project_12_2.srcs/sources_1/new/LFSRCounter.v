`timescale 1ns / 1ps

module LFSRCounter(
    input start,
    input rst,
    input clk,
    input [15:0] randomNum,
    output reg enable
    );
    localparam S0 = 2'b00;
    localparam S1 = 2'b01;
    localparam S2 = 2'b10;
    reg [15:0] compare;
    reg [15:0] counter;
    reg [1:0] pState, nState;
    
    always @(pState) begin
    case(pState)
        S0 : nState = start ? S1 : S0;
        S1 : nState = ( counter >= compare) ? S2 : S1;
        S2 : nState = rst ? S0 : S2;
        default : nState = S0;
    endcase
    end
    
    always @(posedge(clk),posedge(rst)) begin
    pState <= (rst) ? S0 : nState;
    
    compare <= pState == S0 ? randomNum : compare;
    
    counter <= pState == S1 ? counter + 1 : 0;
    
    enable <= pState == S2 ? 1:0;
    
    end
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/13 13:40:05
// Design Name: 
// Module Name: Debouncer
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

    
module Debouncer(
    input button, clk_in, rst,
    output led
    );
    wire clk_out,Q1,Q2,Q2_bar;
    clk4Hz(clk_in,rst,clk_out);
    DFF d1(clk_out,button,rst,Q1);
    DFF d2(clk_out,Q1,rst, Q2);
    
    assign Q2_bar = ~Q2;
    assign led = Q1 & Q2_bar;
    
endmodule

module clk4Hz(input clk_in, input rst, output reg clk_out);
    reg [25:0] count = 0;
    always @(posedge clk_in, posedge rst)begin
        if(rst | count == 12500000)begin
            count<=0;
            clk_out = ~clk_out;
        end
        else count<= count+1;
    end  
    endmodule

module DFF(input clk, input D, input rst, output reg Q);
    always @(posedge clk, posedge rst)begin
        if(rst)
            Q<=0;
        else begin
            Q<=D;
        end
    end  
    endmodule
    


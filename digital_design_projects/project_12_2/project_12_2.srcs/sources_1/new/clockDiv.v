`timescale 1ns / 1ps

module clockDiv( 
    input clk_in,
    output reg clk_out
    );
    parameter DIVIDER = 10000;
    reg [25:0] count = 0;
    
    always @(posedge clk_in)
    begin
    count<=count+1;
    if (count== DIVIDER)
    begin
        count<=0;
        clk_out=~clk_out;
    end
    end
endmodule

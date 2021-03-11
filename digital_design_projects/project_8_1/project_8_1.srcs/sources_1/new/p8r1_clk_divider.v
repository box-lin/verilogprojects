`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/06 15:03:31
// Design Name: 
// Module Name: p8r1_clk_divider
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


module p8r1_clk_divider(
    input clk,
    input rst,
    output led
    );
    
    wire [26:0] din;
    wire [26:0] clkdiv;

p8r1_dff dff_inst0 (
    .CLK(clk),
    .RST(rst),
    .D(din[0]),
    .Q(clkdiv[0])
);

    genvar i;
    generate
    for (i = 1; i < 27; i=i+1)
    begin : dff_gen_label
        p8r1_dff dff_inst (
            .CLK(clkdiv[i-1]),
            .RST(rst),
            .D(din[i]),
            .Q(clkdiv[i])
    );
    end
    endgenerate

    assign din = ~clkdiv;
    assign led = clkdiv[26];

endmodule

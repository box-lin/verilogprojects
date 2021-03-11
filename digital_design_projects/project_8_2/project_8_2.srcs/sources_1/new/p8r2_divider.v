`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/06 18:41:06
// Design Name: 
// Module Name: p8r2_divider
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


module p8r2_divider(
    input clk,
    input rst,
    output [3:0] led
    );

    wire [26:0] din;
    wire [26:0] clkdiv;

p8r2_dff dff_inst0 (
    .clk(clk),
    .rst(rst),
    .D(din[0]),
    .Q(clkdiv[0])
);

genvar i;
generate
for (i = 1; i < 27; i=i+1)
begin : dff_gen_label
    p8r2_dff dff_inst (
        .clk(clkdiv[i-1]),
        .rst(rst),
        .D(din[i]),
        .Q(clkdiv[i])
    );
    end
endgenerate

assign din = ~clkdiv;

p8r2_syn_counter(.clk(clkdiv[26]),.rst(rst),.counterout(led));

endmodule

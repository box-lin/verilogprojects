`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/09 14:30:55
// Design Name: 
// Module Name: Top
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


module Top(
    input clk,rst,
    output [6:0] led,
    output [3:0] seg_an
    );
    wire downgrade;
    wire [1:0] counter;
    wire [3:0] exist;
    wire [3:0] bcd0, bcd1,bcd2,bcd3;
    wire [3:0] mux_connect;
    
    Clk_divider converter1(.clk(clk),.rst(rst),.terminalcount(49999),.clk_div(downgrade));   
    BCD one(.clk(downgrade),.rst(rst),.bcd_digit(bcd0),.en(1),.tc(exist[0]));
    BCD two(.clk(downgrade),.rst(rst),.bcd_digit(bcd1),.en(exist[0]),.tc(exist[1]));
    BCD three(.clk(downgrade),.rst(rst),.bcd_digit(bcd2),.en(exist[1]&exist[0]),.tc(exist[2]));
    BCD four(.clk(downgrade),.rst(rst),.bcd_digit(bcd3),.en(exist[2]&exist[1]&exist[0]),.tc(exist[3]));
    Counter2bits(.clk(downgrade),.counterout(counter));
    Mux4_1(.I0(bcd0),.I1(bcd1),.I2(bcd2),.I3(bcd3),.Sel(counter),.Y(mux_connect));
    Seg_decoder(.sw(mux_connect),.rst(rst),.seg(led));
    Decoder2_4(.rst(rst),.I(counter),.Y(seg_an));
    
endmodule

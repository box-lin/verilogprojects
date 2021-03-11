`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/01 11:24:45
// Design Name: 
// Module Name: SDD
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


module SSD(
    input [15:0] b,
    input clk,
    output [7:0] seg,
    output [3:0] segan
    );
    
    wire [3:0] MuxConnect;
    wire [1:0] sel;
    wire clkPass;
    
    clkdiv(.clk(clk),.rst(rst),.clk_div(clkPass),.terminalcount(199999));
    counter(.clk(clkPass),.out(sel));
    encoder2_4(.I(sel),.out(segan));
    ssdDecoder(.I(MuxConnect),.rst(rst),.seg(seg));
    mux4_1(.I3(b[15:12]),.I2(b[11:8]),.I1(b[7:4]),.I0(b[3:0]),.out(MuxConnect),.sel(sel));
    
endmodule



module counter(
    input clk, 
    output reg [1:0] out
    );
    always@(posedge clk) begin
    out = out +1;
    end endmodule


module encoder2_4(
    input [1:0] I,
    output reg [3:0] out
    );
    
    always@* 
    begin
    case(I)
        2'b00:  out = 4'b1110;
        2'b01:  out = 4'b1101;
        2'b10:  out = 4'b1011;
        2'b11:  out = 4'b0111;
        default : out = 4'b1111;
    endcase
    end
endmodule


module mux4_1(
    input [3:0] I0,
    input [3:0] I1,
    input [3:0] I2,
    input [3:0] I3,
    input [1:0] sel,
    output reg [3:0] out
    );
   always@*
   case (sel)
        2'b00: out = I0;
        2'b01: out = I1;
        2'b10: out = I2;
        2'b11: out = I3;
    endcase
endmodule


module ssdDecoder(
    input [3:0] I,
    input rst,
    output reg [7:0] seg
    );
    
always @*
begin
if (rst)
    seg = 8'b11111111;
else
case (I)      
       4'b0000:  seg = 8'b11000000;  
       4'b0001:  seg = 8'b11111001;  
       4'b0010:  seg = 8'b10100100;  
       4'b0011:  seg = 8'b10110000;  
       4'b0100:  seg = 8'b10011001;  
       4'b0101:  seg = 8'b10010010;  
       4'b0110:  seg = 8'b10000010;  
       4'b0111:  seg = 8'b11111000;  
       4'b1000:  seg = 8'b10000000;  
       4'b1001:  seg = 8'b10010000;  
       4'b1010:  seg = 8'b10001000;  
       4'b1011:  seg = 8'b10000011;  
       4'b1100:  seg = 8'b11000110;  
       4'b1101:  seg = 8'b10100001;  
       4'b1110:  seg = 8'b10000110;  
       4'b1111:  seg = 8'b10001110;  
endcase
end
endmodule


module clkdiv (
    input clk, rst,
    output reg clk_div,
    input [15:0] terminalcount
    );
	

reg [15:0] count;
wire tc;

assign tc = (count == terminalcount);	// Place a comparator on the counter output

always @ (posedge(clk), posedge(rst))
begin
    if (rst) count <= 0;
    else if (tc) count <= 0;		// Reset counter when terminal count reached
    else count <= count + 1;
end

always @ (posedge(clk), posedge(rst))
begin
    if (rst) clk_div <= 0;
    else if (tc) clk_div = !clk_div;	// T-FF with tc as input signal
end
endmodule




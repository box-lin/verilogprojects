`timescale 1ns / 1ps

module CLKDIV (
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

module Encoder2to4(
    input [1:0] IN,
    output reg [3:0] OUT
    );
    
    always@* 
    begin
    case(IN)
        2'b00:  OUT = 4'b1110;
        2'b01:  OUT = 4'b1101;
        2'b10:  OUT = 4'b1011;
        2'b11:  OUT = 4'b0111;
        default : OUT = 4'b1111;
    endcase
    end
endmodule

module MUX4TO1(
    input [3:0] IN0,
    input [3:0] IN1,
    input [3:0] IN2,
    input [3:0] IN3,
    input [1:0] sel,
    output reg [3:0] OUT
    );
   always@*
   case (sel)
        2'b00: OUT = IN0;
        2'b01: OUT = IN1;
        2'b10: OUT = IN2;
        2'b11: OUT = IN3;
    endcase
endmodule

module counter(input clk, output reg [1:0] OUT);
    always@(posedge clk) begin
    OUT = OUT +1;
    end 
endmodule

module ssdDecoder(
    input [3:0] inCat,
    input rst,
    output reg [7:0] cat
    );
    
always @*
begin
if (rst)
    cat = 8'b11111111;
else
case (inCat)    //           DPGFEDCBA  
       4'b0000:  cat = 8'b11000000;  // 0
       4'b0001:  cat = 8'b11111001;  // 1
       4'b0010:  cat = 8'b10100100;  // 2
       4'b0011:  cat = 8'b10110000;  // 3
       4'b0100:  cat = 8'b10011001;  // 4
       4'b0101:  cat = 8'b10010010;  // 5
       4'b0110:  cat = 8'b10000010;  // 6
       4'b0111:  cat = 8'b11111000;  // 7
       4'b1000:  cat = 8'b10000000;  // 8
       4'b1001:  cat = 8'b10010000;  // 9
       4'b1010:  cat = 8'b10001000;  // A
       4'b1011:  cat = 8'b10000011;  // B
       4'b1100:  cat = 8'b11000110;  // C
       4'b1101:  cat = 8'b10100001;  // D
       4'b1110:  cat = 8'b10000110;  // E
       4'b1111:  cat = 8'b10001110;  // F
endcase
end
endmodule

module SSDWrapper(
    input [15:0] binary,
    input CLK,
    output [7:0] Cathodes,
    output [3:0] Anodes
    );
    
    wire [3:0] MUX2SSDDEC;
    wire [1:0] Select;
    wire counterClk;
    
    CLKDIV kiloclock(.clk(CLK),.rst(rst),.clk_div(counterClk),.terminalcount(199999));
    counter counter(.clk(counterClk),.OUT(Select));
    Encoder2to4 SSDAnodes(.IN(Select),.OUT(Anodes));
    MUX4TO1 MUX(.IN3(binary[15:12]),.IN2(binary[11:8]),.IN1(binary[7:4]),.IN0(binary[3:0]),.OUT(MUX2SSDDEC),.sel(Select));
    ssdDecoder SSDDEC(.inCat(MUX2SSDDEC),.rst(rst),.cat(Cathodes));
    
endmodule


`timescale 1ns / 1ps

// wrapper module
module wrapper(
    input clk,
    input rst,
    output [7:0] led,
    output [3:0] SegmentAnode
    );

    wire oneHzout;
    wire onekiloHzout;
    wire CEN;
    wire [3:0] TCout;
    wire [3:0] BCD0out;
    wire [3:0] BCD1out;
    wire [3:0] BCD2out;
    wire [3:0] BCD3out;
    wire [3:0] MUXout;
    wire [1:0] counterWire;
 
// ones digit   
BCD BCD0(.CEN(1),.RST(rst),.CLK(CEN),.B(BCD0out),.TC(TCout[0]));
// tens digit
BCD BCD1(.CEN(TCout[0]),.RST(rst),.CLK(CEN),.B(BCD1out),.TC(TCout[1]));
// hundreds digit
BCD BCD2(.CEN(TCout[0] & TCout[1]),.RST(rst),.CLK(CEN),.B(BCD2out),.TC(TCout[2]));
//thousand digit
BCD BCD3(.CEN(TCout[0] & TCout[1] & TCout[2]),.RST(rst),.CLK(CEN),.B(BCD3out),.TC(TCout[3]));
// digit selector 
MUX MUX(.IN0(BCD0out),.IN1(BCD1out),.IN2(BCD2out),.IN3(BCD3out),.OUT(MUXout),.SEL(counterWire));
// 100MHz to 1kHz clock divider
ClkDivider onehundMtoonekilo(.clk(clk),.rst(rst),.clk_div(onekiloHzout),.terminalcount(49999)); 
// 1kHz to 1Hz
ClkDivider onekilotoonehz(.clk(onekiloHzout),.rst(rst),.clk_div(oneHzout),.terminalcount(1));
// 1kHz to 250Hz
ClkDivider digitcounter(.clk(clk),.rst(rst),.clk_div(CEN),.terminalcount(49999));
// 2-bit counter
twobitcounter dispclk(.CLK(onekiloHzout),.OUT(counterWire));
// Seven Segment Decoder
ssdDecoder cathode(.rst(rst),.inCat(MUXout),.cat(led));
// Anode selector
twotofourdecoder anode(.RST(rst),.IN(counterWire),.OUT(SegmentAnode));



endmodule


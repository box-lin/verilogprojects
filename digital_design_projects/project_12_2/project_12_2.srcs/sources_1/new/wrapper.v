`timescale 1ns / 1ps

module county(
    input clk,
    input rst,
    input enable,
    output reg [13:0] count
    );
    always @(posedge clk,posedge rst) begin
    if(rst)
        count = 0;
    else if (enable)
        count = count+1;
    end
endmodule

module wrapper(
    input start,
    input rst,
    input clk,
    output led,
    output [3:0] SegAn,
    output [7:0] SegKa
    );
    wire slowClk,kiloclock;
    wire [15:0] randomNum;
    wire [15:0] countedTime;
    wire [13:0] binaryNumber;
    
    clockDiv  #(.DIVIDER(6250)) slowClock(clk,slowClk);
    
    clockDiv  #(.DIVIDER(50000)) kilocount(clk,kiloclock);
    
    LFSR PRand(clk,rst,randomNum);
    LFSRCounter counter(start,rst,slowClk,randomNum,led);
    
    county(kiloclock,rst,led,binaryNumber);
    binary2BCD(binaryNumber,countedTime[15:12],countedTime[11:8],countedTime[7:4],countedTime[3:0]);
    
    SSDWrapper Display(countedTime,clk,SegKa,SegAn);
    
endmodule

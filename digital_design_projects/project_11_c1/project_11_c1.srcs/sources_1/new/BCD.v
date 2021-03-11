`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/09 13:05:44
// Design Name: 
// Module Name: BCD
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

module BCD(
    input clk,rst,en,sw,
    output tcWatch,tcTimer,
    output reg [3:0] bcd_digit,
    output reg [3:0] timerdigit
    );

always @ (posedge(clk), posedge(rst))
begin
if(~sw)begin
    if (rst) bcd_digit <= 0;
         else if (en) begin
                 if(bcd_digit == 4'b1001)begin
                        bcd_digit = 4'b0000;
                 end
                 else begin bcd_digit = bcd_digit + 1;
                 end 
         end 
      
end

else begin
     if (rst) timerdigit <= 4'b1001;
         else if (en) begin
                 if(timerdigit == 4'b0000)begin
                        timerdigit = 4'b1001;
                 end
                 else begin timerdigit = timerdigit - 1;
                 end 
         end
end
end 
     assign tcWatch = (bcd_digit == 4'b1001)? 1:0;     
     assign tcTimer = (timerdigit == 4'b0000)? 1:0;
     
endmodule


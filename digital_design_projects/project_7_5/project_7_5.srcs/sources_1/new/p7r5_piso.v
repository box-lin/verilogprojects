`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/31 21:42:08
// Design Name: 
// Module Name: p7r5_piso
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


module p7r5_piso(
    input [7:0] I,
    input CLK,RST,Iconnect,
    input btn,
    output [7:0] Y,
    output Oconnect
    );
    
    wire [7:0] Yout; wire[7:0] Iin;
 
   p7r5_DFf Block0(.CLK(CLK),.RST(RST),.D(Iin[0]),.Q(Yout[0]));
   p7r5_DFf Block1(.CLK(CLK),.RST(RST),.D(Iin[1]),.Q(Yout[1]));
   p7r5_DFf Block2(.CLK(CLK),.RST(RST),.D(Iin[2]),.Q(Yout[2]));
   p7r5_DFf Block3(.CLK(CLK),.RST(RST),.D(Iin[3]),.Q(Yout[3]));
   p7r5_DFf Block4(.CLK(CLK),.RST(RST),.D(Iin[4]),.Q(Yout[4]));
   p7r5_DFf Block5(.CLK(CLK),.RST(RST),.D(Iin[5]),.Q(Yout[5]));
   p7r5_DFf Block6(.CLK(CLK),.RST(RST),.D(Iin[6]),.Q(Yout[6]));
   p7r5_DFf Block7(.CLK(CLK),.RST(RST),.D(Iin[7]),.Q(Yout[7]));
   
    assign Iin = btn ? I : {Y[6:0],Iconnect};                      
    assign Y = Yout;          
    assign Oconnect = Yout[7];
   
endmodule

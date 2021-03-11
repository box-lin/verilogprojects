`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 16:13:32
// Design Name: 
// Module Name: p7r6_sipo
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


module p7r6_sipo(
    input Iconnect,CLK,RST,
    output [7:0] Y
    );
    wire [7:0] load;
    p7r6_DFf block0 (.CLK(CLK),.RST(RST),.D(Iconnect),.Q(load[0]));
    p7r6_DFf block1 (.CLK(CLK),.RST(RST),.D(load[0]),.Q(load[1]));
    p7r6_DFf block2 (.CLK(CLK),.RST(RST),.D(load[1]),.Q(load[2]));
    p7r6_DFf block3 (.CLK(CLK),.RST(RST),.D(load[2]),.Q(load[3]));
    p7r6_DFf block4 (.CLK(CLK),.RST(RST),.D(load[3]),.Q(load[4]));
    p7r6_DFf block5 (.CLK(CLK),.RST(RST),.D(load[4]),.Q(load[5]));
    p7r6_DFf block6 (.CLK(CLK),.RST(RST),.D(load[5]),.Q(load[6]));
    p7r6_DFf block7 (.CLK(CLK),.RST(RST),.D(load[6]),.Q(load[7]));
    assign Y = load;
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/16 10:20:49
// Design Name: 
// Module Name: p4r1_8bits
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


module p4r1_8bits(
    //for a 8 bits of input we chose 0 to 7 sw;
    //btns 0,1,2 be be the multiplexor 
    //and out put 8 bits to be led 0 to 7
    input [7:0] I,
    input [2:0] Sel,
    output [7:0] Y
    );
    
    reg [7:0] Y;


    always @ (Sel, I)
    begin
      case (Sel)
        3'b000:
              Y[0] = I[0];
        3'b001:
              Y[1] = I[1];
        3'b010:
              Y[2] = I[2];
        3'b011:
              Y[3] = I[3];
        3'b100:
              Y[4] = I[4];
        3'b101:
              Y[5] = I[5];
        3'b110:
              Y[6] = I[6];
        3'b111:
              Y[7] = I[7];   
        default:
              Y = 2'd0;
    endcase
end
    
endmodule

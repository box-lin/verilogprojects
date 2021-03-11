`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/26 17:38:05
// Design Name: 
// Module Name: p3require3sim
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

module p3require3sim;

    reg [7:0] sw;
    wire led;
    
    p3require3 cut (
        .sw(sw),
        .led(led)
     );
     
     integer k;
     
     initial
     begin
        
        sw = 0;
        
        for(k=0; k<256; k=k+1)
            #2.5 sw = k;
            
        #2.5 $finish;
      end 
      
endmodule

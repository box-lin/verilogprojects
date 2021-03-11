`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/16 16:06:58
// Design Name: 
// Module Name: p2_require4
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


module p2_require4(
    //coolantLow = sw[0]
    //coolantTEMPhigh = sw[1]
    //oilLow = sw[2]
    //oilTEMPhigh = sw[3]
    input coolantLow, coolantTEMPhigh, oilLow, oilTEMPhigh,
    
    //yellowWarning = led[10]
    //redWarning = led[11]
    output redtoYellow,greentoYellow, redWarning
    
    );
    
    //pos
    assign redtoYellow = (coolantLow | coolantTEMPhigh | oilLow | oilTEMPhigh) & (coolantLow | coolantTEMPhigh | ~oilLow | ~oilTEMPhigh) &
                         (coolantLow | ~coolantTEMPhigh | oilLow | oilTEMPhigh) & (~coolantLow | coolantTEMPhigh | ~oilLow | oilTEMPhigh) &
                         (~coolantLow | ~coolantTEMPhigh | ~oilLow | oilTEMPhigh) & (~coolantLow | ~coolantTEMPhigh | oilLow | oilTEMPhigh);
     
    assign greentoYellow = redtoYellow;                     
    
    //sop                        
    assign redWarning = (~coolantLow & ~coolantTEMPhigh & oilLow & oilTEMPhigh) | (~coolantLow & coolantTEMPhigh & ~oilLow & oilTEMPhigh) |
                        (~coolantLow & coolantTEMPhigh & oilLow & oilTEMPhigh) | (coolantLow & coolantTEMPhigh & ~oilLow & ~oilTEMPhigh) |
                        (coolantLow & coolantTEMPhigh & ~oilLow & oilTEMPhigh) | (coolantLow & coolantTEMPhigh & oilLow & ~oilTEMPhigh)|
                        (coolantLow & coolantTEMPhigh & oilLow & oilTEMPhigh);
    
 
    
endmodule

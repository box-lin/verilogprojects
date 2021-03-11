module p5c1_mux (
    input S,
    input [3:0] swP0,
    input [7:4] swP1,
    output reg [3:0] sw
    );
    
    always @ (S,swP0,swP1)
    begin
        case (S)
            1'd1:
                sw = swP1;
            default: 
                sw = swP0;
        endcase
   end
endmodule
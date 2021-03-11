`timescale 1ns / 1ps



module p7r1SIM;

    reg S;
    reg R;
    wire Q;
    wire Qn;

    p7r1 cut(
    .S(S),
    .R(R),
    .Q(Q),
    .Qn(Qn)
    );
    
    initial 
    begin
    S = 1;
    R = 1;

 
    #100 S = 0;
    #100 S = 1;
    #100 R = 0;
    #100 R = 1;
    #100 S = 0;
         R = 0;
    #100 S = 1;
         R = 1;
    #100 S = 0;
         R = 0;
    #100 ;
end   

endmodule

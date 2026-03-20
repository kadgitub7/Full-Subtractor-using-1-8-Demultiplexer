`timescale 1ns / 1ps

module fullSub_tb();

    reg I,S0,S1,S2;
    wire D,Bo;
    
    fullSub uut(I,S0,S1,S2,D,Bo);
    integer i;
    initial begin
        for(i=0;i<8;i=i+1)begin
            {S2,S1,S0} = i;
            I = 1'b1;
            #10 $display("I = %b, S2 = %b, S1 = %b, S0 = %b, D = %b, Bo = %b", I,S2,S1,S0,D,Bo);
            I = 1'b0;
            #10 $display("I = %b, S2 = %b, S1 = %b, S0 = %b, D = %b, Bo = %b", I,S2,S1,S0,D,Bo);
        end
    end
    
endmodule

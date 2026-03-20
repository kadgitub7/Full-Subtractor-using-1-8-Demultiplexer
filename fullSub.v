`timescale 1ns / 1ps

module fullSub(
    input I,
    input S0,
    input S1,
    input S2,
    output D,
    output Bo
    );
    wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;
    
    eightOneDeMultiplexer(1'b1, S2,S1,S0,I,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
    
    assign D = Y1 | Y2 | Y4 | Y7;
    assign Bo = Y1 | Y2 | Y3 | Y7;
    
endmodule

`timescale 1ns / 1ps

module eightOneDeMultiplexer(
    input E,
    input S2,
    input S1,
    input S0,
    input I,
    output Y0,
    output Y1,
    output Y2,
    output Y3,
    output Y4,
    output Y5,
    output Y6,
    output Y7
    );
    
    assign Y0 = E & (~S2 & ~S1 & ~S0) & I;
    assign Y1 = E & (~S2 & ~S1 & S0) & I;
    assign Y2 = E & (~S2 & S1 & ~S0) & I;
    assign Y3 = E & (~S2 & S1 & S0) & I;
    assign Y4 = E & (S2 & ~S1 & ~S0) & I;
    assign Y5 = E & (S2 & ~S1 & S0) & I;
    assign Y6 = E & (S2 & S1 & ~S0) & I;
    assign Y7 = E & (S2 & S1 & S0) & I;
    
endmodule
`timescale 1ns / 1ps

// Parth Nikam | E&TC - B3 | 20070123120

module HA(
    input a1,
    input b1,
    output s1,
    output c1
    );
    xor(s1,a1,b1);
    and(c1,a1,b1);
endmodule

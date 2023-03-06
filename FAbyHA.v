`timescale 1ns / 1ps

// Parth Nikam | E&TC - B3 | 20070123120

module FAbyHA(
    input a,
    input b,
    input cin,
    output sum,
    output carry
    );
    wire s1, c1, c2;
    HA A1(a,b,s1,c1);
    HA A2(s1,cin,sum,c2);
    or(carry,c1,c2);
endmodule

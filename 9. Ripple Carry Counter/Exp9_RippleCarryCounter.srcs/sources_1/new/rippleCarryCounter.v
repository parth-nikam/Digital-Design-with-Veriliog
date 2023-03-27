`timescale 1ns / 1ps

//Parth Nikam | E&TC - B3 | 20070123120

module rippleCarryCounter(
q, clk, reset);
output [3:0] q;
input clk, reset;

TFlipFlop tff0(q[0],clk, reset);
TFlipFlop tff1(q[1],q[0], reset);
TFlipFlop tff2(q[2],q[1], reset);
TFlipFlop tff3(q[3],q[2], reset);

endmodule


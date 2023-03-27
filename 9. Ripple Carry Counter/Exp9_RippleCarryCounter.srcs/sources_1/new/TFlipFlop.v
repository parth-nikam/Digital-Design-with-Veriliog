`timescale 1ns / 1ps

//Parth Nikam | E&TC - B3 | 20070123120


module TFlipFlop(q, clk, reset);
output q;
input clk, reset;
wire d;

DFlipFlop dff0(q, d, clk, reset);
not n1(d, q);
endmodule

`timescale 1ns / 1ps

//Parth Nikam | E&TC - B3 | 20070123120

module DFlipFlop(q, d, clk,reset);
output q;
input d, clk, reset;
reg q;

always @(posedge reset or negedge clk)
if (reset)
q <= 1'b0;
else
q <= d;

endmodule
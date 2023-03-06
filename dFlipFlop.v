`timescale 1ns / 1ps
// Parth Nikam | 20070123120 | E&TC - B3


module dFlipFlop(
    input D,
    input reset,
    input clk,
    output reg Q
    );
    
    always @(posedge clk)
    if(reset ==1)
        Q <= 0;
    else
        Q <=D;
endmodule

module testbench;

reg D, clk;
wire Q;

d_ff dff(D, clk, Q);

initial begin
    clk = 0;    
    forever #10 clk = ~clk;
end
endmodule

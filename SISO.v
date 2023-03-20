`timescale 1ns / 1ps
//Parth Nikam | 20070123120 | E&TC - B3
module SISO(clk,reset,si,so);
input si, clk, reset;
output reg so;
    reg [3:0] shiftReg;
    always @(posedge clk) begin
        if (reset) 
            shiftReg <= 4'b0000;
        else 
            shiftReg <= shiftReg<<1;
            shiftReg[0] <=si;
        so = shiftReg[3];
     end
endmodule

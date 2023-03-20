`timescale 1ns / 1ps
//Parth Nikam | 20070123120 | E&TC - B3
module SISO_tb();
    reg clk, reset, si;
    wire so;
    
    SISO dut(clk, reset, si, so);
    
    initial begin
        clk = 0;
        reset = 1;
        si = 0;
        #8 reset = 0;
        #8 si = 1;
        #8 si = 0;
        #8 si = 1;
        #8 si = 0;
        #8 $finish;
    end
    
    always #2 clk = ~clk;
    
    // Monitor to display input and output values during simulation
    initial begin
        $display("time si so");
        $monitor("%d %b %b", $time, si, so);
    end
    
    initial begin
        $dumpfile("SISO_tb.vcd");
        $dumpvars(0, SISO_tb);
    end
    
endmodule

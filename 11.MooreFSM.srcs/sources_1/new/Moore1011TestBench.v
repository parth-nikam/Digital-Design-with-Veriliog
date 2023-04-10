`timescale 1ns / 1ps
//Parth Nikam | 20070123120 | E&TC - B3
module testbench();
reg clk;
reg reset;
reg din;
wire y;

moore1010 dut (.din(din), .reset(reset), .clk(clk), .y(y));

initial begin
    clk = 0;
    reset = 1;
    din = 0;
    #10 reset = 0;
end

always begin
    #5 clk = ~clk;
end

always @(posedge clk) begin
    $display("At time %0t, din = %b, y = %b", $time, din, y);
end

initial begin
    #7 din = ~din;
//    #5 din = 0;
//    #5 din = 1;
//    #5 din = 1;
//    #5 din = 0;
//    #5 din = 1;
//    #5 din = 1;
//    #5 din = 0;
//    #5 $finish;
end

endmodule

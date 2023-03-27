`timescale 1ns / 1ps

//Parth Nikam | E&TC - B3 | 20070123120

module rippleCarryCounterTestBench();

reg clk, reset;
wire [3:0] q;


rippleCarryCounter uut(
  .q(q),
  .clk(clk),
  .reset(reset)
);

initial begin
  clk = 0;
  reset = 1;
  #10 reset = 0;
end

always #10 clk = ~clk;

always @(posedge clk) begin
  $display("q = %b", q);
end

endmodule

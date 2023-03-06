//Parth Nikam | 20070123120 | E&TC - B3
`timescale 1ns / 1ps

module Counter(
    input clk,
    input reset,
    input UpOrDown,
    output reg [3:0] count = 0
    );

always @(posedge clk) begin
    if (reset == 1) begin
        count <=4'b0000;
    end else if (UpOrDown == 1) begin
        count <= count +1;
    end else begin
        count <= count -1;
    end
end    
   
endmodule

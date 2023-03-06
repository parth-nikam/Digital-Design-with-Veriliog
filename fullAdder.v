`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2023 19:55:20
// Design Name: 
// Module Name: fullAdder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fullAdder(
    input X,
    input Y,
    input Cin,
    output A,
    output Cout
    );
    
    wire p, r, s;
    xor (p, X, Y);
    xor (A, p, Cin);
    and (r, p, Cin);
    and (s, X, Y);
    or (Cout, r, s);
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2023 20:08:30
// Design Name: 
// Module Name: exp1
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


module exp1(
    input a, b,
    output y, y1, y2, y3, y4, y5, y6
    );
    and a1(y,a,b);
    or a2(y1,a,b);
    nand a3(y2,a,b);
    nor a4(y3,a,b);
    xor a5(y4,a,b);
    xnor a6(y5,a,b);
    not a7(y6,a,b);
    
endmodule

//Parth Nikam | 20070123120 | E&TC - B3

`timescale 1ns / 1ps

module behavioralMux(
    input [7:0] i,
    input [2:0] s,
    output Y
    );
    reg Y;
        always@(s or i)
          case(s)
        3'b000: Y=i[0];
        3'b001: Y=i[1];
        3'b010: Y=i[2];
        3'b011: Y=i[3];
        3'b100: Y=i[4];
        3'b101: Y=i[5];
        3'b110: Y=i[6];
        3'b111: Y=i[7];
        endcase
endmodule

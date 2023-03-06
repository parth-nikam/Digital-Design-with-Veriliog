`timescale 1ns / 1ps


module dotOprtr(
    input a,
    input b,
    input cin,
    output sum,
    output carry
    );
    wire S1, C1, C2;
    //Instantiate the half adder 1
    dotHalfAdr ha1(.a(a),.b(b),.sum(sum),.carry(C1));
    //Instantiate the half adder 2
    dotHalfAdr ha2(.a(S1),.b(cin),.sum(sum),.carry(C2));
    or (carry, C1, C2);
endmodule

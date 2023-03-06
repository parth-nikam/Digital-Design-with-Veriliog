`timescale 1ns / 1ps


module dotHalfAdr(
    input a,
    input b,
    output sum,
    output carry
    );
    
    assign sum = a ^ b;//xor 
    assign carry = a & b;//and
endmodule

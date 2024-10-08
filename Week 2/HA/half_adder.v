module xor1(a,b,c);
    input a, b;
    output c;
    assign c = a ^ b;
endmodule

module and1(a,b,c);
    input a, b;
    output c;
    assign c = a & b;
endmodule

module half_adder(A, B, C, D);
    output C, D;
    input A, B;

    xor1 G1(A, B, D);
    and1 G2(A, B, C);
endmodule

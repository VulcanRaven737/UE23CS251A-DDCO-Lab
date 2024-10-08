module and2(a, b, c);
  input a, b;
  output c;
  assign c = a & b;
endmodule

module or2(a, b, c);
  input a, b;
  output c;
  assign c = a | b;
endmodule

module circuit_2(A, B, C, D);
  output D;
  input A, B, C;
  wire w1;
  
  and2 G1(B, C, w1);
  or2 G2(w1, A, D);
endmodule
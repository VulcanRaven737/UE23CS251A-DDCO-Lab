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

module not2(a, c);
  input a;
  output c;
  assign c = !a;
endmodule

module circuit_1(A, B, C, D, E);
  output D, E;
  input A, B, C;
  wire w1;
  
  and2 G1(A, B, w1);
  not2 G2(C, E);
  or2 G3(w1, E, D);
endmodule

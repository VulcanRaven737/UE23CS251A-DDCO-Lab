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

module circuit_3(A, B, C, D);
  output D;
  input A, B, C;
  wire w1;
  wire w2;
  wire w3;
  
  and2 G1(B, C, w1);
  and2 G2(B, A, w3);
  or2 G3(w1, A, w2);
  or2 G4(w2, w3, D);
endmodule
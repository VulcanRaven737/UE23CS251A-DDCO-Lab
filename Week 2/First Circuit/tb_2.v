module tb_circuit_2;

reg A,B,C;
wire D;

circuit_2 M2(A,B,C,D);

initial begin
#0 A=1'b0; B=1'b0; C=1'b0;
#20 A=1'b0; B=1'b0; C=1'b1;
#20 A=1'b0; B=1'b1; C=1'b0;
#20 A=1'b0; B=1'b1; C=1'b1;
#20 A=1'b1; B=1'b0; C=1'b0;
#20 A=1'b1; B=1'b0; C=1'b1;
#20 A=1'b1; B=1'b1; C=1'b0;
#20 A=1'b1; B=1'b1; C=1'b1;
end

initial begin
$monitor($time, "A=%b, B=%b, C=%b, D=%b", A, B, C, D);
end

initial begin
$dumpfile("circuit.vcd");
$dumpvars(0, M2);
end

endmodule

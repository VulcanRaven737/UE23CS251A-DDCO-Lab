module tb_circuit_1;

reg A,B,C;
wire D,E;

circuit_1 M1(A,B,C,D,E);

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
$monitor($time, "A=%b, B=%b, C=%b, D=%b, E=%b", A, B, C, D, E );
end

initial begin
$dumpfile("circuit.vcd");
$dumpvars(0, M1);
end

endmodule

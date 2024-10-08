module tb_circuit_3;

reg A,B;
wire C,D;

half_adder M3(A,B,C,D);

initial begin
#0 A=1'b0; B=1'b0;
#20 A=1'b0; B=1'b0;
#20 A=1'b0; B=1'b1;
#20 A=1'b0; B=1'b1; 
#20 A=1'b1; B=1'b0; 
#20 A=1'b1; B=1'b0; 
#20 A=1'b1; B=1'b1; 
#20 A=1'b1; B=1'b1; 
end

initial begin
$monitor($time, "A=%b, B=%b, C=%b, D=%b", A, B, C, D);
end

initial begin
$dumpfile("circuit.vcd");
$dumpvars(0, M3);
end

endmodule

/* testbench for NAND gate */
module nand_test;
reg a, b; // register a and b
wire y; // named container for values that are "stateless" (no memory)
nandgate nand_test(y,a,b);
// calling the function defined earlier and assigning it to and_test
initial // initialises a block
begin // begins block statements
#0 a=0; b=0;
#100 a=0; b=1;
#100 a=1; b=0;
#100 a=1; b=1;
#100 a=1; b=1;
end // ends block
initial
begin
$monitor($time, "a=%b, b=%b, y=%b", a, b, y); // display function
end
initial
begin
$dumpfile("nand_test.vcd");
$dumpvars(0, nand_test);
end
endmodule
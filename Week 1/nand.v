/* Simple NAND gate: */
module nandgate (y,a,b);
input a,b;
output y;
assign y = !(a&b); /* assign -> keyword that assigns value to op var */
endmodule
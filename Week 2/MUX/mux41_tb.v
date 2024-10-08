module tb_mux41;
reg I0,I1,I2,I3;
reg S1,S0;
wire out;

mux4_1 m1(out,I0,I1,I2,I3,S1,S0);

initial begin
// set data input lines
I0=1;I1=0;I2=1;I3=0;
#10 $monitor("I0=%b,I1=%b,I2=%b,I3=%b\n",I0,I1,I2,I3);
S1=0;S0=0;
#10 $display("S1=%b,S0=%b,output=%b\n",S1,S0,out);
S1=0;S0=1;
#10 $display("S1=%b,S0=%b,output=%b\n",S1,S0,out);
S1=1;S0=0;
#10 $display("S1=%b,S0=%b,out=%b\n",S1,S0,out);
S1=1;S0=1;
#10 $display("S1=%b,S0=%b,out=%b\n",S1,S0,out);
#20 $finish;
end

initial begin
 $dumpfile("mux_circuit.vcd");     
 $dumpvars(0,tb_mux41); 
 end   
endmodule 

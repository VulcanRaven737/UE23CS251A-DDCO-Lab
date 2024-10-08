`define TESTVECS 6

module tb;
  reg [2:0] i1;     // 3-bit input for i1
  reg y;            // 1-bit input for y
  reg y0;           // 1-bit input for y0 (handled separately in the test case)
  wire sum1, cout1; // Output wires
  
  reg [3:0] test_vecs [0:(`TESTVECS-1)];  // Corrected width to 4 bits (3 bits for i1 + 1 bit for y)
  integer i;
  
  // Dumpfile for waveform generation
  initial begin 
    $dumpfile("circuit_3.vcd");    
    $dumpvars(0, tb); 
  end
 
  // Initialize test vectors
  initial begin
    test_vecs[0] = 4'b0000;  // i1 = 000, y = 0
    test_vecs[1] = 4'b0001;  // i1 = 000, y = 1
    test_vecs[2] = 4'b0010;  // i1 = 001, y = 0
    test_vecs[3] = 4'b0011;  // i1 = 001, y = 1
    test_vecs[4] = 4'b0100;  // i1 = 010, y = 0
    test_vecs[5] = 4'b0101;  // i1 = 010, y = 1
  end

  // Initialize input signals
  initial {i1, y} = 0;

  // Instantiate the circuit3 module
  circuit3 circuit3_0 (i1, y, y0, sum1, cout1);

  // Test loop
  initial begin
    for(i = 0; i < `TESTVECS; i = i + 1) begin
      #10 {i1, y} = test_vecs[i]; // Assign test vector values to i1 and y
    end
  end
endmodule

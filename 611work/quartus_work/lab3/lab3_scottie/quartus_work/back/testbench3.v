module testbench3();

  reg clk, reset;
  reg a, b, c, yexpected;
  wire y;
  reg [31:0] vectornum, errors;    // bookkeeping variables
  reg [3:0] testvectors[10000:0]; // array oftestvectors
  // instantiate device under test
  // sillyfunctiondut(a, b, c, y);
  alu_reg dut(a, b, c, y);

  // generate clock
  // no sensitivity list, so it always executes
  always begin
    clk=1'b1; #5; clk=1'b0; #5;
  end

  // at start of test, load vectors
  // and pulse reset
  initial begin
    $readmemb("example.tv",testvectors);
    vectornum= 0; errors = 0;
    reset= 1'b1; #27; reset= 1'b0;
  end

  //Note: $readmemh reads test vector files written in
  //hexadecimal (as opposed to $readmemb in binary)
  // Can insert Verilog comments into file
  // Can also add addresses (use @ with hex address)

  // apply test vectors on rising edge ofclk
  always @(posedge clk) begin
    #1; {a, b, c,yexpected} =testvectors[vectornum];
  end

  // check results on falling edge of clk
  always @(negedge clk)
    if (~reset) begin // skip during reset
      if (y !== yexpected) begin
        $display("Error: inputs = %b", {a, b, c});
        $display("  outputs = %b (%b expected)",y,yexpected);
        errors = errors + 1;
      end
      // Note: to print in hexadecimal, use %h. For example,
      //       $display(“Error: inputs = %h”, {a, b, c});

      // increment array index and read next testvector
      vectornum= vectornum+ 1;
      if (testvectors[vectornum] === 4'bx) begin
        $display("%d tests completed with %d errors", vectornum, errors);
        $finish;
      end
   end
endmodule
// Note: === and !== can compare values that are
// x or z.



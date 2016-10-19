/********************************************************************
*  ALU Testbench Lab 2
*
*  Modified:  Mon Oct  3 18:34:13 EDT 2016
*
*  Alex Harmon
*  James Sager
*
********/

module testbench3( input CLOCK_50, output[17:0] LEDR );
  wire clk;
  wire reset;
  reg [31:0] a, b, hiexpected, loexpected;
  reg [3:0] op;
  reg [7:0] shamt;
  reg [3:0] zeroexpected;
  wire [31:0] hi, lo;
  wire zero;
  reg [31:0] vectornum, errors;    // bookkeeping variables
  reg [143:0] testvectors[50:0]; // array of testvectors

  assign LEDR = errors[17:0];

  // instantiate device under test
  alu dut(a, b, shamt, op, hi, lo, zero);

  // generate clock No sensitivity list, so it always executes
//  always begin
//    clk=1'b1; #5; clk= 1'b0; #5;
//  end
  assign clk = CLOCK_50;
  // at start of test, load vectors
  // and pulse reset
  initial begin
    $readmemh("addtests.tv", testvectors);
    vectornum= 0; errors = 0;
    //reset= 1'b1; #27; reset= 1'b0;
  end
assign reset = 1'b0;
  //Note: $readmemh reads test vector files written in
  //hexadecimal (as opposed to $readmemb in binary)
  // Can insert Verilog comments into file
  // Can also add addresses (use @ with hex address)

  // apply test vectors on rising edge of clk
//  always @(posedge clk) begin
//  end

  // check results on falling edge of clk
  always @(posedge clk) begin
  {a, b, shamt, op, hiexpected, loexpected, zeroexpected} <= testvectors[vectornum];
    if (~reset) begin // skip during reset
      if (hi != hiexpected) begin
        $display("____________________________________________________");
        $display("Error on line:    %-8d", {vectornum+1});
        $display("Line input:       %h", {a, b, shamt, op});
        $display("Hi Output:        %h", {hi});
        $display("Hi Expected:      %h", {hiexpected});
        errors = errors + 1;
      end
      if (lo != loexpected) begin
        $display("____________________________________________________");
        $display("Error on line:    %-8d", {vectornum+1});
        $display("Line input:       %h", {a, b, shamt, op});
        $display("Lo Output:        %h", {lo});
        $display("Lo Expected:      %h", {loexpected});
        errors = errors + 1;
      end
      if (zero != zeroexpected) begin
        $display("____________________________________________________");
        $display("Error on line:    %-8d", {vectornum+1});
        $display("Line input:       %h", {a, b, shamt, op});
        $display("Zero Output:      %h", {zero});
        $display("Zero Expected:    %h", {zeroexpected});
        errors = errors + 1;
      end
      // Note: to print in hexadecimal, use %h. For example,
      //       $display(“Error: inputs = %h”, {a, b, c});

      // increment array index and read next testvector
      vectornum = vectornum + 1;
      if (testvectors[vectornum] === 144'bx) begin
        $display("%d tests completed with %d errors", vectornum, errors);
        $finish;
      end
    end
   end
endmodule
// Note: === and !== can compare values that are
// x or z.

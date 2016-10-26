/*******************************************************************************
* testbench_regfile.v
*
* Lab 3 Top for Modelsim:
* Requires:
*   regfile.v
*   registertest.tv
*
* Alex Harmon and James Sager
* Fri Oct 14 14:20:48 EDT 2016
*******************************************************************************/

module testbench_regfile();

  reg clk, we, reset;
  reg [31:0] writedata, reg30_in;
  reg [7:0] readaddr1, readaddr2, writeaddr;
  wire [31:0] readdata1, readdata2, reg30_out;

  reg [31:0]  readdata1_expect,
              readdata2_expect,
              reg30_out_expect;

  reg [31:0] vectornum, errors;    // bookkeeping variables
  reg [183:0] testvectors[13:0]; // array of testvectors



  // instantiate device under test
  regfile dut(
    clk, we,
    readaddr1[4:0], readaddr2[4:0], writeaddr[4:0],
    writedata, reg30_in,
    readdata1, readdata2, reg30_out
  );

  // generate clock No sensitivity list, so it always executes
  always begin
    clk=1'b1; #5; clk= 1'b0; #5;
  end

  // at start of test, load vectors
  // and pulse reset
  initial begin
    $readmemh("registertest.tv", testvectors);
    vectornum= 0; errors = 0;
    reset= 1'b1; #27; reset= 1'b0; we=1'b1;
  end

  // Note: $readmemh reads test vector files written in
  // hexadecimal (as opposed to $readmemb in binary)
  // Can insert Verilog comments into file
  // Can also add addresses (use @ with hex address)

  // apply test vectors on rising edge of clk
  always @(posedge clk) begin #1; {
     writedata, reg30_in, readaddr1, readaddr2, writeaddr,
     readdata1_expect, readdata2_expect, reg30_out_expect
   } = testvectors[vectornum];
  end

  // check results on falling edge of clk
  always @(negedge clk)
    if (~reset) begin // skip during reset
      if (readdata1!== readdata1_expect) begin
        $display("____________________________________________________");
        $display("Error on line:       %-8d", {vectornum+1});
        $display("Line input:          %h", {writedata, reg30_in, readaddr1, readaddr2, writeaddr});
        $display("Data1 Output:        %h", {readdata1});
        $display("Data1 Expected:      %h", {readdata1_expect});
        errors = errors + 1;
      end
      if (readdata2 !== readdata2_expect) begin
        $display("____________________________________________________");
        $display("Error on line:       %-8d", {vectornum+1});
        $display("Line input:          %h", {writedata, reg30_in, readaddr1, readaddr2, writeaddr});
        $display("Data2 Output:        %h", {readdata2});
        $display("Data2 Expected:      %h", {readdata2_expect});
        errors = errors + 1;
      end
      if (reg30_out !== reg30_out_expect) begin
        $display("____________________________________________________");
        $display("Error on line:       %-8d", {vectornum+1});
        $display("Line input:          %h", {writedata, reg30_in, readaddr1, readaddr2, writeaddr});
        $display("Reg 30 Output:       %h", {reg30_out});
        $display("Reg 30 Expected:     %h", {reg30_out_expect});
        errors = errors + 1;
      end
      // Note: to print in hexadecimal, use %h. For example,
      //       $display(“Error: inputs = %h”, {a, b, c});

      // increment array index and read next testvector
      vectornum = vectornum + 1;
      if (testvectors[vectornum] === 184'bx) begin
        $display("%d tests completed with %d errors", vectornum, errors);
        $finish;
      end
   end
endmodule
// Note: === and !== can compare values that are
// x or z.

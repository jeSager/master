module testbench2();
  reg a, b, c;
  wire y;
  // instantiate device under test
  adder_reg dut(a, b, c, y);
  // apply inputs one at a time
  // checking results
  initial begin
    a = 1'b0; b = 1'b0; c = 1'b0; #10;
    if (y !== 1'b1) $display("000 failed.");
    c = 1'b1; #10;
    if (y !== 1'b0) $display("001 failed.");
    b = 1'b1; c = 1'b0; #10;
    if (y !== 1'b0) $display("010 failed.");
    c = 1'b1; #10;
    if (y !== 0) $display("011 failed.");
    a = 1'b1; b = 1'b0; c = 1'b0; #10;
    if (y !== 1'b1) $display("100 failed.");
    c = 1'b1; #10;
    if (y !== 1) $display("101 failed.");
    b = 1'b1; c = 1'b0; #10;
    if (y !== 1'b0) $display("110 failed.");
    c = 1'b1; #10;
    if (y !== 1'b0) $display("111 failed.");
  end
endmodule

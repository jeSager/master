module lab4_testbench ();

  reg clk_tb;
  reg rst_tb;
  reg [6:0] h0, h1, h2, h3, h4, h5, h6, h7;
  reg [48:0] line;

  initial begin rst_tb=1; #4; rst_tb=0; end
  always begin clk_tb=0; #5; clk_tb=1; #5; end

  lab4_cpu cpu (
    .clk_cpu(clk_tb), .rst_cpu(rst_tb), .sw_cpu(18'd15),
    .h0(h0), .h1(h1), .h2(h2), .h3(h3), .h4(h4), .h5(h5), .h6(h6), .h7(h7)
  );

  always @(posedge clk_tb) begin
    #1;
    { h0, h1, h2, h3, h4, h5, h6, h7 } = line;
    if( line == 'bx ) $finish;
    else $display("line %d", line);
  end

endmodule

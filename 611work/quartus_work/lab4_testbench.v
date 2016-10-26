module lab4_testbench ();
  reg clk_tb;
  reg rst_tb;
  wire [6:0] HEX0;
  wire [6:0] HEX1;
  wire [6:0] HEX2;
  wire [6:0] HEX3;
  wire [6:0] HEX4;
  wire [6:0] HEX5;
  wire [6:0] HEX6;
  wire [6:0] HEX7;

  initial begin rst_tb=1; #4; rst_tb=0; end

  always begin clk_tb=0; #5; clk_tb=1; #5; end

  system my_system (.clk(clk_tb), .rst(rst_tb),
      .HEX0(HEX0), .HEX1(HEX1), .HEX2(HEX2), .HEX3(HEX3),
      .HEX4(HEX4), .HEX5(HEX5), .HEX6(HEX6), .HEX7(HEX7), .SW(18'd15));

endmodule

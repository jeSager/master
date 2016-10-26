module lab4_de2 (
);

  // connect DE2 I/Os to CPU/mem/decoders
  reg CLOCK_50,
  reg [3:0] KEY

  always begin
    CLOCK_50 = 1'b0;
    #5;
    CLOCK_50 = 1'b1;
    #5;
  end

  initial begin
    KEY = 4'he;
    #10;
    KEY = 4'hf;
   end

  system my_system (.CLOCK_50(CLOCK_50), .KEY(KEY),
      .HEX0(HEX0), .HEX1(HEX1), .HEX2(HEX2), .HEX3(HEX3),
      .HEX4(HEX4), .HEX5(HEX5), .HEX6(HEX6), .HEX7(HEX7), .SW(18'd54));

endmodule

module lab4_testbench ();

reg clock;
reg reset;
wire [31:0] cpu_d1_out;
wire [31:0] cpu_d2_out;
reg  [ 9:0] cycle_counter =0;

initial begin reset=1; #6; reset=0; end

always begin
  clock=0; #5;
  clock=1; #5;
end

lab4_cpu cpu (
  clock, reset,
  cpu_d1_out, cpu_d2_out
);


//always @( negedge clock) begin
//  $display("cycle %d: %d %d", cycle_counter, cpu_d1_out, cpu_d2_out);
//  cycle_counter <= cycle_counter + 1;
//end

endmodule

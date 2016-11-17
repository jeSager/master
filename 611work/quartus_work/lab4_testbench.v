module lab4_testbench ();

reg clock;
reg reset;
wire [31:0] cpu_d1_out;
wire [31:0] cpu_d2_out;

initial begin reset=1; #6; reset=0; end

always begin clock=0; #5; clock=1; #5; end

lab4_cpu cpu (
  clock, reset,
  cpu_d1_out, cpu_d2_out
);

//always @(posedge clock) begin
//  $display("cycle %h", cpu_d1_out);
//end

endmodule

module adder_reg #(parameter width=32) (
  input clk,
  input[width-1:0] a,b,
  output [width-1:0] s,
  output cout
);

  wire [width-1:0] a_reg,b_reg,s_comb;
  wire cout_comb;

  regn #(width) input_reg_a(clk,a,a_reg);
  regn #(width) input_reg_b(clk,b,b_reg);
  adder #(width) my_adder(a_reg,b_reg,s_comb,cout_comb);
  regn #(width) output_reg_s(clk,s_comb,s);
  regn #(1) output_reg_cout(clk,cout_comb,cout);

endmodule

module adder #(parameter width=32) (
  input [width-1:0] a,b,
  output [width-1:0] s,
  output cout
);

  wire [width-1:0] carry_chain;

  genvar i;

  generate for (i=0;i<width;i=i+1) begin : adder_array

    if (i==0)
      full_adder add(a[i],b[i],1'b0,s[i],carry_chain[i]);
    else
      full_adder add(a[i],b[i],carry_chain[i-1],s[i],carry_chain[i]);

  end
  endgenerate

  assign cout= carry_chain[width-1];

endmodule

module lab4_register (

  input      [ 0:0] clk, we,
  input      [ 4:0] ra1, ra2, wa,
  input      [31:0] wd, r30in,

  output reg [31:0] rd1, rd2,
  output     [31:0] r30out
);

  reg [31:0] rgstr[31:0];

  initial rgstr[0] = 0;

  assign r30out = ( we & (wa == 30) ) ? r30in : rgstr[30];

  always @ * begin

    if( (ra1 == wa) & (ra1 != 0) & (we == 1) ) rd1 <= wd;
    else rd1 <= rgstr[ra1];

    if( (ra2 == wa) & (ra2 != 0) & (we == 1) ) rd2 <= wd;
    else rd2 <= rgstr[ra2];

  end

  // zero is initialized, but never written here
  always @ (posedge clk) if (we && wa != 0) begin

    if( wa != 30 ) rgstr[wa] <= wd;
    else rgstr[30] <= r30in;

  end
endmodule

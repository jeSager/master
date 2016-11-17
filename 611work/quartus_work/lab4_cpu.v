module lab4_cpu (
  input  clk, rst,
  //we,
//  input  [17:0] sw,
  output [31:0] d1out, d2out //, r30out
);



///////////////////////////////////rgstr
reg  [ 4:0] rgstr_ra1_in, rgstr_ra2_in, rgstr_wa_in;
reg  [31:0] rgstr_wd_in;
wire [31:0] rgstr_30_in, rgstr_30_out;
wire [31:0] rgstr_d1_out, rgstr_d2_out;
////////////////////////////////////ctrl
reg  [ 5:0] ctrl_opcode_in;
reg  [10:6] ctrl_shift_in;
reg  [ 5:0] ctrl_funct_in;
wire [ 3:0] ctrl_op_out;
wire [ 4:0] ctrl_shamt_out;
wire [ 0:0] ctrl_enhilo_out;
wire [ 1:0] ctrl_regsel_out;
wire [ 0:0] ctrl_regwrite_out;
/////////////////////////////////////alu
reg  [31:0] alu_a_in, alu_b_in;
reg  [ 7:0] alu_shamt_in;
reg  [ 3:0] alu_op_in;
wire [31:0] alu_hi_out, alu_lo_out;
wire [ 0:0] alu_zero_out;
///////////////////////////////////ftch
wire [31:0] ftch_out;


lab4_fetch ftch( clk, rst, ftch_out );


lab4_register rgstr(
  clk, we,
  rgstr_ra1_in, rgstr_ra2_in, rgstr_wa_in,
  rgstr_wd_in, rgstr_30_in,
  rgstr_d1_out, rgstr_d2_out,
  rgstr_30_out
);


lab4_controller ctrl(
  ctrl_opcode_in,
  ctrl_shift_in,
  ctrl_funct_in,
  ctrl_op_out,
  ctrl_shamt_out,
  ctrl_enhilo_out,
  ctrl_regsel_out,
  ctrl_regwrite_out
);


lab4_alu alu(
  alu_a_in, alu_b_in,
  alu_shamt_in,
  alu_op_in,
  alu_hi_out, alu_lo_out,
  alu_zero_out
);


always @( posedge clk ) begin

  ctrl_opcode_in <= ftch_out[31:26];
  rgstr_ra1_in   <= ftch_out[25:21];
  rgstr_ra2_in   <= ftch_out[20:16];
  ctrl_shift_in  <= ftch_out[10:6];
  ctrl_funct_in  <= ftch_out[ 5:0];
  alu_a_in       <= rgstr_d1_out;
  alu_b_in       <= rgstr_d2_out;
  alu_shamt_in   <= ctrl_shamt_out;
  alu_op_in      <= ctrl_op_out;

end // always

always @ * if( ~ctrl_regsel_out ) begin

  rgstr_wa_in <= ftch_out[15:11];
  if( ctrl_enhilo_out ) rgstr_wd_in <= {alu_hi_out, alu_lo_out};
  else rgstr_wd_in <= alu_lo_out;

end

assign d1out = ftch_out;
//assign d1out = alu_lo_out;




endmodule

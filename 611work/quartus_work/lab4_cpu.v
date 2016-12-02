module lab4_cpu (
  input  clk, rst,
  output [31:0] d1out, d2out //, r30out
);

reg we;

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


//reg [ 4:0] waPort;
//reg [31:0] wdPort;
//
//
//
//always @ * begin
//  waPort = ftch_out[15:11];
//  rgstr_wa_in = waPort;
//  wdPort = alu_lo_out;
//  rgstr_wd_in = wdPort;
//end



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


// store for stage 1
// store for stage 2
// store for stage 3



reg [2:0] stage = 0;

always @( posedge clk ) begin
  stage = ( stage == 3 ) ? 0 : ( stage + 0 );

  $display("Begin ! we");
  we             <= 0;
  $display("\t we is false");
  ctrl_opcode_in <= ftch_out[31:26];
  $display("\t ctrl_opcode_in <= %10d", ctrl_opcode_in );
  rgstr_ra1_in   <= ftch_out[25:21];
  $display("\t rgstr_ra1_in   <= %10d", rgstr_ra1_in );
  rgstr_ra2_in   <= ftch_out[20:16];
  $display("\t rgstr_ra2_in   <= %10d", rgstr_ra2_in );
  ctrl_shift_in  <= ftch_out[10:6];
  $display("\t ctrl_shift_in  <= %10d", ctrl_shift_in);
  ctrl_funct_in  <= ftch_out[ 5:0];
  $display("\t ctrl_funct_in  <= %10d", ctrl_funct_in);
  alu_a_in       <= rgstr_d1_out;
  $display("\t alu_a_in       <= %10d", alu_a_in);
  alu_b_in       <= rgstr_d2_out;
  $display("\t alu_b_in       <= %10d", alu_b_in);
  alu_shamt_in   <= ctrl_shamt_out;
  $display("\t alu_shamt_in   <= %10d", alu_shamt_in);
  alu_op_in      <= ctrl_op_out;
  $display("\t alu_op_in      <= %10d", alu_op_in);
  we             <= 1;
  $display("\t we is true");
end // end always

always @ * if( we ) begin
  $display("Write Enabled");
  rgstr_wa_in <= ftch_out[15:11];
  $display("\t rgstr_wa_in    <= %10d", rgstr_wa_in);
  if( ctrl_enhilo_out ) rgstr_wd_in <= {alu_hi_out, alu_lo_out};
  else rgstr_wd_in <= alu_lo_out;
  $display("\t rgsr_wd_in     <= %10d", rgstr_wd_in);
end
//assign d1out = rgstr_wa_in;
//assign d2out = rgstr_wd_in;

endmodule














module lab4_controller(
  input     [5:0] op_code,
  input     [10:6] shift_amount,
  input     [ 5:0] function_code,

  output reg [3:0] alu_op,
  output reg [4:0] alu_shamt,
  output reg [0:0] enhilo,
  output reg [1:0] regsel,
  output reg [0:0] regwrite
);


always @ * begin

  alu_shamt = shift_amount;
  enhilo    = 1'b0;
  regsel    = 2'b00;
  regwrite  = 1'b1;

  // add, addu
  if ((function_code == 6'b100000) | (function_code == 6'b100001))
    alu_op = 4'b0100;

  // sub, subu
  else if ((function_code == 6'b100010) | (function_code == 6'b100011))
    alu_op = 4'b0101;

  // and
  else if (function_code == 6'b100100) alu_op = 4'b0000;

  // or
  else if (function_code == 6'b100101) alu_op = 4'b0001;

  // nor
  else if (function_code == 6'b100111) alu_op = 4'b0010;

  // xor
  else if (function_code == 6'b100110) alu_op = 4'b0011;

  // slit
  else if (function_code == 6'b101010) alu_op = 4'b1100;

  // slut
  else if (function_code == 6'b101011) alu_op = 4'b1101;

  // sll
  else if (function_code == 6'b000000) alu_op = 4'b1000;

  // srl
  else if (function_code == 6'b000010) alu_op = 4'b1001;

  // sra
  else if (function_code == 6'b000011) alu_op = 4'b1010;

  // mult (not multu)
  else if (function_code == 6'b011000) begin
    alu_op = 4'b0110;
    enhilo = 1'b1; // low register
    regwrite = 1'b0; // high register
  end

  // multu (not mult)
  else if (function_code == 6'b011001) begin
    alu_op = 4'b0111;
    enhilo = 1'b1; // low register
    regwrite = 1'b0; // high register
  end

  // mfhi
  else if (function_code == 6'b010000) begin
    //alu_op = 4'b0000;
    enhilo = 1'b1; // low register
    regwrite = 1'b0; // high register
  end


end
endmodule

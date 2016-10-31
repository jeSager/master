module lab4_control_unit (
  input [10:6] shift_amount,
  input [5:0] function_code,
  output reg [3:0] alu_op,
  output reg [4:0] alu_shamt,
  output reg enhilo,
  output reg [1:0] regsel,
  output reg regwrite
);

always @(*) begin

    alu_shamt = shift_amount;
    enhilo = 1'b0;
    regsel = 2'b00;
    regwrite = 1'b1;

  // add, addu
  if ((function_code == 6'b100000) | (function_code == 6'b100001)) begin
    alu_op = 4'b0100;
  end

  // sub, subu
  else if ((function_code == 6'b100010) | (function_code == 6'b100011)) begin
  alu_op = 4'b0101;
  end

  // and
  else if ((function_code == 6'b100100)) begin
  alu_op = 4'b0000;
  end

  // or
  else if ((function_code == 6'b100101)) begin
  alu_op = 4'b0001;
  end

  // nor
  else if ((function_code == 6'b100111)) begin
  alu_op = 4'b0010;
  end

  // xor
  else if ((function_code == 6'b100110)) begin
  alu_op = 4'b0011;
  end

  // slit
  else if ((function_code == 6'b101010)) begin
  alu_op = 4'b1100;
  end

  // slut
  else if ((function_code == 6'b101011)) begin
  alu_op = 4'b1101;
  end

  // sll
  else if ((function_code == 6'b000000)) begin
  alu_op = 4'b1000;
  end

  // srl
  else if ((function_code == 6'b000010)) begin
  alu_op = 4'b1001;
  end

  // sra
  else if ((function_code == 6'b000011)) begin
  alu_op = 4'b1010;
  end

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

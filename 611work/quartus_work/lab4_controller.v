module lab4_controller(

  input     [ 5:0] op_code,
  input     [10:6] shift_amount,
  input     [ 5:0] funct,

  output reg [3:0] op,
  output reg [4:0] alu_shamt,
  output reg [0:0] enhilo,
  output reg [1:0] regsel,
  output reg [0:0] regwrite
);


always @ * begin

  alu_shamt = shift_amount;
  enhilo    = 0;
  regsel    = 0;
  regwrite  = 1;

  // add, addu
  if((funct == 6'b100000) | (funct == 6'b100001)) op = 4'b0100;

  // sub, subu
  else if((funct == 6'b100010) | (funct == 6'b100011)) op = 4'b0101;

  // and
  else if(funct == 6'b100100) op = 4'b0000;

  // or
  else if(funct == 6'b100101) op = 4'b0001;

  // nor
  else if(funct == 6'b100111) op = 4'b0010;

  // xor
  else if(funct == 6'b100110) op = 4'b0011;

  // sll
  else if(funct == 6'b000000) op = 4'b1000;

  // srl
  else if(funct == 6'b000010) op = 4'b1001;

  // sra
  else if(funct == 6'b000011) op = 4'b1010;

  // slt
  else if(funct == 6'b101010) op = 4'b1100;

  // sltu
  else if(funct == 6'b101001) op = 4'b1101;

  // mfhi or mflo
  else if((funct == 6'b010000) | (funct == 6'b010010)) begin
    op       = 4'b0000;
    enhilo   = 1;
  end

  // mult
  else if(funct == 6'b011000) begin
    op       = 4'b0110;
    enhilo   = 1;
  end

  // multu
  else if(funct == 6'b011001) begin
    op       = 4'b0111;
    enhilo   = 1;
  end

end // always

endmodule

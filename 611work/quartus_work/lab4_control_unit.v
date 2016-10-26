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
  if ((function_code == 6'b100000) | (function_code == 6'b100001)) begin
                                                                    // add, addu
    alu_op = 4'b0100;
    alu_shamt = 5'bX;
    enhilo = 1'b0;
    regsel = 2'b00;
    regwrite = 1'b1;
  end else if ((function_code == 6'b100010) | (function_code == 6'b100011)) begin
                                                                     //sub, subu
    alu_op = 4'b0101;
    alu_shamt = 5'bX;
    enhilo = 1'b0;
    regsel = 2'b00;
    regwrite = 1'b1;
    //  ...

 end else if (function_code == 6'b011000) begin
                                                             // mult (not multu)
    alu_op = 4'b0110;
    alu_shamt = 5'bX;
    enhilo = 1'b1;
    regsel = 2'b00;
    regwrite = 1'b0;
    // ...

 end
end
endmodule

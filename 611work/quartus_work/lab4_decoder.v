module lab4_decoder(
  input     [3:0] b,
  output reg[6:0] h
);

  always @ * begin
    case ( b )
     'd  0: h = 7'b100_0000;
     'd  1: h = 7'b100_1111;
     'd  2: h = 7'b010_0100;
     'd  3: h = 7'b011_0000;
     'd  4: h = 7'b001_1001;
     'd  5: h = 7'b001_0010;
     'd  6: h = 7'b000_0010;
     'd  7: h = 7'b111_1000;
     'd  8: h = 7'b000_0000;
     'd  9: h = 7'b001_1000;
     'd 10: h = 7'b000_1000;
     'd 11: h = 7'b000_0011;
     'd 12: h = 7'b100_0110;
     'd 13: h = 7'b010_0001;
     'd 14: h = 7'b000_0110;
     'd 15: h = 7'b000_1110;
    endcase
  end

endmodule


/*******************************************************************************
* hex.v
*
* Input: Clock and Keypress
* Output: Display values and Brightness
*
* Description:
* - Decodes keypresses for the seven segment display
* - Generates a Brightness value
*
* Top Level: shiver.v
*
*******************************************************************************/
module hex (
  input CLOCK_50,
  input [3:0] KEY,

  output reg [6:0] HEX0,
  output reg [6:0] HEX1,
  output wire brightness
);



reg [29:0] clk_div;
reg [7:0] counter;
reg [3:0] left;
reg [3:0] right;

assign brightness = counter * 8;

initial begin
  clk_div <= 24'b0;
  counter <= 255;
end

always @(posedge CLOCK_50) clk_div <= clk_div+30'b1;

always @(posedge clk_div[21]) begin
  if ( !KEY[3] && counter > 0 )
    counter <= counter - 1;
  if ( !KEY[2] && counter < 255 )
    counter <= counter + 1;
end

always @(*) begin
  left = counter[7:4];
  right = counter[3:0];
  case ( right )
    0: HEX0 = 7'b100_0000;
    1: HEX0 = 7'b100_1111;
    2: HEX0 = 7'b010_0100;
    3: HEX0 = 7'b011_0000;
    4: HEX0 = 7'b001_1001;
    5: HEX0 = 7'b001_0010;
    6: HEX0 = 7'b000_0010;
    7: HEX0 = 7'b111_1000;
    8: HEX0 = 7'b000_0000;
    9: HEX0 = 7'b001_1000;
    10: HEX0 = 7'b000_1000;
    11: HEX0 = 7'b000_0011;
    12: HEX0 = 7'b100_0110;
    13: HEX0 = 7'b010_0001;
    14: HEX0 = 7'b000_0110;
    15: HEX0 = 7'b000_1110;
  endcase
  case ( left )
    0: HEX1 = 7'b100_0000;
    1: HEX1 = 7'b100_1111;
    2: HEX1 = 7'b010_0100;
    3: HEX1 = 7'b011_0000;
    4: HEX1 = 7'b001_1001;
    5: HEX1 = 7'b001_0010;
    6: HEX1 = 7'b000_0010;
    7: HEX1 = 7'b111_1000;
    8: HEX1 = 7'b000_0000;
    9: HEX1 = 7'b001_1000;
    10: HEX1 = 7'b000_1000;
    11: HEX1 = 7'b000_0011;
    12: HEX1 = 7'b100_0110;
    13: HEX1 = 7'b010_0001;
    14: HEX1 = 7'b000_0110;
    15: HEX1 = 7'b000_1110;
  endcase
end
endmodule

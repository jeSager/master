/*******************************************************************************
* decoder.v
*
* Input: Clock and Keypress
* Output: Two 7 segment display values and an 8 bit brightness
*
* - Brightness initialized at max
*
* Top Level: shifter.v
*
* Alex Harmon and James Sager
* 19 September 2016
*******************************************************************************/
module decoder(
  input clock,
  input [3:0] key,
  output reg [6:0] display0,
  output reg [6:0] display1,
  output reg [7:0] brightness
);


reg [29:0] clk_div;
reg [3:0] left;
reg [3:0] right;

initial begin
  clk_div <= 24'b0;
  brightness <= 255;
end

always @( posedge clock ) clk_div <= clk_div+30'b1;

always @( posedge clk_div[19] ) begin
  if ( !key[2] && brightness > 0 )
    brightness <= brightness - 1;
  if ( !key[3] && brightness < 255 )
    brightness <= brightness + 1;
end

always @ * begin
  left = brightness[7:4];
  right = brightness[3:0];
  case ( right )
    0: display0 = 7'b100_0000;
    1: display0 = 7'b100_1111;
    2: display0 = 7'b010_0100;
    3: display0 = 7'b011_0000;
    4: display0 = 7'b001_1001;
    5: display0 = 7'b001_0010;
    6: display0 = 7'b000_0010;
    7: display0 = 7'b111_1000;
    8: display0 = 7'b000_0000;
    9: display0 = 7'b001_1000;
    10: display0 = 7'b000_1000;
    11: display0 = 7'b000_0011;
    12: display0 = 7'b100_0110;
    13: display0 = 7'b010_0001;
    14: display0 = 7'b000_0110;
    15: display0 = 7'b000_1110;
  endcase
  case ( left )
    0: display1 = 7'b100_0000;
    1: display1 = 7'b100_1111;
    2: display1 = 7'b010_0100;
    3: display1 = 7'b011_0000;
    4: display1 = 7'b001_1001;
    5: display1 = 7'b001_0010;
    6: display1 = 7'b000_0010;
    7: display1 = 7'b111_1000;
    8: display1 = 7'b000_0000;
    9: display1 = 7'b001_1000;
    10: display1 = 7'b000_1000;
    11: display1 = 7'b000_0011;
    12: display1 = 7'b100_0110;
    13: display1 = 7'b010_0001;
    14: display1 = 7'b000_0110;
    15: display1 = 7'b000_1110;
  endcase
end
endmodule

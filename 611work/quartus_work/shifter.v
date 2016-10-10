/*******************************************************************************
* TOP LEVEL:  shifter.v
*
* -The shifter is included in the top level to keep track of cursor position.
* -The PWM module is used to create a pulse width for each of the 26 LEDs.
*    -Every cycle right shift the values of all the widths to implement
*     the decaying trail
*    -The user can change the PWM width as the hex module is used here
*
*******************************************************************************/
module shifter(
  input CLOCK_50,
  input [3:0] KEY,
  output [6:0] HEX0,
  output [6:0] HEX1,
  output [17:0] LEDR,
  output [7:0] LEDG
);


reg [20:0] clk_div;
reg left;
reg [25:0] LED;

wire [7:0] brightness;
wire [25:0] pwmWire;

assign{ LEDR, LEDG } = pwmWire;

decoder aDecoder(
  CLOCK_50,
  KEY[3:0],
  HEX0[6:0],
  HEX1[6:0],
  brightness
);


initial begin
  clk_div <= 24'b0;
  left <= 1'b1;
  LED <= 26'b1;
end


always @( posedge CLOCK_50 ) clk_div <= clk_div+21'b1;

generate
  genvar i;
  for( i = 0; i < 26; i = i + 1 ) begin : aGen
      pwm aPwm( CLOCK_50, clk_div[20], brightness, LED[i], pwmWire[i] );
  end
endgenerate

always @( posedge clk_div[20] ) begin
  if( left )
    LED <= LED << 1;
  else
    LED <= LED >> 1;
  if(( left && LED[24] )||( !left && LED[1] ))
    left <= !left;
end

endmodule

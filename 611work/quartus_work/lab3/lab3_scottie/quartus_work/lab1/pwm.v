/*******************************************************************************
* pwm.v
*
* Input: 2 clocks, intensity, reset
* Output: pwm value for one LED
*
* Top Level: shifter.v
*   - Shifter will create a pwm for each of the 26 LEDs
*
* Alex Harmon and James Sager
* 19 September 2016
*******************************************************************************/
module pwm(
  input clock,
  input clock_slow,
  input [7:0] intensity,
  input reset,
  output pwm_out
);

reg [7:0] pwm_width;
reg [7:0] pwm_cnt;


assign pwm_out = ( pwm_cnt <= pwm_width ) ? 1'b1 : 1'b0;

always @( posedge clock_slow ) begin
  if (reset) pwm_width <= intensity;
  else pwm_width <= pwm_width >>1;
end

always @( posedge clock ) pwm_cnt <= pwm_cnt + 8'b1;

endmodule

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
module shifter (
  input CLOCK_50,
  input pwm_out,
  input [3:0] KEY,

  output reg [6:0] HEX0,
  output reg [6:0] HEX1,
  output [17:0] LEDR,
  output [7:0] LEDG
);



reg left;
reg pwms[7:0];
reg [20:0] clk_div;
reg [25:0] LED;

assign{LEDR, LEDG}=LED;

initial begin
  LED <= 26'b1;
  clk_div <= 24'b0;
  left <= 1'b1;
//  genvar i;
//  generate for (i=0;i<8;i=i+1) begin : whydoineedtotypesomethinghere
//    pwms[i]<=pwm_out;
//  end
//  endgenerate
end



always @(posedge CLOCK_50) begin
  clk_div <= clk_div+24'b1;
end

always @(posedge clk_div[20]) begin
  if (left) LED <= LED << 1; else LED <= LED >> 1;
  if ((left && LED[24]) || (!left && LED[1])) left <= !left;
end

endmodule


//reg fulladder;
//reg [8:0] s;
// reg [8:0] pwm_modulator;
//
// genvar i;
// generate for (i=0;i<8;i=i+1) begin : adder_array
// if (i==0)
// full_adder add(a[i],b[i],1'b0,s[i],pwm_modulator[i]);
// else
// full_adder add(a[i],b[i],pwm_modulator[i-1],s[i],pwm_modulator[i]);
// end
// endgenerate

/*******************************************************************************
* testDisplay.v
*
*******************************************************************************/
module testDisplay(
  input CLOCK_50,
  input [17:0] SW,
  output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7
);

  decoder a( SW[ 3 : 0 ] , HEX0 );
  decoder b( SW[ 7 : 4 ] , HEX1 );
  decoder c( SW[11 : 8 ] , HEX2 );
  decoder d( SW[15 : 12] , HEX3 );
  decoder e( SW[17 : 16] , HEX4 );
  decoder f(        4'b0 , HEX5 );
  decoder g(        4'b0 , HEX6 );
  decoder h(        4'b0 , HEX7 );

endmodule


/*******************************************************************************
* lab3_top.v
*
* Quartus Files:
*     lab3_top.v
*     regfile.v
*     decoder.v
*
* Modelsim Files:
*     testbench_regfile.v
*     regfile.v
*     registertest.tv
*
*  Alex Harmon and James Sager
*  Sun Oct 16 22:46:35 EDT 2016
*******************************************************************************/

module lab3_top(
  input CLOCK_50,
  input  [17:0]   SW,
  output [ 6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7
);

  wire            we = 1;
  wire [ 4:0]    ra1 = 0;
  wire [ 4:0]    ra2 = 30;
  wire [ 4:0]     wa = 30;
  wire [31:0]  r30in = SW;

  wire [31:0] wd, rd1, rd2, r30out;

  assign wd = rd2;

  regfile r(
    CLOCK_50, we, ra1, ra2, wa,
    wd, r30in,
    rd1, rd2, r30out
  );

  decoder a( r30out[ 3 : 0 ], HEX0 );
  decoder b( r30out[ 7 : 4 ], HEX1 );
  decoder c( r30out[11 : 8 ], HEX2 );
  decoder d( r30out[15 : 12], HEX3 );
  decoder e( r30out[19 : 16], HEX4 );
  decoder f( r30out[23 : 20], HEX5 );
  decoder g( r30out[27 : 24], HEX6 );
  decoder h( r30out[31 : 28], HEX7 );

endmodule


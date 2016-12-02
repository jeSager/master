//module lab4_de2_top (
//  input CLOCK_50,
//  output [3:0] KEY
//);
//
//  // connect DE2 I/Os to CPU/mem/decoders
////  reg CLOCK_50,
////  reg [3:0] KEY
//
////  always begin
////    CLOCK_50 = 1'b0;
////    #5;
////    CLOCK_50 = 1'b1;
////    #5;
////  end
////
////  initial begin
////    KEY = 4'he;
////    #10;
////    KEY = 4'hf;
////   end
//
//  system my_system (.CLOCK_50(CLOCK_50), .KEY(KEY),
//      .HEX0(HEX0), .HEX1(HEX1), .HEX2(HEX2), .HEX3(HEX3),
//      .HEX4(HEX4), .HEX5(HEX5), .HEX6(HEX6), .HEX7(HEX7), .SW(18'd54));
//
//  decoder a( r30out[ 3:0 ], h0 );
//  decoder b( r30out[ 7:4 ], h1 );
//  decoder c( r30out[11:8 ], h2 );
//  decoder d( r30out[15:12], h3 );
//  decoder e( r30out[19:16], h4 );
//  decoder f( r30out[23:20], h5 );
//  decoder g( r30out[27:24], h6 );
//  decoder h( r30out[31:28], h7 );
//endmodule

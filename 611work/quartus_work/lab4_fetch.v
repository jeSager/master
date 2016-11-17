module lab4_fetch(

  input clock, reset,
  output reg [31:0] word
);

reg [31:0] RAM[1023:0];
reg [9:0] count = 0;

initial $readmemh( "lab4_hexdump_mips.tv", RAM );

always @( negedge clock ) begin

  if( reset ) count = 0;
  else count = count + 1;
  word = RAM[ count ];
  if( $feof(lab4_hexdump_mips.tv) == word ) $display("cycle %h", word);
  else $display ("whooya");

end

endmodule

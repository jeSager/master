module lab4_fetch(

  input clock, reset,
  output reg [31:0] word
);

reg [31:0] RAM[1023:0];
reg [9:0] count = 0;

initial begin
  $readmemh( "lab4_hexdump_mips.tv", RAM );
  count = 0;
end

always @( posedge clock ) begin

  if( reset ) count = 0;
  else count = count + 1;

  word = RAM[ count ];

end

endmodule

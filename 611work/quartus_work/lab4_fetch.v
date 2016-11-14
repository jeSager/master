module lab4_fetch(

  input clk, reset
  output reg [31:0] data
);

reg [31:0] RAM[1023:0];
reg [9:0] word;

initial $readmemh( "lab4_hexdump_mips.txt", RAM );

always @( posedge clk ) begin

  if( reset ) word = 0;
  else word = word + 1;
  data = RAM[ word ];

end

endmodule

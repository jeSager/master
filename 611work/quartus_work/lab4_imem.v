module lab4_imem (input reset,
output [31:0] rd);

reg[31:0] RAM[1023:0];

initial
 begin
  $readmemh ("lab4_hexdump_mips.txt",RAM);
end

reg [9:0] a;

always @ (posedge clk)
 begin
   if (reset) a=0;
   else a=a+1;
   rd = RAM[a]; // word aligned
 end

endmodule

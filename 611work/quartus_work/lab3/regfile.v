/*******************************************************************************
* regfile.v
*
* Lab 3 Top Files:
*     quartus:  lab3_top.v
*     modelsim: testbench_regfile.v
*
* Alex Harmon and James Sager
* Fri Oct 14 14:20:48 EDT 2016
*******************************************************************************/
module regfile (
  input clk, we,
  input  [4:0] readaddr1, readaddr2, writeaddr,
  input  [31:0] writedata, reg30_in,
  output [31:0] readdata1, readdata2, reg30_out
);

  reg [31:0] array[31:0];
  reg [5 :0] i;
  initial for(i=0;i<31;i=i+1) array[i]=0;

  assign reg30_out = array[30];
  assign readdata1 = (readaddr1 != 30) ? array[readaddr1] : 0;
  assign readdata2 = (readaddr2 != 30) ? array[readaddr2] : 0;

  always @ (posedge clk) if (we && writeaddr != 0) begin
    if( writeaddr != 30 ) array[writeaddr] <= writedata;
    else array[30] <= reg30_in;
  end

endmodule

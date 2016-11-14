module regfile (
  input clk, we,
  input  [4:0] readaddr1, readaddr2, writeaddr,
  input  [31:0] writedata, reg30_in,
  output reg [31:0] readdata1, readdata2, reg30_out
);

  reg [31:0] array[31:0];

  reg [7 :0] i;

  initial begin
    for(i=0;i<32;i=i+1) array[i]=0;
    reg30_out =0;
  end

  always @(*) begin
    reg30_out <= array[30];
    if ( readaddr1==30)
      readdata1 <= reg30_in;
    else if (writeaddr==readaddr1 && we && readaddr1!=0)
      readdata1 <= writedata;
    else
      readdata1 <= array[readaddr1];


    if ( readaddr2==30)
      readdata2 <= reg30_in;
    else if (writeaddr==readaddr2 && we && readaddr2!=0)
      readdata2 <= writedata;
    else
      readdata2 <= array[readaddr2];

  end

  always @ (posedge clk) begin
    if (we && writeaddr != 0) begin
      if ( writeaddr == 30) array[30] <= reg30_in;
      else array[writeaddr] <= writedata;
    end

  end
//  assign writedata <= 0;
endmodule













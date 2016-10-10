module testbench();
reg clk, reset;
reg [31:0] vectornum, errors; // bookkeeping variables
reg [23:0] testvectors[10000:0]; // array of testvectors
reg [7:0] 
a,b,sexpected,sexpected_dly1,sexpected_dly2,sexpected_dly3,a_dly1,a
_dly2,b_dly1,b_dly2;
wire [7:0] s;
wire cout;
adder_reg #(8) myadder (clk,a,b,s,cout);
always begin
clk=1;#5;clk=0;#5;
end
initial begin
$readmemh("addtests.tv", testvectors);
vectornum = 0; errors = 0;
reset = 1; #4; reset = 0;
end
always @(posedge clk) begin
{a, b, sexpected} <= testvectors[vectornum];
sexpected_dly1 <= sexpected;
sexpected_dly2 <= sexpected_dly1;
a_dly1 <= a;
a_dly2 <= a_dly1;
b_dly1 <= b;
b_dly2 <= b_dly1;
end

// check results on falling edge of clk
always @(negedge clk) begin
if (s !== sexpected_dly2) begin
$display("Error: a = %d, b = 
%d, s = %d, t = %d", a_dly2,b_dly2,s,$time);
errors = errors + 1;
end
vectornum = vectornum + 1;
if (testvectors[vectornum] === 4'bx) begin
$display("%d tests completed 
with %d errors",vectornum, errors);
$finish;
end
end
endmodule

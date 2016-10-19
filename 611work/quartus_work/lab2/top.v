module top (input CLOCK_50);
wire [31:0] a,b,s;
wire cout;
adder_reg(.clk(CLOCK_50),.a(a),.b(b),.s(s),.cout(cout));
altsource_probe #(.source_width(32),.instance_id("a")) input_a (.source(a),.probe());
altsource_probe #(.source_width(32),.instance_id("b")) input_b (.source(b),.probe());
altsource_probe #(.probe_width(32),.instance_id("s")) output_s (.source(),.probe(s));
altsource_probe #(.probe_width(1),.instance_id("cout")) output_cout (.source(),.probe(cout));

endmodule

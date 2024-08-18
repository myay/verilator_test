module adder_tb;

logic [31:0] a_in, b_in;

logic [31:0] y_out;

initial begin
	$display("Hello!");
	$dumpfile("dump.vcd");
	$dumpvars();
	
	#100;
	a_in = 1; 
	b_in = 2;
	
	#100;
	a_in = 2; 
	b_in = 3;
	
	#100;
	$finish;
end

adder tb_adder(
	.a(a_in),
	.b(b_in),
	.y(y_out)
);

endmodule

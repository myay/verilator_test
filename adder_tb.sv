module adder_tb;

logic [31:0] a_in, b_in;

logic [31:0] y_out;

initial begin
	$display("--- Starting adder test. ---");
	$dumpfile("dump.vcd");
	$dumpvars();

	a_in = 32'h0;	
	b_in = 32'h0;
	
	#100;
	a_in = 32'h1; 
	b_in = 32'h2;
	#1;
	assert (y_out == 32'h3) else $error("Addition is wrong.");	
	
	#100;
	a_in = 32'h2; 
	b_in = 32'h3;
	#1;
	assert (y_out == 32'h5) else $error("Addition is wrong.");
	
	#100;
	$finish;
end

adder tb_adder(
	.a(a_in),
	.b(b_in),
	.y(y_out)
);

endmodule

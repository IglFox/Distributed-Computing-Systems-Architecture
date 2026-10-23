`timescale 1ns/100ps

module count_par_tb;
    localparam N=4;
    localparam T=20;

    reg clk, reset, res, ena, rev, load;
	reg [N-1:0] d;
	wire [N-1:0] q;

	count_par #(.N(N)) test (
		.clk  (clk),
		.reset(reset),
		.res  (res),
		.ena  (ena),
		.rev  (rev),
		.load (load),
		.d    (d),
		.q    (q)
	);

	always @*
	begin
	    clk = 1'b0;
		#(T/2);
		clk = 1'b1;
		#(T/2);
	end

	initial
	begin
	    reset = 1'b0;
		#(T/4);
		reset = 1'b1;
	end

	initial
	begin
	    res = 1'b0;
		ena = 1'b0;
		rev = 1'b0;
		load = 1'b0;
		d = 4'b0000;


		@(negedge clk);
		@(negedge clk);
		@(negedge clk);

		// прямой счёт
		ena = 1'b1;
		res = 1'b1;
		rev = 1'b1;

		@(negedge clk); // 1
		@(negedge clk); // 2
		@(negedge clk); // 3

		// останавливаем
		ena = 1'b0;
		@(negedge clk); // 3
		@(negedge clk); // 3

		// идёи в обратном направлении
		rev = 1'b0;
		ena = 1'b1;
		@(negedge clk); // 2
		@(negedge clk); // 1

		// останавливаем
		ena = 1'b0;
		rev = 1'b1;
		@(negedge clk); // 1

		// загрузка в счетчик
		d = 4'b0111; // 7
		load = 1'b1;
		ena = 1'b1;

		@(negedge clk); // 7
		load = 1'b0;

		@(negedge clk); // 8

		res = 1'b1;
		@(negedge clk); // 0

		res = 1'b0;
		@(negedge clk); // 1
		@(negedge clk); // 2
		$stop;
	end
endmodule

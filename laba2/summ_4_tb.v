`timescale 1ns/10ps

module summ_4_tb;
	reg [3:0] op_a_test,op_b_test;
	reg op_c_test, sync_test;
	wire led_test;
	wire [6:0] hex_test;

	summ_4 summ (
		.op_a(op_a_test),
		.op_b(op_b_test),
		.op_c(op_c_test),
		.sync(sync_test),
		.led(led_test),
		.hex(hex_test)
	);

	initial
	begin
		op_a_test = 4'h0;
		op_b_test = 4'h0;
		op_c_test = 1'b0;
		sync_test = 1'b0;
		
		#10;

		op_a_test = 4'h3;
		op_b_test = 4'h2;
	
		sync_test = 1'b1;  // 3 + 2 = 5
		#10;

		sync_test = 1'b0;
		#10;



		op_a_test = 4'd14;
		op_b_test = 4'd4;
	
		sync_test = 1'b1; // 14 + 4 = 18
		#10;

		sync_test = 1'b0;
		#10;


		op_a_test = 4'd4;
		op_b_test = 4'd4;
		op_c_test = 1'b1;
		
		sync_test = 1'b1; // 4 + 4 + 1 = 9
		#10;
		sync_test = 1'b0;


		op_a_test = 4'd12;
		op_b_test = 4'd6;
		op_c_test = 1'b1;
		
		sync_test = 1'b1; // 12 + 6 + 1 = 19
		#10;
		sync_test = 1'b0;
		$stop;
	end
endmodule


`timescale 1ns/100ps

module sum4_tb;
	reg [3:0] at, bt; 
	reg crt;
	wire [3:0] st;
	wire crpt;

	sum4 test_sum4(.a_in(at), .b_in(bt), .cr_in(crt), .s_out(st), .crp_out(crpt));
	
	initial
	begin
		at = 4'd4;
		bt = 4'd2;
		crt = 0;
		#200; // 6

		at = 4'd12;
		bt = 4'd2;
		crt = 1;
		#200; // 15

		at = 4'd14;
		bt = 4'd4;
		crt = 0;
		#200; // 1 | 2

		at = 4'd15;
		bt = 4'd6;
		crt = 1;
		#200; // 1 | 6

		$stop;
	end

endmodule
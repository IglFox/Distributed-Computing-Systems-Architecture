module main
(
	input wire [3:0] sw_data,
	input wire [1:0] addr,
	
	output wire [6:0] hex0,
	output wire [6:0] hex1,
	output wire [6:0] hex2,
	output wire [6:0] hex3
);
	wire [6:0] line;

	coder block_coder(.data(sw_data), .seg(line));
	dms_7 block_dms (.adr(addr), .line(line), .data0(hex0), .data1(hex1), .data2(hex2), .data3(hex3));
endmodule
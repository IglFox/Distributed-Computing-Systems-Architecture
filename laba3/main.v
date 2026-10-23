module main
#(parameter N=4, M=10)
(
    input wire clk_h, sld, en, sclr, rvs, aclr,
    input wire [N-1:0] d,
    output wire [6:0] seg,
    output wire [N-1:0] q_div
);

    reg clk_lw;
    reg [N-1:0] q;

    count_div2 #(
    	.N(N),
    	.M(M)
     ) count_div2 (
    	.clk (clk_h),
    	.sync(clk_lw),
    	.q   (q_div)
    );

    count_par #(
    	.N(N)
     ) count_par (
    	.clk  (clk_lw),
    	.reset(aclr),
    	.res  (sclr),
    	.ena  (en),
    	.rev  (rvs),
    	.load (sld),
    	.d    (d),
    	.q    (q)
    );

    coder coder (
        .data (q),
        .seg  (seg)
    );

endmodule

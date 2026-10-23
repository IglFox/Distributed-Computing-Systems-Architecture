`timescale 1ns / 100ps

module main_tb;
    localparam N = 4;
    localparam T = 20;

    reg clk_h;
    reg sld;
    reg en;
    reg sclr;
    reg rvs;
    reg aclr;
    reg [N-1:0] d;

    wire [6:0] seg;
    wire [N-1:0] q_div;

    main #(.N(N), .M(10)) test (
        .clk_h(clk_h),
        .sld(sld),
        .en(en),
        .sclr(sclr),
        .rvs(rvs),
        .aclr(aclr),
        .d(d),
        .seg(seg),
        .q_div(q_div)
    );


    initial clk_h = 1'b0;
    always #(T/2) clk_h = ~clk_h;

    initial begin
        aclr = 1'b0;
        sld  = 1'b0;
        en   = 1'b0;
        sclr = 1'b0;
        rvs  = 1'b0;
        d    = 4'b0000;

        #(T * 2);
        aclr = 1'b1;

        @(posedge test.clk_lw);
        @(negedge test.clk_lw);

        d = 4'd7;
        sld = 1'b1;
        @(negedge test.clk_lw);
        sld = 1'b0;

        en = 1'b1;
        rvs = 1'b0;
        @(negedge test.clk_lw);
        @(negedge test.clk_lw);
        @(negedge test.clk_lw);

        rvs = 1'b1;
        @(negedge test.clk_lw);
        @(negedge test.clk_lw);

        sclr = 1'b1;
        @(negedge test.clk_lw);
        sclr = 1'b0;

        en = 1'b1;
        rvs = 1'b0;
        @(negedge test.clk_lw);
        @(negedge test.clk_lw);

        aclr = 1'b0;
        #(T/2);
        aclr = 1'b1;

        $stop;
    end
endmodule

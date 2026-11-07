`timescale 1ns / 100ps

module main_tb;

    localparam N = 4;
    localparam M = 4'd4;
    localparam T = 20;

    reg        clk;
    reg        reset;
    reg  [3:0] data_in;

    wire [6:0] hex0;
    wire [6:0] hex1;
    wire [6:0] hex2;
    wire [6:0] hex3;
    wire [6:0] hex4;
    wire [6:0] hex5;
    wire       clk_1hz;

    main #(
        .N(N),
        .M(M)
    ) uut (
        .clk    (clk),
        .reset  (reset),
        .data_in(data_in),
        .hex0   (hex0),
        .hex1   (hex1),
        .hex2   (hex2),
        .hex3   (hex3),
        .hex4   (hex4),
        .hex5   (hex5),
        .clk_1hz(clk_1hz)
    );

    initial clk = 1'b0;
    always #(T / 2) clk = ~clk;

    initial
    begin
        reset   = 1'b0;
        data_in = 4'd0;

        #(T);
        reset = 1'b1;
        #(T * 2);
        reset = 1'b0;
        #(T);

        @(posedge uut.clk_lw);

        @(negedge uut.clk_lw);
        data_in = 4'd1;

        @(negedge uut.clk_lw);
        data_in = 4'd2;

        @(negedge uut.clk_lw);
        data_in = 4'd3;

        @(negedge uut.clk_lw);
        data_in = 4'd4;

        @(negedge uut.clk_lw);
        data_in = 4'd5;

        @(negedge uut.clk_lw);
        data_in = 4'd6;

        @(negedge uut.clk_lw);
        data_in = 4'd7;

        @(negedge uut.clk_lw);
        data_in = 4'd0;

        repeat (8) @(negedge uut.clk_lw);

        $stop;
    end

endmodule

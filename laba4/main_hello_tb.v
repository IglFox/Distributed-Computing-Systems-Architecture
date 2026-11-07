`timescale 1ns / 100ps

module main_hello_tb;

    localparam N = 4;
    localparam M = 4'd4;
    localparam T = 1000;

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

    main_hello #(
        .N(N),
        .M(M)
    ) test (
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
    always
    begin
        #(T / 2)
        clk = ~clk;
    end


    integer i;

    initial
    begin
        reset   = 1'b0;
        data_in = 4'd0;

        #(T);
        reset = 1'b1;
        #(T * 2);
        reset = 1'b0;
        #(T);

        @(posedge clk_1hz);

        for (i = 0; i <= 11; i = i + 1)
        begin
            @(negedge clk_1hz);
            data_in = i[3:0];
        end

        @(negedge clk_1hz);
        data_in = 4'd5;

        repeat (8) @(negedge clk_1hz);

        $stop;
    end

endmodule

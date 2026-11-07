`timescale 1ns / 100ps

module shift_reg_tb;

    localparam DATA_SIZE = 4;
    localparam SEG_COUNT = 6;
    localparam T = 1000;

    reg             clk;
    reg             reset;
    reg [DATA_SIZE-1:0] data_in;

    wire [DATA_SIZE-1:0] q0, q1, q2, q3, q4, q5;

    shift_reg #(
        .DATA_SIZE(DATA_SIZE),
        .SEG_COUNT(SEG_COUNT)
    ) test (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .q0(q0), .q1(q1), .q2(q2), .q3(q3), .q4(q4), .q5(q5)
    );

    initial clk = 1'b0;
    always
    begin
        #(T / 2);
        clk = ~clk;
    end


    integer i;

    initial
    begin
        reset   = 1'b1;
        data_in = 4'd0;

        #(T * 2);
        reset = 1'b0;
        #(T);

        for (i = 1; i <= 7; i = i + 1)
        begin
            @(negedge clk);
            data_in = i[3:0];
        end

        @(negedge clk);
        data_in = 4'd0;

        repeat (10) @(negedge clk);

        $stop;
    end

endmodule

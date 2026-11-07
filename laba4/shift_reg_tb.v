`timescale 1ns / 100ps

module shift_reg_tb;

    localparam WIDTH = 4;
    localparam DEPTH = 6;
    localparam T = 1000;

    reg             clk;
    reg             reset;
    reg [WIDTH-1:0] data_in;

    wire [WIDTH-1:0] q0, q1, q2, q3, q4, q5;

    shift_reg #(
        .WIDTH(WIDTH),
        .DEPTH(DEPTH)
    ) test (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .q0(q0), .q1(q1), .q2(q2), .q3(q3), .q4(q4), .q5(q5)
    );

    initial clk = 1'b0;
    always #(T / 2) clk = ~clk;

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

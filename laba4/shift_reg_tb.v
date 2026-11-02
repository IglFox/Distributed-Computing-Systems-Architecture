`timescale 1ns / 100ps

module shift_reg_tb;

    localparam WIDTH = 4;
    localparam DEPTH = 6;
    localparam T = 20;

    reg             clk;
    reg             reset;
    reg [WIDTH-1:0] data_in;

    wire [WIDTH-1:0] q0;
    wire [WIDTH-1:0] q1;
    wire [WIDTH-1:0] q2;
    wire [WIDTH-1:0] q3;
    wire [WIDTH-1:0] q4;
    wire [WIDTH-1:0] q5;

    shift_reg #(
        .WIDTH(WIDTH),
        .DEPTH(DEPTH)
    ) uut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .q0(q0),
        .q1(q1),
        .q2(q2),
        .q3(q3),
        .q4(q4),
        .q5(q5)
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

        @(negedge clk);
        data_in = 4'd1;

        @(negedge clk);
        data_in = 4'd2;

        @(negedge clk);
        data_in = 4'd3;

        @(negedge clk);
        data_in = 4'd4;

        @(negedge clk);
        data_in = 4'd5;

        @(negedge clk);
        data_in = 4'd6;

        @(negedge clk);
        data_in = 4'd7;

        @(negedge clk);
        data_in = 4'd0;

        repeat (8) @(negedge clk);

        reset = 1'b1;
        #(T * 2);
        reset = 1'b0;
        #(T * 2);

        $display("Simulation of shift_reg finished successfully.");
        $stop;
    end

endmodule

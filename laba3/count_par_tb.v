`timescale 1ns/100ps

module count_par_tb;
    localparam N=4;
    localparam T=20;

    reg clk, reset, res, ena, rev, load;
    reg [N-1:0] d;
    wire [N-1:0] q;

    count_par #(.N(N)) test (
        .clk  (clk),
        .reset(reset),
        .res  (res),
        .ena  (ena),
        .rev  (rev),
        .load (load),
        .d    (d),
        .q    (q)
    );

    initial clk = 1'b0;
    always #(T/2) clk = ~clk;

    initial
    begin
        reset = 1'b0;
        #(T/4);
        reset = 1'b1;
    end

    initial
    begin
        res = 1'b0;
        ena = 1'b0;
        rev = 1'b0;
        load = 1'b0;
        d = 4'b0000;

        @(negedge clk);
        @(negedge clk);

        ena = 1'b1;
        rev = 1'b0;
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);

        ena = 1'b0;
        @(negedge clk);
        @(negedge clk);

        rev = 1'b1;
        ena = 1'b1;
        @(negedge clk);
        @(negedge clk);

        ena = 1'b0;
        d = 4'b0111;
        load = 1'b1;
        @(negedge clk);
        load = 1'b0;

        ena = 1'b1;
        rev = 1'b0;
        @(negedge clk);

        res = 1'b1;
        @(negedge clk);
        res = 1'b0;

        @(negedge clk);
        @(negedge clk);

        $stop;
    end
endmodule

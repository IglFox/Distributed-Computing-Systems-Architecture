`timescale 1ns / 100ps

module count_div2_tb;

    localparam N = 4;
    localparam M = 4'd4;
    localparam T = 20;

    reg          clk;
    wire         sync;
    wire [N-1:0] q;

    count_div2 #(
        .N(N),
        .M(M)
    ) uut (
        .clk(clk),
        .sync(sync),
        .q(q)
    );

    initial clk = 1'b0;
    always #(T / 2) clk = ~clk;

    initial
    begin
        repeat (24) @(posedge clk);
        $display("Simulation of count_div2 finished successfully.");
        $stop;
    end

endmodule

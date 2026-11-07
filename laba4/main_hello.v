module main_hello
#(
    parameter N = 26,
    parameter M = 26'd25_000_000
)
(
    input  wire       clk,
    input  wire       reset,
    input  wire [3:0] data_in,
    output wire [6:0] hex0,
    output wire [6:0] hex1,
    output wire [6:0] hex2,
    output wire [6:0] hex3,
    output wire [6:0] hex4,
    output wire [6:0] hex5,
    output wire       clk_1hz
);

    wire clk_lw;
    assign clk_1hz = clk_lw;

    wire [3:0] q0;
    wire [3:0] q1;
    wire [3:0] q2;
    wire [3:0] q3;
    wire [3:0] q4;
    wire [3:0] q5;

    count_div2 #(
        .N(N),
        .M(M)
    ) div_inst (
        .clk  (clk),
        .sync (clk_lw),
        .q    ()
    );

    shift_reg #(
        .WIDTH(4),
        .DEPTH(6)
    ) sreg_inst (
        .clk    (clk_lw),
        .reset  (reset),
        .data_in(data_in),
        .q0     (q0),
        .q1     (q1),
        .q2     (q2),
        .q3     (q3),
        .q4     (q4),
        .q5     (q5)
    );

    coder_hello dec0 (.data(q0), .seg(hex0));
    coder_hello dec1 (.data(q1), .seg(hex1));
    coder_hello dec2 (.data(q2), .seg(hex2));
    coder_hello dec3 (.data(q3), .seg(hex3));
    coder_hello dec4 (.data(q4), .seg(hex4));
    coder_hello dec5 (.data(q5), .seg(hex5));

endmodule

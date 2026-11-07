module count_div2
#(
    parameter N = 26,
    parameter M = 26'd25_000_000
)
(
    input  wire         clk,
    output reg          sync,
    output wire [N-1:0] q
);

    reg [N-1:0] cnt = 0;
    wire [N-1:0] cnt_next;

    assign q = cnt;
    assign cnt_next = cnt + 1'b1;

    initial sync = 1'b0;

    always @(posedge clk)
    begin
        cnt <= cnt_next;
        sync <= sync;
        if (cnt == M - 1'b1)
        begin
            cnt <= {N{1'b0}};
            sync <= ~sync;
        end
    end

endmodule

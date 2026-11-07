`timescale 1ns/100ps

module count_div2_tb;
    localparam N=4, T=20, M=10;
    reg clk;
    wire sync;
    wire [N-1:0] q;

    always
    begin
        clk = 1'b0;
        #(T/2);
        clk = 1'b1;
        #(T/2);
    end

    count_div2 #(.N(N), .M(M)) test (
         .clk(clk),
         .sync(sync),
         .q(q)
     );

    initial
    begin
        #(T*25);
        $stop;
    end


endmodule

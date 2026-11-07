`timescale 1ns / 100ps

module coder_hello_tb;
    reg  [3:0] test_in;
    wire [6:0] test_out;

    coder_hello test (
        .data(test_in),
        .seg(test_out)
    );
    integer i;

    initial
    begin
        test_in = 4'd0;
        #100;

        for (i = 0; i <= 12; i = i + 1)
        begin
            test_in = i[3:0];
            #200;
        end

        $stop;
    end

endmodule

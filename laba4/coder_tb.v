`timescale 1ns / 100ps

module coder_tb;

    reg  [3:0] test_in;
    wire [6:0] test_out;

    coder uut (
        .data(test_in),
        .seg(test_out)
    );

    integer i;

    initial
    begin
        test_in = 4'b0000;
        #100;

        for (i = 0; i < 16; i = i + 1)
        begin
            test_in = i[3:0];
            #200;
        end

        $display("Simulation of coder finished successfully.");
        $stop;
    end

endmodule

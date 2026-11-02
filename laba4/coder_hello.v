`timescale 1ns / 100ps

module coder_hello
(
    input  wire [3:0] data,
    output wire [6:0] seg
);

    reg [6:0] code;
    assign seg = code;

    always @(*)
    begin
        case (data)
            4'd0:    code = 7'b0001001;
            4'd1:    code = 7'b0000110;
            4'd2:    code = 7'b1000111;
            4'd3:    code = 7'b1000111;
            4'd4:    code = 7'b1000000;
            4'd5:    code = 7'b1111111;
            4'd6:    code = 7'b0001110;
            4'd7:    code = 7'b0101111;
            4'd8:    code = 7'b1111001;
            4'd9:    code = 7'b0000110;
            4'd10:   code = 7'b0101011;
            4'd11:   code = 7'b0100001;
            default: code = 7'b1111111;
        endcase
    end

endmodule

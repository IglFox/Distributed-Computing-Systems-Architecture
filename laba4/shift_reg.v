module shift_reg
#(
    parameter WIDTH = 4,
    parameter DEPTH = 6
)
(
    input  wire             clk,
    input  wire             reset,
    input  wire [WIDTH-1:0] data_in,
    output wire [WIDTH-1:0] q0,
    output wire [WIDTH-1:0] q1,
    output wire [WIDTH-1:0] q2,
    output wire [WIDTH-1:0] q3,
    output wire [WIDTH-1:0] q4,
    output wire [WIDTH-1:0] q5
);

    reg [WIDTH-1:0] shift_reg [DEPTH-1:0];

    integer i;

    assign q0 = shift_reg[0];
    assign q1 = shift_reg[1];
    assign q2 = shift_reg[2];
    assign q3 = shift_reg[3];
    assign q4 = shift_reg[4];
    assign q5 = shift_reg[5];

    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            for (i = 0; i < DEPTH; i = i + 1)
            begin
                shift_reg[i] <= {WIDTH{1'b0}};
            end
        end

        else
        begin
            for (i = 1; i < DEPTH; i = i + 1)
            begin
                shift_reg[i] <= shift_reg[i-1];
            end
            shift_reg[0] <= data_in;
        end
    end

endmodule

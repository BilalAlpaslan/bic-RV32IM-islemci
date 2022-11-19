module ALU(
    input [31:0] X,
    input [31:0] Y,
    input [4:0] OP,

    output reg [31:0] RESULT,
    output isEqual
);

    wire signed [31:0] X_signed = X;
    wire signed [31:0] Y_signed = Y;

    assign isEqual = X == Y;

    always @(*) begin
        case (OP)
            // I
            0: RESULT <= X + Y;
            1: RESULT <= X - Y;
            2: RESULT <= X & Y;
            3: RESULT <= X | Y;
            4: RESULT <= X ^ Y;
            5: RESULT <= X << Y;
            6: RESULT <= X >> Y;
            7: RESULT <= X_signed >>> Y;
            8: RESULT <= (X_signed < Y_signed ? 1 : 0);
            9: RESULT <= (X < Y ? 1 : 0);

            // M: mul mulh mulhsu mulhu div divu rem remu
            10: RESULT <= X_signed * Y_signed;
            11: RESULT <= X_signed * Y_signed;
            12: RESULT <= X_signed * Y;
            13: RESULT <= X * Y;
            14: RESULT <= X_signed / Y_signed;
            15: RESULT <= X / Y;
            16: RESULT <= X_signed % Y_signed;
            17: RESULT <= X % Y;

        endcase
    end

endmodule
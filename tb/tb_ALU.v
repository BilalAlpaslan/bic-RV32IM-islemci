`include "ALU.v"
`timescale 1ns / 100ps 

module tb_ALU;
    reg [63:0] a;
    reg [63:0] b;
    reg [3:0]  op;

    wire [63:0] result;
    wire isEqual;

    ALU alu(a, b, op, result, isEqual);

    initial begin
        // add
        a = 5;          b = 5;      op = 0; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // sub
        a = 66;         b = 11;     op = 1; #20;        
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // and
        a = 3'b101;     b = 3'b110; op = 2; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // or
        a = 3'b101;     b = 3'b110; op = 3; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // xor
        a = 3'b110;     b = 3'b010; op = 4; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // sll (Shift Left Logical)
        a = 1;          b = 3;      op = 5; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // srl (Shift Right Logical)
        a = 8;          b = 2;      op = 6; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // sra (Shift Right Arithmetic)
        a = -8;         b = 2;      op = 7; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // slt (Set Less Than)
        a = -1;         b = 9;      op = 8; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // sltu (Set Less Than Unsigned)
        a = -1;         b = 9;      op = 9; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // mul
        a = 6;          b = 5;      op = 10; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // mulh
        a = 6;          b = 5;      op = 11; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // mulhsu
        a = 6;          b = 5;      op = 12; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // mulhu
        a = 6;          b = 5;      op = 13; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // div
        a = 6;          b = 5;      op = 14; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // divu
        a = 6;          b = 5;      op = 15; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // rem
        a = 6;          b = 5;      op = 16; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
        // remu
        a = 6;          b = 5;      op = 17; #20;
        $display("a = %d, b = %d, op = %d, result = %d, isEqual = %d", a, b, op, result, isEqual);
    end

    // to run:
    //    iverilog -g2005-sv -I ../src/ -o output/ALU.out tb_ALU.v && vvp output/alu.out

    // initial begin
    //     $dumpfile("vcd/alu.vcd");
    //     $dumpvars(0, tb_ALU);
    // end
endmodule
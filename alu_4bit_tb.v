`timescale 1ns/1ps

module alu_4bit_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] op;
    wire [3:0] Y;

    alu_4bit uut (
        .A(A),
        .B(B),
        .op(op),
        .Y(Y)
    );

    initial begin

        // Addition
        A = 4'b0011;
        B = 4'b0010;
        op = 3'b000;
        #10;

        // Subtraction
        A = 4'b0110;
        B = 4'b0011;
        op = 3'b001;
        #10;

        // AND
        A = 4'b1100;
        B = 4'b1010;
        op = 3'b010;
        #10;

        // OR
        A = 4'b1100;
        B = 4'b1010;
        op = 3'b011;
        #10;

        // XOR
        A = 4'b1100;
        B = 4'b1010;
        op = 3'b100;
        #10;

        // NOT
        A = 4'b1010;
        op = 3'b101;
        #10;

        // Increment
        A = 4'b0101;
        op = 3'b110;
        #10;

        // Decrement
        A = 4'b0101;
        op = 3'b111;
        #10;

        $finish;
    end

endmodule

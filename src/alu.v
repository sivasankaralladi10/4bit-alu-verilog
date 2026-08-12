module ALU (
    input [3:0] A,
    input [3:0] B,
    input [2:0] Sel,
    output reg [3:0] Result,
    output reg Carry
);

wire [3:0] Sum_add;
wire Cout_add;
wire [3:0] Sum_sub;
wire Cout_sub;

// CLA for ADD
CLA_4bit CLA_ADD (
    .A(A),
    .B(B),
    .Cin(1'b0),
    .Sum(Sum_add),
    .Cout(Cout_add)
);

// CLA for SUB (A + (~B + 1))
CLA_4bit CLA_SUB (
    .A(A),
    .B(~B),
    .Cin(1'b1),
    .Sum(Sum_sub),
    .Cout(Cout_sub)
);

always @(*) begin
    case (Sel)
        3'b000: begin // ADD
            Result = Sum_add;
            Carry = Cout_add;
        end

        3'b001: begin // SUB
            Result = Sum_sub;
            Carry = Cout_sub;
        end

        3'b010: begin // AND
            Result = A & B;
            Carry = 0;
        end

        3'b011: begin // OR
            Result = A | B;
            Carry = 0;
        end

        3'b100: begin // XOR
            Result = A ^ B;
            Carry = 0;
        end

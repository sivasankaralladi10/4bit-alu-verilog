`timescale 1ns / 1ps

module ALU_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] Sel;

wire [3:0] Result;
wire Carry;

// Instantiate ALU
ALU uut (
    .A(A),
    .B(B),
    .Sel(Sel),
    .Result(Result),
    .Carry(Carry)
);

// Task to print output
task print_result;
begin
    case(Sel)
        3'b000: $display("\nOPERATION: ADDITION");
        3'b001: $display("\nOPERATION: SUBTRACTION");
        3'b010: $display("\nOPERATION: AND");
        3'b011: $display("\nOPERATION: OR");
        3'b100: $display("\nOPERATION: XOR");
        3'b101: $display("\nOPERATION: NOT");
        3'b110: $display("\nOPERATION: LEFT SHIFT");
        3'b111: $display("\nOPERATION: RIGHT SHIFT");
    endcase

    $display("A = %b (%0d)", A, A);
    $display("B = %b (%0d)", B, B);
    $display("Result = %b (%0d)", Result, Result);
    $display("Carry = %b", Carry);
    $display("-----------------------------------");
end
endtask

initial begin
    A = 4'b0101;
    B = 4'b0011;

    Sel = 3'b000; #10; print_result(); // ADD
    Sel = 3'b001; #10; print_result(); // SUB
    Sel = 3'b010; #10; print_result(); // AND
    Sel = 3'b011; #10; print_result(); // OR
    Sel = 3'b100; #10; print_result(); // XOR
    Sel = 3'b101; #10; print_result(); // NOT
    Sel = 3'b110; #10; print_result(); // LSHIFT
    Sel = 3'b111; #10; print_result(); // RSHIFT

    $finish;
end

endmodule

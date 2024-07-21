module ALU (
    input wire [15:0] a,
    input wire [15:0] b,
    input wire [2:0] opcode,
    output reg [15:0] result
);

always @(*) begin
    case (opcode)
        3'b000: result = a + b;  // ADD
        3'b001: result = a - b;  // SUB
        3'b010: result = a & b;  // AND
        3'b011: result = a | b;  // OR
        3'b100: result = a ^ b;  // XOR
        3'b101: result = ~a;     // NOT
        3'b110: result = a << 1; // Shift Left
        3'b111: result = a >> 1; // Shift Right
        default: result = 16'b0;
    endcase
end

endmodule

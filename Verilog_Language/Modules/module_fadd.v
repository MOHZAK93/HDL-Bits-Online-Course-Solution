module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c1;
    wire [15:0] c2, c3, c4;
    add16 adder1 ( .a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(c1) );
    add16 adder2 ( .a(a[31:16]), .b(b[31:16]), .cin(0), .sum(c2), .cout(0) );
    add16 adder3 ( .a(a[31:16]), .b(b[31:16]), .cin(1), .sum(c3), .cout(0) );
    assign sum[31:16]=c4;
    
    always@(*)
        begin
            case (c1)
                1'b0:c4=c2;
                1'b1:c4=c3;
            endcase
        end

endmodule

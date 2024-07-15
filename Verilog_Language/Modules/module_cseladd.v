module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] xout;
    wire c1;
    add16 adder1 ( .a(a[15:0]), .b(xout[15:0]), .cin(sub), .sum(sum[15:0]), .cout(c1) );
    add16 adder2 ( .a(a[31:16]), .b(xout[31:16]), .cin(c1), .sum(sum[31:16]), .cout(0) );
    assign xout = b^{32{sub}};
    

endmodule

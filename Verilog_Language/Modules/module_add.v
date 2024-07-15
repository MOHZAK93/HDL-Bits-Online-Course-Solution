module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire c1;
    add16 adder161( .a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(c1) );
    add16 adder162( .a(a[31:16]), .b(b[31:16]), .cin(c1), .sum(sum[31:16]), .cout(0) );

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    assign sum = cin^(a^b);
    assign cout = a&b | cin & (a^b);

endmodule


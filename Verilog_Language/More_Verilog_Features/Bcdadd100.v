module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [99:0] carry;
    bcd_fadd adder1 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(carry[0]), .sum(sum[3:0]));
    genvar i;
    generate begin
        for (i = 1; i<100; i++) begin: gen
            bcd_fadd adder2 (.a({a[i*4+3:i*4]}), .b({b[i*4+3:i*4]}), .cin(carry[i-1]), .cout(carry[i]), .sum({sum[i*4+3:i*4]}));
        end:gen
    end
    endgenerate
    
    assign cout = carry[99];
    
endmodule


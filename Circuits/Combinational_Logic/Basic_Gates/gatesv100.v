module top_module( 
    input [99:0] in,
    output [98:0] out_both,
    output [99:1] out_any,
    output [99:0] out_different );
    always @(*) begin
        out_different[99] = in[99]^in[0];
        for (int i = 99; i > 0; i--) begin
            out_both[i-1] = {in[i]&in[i-1]};
            out_any[i] = {in[i]|in[i-1]};
            out_different[i-1] = in[i]^in[i-1];
        end
    end

endmodule


module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] d1_out, d2_out, d3_out;
    my_dff8 D1 ( .clk(clk), .d(d), .q(d1_out) );
    my_dff8 D2 ( .clk(clk), .d(d1_out), .q(d2_out) );
    my_dff8 D3 ( .clk(clk), .d(d2_out), .q(d3_out) );
    
    always@(*)
        begin
            case (sel)
                2'b00:q=d;
                2'b01:q=d1_out;
                2'b10:q=d2_out;
                2'b11:q=d3_out;
            endcase
        end

endmodule

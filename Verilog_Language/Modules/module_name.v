module top_module ( input clk, input d, output q );
    wire wd1, wd2;
    my_dff d1 (.clk(clk), .d(d), .q(wd1));
    my_dff d2 (.clk(clk), .d(wd1), .q(wd2));
    my_dff d3 (.clk(clk), .d(wd2), .q(q));

endmodule

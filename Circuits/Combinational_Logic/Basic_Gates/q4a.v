module top_module (input x, input y, output z);
    wire t1;
    xor(t1,x,y);
    and(z,t1,x);

endmodule

module top_module (input x, input y, output z);
    wire z1,z2,z3,z4, y1,y2;
    A a1(.x(x), .y(y), .z(z1));
    A a2(.x(x), .y(y), .z(z3));
    B b1(.x(x), .y(y), .z(z2));
    B b2(.x(x), .y(y), .z(z4));
    or(y1,z1,z2);
    and(y2,z3,z4);
    xor(z,y1,y2);
    
endmodule

module A (input x, input y, output z);
    wire t1;
    xor(t1,x,y);
    and(z,t1,x);
endmodule
module B ( input x, input y, output z );
    xnor(z,x,y);
endmodule

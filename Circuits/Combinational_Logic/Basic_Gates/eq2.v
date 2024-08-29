module top_module ( input [1:0] A, input [1:0] B, output z );
    wire w1,w2,w3,w4;
    
    and(w1,~A[0],~A[1],~B[0],~B[1]);
    and(w2,A[0],~A[1],B[0],~B[1]);
    and(w3,~A[0],A[1],~B[0],B[1]);
    and(w4,A[0],A[1],B[0],B[1]);
    or(z,w1,w2,w3,w4);

endmodule

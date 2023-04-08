`timescale 1ns / 1ps

module miniTOP(
input [3:0] A,B,
input CI,
output CO,
output [3:0] DIGIT
    );
wire [4:0] w;
wire w0;
wire [3:0] w1;

sumator4 s0(.a(A[3:0]),
            .b(B[3:0]),
            .ci(CI),
            .s(w));

sumator4 s1(.a(w[3:0]),
            .b(6),
            .ci(0),
            .s(w1));
 
cmp comp(.a1(w[1]),
            .a2(w[2]),
            .a3(w[3]),
            .a4(w[4]),
            .gt(w0));  
           
mux m(.i0(w[3:0]),
        .i1(w1),
        .sel(w0),
        .y(DIGIT));                    
         
 assign CO= w0;  
endmodule


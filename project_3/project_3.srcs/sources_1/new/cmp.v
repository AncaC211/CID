`timescale 1ns / 1ps

module cmp(
input a1,a2,a3,a4,
output gt
    );
   
wire w1,w2;
and p1(w1,a1,a3);
and p2(w2,a2,a3);
or p3(gt, a4,w2,w1);

endmodule
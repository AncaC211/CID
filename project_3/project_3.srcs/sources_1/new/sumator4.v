`timescale 1ns / 1ps


module sumator4(
input [3:0] a,
input [3:0] b,
input ci,
output[4:0] s
    );
assign s=a+b+ci;    

endmodule

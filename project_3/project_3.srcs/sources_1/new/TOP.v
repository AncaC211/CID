`timescale 1ns / 1ps


module TOP(
input [3:0]a1,
input [3:0]b1,
input [3:0]a0,
input [3:0]b0,
output [3:0] s0,
output [3:0] s1,
output s2
    );
  wire  ww;
 miniTOP t0(.A(a0),
            .B(b0),
            .CI(0),
            .CO(ww),
            .DIGIT(s0));
           
  miniTOP t1(.A(a1),
            .B(b1),
            .CI(ww),
            .CO(s2),
            .DIGIT(s1));              
endmodule
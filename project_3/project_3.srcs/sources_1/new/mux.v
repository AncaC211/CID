`timescale 1ns / 1ps

module mux(
input [3:0] i0,
input [3:0] i1,
input sel,
output reg [3:0] y
    );
   
always @(*)
case(sel)
0:y=i0;
1:y=i1;
default: y=0;
endcase  
endmodule

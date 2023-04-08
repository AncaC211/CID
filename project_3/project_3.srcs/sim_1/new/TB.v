`timescale 1ns / 1ps


module TB( );

reg [3:0] a0,a1,b0,b1;
wire [3:0] s0,s1;
wire s2;

TOP topper(
.a0(a0),
.a1(a1),
.b0(b0),
.b1(b1),
.s0(s0),
.s1(s1),
.s2(s2));

initial begin

a0=3;
b0=5;
a1=1;
b1=3;

#20 $stop;
end

endmodule

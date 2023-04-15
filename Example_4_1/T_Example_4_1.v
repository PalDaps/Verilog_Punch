`timescale 1ns / 1ns
`include "Example_4_1.v"

module T_Example_4_1

reg y;
wire a;
wire b;
wire c;

Example_4_1 name_of_object_module(a, b, c);

initial begin

 $dumpfile("T_Example_4_1.vcd");
 $dumpvars(0, T_Example_4_1);

 a = 0;
 b = 0;
 c = 0;
 #20;

 a = 0;
 b = 0;
 c = 1;
 #20;

 a = 0;
 b = 1;
 c = 1;
 #20;

 $display("Test complete!");


end

endmodule

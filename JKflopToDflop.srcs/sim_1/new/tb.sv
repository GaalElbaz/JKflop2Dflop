`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Module Name: tb
//////////////////////////////////////////////////////////////////////////////////

module tb();

logic clk, rst, D, Q, Qnot;
top DFF(.clk(clk), .rst(rst), .D(D), .Q(Q), .Qnot(Qnot));

// generate clock
always #20 clk = ~clk;

initial begin
    // RESET
    clk = 1'b0;
    rst = 1'b1;
    D = 1'b0;
    #10
    rst = 1'b0;
    #40
    D = 1'b1;
    #40
    D = 1'b0;
    #50
    $finish;
end
endmodule

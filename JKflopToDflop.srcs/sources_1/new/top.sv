`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: top
//////////////////////////////////////////////////////////////////////////////////


module top(
    input clk,
    input rst,
    input D,
    output logic Q,
    output logic Qnot
    );
    
    logic J,K;
    assign J = D;
    assign K = ~D;
    
    jkflop top(.clk(clk), .rst(rst), .J(J), .K(K), .Q(Q), .Qnot(Qnot));
endmodule

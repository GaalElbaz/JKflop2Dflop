`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Module Name: jkflop
// 
//////////////////////////////////////////////////////////////////////////////////

module jkflop(
    input clk,rst,J,K,
    output logic Q,Qnot
    );
    assign Qnot = ~Q;
    always_ff @(posedge clk or posedge rst) begin
        if(rst) begin
            Q <= 1'b0;
            Qnot <= 1'b1;
        end
        else begin
            case({J,K})
                2'b00: begin
                // No change
                    Q <= Q; 
                end
                2'b01: begin
                // K = 1 -> RESET
                    Q <= 1'b0;
                end
                2'b10: begin
                // J= 1 -> SET
                    Q <= 1'b1;
                end
                // j = 1 K = 1 -> invert
                2'b11: begin
                    Q <= ~Q;
                end
            endcase
        end
    end
endmodule

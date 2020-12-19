`timescale 1ns / 1ps

module register (clk,en,D_in,D_out);

input clk;
input en;
input D_in;
output reg D_out;

always @ (posedge clk)
    begin
        if (en)
            D_out <= D_in;
    end
endmodule

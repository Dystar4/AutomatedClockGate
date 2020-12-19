`timescale 1ns / 1ps

module clk_gate (clk,en,q);

input clk, en;
output q;
reg qd;

always@(*)
    begin
        if(~clk)
            qd = en;    
    end

assign q = clk & qd;

endmodule

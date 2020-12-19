module reg16( in, clk, en, out);

input [15:0]in;
input clk,en;
output reg [15:0]out;
integer i;


    always @(posedge clk)
	    begin
	    	if (en)
                for (i=0;i<16;i=i+1)
                    begin
		             out[i] <= in[i];
                    end
    	end
    

endmodule 

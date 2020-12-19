module reg32( in, clk, en, out);

input [31:0]in;
input clk,en;
output reg [31:0]out;
integer i;


    always @(posedge clk)
	    begin
	    	if (en)
                for (i=0;i<31;i=i+1)
                    begin
		             out[i] <= in[i];
                    end
    	end
    

endmodule 

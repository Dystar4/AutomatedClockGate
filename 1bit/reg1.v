module reg1( in, clk, en, out);

input in,clk,en;
output reg out;


    always @(posedge clk)
	    begin
	    	if (en)
		     out <= in;
    	end


endmodule 

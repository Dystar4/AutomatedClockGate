module reg4( in, clk, en, out);

input [3:0]in;
input clk,en;
output reg [3:0]out;
integer i;


    always @(posedge clk)
	    begin
	    	if (en)
                for (i=0;i<4;i=i+1)
                    begin
		             out[i] <= in[i];
                    end
    	end
    

endmodule 

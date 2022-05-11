module mux2 (input logic x,y,s, output logic m);
	assign m = s ? y : x ;
endmodule
	
 
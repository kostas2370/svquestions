module mux28 ( input logic [7:0] x,y, input logic s , output logic [7:0] m);
	assign m = s ? y : x;
endmodule 
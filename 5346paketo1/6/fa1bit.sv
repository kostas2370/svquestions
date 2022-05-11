module fa1bit(input logic ci,a,b , output logic s,co);
	logic x;
	xor(x,a,b);
	
	xor(s,ci,x);
	
	assign co= x ? ci : b;
endmodule


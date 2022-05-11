module mux2 (input logic x,y,s, output logic m);
	assign m = s ? y : x ;
endmodule


module mux28fg (input logic [7:0] x,y, input logic s,output logic [7:0]m);
	genvar i;
	generate
	for (i=0; i<=7;i=i+1) begin: forloop 
		mux2 muxx(x[i],y[i],s,m[i]);
	end
	endgenerate
endmodule

		
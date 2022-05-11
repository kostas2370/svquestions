module mux23(input logic [2:0] x,y,input logic s,output logic [2:0] m);
	assign m = s ? y:x;
endmodule 

module mux53(input logic [2:0] u,v,w,x,y,input logic s0,s1,s2,output logic [2:0] m);
	logic [2:0] x1,x2,x3;
	mux23 mux1(u,v,s0,x1);
	mux23 mux2(w,x,s0,x2);
	mux23 mux3(x1,x2,s1,x3);
	mux23 mux4(x3,y,s2,m);
	endmodule

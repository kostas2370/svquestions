//
module flags (input logic C,N,V,Z, output logic HS,LS,HI,LO,GE,LE,GT,LT);
	logic X1,X2,X3,X4;
	
	assign HS= C;
	not inv1(X1,C);
	or ogate1(LS,Z,X1);
	not inv2(X2,Z);
	and and1(HI,X2,C);
	not inv3(LO,C);
	xnor xnor1(GE,N,V);
	xor xor1(X3,N,V);
	or or2(LE,X3,Z);
	xnor xnor2(X4,N,V);
	and and3(GT,X2,X4);
	xor xorx(LT,N,V);
	endmodule
	
	
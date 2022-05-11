module mux53(input logic [2:0] u,v,w,x,y,input logic s0,s1,s2,output logic [2:0] m);
	always_comb 
	if (s2==0 & s1 ==0 & s0==0) m=u;
	else if (s2==0 & s1 ==0 & s0==0) m=u;
	else if (s2==0 & s1 ==0 & s0==1) m=v;
	else if (s2==0 & s1 ==1 & s0==0) m=w;
	else if (s2==0 & s1 ==1 & s0==1) m=x;
	else							 m=y;
	
	endmodule 
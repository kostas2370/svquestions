module farc4bit (input logic [3:0] a , b,input logic cin , output logic [3:0] s , output logic cout);
	
	logic c1,c2,c3;
	fa1bit adder1 (cin,a[0],b[0],s[0],c1);
	fa1bit adder2 (c1,a[1],b[1],s[1],c2);
	fa1bit adder3 (c2,a[2],b[2],s[2],c3);
	fa1bit adder4 (c3,a[3],b[3],s[3],cout);
endmodule

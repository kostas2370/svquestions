module alunbit
	#(parameter n = 8)
	(input logic [n-1:0] a,b,input logic [1:0]ALUcontrol,output logic [n-1:0] result ,output logic [3:0] ALUFlags);
	logic [n-1:0] x1,sum;
	logic cout,x2,x3;
	assign x1 = ALUcontrol[0] ? ~b : b;
	assign {cout,sum} = a + x1 + ALUcontrol[0];
	always_comb
	casex	(ALUcontrol[1:0])
		2'b0?: result = sum;
		2'b10: result = a&b;
		2'b11: result = a|b;
	endcase
	assign ALUFlags[3] = result[n-1];
	
	assign ALUFlags[2]= ~(|result);
	
	assign ALUFlags[1] = (~ALUcontrol[1] &  cout);
	assign x2 = sum[n-1]^a[n-1];
	assign x3 = ~a[n-1]~^b[n-1]~^ALUcontrol[0];
	assign ALUFlags[0]= x2&x3& ~ALUcontrol[1];
	
		
endmodule		

module prm (input logic D,A,E,F, output logic [3:0] y);
	always_comb
	if      (D==1)	y=4'b1000;
	else if (A==1) y=4'b0100;
	else if (E==1) y=4'b0010;
	else if (F==1)	y=4'b0001;
	else				y=4'b0000;
	
endmodule

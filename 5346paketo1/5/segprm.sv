module segprm(input logic D,A,E,F,output logic [6:0] segments);
	logic [3:0]y;
	prm prior(D,A,E,F,y);
	sevensegprm segm(y,segments);
endmodule
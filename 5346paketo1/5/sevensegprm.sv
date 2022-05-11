module sevensegprm(input logic[3:0] y,output logic [6:0] segments);
	always_comb
		case (y)
		
		8:  segments=	7'b0111101;
		4:	segments=	7'b1110111;
		2:	segments=	7'b1001111;
		1:	segments=	7'b1000111;
		default :segments = 7'b0000000;
	endcase
endmodule
		
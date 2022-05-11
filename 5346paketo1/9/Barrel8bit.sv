module Barrel8bit ( input logic [2:0] amt, input logic [7:0] a ,input logic [1:0] opbarrel ,output logic [7:0] rmout);
	logic [7:0] LSL,LSR,ASR,ROR;
	// ROR
	always_comb 
		case(amt)
			3'b000:ROR=a;
			3'b001:ROR={a[0],a[7],a[6],a[5],a[4],a[3],a[2],a[1]};
			3'b010:ROR={a[1],a[0],a[7],a[6],a[5],a[4],a[3],a[2]};
			3'b011:ROR={a[2],a[1],a[0],a[7],a[6],a[5],a[4],a[3]};
			3'b100:ROR={a[3],a[2],a[1],a[0],a[7],a[6],a[5],a[4]};
			3'b101:ROR={a[4],a[3],a[2],a[1],a[0],a[7],a[6],a[5]};
			3'b110:ROR={a[5],a[4],a[3],a[2],a[1],a[0],a[7],a[6]};
			3'b111:ROR={a[6],a[5],a[4],a[3],a[2],a[1],a[0],a[7]};
			default:ROR=8'bxxxxxxxx;
			endcase
	//ASR
	always_comb
		case(amt)
			3'b000:ASR=a;
			3'b001:ASR={a[7],a[7],a[6],a[5],a[4],a[3],a[2],a[1]};
			3'b010:ASR={a[7],a[7],a[7],a[6],a[5],a[4],a[3],a[2]};
			3'b011:ASR={a[7],a[7],a[7],a[7],a[6],a[5],a[4],a[3]};
			3'b100:ASR={a[7],a[7],a[7],a[7],a[7],a[6],a[5],a[4]};
			3'b101:ASR={a[7],a[7],a[7],a[7],a[7],a[7],a[6],a[5]};
			3'b110:ASR={a[7],a[7],a[7],a[7],a[7],a[7],a[7],a[6]};
			3'b111:ASR={a[7],a[7],a[7],a[7],a[7],a[7],a[7],a[7]};
			default:ASR=8'bxxxxxxxx;
			endcase
	//LSR
	always_comb
		case(amt)
			3'b000:LSR=a;
			3'b001:LSR={1'b0,a[7],a[6],a[5],a[4],a[3],a[2],a[1]};
			3'b010:LSR={1'b0,1'b0,a[7],a[6],a[5],a[4],a[3],a[2]};
			3'b011:LSR={1'b0,1'b0,1'b0,a[7],a[6],a[5],a[4],a[3]};
			3'b100:LSR={1'b0,1'b0,1'b0,1'b0,a[7],a[6],a[5],a[4]};
			3'b101:LSR={1'b0,1'b0,1'b0,1'b0,1'b0,a[7],a[6],a[5]};
			3'b110:LSR={1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[7],a[6]};
			3'b111:LSR={1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[7]};
			default:LSR=8'bxxxxxxxx;
			endcase
	
		//LSL
	always_comb
		case(amt)
			3'b000:LSL=a;
			3'b001:LSL={a[6],a[5],a[4],a[3],a[2],a[1],a[0],1'b0};
			3'b010:LSL={a[5],a[4],a[3],a[2],a[1],a[0],1'b0,1'b0};
			3'b011:LSL={a[4],a[3],a[2],a[1],a[0],1'b0,1'b0,1'b0};
			3'b100:LSL={a[3],a[2],a[1],a[0],1'b0,1'b0,1'b0,1'b0};
			3'b101:LSL={a[2],a[1],a[0],1'b0,1'b0,1'b0,1'b0,1'b0};
			3'b110:LSL={a[1],a[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
			3'b111:LSL={a[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
			default:LSL=8'bxxxxxxxx;
			endcase

	//barrel
	always_comb
		case(opbarrel)
			2'b00:rmout=LSR;
			2'b01:rmout=LSL;
			2'b11:rmout=ASR;
			2'b10:rmout=ROR;
		endcase
		

	endmodule
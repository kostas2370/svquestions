module ALUBarrel 
#(parameter n = 8)

(input logic [n-1:0] Rn,Rm,input logic [2:0] amt,input logic [1:0] opbarrel,ALUControl,output logic [n-1:0] Rd,output logic [3:0] ALUflags,output logic [7:0] compflags);
logic [n-1:0] barrelx;
logic  [3:0] flaggs;
logic HS,LS,HI,LO,GE,LE,GT,LT;
Barrel8bit barrel(amt,Rm,opbarrel,barrelx);
alunbit 	alu(Rn,barrelx,ALUControl,Rd,flaggs);
assign ALUflags= flaggs;
flags flaag (flaggs[1],flaggs[3],flaggs[0],flaggs[2],HS,LS,HI,LO,GE,LE,GT,LT);
assign compflags[7:0]={HS,LS,HI,LO,GE,LE,GT,LT};
endmodule 

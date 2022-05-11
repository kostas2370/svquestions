module nand41(input logic a,b,c,d , output logic y);
	assign y =~(a&b&c&d);
endmodule

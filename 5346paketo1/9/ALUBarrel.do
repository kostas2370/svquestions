
vsim ALUBarrel
add wave *
force Rn 00000001
force Rm 00000001
force amt 000
force opbarrel 00
force ALUControl 00
run 100
force Rm 10010011
force Rn 00110011
force ALUControl 01
run 100
force Rn 00011101
force Rm 00001001
force amt 100
force opbarrel 01
run 100
force amt 101
run 100
force ALUControl 00
run 100
force amt 100
run 100

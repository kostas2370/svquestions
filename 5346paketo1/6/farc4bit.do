
vsim farc4bit
add wave * 
force a 0000
force b 0001
force cin 0
run 100
force a 1111
force b 1111
run 100
force cin 1
run 100
force cin 0
force a 1001
force b 1100
run 100
force a 0011
run 100

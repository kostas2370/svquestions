vsim alunbit

add wave *
force a 00000000
force b 00000000
force ALUcontrol 00
run 100
force a 00000000
force b 11111111
run 100
force a 00000001
run 100
force a 11111111
force b 00000001
run 100
force ALUcontrol 01
force a 00000000
force b 00000000
run 100
force b 11111111
run 100
force a 00000001
force b 00000001
run 100
force a 10000000
force b 00000001
run 100
force ALUcontrol 10
force a 11111111
force b 11111111
run 100
force b 01111000
run 100
force a 01111000
force b 00100001
run 100
force a 00000000
force b 11111111
run 100
force ALUcontrol 11
force a 11111111
force b 11111111
run 100
force a 01111000
force b 00100001
run 100
force a 00000000
force b 11111111
run 100
force b 00000000
run 100
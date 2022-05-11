

vsim nand41
add wave *
force a 0 0,1 100 -repeat 200
force b 0 0,1 200 -repeat 400
force c 0 0,1 400 -repeat 800
force d 0 0,1 800 -repeat 1600
run 1600



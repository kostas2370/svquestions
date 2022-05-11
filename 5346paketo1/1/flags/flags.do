
vsim flags
add wave *
force Z 0 0,1 100 -repeat 200
force V 0 0,1 200 -repeat 400
force N 0 0,1 400 -repeat 800
force C 0 0,1 800 -repeat 1600
run 1600

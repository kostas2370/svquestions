
vsim mux53
add wave *
force u 101
force v 111
force w 110
force x 001
force y 010
force s0 0 0,1 100 -repeat 200
force s1 0 0,1 200 -repeat 400
force s2 0 0,1 400 -repeat 800
run 800



vsim segprm
add wave *
force D 1
force F 1
force A 0
force E 0
run 200
force D 0
run 200
force A 1
run 200
force A 0
force E 1
run 200

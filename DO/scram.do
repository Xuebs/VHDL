
add wave *

force keith 00000000
force reset 0
force clk 0
force size 00
force scramble 0
force ld 0
run 1

force keith 10101010
force clk 1
run 1
force clk 0
run 1

force ld 1
force clk 1
run 1
force ld 0
force clk 0
run 1

force ld 1
force scramble 1
force clk 1
run 1
force clk 0
run 1

force size 01
force clk 1
run 1
force clk 0
run 1

force size 10
force clk 1
run 1
force clk 0
run 1

force size 11
force clk 1
run 1
force clk 0
run 1

force size 00
force scramble 0
force keith 01010101
force clk 1
run 1
force clk 0
run 1

force size 01
force clk 1
run 1
force clk 0
run 1

force size 10
force clk 1
run 1
force clk 0
run 1

force size 11
force clk 1
run 1
force clk 0
run 1

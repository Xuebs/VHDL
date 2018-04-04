
add wave *

force din 0000
force reset 0
force clk 0
force sel 00
run 1

force clk 1
run 1

force clk 0
run 1

force din 0001
force clk 1
run 1

force clk 0
force sel 01
run 1

force din 0010
force clk 1
run 1

force clk 0
force sel 10
run 1

force din 0011
force clk 1
run 1

force clk 0
force sel 11
run 1

force din 0100
force clk 1
run 1

force clk 0
force sel 00
run 1

force reset 1
run 1

force reset 0
run 1




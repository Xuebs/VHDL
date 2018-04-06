
add wave *

force din 1000
force reset 0
force clk 0
force sel 00
run 1

force clk 1
run 1

force clk 0
run 1

force din 0110
force clk 1
run 1

force clk 0
force sel 00
run 1

force din 0101
force clk 1
run 1

force clk 0
force sel 01
run 1

force din 0011
force clk 1
run 1

force clk 0
force sel 00
run 1

force din 0100
force clk 1
run 1

force clk 0
force sel 01
run 1

force reset 1
run 1

force reset 0
run 1




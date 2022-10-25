main:
	iverilog -o out.vpp comparator.v comparator_tb.v
	vvp out.vpp
	gtkwave test.vcd
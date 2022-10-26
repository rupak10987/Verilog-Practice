main:
	iverilog -o out.vpp shifter.v shifter_tb.v
	vvp out.vpp
	gtkwave test.vcd
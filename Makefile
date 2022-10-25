main:
	iverilog -o out.vpp comparator.v 2_bit_comparator.v 2_bit_comparator_tb.v
	vvp out.vpp
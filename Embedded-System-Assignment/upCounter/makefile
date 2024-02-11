
all:	result.vcd
result.vcd:	counter.vhdl	counter_test.vhdl
	ghdl	-a	-fsynopsys	counter.vhdl
	ghdl	-a	counter_test.vhdl
	ghdl	-e	-fsynopsys test_counter
	ghdl	-r	-fsynopsys test_counter	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd

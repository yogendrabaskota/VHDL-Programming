all:	result.vcd
result.vcd:	lcm.vhdl	lcm_test.vhdl
	ghdl	-a	-fsynopsys	lcm.vhdl
	ghdl	-a	lcm_test.vhdl
	ghdl	-e	-fsynopsys lcm_test
	ghdl	-r	-fsynopsys lcm_test	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd

all:	result.vcd
result.vcd:	jk.vhdl	jk_test.vhdl
	ghdl	-a	-fsynopsys	jk.vhdl
	ghdl	-a	-fsynopsys	jk_test.vhdl
	ghdl	-e	-fsynopsys	jk_testbench
	ghdl	-r	-fsynopsys	jk_testbench	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd

all:	result.vcd
result.vcd:	gcd.vhdl	gcd_test.vhdl
	ghdl	-a	-fsynopsys	gcd.vhdl
	ghdl	-a	gcd_test.vhdl
	ghdl	-e	-fsynopsys test_gcd
	ghdl	-r	-fsynopsys test_gcd	--vcd=result.vcd	--stop-time=2000us
clean:
	rm	-rf	result.vcd

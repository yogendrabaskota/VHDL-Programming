all:	result.vcd

result.vcd:	twoToFourDecoder.vhdl	twoToFour_Testbench.vhdl
	ghdl	-a	-fsynopsys	twoToFourDecoder.vhdl
	ghdl	-a	-fsynopsys	twoToFour_Testbench.vhdl
	ghdl	-e	-fsynopsys	twotofourtest
	ghdl	-r	-fsynopsys	twotofourtest	--vcd=result.vcd
clean:
	rm	-rf	result.vcd

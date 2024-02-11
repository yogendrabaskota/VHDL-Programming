all:	result.vcd
result.vcd:	fullAdder.vhdl	FA_Test.vhdl
	ghdl	-a	-fsynopsys	fullAdder.vhdl
	ghdl	-a	-fsynopsys	FA_Test.vhdl
	ghdl	-e	-fsynopsys	fatest
	ghdl	-r	-fsynopsys	fatest	--vcd=result.vcd
clean:
	rm	-rf	result.vcd


all:	result.vcd
result.vcd:	1to8.vhdl	1to8test.vhdl
	ghdl	-a	-fsynopsys	1to8.vhdl
	ghdl	-a	-fsynopsys	1to8test.vhdl
	ghdl	-e	-fsynopsys	demultiplexer_test
	ghdl	-r	-fsynopsys	demultiplexer_test	--vcd=result.vcd
clean:
	rm	-rf	result.vcd


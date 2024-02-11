all:	result.vcd
result.vcd:	sequence.vhdl	sequence_Test.vhdl
	ghdl	-a	-fsynopsys	sequence.vhdl
	ghdl	-a	-fsynopsys	sequence_Test.vhdl
	ghdl	-e	-fsynopsys	sequence_test
	ghdl	-r	-fsynopsys	sequence_test 	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd

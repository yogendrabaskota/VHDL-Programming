all: result.vcd
result.vcd:	mux.vhdl	muxTestbench.vhdl
	ghdl	-a	-fsynopsys	mux.vhdl
	ghdl	-a	-fsynopsys	muxTestbench.vhdl
	ghdl	-e	-fsynopsys	test_bench
	ghdl	-r	-fsynopsys	test_bench	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd





	
SV_SRCS=$(wildcard *.sv)
RUN=$(SV_SRCS:.sv=)
FILES=tb.sv
all: $(RUN)

%: %.sv
	irun +gui +access+rw $(FILES)


clean:
	rm -rf INCA_libs *.log *.vcd *.diag *.key

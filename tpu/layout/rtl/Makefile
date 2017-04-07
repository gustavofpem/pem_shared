SV_SRCS=$(wildcard *.sv)
RUN=$(SV_SRCS:.sv=)
FILES=contador_rfwild.sv
all: $(RUN)

%: %.sv
	@echo ""
	irun +access+rw $(FILES)


clean:
	rm -rf INCA_libs *.log *.vcd *.key

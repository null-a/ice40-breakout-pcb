.DELETE_ON_ERROR:

.PHONY: all lint prog clean

srcs = $(wildcard *.v)

all: fpga.bin

%.json: $(srcs)
	yosys -p 'synth_ice40 -top $(basename $@) -json $@' $^

%.asc: %.json pins.pcf
	nextpnr-ice40 --hx4k --package tq144 --freq 12 --json $< --pcf pins.pcf --asc $@

%.bin: %.asc
	icepack $< $@

prog: fpga.bin
	tinyprog -p $<

clean:
	rm -f *.json *.asc *.bin

all: zynq-zturn.dtb

zynq-zturn.dtb: zynq-zturn.dts
	dtc -I dts -O dtb -o $@ $<
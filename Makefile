all: zynq-zturn.dtb

clean: 
	rm -f zynq-zturn.dtb

zynq-zturn.dtb: zynq-zturn.dts
	dtc -I dts -O dtb -b 0 -Wno-interrupt_provider -Wno-unit_address_vs_reg -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-simple_bus_reg -Wno-unique_unit_address -o $@ $<

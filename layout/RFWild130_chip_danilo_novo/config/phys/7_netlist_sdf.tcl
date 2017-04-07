##Export design netlist
saveNetlist ./layout/done/chip_rfwild.routed.v
saveNetlist -phys -excludeLeafCell -flattenBus ./layout/done/chip_rfwild.phys_inst.v
##Export design
write_sdf -recompute_parallel_arcs -min_view v_test_fast_m40c -typ_view v_test_nom_25c -max_view v_test_slow_125c \
	  -process best:typical:worst \
	  -voltage 1.32:1.25:1.08 -temperature -40.0:25.0:125.0  \
	  -timescale 1ps \
	  ./layout/done/chip_rfwild.routed.sdf

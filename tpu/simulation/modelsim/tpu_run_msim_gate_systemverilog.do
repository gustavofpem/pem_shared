transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -sv -work work +incdir+. {tpu.svo}

vlog -sv -work work +incdir+/home/gustavof/pem/pem_shared/tpu {/home/gustavof/pem/pem_shared/tpu/tb.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run 1 ns

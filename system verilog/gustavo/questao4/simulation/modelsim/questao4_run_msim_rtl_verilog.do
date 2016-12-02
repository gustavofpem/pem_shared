transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/gustavof/pem/pem_shared/system\ verilog/gustavo/questao4 {/home/gustavof/pem/pem_shared/system verilog/gustavo/questao4/DE1_TOP.v}
vlog -sv -work work +incdir+/home/gustavof/pem/pem_shared/system\ verilog/gustavo/questao4 {/home/gustavof/pem/pem_shared/system verilog/gustavo/questao4/questao4.sv}

vlog -sv -work work +incdir+/home/gustavof/pem/pem_shared/system\ verilog/gustavo/questao4 {/home/gustavof/pem/pem_shared/system verilog/gustavo/questao4/tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run 1 sec

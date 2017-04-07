#logical synthesis folder log and reports folder
SYN_F=./synth

#layout PRE and POST P&R netlists and reports
LAY_F=./layout

#folder containing config files
CONFIG_F=./config

#testbench folder
TB_F=./tb

#name of top level module
TOP_MOD=contador_rfwild

#name of testbench's top level module
TB_TOP=contador_tb

#Path to Verilog Definitions
DIGITAL_VER_PATH = /opt/cadence/IBM_PDK/bicmos8hp/BiCMOS8HP_Digital_Kit/ibm_cmos8hp_sc_1p2v_12t_rvt_20130404/sc_1p2v_12t_rvt/v.20130404/verilog
IO_VER_PATH = /opt/cadence/IBM_PDK/bicmos8hp/BiCMOS8HP_WBIO_Base/ibm_cmos8hp_short_io_base_wb_io_20160727/short_io/base_wb_io/v.20160727/verilog
IO_SUP_VER_PATH = /opt/cadence/IBM_PDK/bicmos8hp/BiCMOS8HP_WBIO_Support/ibm_cmos8hp_wb_io_support_wb_io_20120603/wb_io/support_wb_io/v.20120603/verilog

##########################
##      Simulation      ##
##########################

verifGld:
	irun -64bit -l $(TB_F)/log/logfile +access+rw +nctimescale+1ps/1ps $(TB_F)/tb_golden.sv -top $(TB_TOP)

##Compile SDF file before for timing annotation
compileSdfSyn:
	ncsdfc $(SYN_F)/$(TOP_MOD).synth.sdf

verifSyn:
	irun -64bit -gui -l ./tb/log/logfile +access+rw +nctimescale+1ps/1ps $(TB_F)/tb_synth.sv -top $(TB_TOP) \
	-maxdelays -sdf_cmd_file $(TB_F)/sdf_cmd_synth \
	-y $(DIGITAL_VER_PATH) +libext+.v

##Compile SDF file before for timing annotation
compileSdfLay:
	ncsdfc $(LAY_F)/done/chip_rfwild.routed.sdf

verifLay:
	irun -64bit -gui -l ./tb/log/logfile +access+rw +nctimescale+1ps/1ps $(TB_F)/tb_lay.sv -top $(TB_TOP) \
	-maxdelays -sdf_cmd_file $(TB_F)/sdf_cmd_lay \
	-y $(DIGITAL_VER_PATH) +libext+.v \
	-y $(IO_VER_PATH) +libext+.v \
	-y $(IO_SUP_VER_PATH) +libext+.v

cleanSim:
	rm -rf ./waves.shm ./INCA_libs $(TB_F)/log/logfile irun.key

##########################
## Logical Synthesis    ##
##########################

syn:
	rc -f $(CONFIG_F)/synth.tcl -cmdfile $(SYN_F)/log/cmd.log -logfile $(SYN_F)/log/rc.log

#######################################
## Encounter for Layout Generation   ##
#######################################

lay:
	encounter -win -init $(CONFIG_F)/rfwild.conf.tcl -log $(LAY_F)/log/encounterlog

###################################
##  Clean up the whole project   ##
###################################

clean:
	rm -rf ./fv ./*.cts_trace ./*.rpt ./*.old ./*.rguide ./*.log ./CTS_RP_MOVE.txt \
		./waves.shm ./INCA_libs $(TB_F)/log/logfile irun.key ./extLogDir ./fe_init.io\
 		$(LAY_F)/*.* $(LAY_F)/generic/*.* \
		$(LAY_F)/log/* $(LAY_F)/rpt/* $(LAY_F)/done/* \
		$(SYN_F)/log/* $(SYN_F)/$(TOP_MOD).* $(SYN_F)/rpt/* \
		*antenna.lef minchuan *.key *.design_facts


################################################
#                                              #
#  FirstEncounter Input configuration file     #
#                                              #
################################################
set TECHLIBBASE "/opt/techlib/ibm013/bicmos8hp"
set TIME_LIST "{typ_v120_t025/PnomV1p20T025_STD_CELL_8HP_12T.lib \
		slow_v108_t125/PwcV1p08T125_STD_CELL_8HP_12T.lib \
		fast_v132_tm40/PbcV1p32Tm40_STD_CELL_8HP_12T.lib \
		IBM_CMOS8HP_BASE_WB_IO_TYP_V120_V150_T25.lib}"

set cwd .
#New format
global setUserDataValue
global set_global
setUserDataValue init_pwr_net {{VDD} {VDD150}}
setUserDataValue init_gnd_net {VSS}
setUserDataValue conf_ioOri {R0}
setUserDataValue init_verilog {./config/chip.v}
setUserDataValue init_design_netlisttype {Verilog}
setUserDataValue init_design_settop {1}
setUserDataValue init_top_cell {chip_rfwild}
setUserDataValue init_mmmc_file {./config/MMMCSetup.tcl}
setUserDataValue init_io_file {./config/chip.io}




#Old format
global rda_Input
set rda_Input(import_mode) {-treatUndefinedCellAsBbox 0 -keepEmptyModule 1 -useLefDef56 1 }
set rda_Input(ui_netlisttype) {Verilog}
set rda_Input(ui_timelib,max) "$TECHLIBBASE/synopsys/slow_v108_t125/PwcV1p08T125_STD_CELL_8HP_12T.lib \
				$TECHLIBBASE/synopsys/slow_v108_v140_t125/IBM_CMOS8HP_BASE_WB_IO_SLOW_V108_V140_T125.lib"
set rda_Input(ui_timelib,min) "$TECHLIBBASE/synopsys/fast_v132_tm40/PbcV1p32Tm40_STD_CELL_8HP_12T.lib \
				$TECHLIBBASE/synopsys/fast_v132_v160_tm40/IBM_CMOS8HP_BASE_WB_IO_FAST_V132_V160_TM40.lib"
set rda_Input(ui_timelib) "$TECHLIBBASE/synopsys/typ_v120_t025/PnomV1p20T025_STD_CELL_8HP_12T.lib \
			$TECHLIBBASE/synopsys/typ_v120_v150_t25/IBM_CMOS8HP_BASE_WB_IO_TYP_V120_V150_T25.lib"
set rda_Input(ui_leffile) "$TECHLIBBASE/lef/bicmos8hp_7AM_41_tech.lef \
			   $TECHLIBBASE/lef/IBM_BICMOS8HP_SC_1P2V_12T_RVT_091712.lef \
			   $TECHLIBBASE/lef/CMOS8HP_BASE_WB_IO_7LM.lef"
set rda_Input(ui_captbl_file) "$TECHLIBBASE/captable/bicmos8hp_7AM_41_nm.CapTbl"
set rda_Input(ui_cts_cell_footprint) {}
set rda_Input(ui_cts_cell_list) {}
set rda_Input(ui_core_cntl) {}
set rda_Input(ui_aspect_ratio) {}
set rda_Input(ui_core_util) {}
set rda_Input(ui_core_height) {}
set rda_Input(ui_core_width) {}
set rda_Input(ui_core_to_left) {}
set rda_Input(ui_core_to_right) {}
set rda_Input(ui_core_to_top) {}
set rda_Input(ui_core_to_bottom) {}
set rda_Input(ui_max_io_height) {0}
set rda_Input(ui_row_height) {}
set rda_Input(ui_isHorTrackHalfPitch) {0}
set rda_Input(ui_isVerTrackHalfPitch) {1}
set rda_Input(ui_isOrigCenter) {0}
set rda_Input(ui_isVerticalRow) {0}
set rda_Input(ui_exc_net) ""
set rda_Input(flip_first) {1}
set rda_Input(double_back) {1}
set rda_Input(assign_buffer) {1}
######################################
#Not needed if Power Pads are present#
#set rda_Input(ui_pg_connections) [list \
#                        {PIN:VDD:} \
#                        {PIN:VSS:} \
#                              ]
######################################
#set rda_Input(PIN:vdd:) {VDD}
#set rda_Input(PIN:vss:) {VSS}
#set rda_Input(ui_gen_footprint) {}
init_design
#Define 130nm tech mode
setDesignMode -process 130 -flowEffort high
source ./config/phys/1_floorplan.tcl
fit


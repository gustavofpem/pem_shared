# Cadence Encounter(R) RTL Compiler
#   version RC14.28 - v14.20-s067_1 (64-bit) built Jun 22 2016
#
# Run with the following arguments:
#   -logfile rc.log
#   -cmdfile rc.cmd

source config/synth.tcl 
source config/synth.tcl 
source config/synth.tcl 
set DESIGN   tpu;
set LAYDIR   layout;
set SYNDIR   synth;
set RPTDIR   rpt;
set LOGDIR   log;
set HDL_FILES [list tpu.sv rf.sv clock_gen.sv timer.sv]
set_attribute hdl_search_path ./rtl
set_attribute information_level 9 
set TECHLIBBASE    "/opt/techlib/ibm013/bicmos8hp"
set TECHLIB_S_PATH "$TECHLIBBASE/synopsys \
                    $TECHLIBBASE/gds2 \
                    $TECHLIBBASE/lef  \
                    $TECHLIBBASE/captable \
                    $TECHLIBBASE/ict \
                    $TECHLIBBASE/tch"
set LEF_LIST "{bicmos8hp_7AM_41_tech.lef \
          IBM_BICMOS8HP_SC_1P2V_12T_RVT_091712.lef}"
set TIME_LIST "{typ_v120_t025/PnomV1p20T025_STD_CELL_8HP_12T.lib}" 
set CAPTBL_LIST "bicmos8hp_7AM_41_nm.CapTbl"
set_attribute lib_search_path $TECHLIB_S_PATH
set_attribute library $TIME_LIST
set_attribute lef_library $LEF_LIST
set LEF_LIST "bicmos8hp_7AM_41_tech.lef IBM_BICMOS8HP_SC_1P2V_12T_RVT_091712.lef"
set_attribute lef_library $LEF_LIST
ls
set_attribute lef_library $LEF_LIST
set_attribute lef_library $LEF_LIST
set_attribute lef_library $LEF_LIST
set_attribute lef_library $LEF_LIST
set_attribute lef_library $LEF_LIST
set_attribute lef_library $LEF_LIST
set_attribute lef_library $LEF_LIST
quit

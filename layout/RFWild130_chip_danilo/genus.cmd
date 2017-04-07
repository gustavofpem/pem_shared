# Cadence Genus(TM) Synthesis Solution, Version 16.21-s018_1, built Feb 10 2017

# Date: Sat Apr 01 09:54:49 2017
# Host: pem-24 (x86_64 w/Linux 3.10.0-514.10.2.el7.x86_64) (4cores*8cpus*Intel(R) Core(TM) i7-6700 CPU @ 3.40GHz 8192KB)
# OS:   CentOS Linux release 7.3.1611 (Core) 

set DESIGNcontador_rfwild;
set DESIGN   contador_rfwild;
set LAYDIR   layout;
set SYNDIR   synth;
set RPTDIR   rpt;
set LOGDIR   log;
set HDL_FILES [list contador_rfwild.sv ]
set_db hdl_search_path ./rtl
set_db information_level 6 
set_db information_level 9
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
set CAPTBL_LIST "{bicmos8hp_7AM_41_nm.CapTbl}"
set_db lib_search_path $TECHLIB_S_PATH
set_db library $TIME_LIST
set_db lef_library $LEF_LIST
set_db cap_table_file $CAPTBL_LIST
set_db cap_table_file $CAPTBL_LIST
set CAPTBL_LIST "bicmos8hp_7AM_41_nm.CapTbl"
set_db cap_table_file $CAPTBL_LIST
et_db interconnect_mode ple
set_db interconnect_mode ple
set_db tns_opto true
read_hdl -sv ${HDL_FILES}  
elaborate $DESIGN
read_sdc -stop_on_errors ./config/contador_rfwild.sdc
check_design -unresolved
synthesize -to_mapped -eff high

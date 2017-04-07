##################################################
##                                              ##
## Logical Synthesis TCL Template File          ##
##                                              ##
##################################################

#Documentation
#. /opt/cadence/RC141/tools.lnx86/bin/cdnshelp
#Comandos:
#source /opt/cds/cds.sh - ferramenta nova
#source /opt/cds/cds_dk.sh - ferramenta antiga
#genus -gui - ferramenta nova
#rc -gui - ferramenta antiga


#name of toplevel module
set DESIGN   tpu;
#name of Encounter file export folder
set LAYDIR   layout;
#synthesis log and reports root dir name
set SYNDIR   synth;
#report dir name
set RPTDIR   rpt;
#RC log dir name
set LOGDIR   log;
set HDL_FILES [list tpu.sv rf.sv clock_gen.sv timer.sv]

set_attribute hdl_search_path ./rtl

set_attribute information_level 9 


#clean old runs
#exec rm -rf ./$SYNDIR/$DESIGN
#exec rm -rf ./$SYNDIR/$RPTDIR/* 
#exec rm -rf ./$SYNDIR/$LOGDIR/*
#exec rm -rf ./$LAYDIR/*.*  


#########################
##                     ## 
## Tech Libs           ##
##                     ##
#########################
set TECHLIBBASE    "/opt/techlib/ibm013/bicmos8hp"
set TECHLIB_S_PATH "$TECHLIBBASE/synopsys \
                    $TECHLIBBASE/gds2 \
                    $TECHLIBBASE/lef  \
                    $TECHLIBBASE/captable \
                    $TECHLIBBASE/ict \
                    $TECHLIBBASE/tch"

set LEF_LIST "bicmos8hp_7AM_41_tech.lef IBM_BICMOS8HP_SC_1P2V_12T_RVT_091712.lef"

set TIME_LIST "{typ_v120_t025/PnomV1p20T025_STD_CELL_8HP_12T.lib}" 
#      slow_v108_t125/PwcV1p08T125_STD_CELL_8HP_12T.lib \ <-| choose one!
#      fast_v132_tm40/PbcV1p32Tm40_STD_CELL_8HP_12T.lib}" <-| choose one!
#      IBM_CMOS8HP_BASE_WB_IO_TYP_V120_V150_T25.lib}" <- PAD/IO only, unused!

set CAPTBL_LIST "bicmos8hp_7AM_41_nm.CapTbl"
      

set_attribute lib_search_path $TECHLIB_S_PATH

set_attribute library $TIME_LIST
set_attribute lef_library $LEF_LIST
set_attribute cap_table_file $CAPTBL_LIST
set_attribute interconnect_mode ple

#Optimizations
set_attribute tns_opto true


###################################
##                               ## 
## RTL Analysis and Elaboration  ##
##                               ##
###################################
read_hdl -sv ${HDL_FILES}  
elaborate $DESIGN

#Create timing mode
#create_mode -name nominal -default
## Load timing constraints from SDC file
read_sdc -stop_on_errors ./config/tpu.sdc


# check that the design is OK so far
check_design -unresolved

##Design with generic ports
synthesize -to_generic
#write_design -basename ./$LAYDIR/generic/$DESIGN

##Design mapped to technology STD Cells
synthesize -to_mapped -eff high

#####################################################################
## Write Results & Reports                                          #
#####################################################################

report timing       >       ./$SYNDIR/$RPTDIR/$DESIGN.timing.rpt
report timing -lint >   ./$SYNDIR/$RPTDIR/$DESIGN.timinglint.rpt
report area         >       ./$SYNDIR/$RPTDIR/$DESIGN.area.rpt
report power        >       ./$SYNDIR/$RPTDIR/$DESIGN.power.rpt
report gates        >       ./$SYNDIR/$RPTDIR/$DESIGN.gate.rpt

write_hdl -mapped > ./$LAYDIR/$DESIGN.synth.v
write_sdf -design $DESIGN > ./$SYNDIR/$DESIGN.synth.sdf
#write_encounter design -basename ./$LAYDIR/$DESIGN
quit

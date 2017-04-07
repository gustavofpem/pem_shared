#######################################################
#                                                     
#  Encounter Command Logging File                     
#  Created on Sat Apr  1 14:31:09 2017                
#                                                     
#######################################################

#@(#)CDS: Encounter v14.28-s033_1 (64bit) 03/21/2016 13:34 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute v14.28-s005 NR160313-1959/14_28-UB (database version 2.30, 267.6.1) {superthreading v1.25}
#@(#)CDS: CeltIC v14.28-s006_1 (64bit) 03/08/2016 00:08:23 (Linux 2.6.18-194.el5)
#@(#)CDS: AAE 14.28-s002 (64bit) 03/21/2016 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 14.28-s007_1 (64bit) Mar  7 2016 23:11:05 (Linux 2.6.18-194.el5)
#@(#)CDS: CPE v14.28-s006
#@(#)CDS: IQRC/TQRC 14.2.2-s217 (64bit) Wed Apr 15 23:10:24 PDT 2015 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set init_pwr_net {{VDD} {VDD150}}
set init_gnd_net VSS
set conf_ioOri R0
set init_verilog ./config/chip.v
set init_design_netlisttype Verilog
set init_design_settop 1
set init_top_cell chip_rfwild
set init_mmmc_file ./config/MMMCSetup.tcl
set init_io_file ./config/chip.io
setImportMode -treatUndefinedCellAsBbox 0 -keepEmptyModule 1 -useLefDef56 1
init_design
setDesignMode -process 130 -flowEffort high
setIoFlowFlag 0
loadIoFile ./config/chip.io
floorPlan -fplanOrigin l -dieSizeByIoHeight max -site CORE -r 0.25 0.70 15.0 15.0 15.0 15.0
loadIoFile ./config/chip.io
addIoFiller -cell FILLER10_VDD150_PM -prefix padfill
addIoFiller -cell FILLER1_VDD150_PM -prefix padfill
addIoFiller -cell FILLERDOT1_VDD150_PM -prefix padfill
fit
fit

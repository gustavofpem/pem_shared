set TECHLIBBASE "/opt/cadence/IBM_PDK/bicmos8hp"
## Create library views
create_library_set  \
 	-name bc_v1p32_Tm40c \
 	-timing $rda_Input(ui_timelib,min)
 	#-si $rda_Input(ui_cdb_file,min)

create_library_set  \
	-name wc_v1p08_T125c \
 	-timing $rda_Input(ui_timelib,max)
 	#-si $rda_Input(ui_cdb_file,max)

create_library_set  \
	-name nom_v1p25_T25c \
 	-timing $rda_Input(ui_timelib)
 	#-si $rda_Input(ui_cdb_file)

## Create RC Corners
create_rc_corner -name bc_Tm40c_cmin \
		 -qx_tech_file "$TECHLIBBASE/BiCMOS8HP_Fire_Ice/bicmos8hp_cadence_20160215/cadence/v.20160215/tch/bicmos8hp_7AM_41_SigCmin.tch" \
		 -T -40
#		-cap_table "$TECHLIBBASE/BiCMOS8HP_Fire_Ice/bicmos8hp_cadence_20160215/cadence/v.20160215/captable/bicmos8hp_6MA_21_SigCmin.CapTbl"                                               

create_rc_corner -name wc_T125c_cmax \
		 -qx_tech_file "$TECHLIBBASE/BiCMOS8HP_Fire_Ice/bicmos8hp_cadence_20160215/cadence/v.20160215/tch/bicmos8hp_7AM_41_SigCmax.tch" \
		 -T 125
#                 -cap_table "$TECHLIBBASE/BiCMOS8HP_Fire_Ice/bicmos8hp_cadence_20160215/cadence/v.20160215/captable/bicmos8hp_6MA_21_SigCmax.CapTbl"

create_rc_corner -name nom_T25c \
                 -qx_tech_file "$TECHLIBBASE/BiCMOS8HP_Fire_Ice/bicmos8hp_cadence_20160215/cadence/v.20160215/tch/bicmos8hp_7AM_41_nm.tch" \
		 -T 25
#                 -cap_table "$TECHLIBBASE/BiCMOS8HP_Fire_Ice/bicmos8hp_cadence_20160215/cadence/v.20160215/captable/bicmos8hp_6MA_21_nm.CapTbl"



## Create Delay Corners
create_delay_corner -name bc_Tm40c_delay \
                    -library_set bc_v1p32_Tm40c \
                    -rc_corner bc_Tm40c_cmin

create_delay_corner -name wc_T125c_cmax_delay \
                    -library_set wc_v1p08_T125c \
                    -rc_corner wc_T125c_cmax

create_delay_corner -name nom_T25c_delay \
                    -library_set nom_v1p25_T25c \
                    -rc_corner nom_T25c


##Create Constraint Modes
#create_constraint_mode -name func_ss_125c -sdc_files   func.ss_125c.sdc
#create_constraint_mode -name func_ff_m55c -sdc_files   func.ff_m55c.sdc

create_constraint_mode -name test_fast_m40c -sdc_files	./config/chip_rfwild.sdc
create_constraint_mode -name test_slow_125c -sdc_files	./config/chip_rfwild.sdc
create_constraint_mode -name test_nom_25c -sdc_files	./config/chip_rfwild.sdc



## Create Analysis Views
#create_analysis_view -name func_ss_125c    -delay_corner ss_125c_cmax_125c -constraint_mode func_ss_125c
#create_analysis_view -name func_ff_m55c    -delay_corner ff_m55c_cmax_m55c -constraint_mode func_ff_m55c
create_analysis_view -name v_test_fast_m40c    -delay_corner bc_Tm40c_delay -constraint_mode test_fast_m40c
create_analysis_view -name v_test_slow_125c    -delay_corner wc_T125c_cmax_delay -constraint_mode test_slow_125c
create_analysis_view -name v_test_nom_25c    -delay_corner nom_T25c_delay -constraint_mode test_nom_25c

## Set Analysis View
set_analysis_view -setup {v_test_nom_25c v_test_slow_125c v_test_fast_m40c} \
                  -hold  {v_test_nom_25c v_test_slow_125c v_test_fast_m40c}
#See more at: https://community.cadence.com/cadence_technology_forums/f/29/t/11116

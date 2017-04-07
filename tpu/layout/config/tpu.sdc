# ####################################################################

#  Created by Encounter(R) RTL Compiler RC14.12 - v14.10-s022_1 on Mon Dec 01 10:10:26 -0300 2014

# ####################################################################

set sdc_version 1.7

set_time_unit -nanoseconds
#Capacitance always in pF

# Set the current design
current_design tpu

#Create clock and assign to SYS_CLK pin
create_clock -name "SYS_CLK" -period 1000.0 -waveform {0.0 500.0} [get_ports {SYS_CLK}]
set_clock_latency -max 60 SYS_CLK

set_load -pin_load -min 0.02 [all_inputs]
set_load -pin_load -max 0.3 [all_inputs]
set_load -pin_load -min 0.02 [all_outputs]
set_load -pin_load -max 0.3 [all_outputs]
set_clock_gating_check -setup 0.0 

set_input_transition -min 0.6 [get_ports SYS_CLK]
set_input_transition -max 54.6 [get_ports SYS_CLK]


#Don't optimize the reset
#set_false_path -from [get_ports reset] -to

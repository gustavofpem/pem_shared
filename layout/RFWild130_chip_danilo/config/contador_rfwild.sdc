# ####################################################################

#  Created by Encounter(R) RTL Compiler RC14.12 - v14.10-s022_1 on Mon Dec 01 10:10:26 -0300 2014

# ####################################################################

set sdc_version 1.7

set_time_unit -nanoseconds
#Capacitance always in pF

# Set the current design
current_design contador_rfwild

#Create clock and assign to clk pin
create_clock -name "clk" -period 5.0 -waveform {0.0 2.5} [get_ports {clk}]
set_clock_latency -max 0.3 clk

set_load -pin_load -min 0.02 [get_ports {contador[3]}]
set_load -pin_load -max 0.3 [get_ports {contador[3]}]
set_load -pin_load -min 0.02 [get_ports {contador[2]}]
set_load -pin_load -max 0.3 [get_ports {contador[2]}]
set_load -pin_load -min 0.02 [get_ports {contador[1]}]
set_load -pin_load -max 0.3 [get_ports {contador[1]}]
set_load -pin_load -min 0.02 [get_ports {contador[0]}]
set_load -pin_load -max 0.3 [get_ports {contador[0]}]
set_clock_gating_check -setup 0.0 

set_input_transition -min 0.003 [get_ports clk]
set_input_transition -max 0.273 [get_ports clk]


#Don't optimize the reset
#set_false_path -from [get_ports reset] -to


onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/SYS_CLK
add wave -noupdate /tb/RST
add wave -noupdate /tb/addr
add wave -noupdate /tb/data_in
add wave -noupdate /tb/we
add wave -noupdate -color Orange /tb/tpu_instance/G_CLK_TX
add wave -noupdate -color Orchid /tb/tpu_instance/G_CLK_RX
add wave -noupdate /tb/tpu_instance/RSTTPU
add wave -noupdate /tb/tpu_instance/TIMERINTMSK
add wave -noupdate -color Blue /tb/tpu_instance/TPUINT
add wave -noupdate -color Blue /tb/tpu_instance/INTFLAG
add wave -noupdate /tb/tpu_instance/TXSLOT_EN
add wave -noupdate /tb/tpu_instance/RXSLOT_EN
add wave -noupdate /tb/tpu_instance/TX_SLOT
add wave -noupdate /tb/tpu_instance/RX_SLOT
add wave -noupdate /tb/tpu_instance/TIMER_INT_VALUE
add wave -noupdate -color White /tb/tpu_instance/TIME
add wave -noupdate /tb/tpu_instance/timer_instance/TIMER_COUNTER
add wave -noupdate /tb/tpu_instance/data_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {99050 ps} {100050 ps}

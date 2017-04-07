##Generate / connect global nets (VDD/GND)
#Assign VDD and VSS pins to global nets
clearGlobalNets

set_dc_sources {VDD} -power -voltage 1.2
set_dc_sources {VDD150} -power -voltage 1.5
set_dc_sources {VSS} -ground -voltage 0.0

globalNetConnect VDD -type pgpin -pin VDD -autoTie -inst *
globalNetConnect VDD150 -type pgpin -pin VDD150 -autoTie -inst *
globalNetConnect VSS -type pgpin -pin VSS -autoTie  -inst *



##Create power rings
set sprCreateIeRingNets {}
set sprCreateIeRingLayers {}
set sprCreateIeRingWidth 1.0
set sprCreateIeRingSpacing 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
setAddRingMode -stacked_via_top_layer AM -stacked_via_bottom_layer M1
addRing -nets {VDD VSS} \
	-skip_via_on_wire_shape Noshape \
	-skip_via_on_pin Standardcell \
	-center 1  -type core_rings \
	-jog_distance 0.2 -threshold 0.2 \
	-follow core \
	-layer {bottom M1 top M1 right M2 left M2} \
 	-width 5 -spacing 3 -offset 0.2
##Create power stripes
set sprCreateIeStripeNets {}
set sprCreateIeStripeLayers {}
set sprCreateIeStripeWidth 3.0
set sprCreateIeStripeSpacing 5.0
set sprCreateIeStripeThreshold 1.0
addStripe -nets {VSS VDD} -skip_via_on_wire_shape Noshape \
			-block_ring_top_layer_limit MQ \
			-max_same_layer_jog_length 4 \
			-padcore_ring_bottom_layer_limit M1 \
			-set_to_set_distance 30 \
			-skip_via_on_pin Standardcell \
			-stacked_via_top_layer M2 \
			-padcore_ring_top_layer_limit M2 \
			-spacing 33 -merge_stripes_value 1.0 \
			-layer M2 -block_ring_bottom_layer_limit M1 \
			-width 3 -stacked_via_bottom_layer M1
##Route VDD and VSS
setSrouteMode 	-connect { padPin padRing corePin floatingStripe } \
		-layerChangeRange { M1 AM } \
		-padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } \
		-corePinTarget { firstAfterRowEnd } \
		-floatingStripeTarget {padring ring stripe ringpin followpin } \
		-allowJogging 1 \
		-crossoverViaLayerRange { M1 AM } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { M1 AM }
sroute -deleteExistingRoutes 	-nets {VDD VDD150 VSS}
#Verify if sroute is according to stdcell geometry
#Not needed because placement goes after this session
#sroute -corePinCheckStdcellGeoms

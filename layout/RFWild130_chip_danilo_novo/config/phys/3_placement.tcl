#Place pins
#editPin -side Top -layer 2 -spreadType center -spacing 200 -pin {clk reset}
#editPin -side Left -layer 3 -spreadType center -spacing 3 -pin {}
#editPin -side Bottom -layer 2 -spreadType center -spacing 3 -pin {{Bus2IP_WrCE[0]} {Bus2IP_WrCE[1]} {Bus2IP_WrCE[2]} {Bus2IP_WrCE[3]} {Bus2IP_WrCE[4]} {Bus2IP_WrCE[5]} {Bus2IP_WrCE[6]} {Bus2IP_WrCE[7]} {Bus2IP_WrCE[8]} {Bus2IP_WrCE[9]} {Bus2IP_WrCE[10]} {Bus2IP_WrCE[11]} {Bus2IP_WrCE[12]} {Bus2IP_WrCE[13]} {Bus2IP_WrCE[14]}}
#editPin -side Right -layer 1 -spreadType center -spacing 5 -pin {contador*}


#Place standard cells
setPlaceMode 	-fp false \
		-placeIoPins true \
		-timingDriven true \
		-congEffort medium \
		-reorderScan false
placeDesign
#options: place amoeba fplan
setDrawView place


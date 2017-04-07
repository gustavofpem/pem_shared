##Export GDSII
streamOut ./layout/done/chip_rfwild.gds \
	-mapFile {/opt/techlib/ibm013/bicmos8hp/lef/bicmos8hp_soce2gds.map} \
	-merge {/opt/techlib/ibm013/bicmos8hp/gds2/IBM_BICMOS8HP_SC_1P2V_12T_RVT_091712.gds \
		/opt/techlib/ibm013/bicmos8hp/gds2/CMOS8HP_BASE_WB_IO_7LM.gds} \
	-reportFile ./layout/done/GDS2rpt

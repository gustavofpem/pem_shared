##Export GDSII
streamOut ./layout/done/chip_rfwild.gds \
	-mapFile {/opt/cadence/IBM_PDK/bicmos8hp/BiCMOS8HP_Tech_LEF/bicmos8hp_techlef_20160204/techlef/v.20160204/lef/bicmos8hp_soce2gds.map} \
	-merge {/opt/cadence/IBM_PDK/bicmos8hp/BiCMOS8HP_Digital_Kit/ibm_cmos8hp_sc_1p2v_12t_rvt_20130404/sc_1p2v_12t_rvt/v.20130404/gds2/IBM_BICMOS8HP_SC_1P2V_12T_RVT_091712.gds \
		/opt/cadence/IBM_PDK/bicmos8hp/BiCMOS8HP_WBIO_Base/ibm_cmos8hp_short_io_base_wb_io_20160727/short_io/base_wb_io/v.20160727/gds2/CMOS8HP_BASE_WB_IO_7LM.gds} \
	-reportFile ./layout/done/GDS2rpt

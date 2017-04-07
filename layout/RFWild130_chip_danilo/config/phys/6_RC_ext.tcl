##Annotate design delay
setExtractRCMode -engine postRoute -effortLevel high
extractRC
rcOut -rc_corner nom_T25c -spf ./layout/done/chip_rfwild_routed_nom.spf
rcOut -rc_corner bc_Tm40c_cmin -spf ./layout/done/chip_rfwild_routed_bc.spf
rcOut -rc_corner wc_T125c_cmax -spf ./layout/done/chip_rfwild_routed_wc.spf


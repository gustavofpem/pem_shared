verifyGeometry 		-report ./layout/rpt/v_geometry_drc
verifyConnectivity 	-report ./layout/rpt/v_connectivity
verify_PG_short 	-report ./layout/rpt/v_PG_short
verifyProcessAntenna 	-report ./layout/rpt/v_antenna

##Generate reports
summaryReport -outdir ./layout/rpt/v_summary


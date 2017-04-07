specifyClockTree -file ./config/Clock.ctstch
clockDesign -specFile ./config/Clock.ctstch -outDir ./layout/rpt/clock_report -fixedInstBeforeCTS
##Route the design
setNanoRouteMode -quiet -drouteStartIteration default \
		-routeTopRoutingLayer default \
		-routeBottomRoutingLayer default \
		-drouteEndIteration default \
		-routeWithTimingDriven false \
		-routeWithSiDriven true \
		-routeInsertAntennaDiode false \
		-routeAntennaCellName {FGTIE}


globalDetailRoute

##Via reduction
#setNanoRouteMode -drouteMinSlackForWireOptimization "valor de slack"
#setNanoRouteMode -droutePostRouteMinimizeViaCount true
#route -viaOpt

report_timing > ./layout/rpt/4_timing_report

##Add filler cells

#Add DECAP cells to prevent IR drop. 10% is fine.
#addFiller -prefix decap -cell {DECAP_C} -util 0.1

#Add big cells first to cover some area before putting smaller cells
addFiller -prefix corefiller128_ -cell {FILL128} -util 0.35

#Add special NWSX cells to tie VDD and VSS to NW and SUBC
addFiller -prefix nwsx -cell {NWSX} -util 0.5

#Fill the rest
setFillerMode -core {{FILL64 FILL32 FILL16} {FILL4 FILL2 FILL1}} -corePrefix corefiller -doDRC true
addFiller

verifyGeometry
addFiller -fixDRC

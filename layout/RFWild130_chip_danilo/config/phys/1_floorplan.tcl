setIoFlowFlag 0

loadIoFile ./config/chip.io

##Design by occupation and aspect ratio. May be unpredictable
##Ratio = height/width
		     #(-r ratio; occup%; marg. to IOpads left, bottom, right, top)
floorPlan -fplanOrigin l -dieSizeByIoHeight max -site CORE -r 0.25 0.70 15.0 15.0 15.0 15.0

##Design by size. Requires previous area calculations
		     		    #-s(core)|d(die) width; height; marg. to IOpads left, bottom, right, top
#floorPlan -fplanOrigin l -coreMarginsBy io -site CORE -d 700.0 700.0 50.0 50.0 50.0 50.0

#Reload file after floorPlan!!!
loadIoFile ./config/chip.io

#Add pad filler cells. Use this with Io Row flag on.
#addIoRowFiller -cell {FILLER10_VDD150_PM FILLER1_VDD150_PM} -prefix padfill

#Add pad filler cells. Use this with Io Row flag off.
addIoFiller -cell {FILLER10_VDD150_PM} -prefix padfill
addIoFiller -cell {FILLER1_VDD150_PM} -prefix padfill
addIoFiller -cell {FILLERDOT1_VDD150_PM} -prefix padfill


##fit screen
fit

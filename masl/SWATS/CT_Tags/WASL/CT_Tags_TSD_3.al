define action CT_Tags_TSD_3
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

instTS = this -> R6.TCA_Super
instTS.TCAFlag  = TRUE

temp = instTS.TSRef
temp = temp + 1
instTS.TSRef = temp

generate TSD1:Finished (Test) to this


enddefine

define action Events_objU_2
input\
	Test_Number:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

#-----------------------------------------------------------
# SUBTYPE
#-----------------------------------------------------------

[] = RPT1:Start_Test[this.latest_test, "Null Requid", "Events", "objU", "subtype"]

#Change the value of attribute 'ResultU'
temp = this.Result_U + 555
this.Result_U = temp


#-----------------------------------------------------------

generate objU2:Finished(Test_Number) to this


enddefine

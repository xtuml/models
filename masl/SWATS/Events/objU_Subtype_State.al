state Events::Object_U.Subtype_State (Test_Number : in  integer) is
#-----------------------------------------------------------
# SUBTYPE
#-----------------------------------------------------------

[] = RPT1:Start_Test[this.latest_test, "Null Requid", "Events", "objU", "subtype"]

#Change the value of attribute 'ResultU'
temp = this.Result_U + 555
this.Result_U = temp


#-----------------------------------------------------------

generate objU2:Finished(Test_Number) to this
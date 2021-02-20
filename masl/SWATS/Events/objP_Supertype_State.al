state Events::Object_P.Supertype_State (Test : in  integer) is
#-----------------------------------------------------------
# SUPERTYPE
#-----------------------------------------------------------

# Remember the latest test
this.latest_test = Test
temp = this.number_of_received_events + 1
this.number_of_received_events = temp

#-----------------------------------------------------------
# Event passed onto the subtype object
#-----------------------------------------------------------

   [] = RPT1:Start_Test[Test, "Null Requid", "Events", "objP", "Supertype to subtype test"]

   # Change the value of attribute 'ResultP'
   temp = this.Result_P + this.Value_To_Add
   this.Result_P = temp

#-----------------------------------------------------------

generate objP2:Finished(Test) to this
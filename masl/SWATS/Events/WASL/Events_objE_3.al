define action Events_objE_3
input\
	Test:Base_Integer_Type,\
	Test_Number:Base_Integer_Type
output

#$DESCRIPTION
This state receives the external event that is also sent to the supertype
object.
#$END_DESCRIPTION

#-------------------------------------------------------------------------
# SUBTYPE
#-------------------------------------------------------------------------

# Remember the latest test
my_super = this -> R5.Object_D
my_super.latest_test = Test
temp = my_super.no_of_received_events + 1
my_super.no_of_received_events = temp

[] = RPT1:Start_Test[this.Report_Test_No, "1241-0000-01-0304", "Events", "objE", "subtype"]
[] = RPT5:Test_Text [this.Report_Test_No, "Obj E State"]

#-------------------------------------------------------------------------
# Test 1 - Event received from supertype object
#-------------------------------------------------------------------------

   if Test = 1 then
      [] = RPT8:Specify_Requid[this.Report_Test_No, "1241-0000-01-0404"]
      [] = RPT8:Specify_Requid[this.Report_Test_No, "1241-0000-01-0405"]
      # Change the value of attribute 'ResultA'
      temp = this.ResultA + 999
      this.ResultA = temp
   endif

#-------------------------------------------------------------------------
# Test 2 - Event not passed onto supertype object
#-------------------------------------------------------------------------

   if Test = 2 then
      # Change the value of attribute 'ResultA'
      temp = this.ResultA + 20
      this.ResultA = temp
   endif

#-------------------------------------------------------------------------
# Test 3 - The value of attribute 'ResultA' is changed 
#-------------------------------------------------------------------------

   if Test = 3 then
      # Change the value of attribute 'ResultA'
      temp = this.ResultA + 30
      this.ResultA = temp
   endif

#-------------------------------------------------------------------------
# Test 4 - The value of attribute 'ResultA' is only changed if an error has
#          occurred.
#-------------------------------------------------------------------------

   if Test = 4 then
      # Change the value of attribute 'ResultA'
      temp = this.ResultA + 40
      this.ResultA = temp
   endif

#-------------------------------------------------------------------------

generate objE1:Finished(Test_Number) to this


enddefine

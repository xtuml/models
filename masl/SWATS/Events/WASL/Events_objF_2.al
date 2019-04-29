define action Events_objF_2
input\
	Test:Base_Integer_Type,\
	Test_Number:Base_Integer_Type
output

#$DESCRIPTION

Proves that an event received by the supertype is polymorphically
delivered to the second subtype.
#$END_DESCRIPTION

#-----------------------------------------------------------
# SUBTYPE
#-----------------------------------------------------------

# Remember the latest test
my_super = this -> R5.Object_D
my_super.latest_test = Test
temp = my_super.no_of_received_events + 1
my_super.no_of_received_events = temp

#-----------------------------------------------------------
# Test 5 - Event received from supertype object
#-----------------------------------------------------------

   [] = RPT1:Start_Test[this.Report_Test_No, "Null Requid", "Events", "objF", "subtype"]
   
   if Test = 5 then
      # Change the value of attribute 'ResultA'
      temp = this.ResultA + 10
      this.ResultA = temp
   endif

#-----------------------------------------------------------
# Test 6 - Event not passed onto supertype object
#-----------------------------------------------------------

   if Test = 6 then
      # Change the value of attribute 'ResultA'
      temp = this.ResultA + 20
      this.ResultA = temp
   endif

#-----------------------------------------------------------
# Test 7 - The value of attribute 'ResultA' is changed 
#-----------------------------------------------------------

   if Test = 7 then
      # Change the value of attribute 'ResultA'
      temp = this.ResultA + 30
      this.ResultA = temp
   endif

#-----------------------------------------------------------
# Test 8 - The value of attribute 'ResultA' is only changed 
#          if an error has occurred.
#-----------------------------------------------------------

   if Test = 8 then
      # Change the value of attribute 'ResultA'
      temp = this.ResultA + 40
      this.ResultA = temp
   endif

#-----------------------------------------------------------

generate objF1:Finished(Test_Number) to this


enddefine

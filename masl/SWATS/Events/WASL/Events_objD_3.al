define action Events_objD_3
input\
	Test:Base_Integer_Type,\
	Test_Number:Base_Integer_Type
output

#$DESCRIPTION
This state receives the external event that, also sent to the subtype object.
#$END_DESCRIPTION

#-------------------------------------------------------------------------
# SUPERTYPE
#-------------------------------------------------------------------------

# Remember the latest test
this.latest_test = Test
temp = this.no_of_received_events + 1
this.no_of_received_events = temp

[] = RPT1:Start_Test[Test_Number, "1241-0000-01-0304", "Events", "objD", "Supertype to subtype test"]
[] = RPT5:Test_Text[Test_Number, "Obj D State"]
#-------------------------------------------------------------------------
# Test 1 - Event passed onto the subtype object
#-------------------------------------------------------------------------

   if Test = 1 then
      # Change the value of attribute 'ResultA'
      temp = this.ResultA + 9999
      this.ResultA = temp
   endif

#-------------------------------------------------------------------------
# Test 2 - The value of attribute 'ResultA' is only changed if an error
#          occurred.
#-------------------------------------------------------------------------

   if Test = 2 then
      # Change the value of attribute 'ResultA'
      temp = this.ResultA + 20
      this.ResultA = temp
   endif

#-------------------------------------------------------------------------
# Test 3 - Event received in supertype object, but not passed onto subtype
#          since the relationship has not been formalised.
#-------------------------------------------------------------------------

   if Test = 3 then
      # Change the value of attribute 'ResultA'
      temp = this.ResultA + 30
      this.ResultA = temp
   endif

#-------------------------------------------------------------------------
# Test 4 - Event received in supertype object, but not passed onto subtype 
#          object, since the subtype object may not receive the event.
#-------------------------------------------------------------------------

   if Test = 4 then
      # Change the value of attribute 'ResultA'
      temp = this.ResultA + 40
      this.ResultA = temp
   endif

#-------------------------------------------------------------------------
# Test 5 - Event passed onto the subtype object
#-------------------------------------------------------------------------

   if Test = 5 then
      # Change the value of attribute 'ResultA'
      temp = this.ResultA + 10
      this.ResultA = temp
   endif

#-------------------------------------------------------------------------
# Test 6 - The value of attribute 'ResultA' is only changed if an error
#          occurred.
#-------------------------------------------------------------------------

   if Test = 6 then
      # Change the value of attribute 'ResultA'
      temp = this.ResultA + 20
      this.ResultA = temp
   endif

#-------------------------------------------------------------------------
# Test 7 - Event received in supertype object.
#-------------------------------------------------------------------------

   if Test = 7 then
      # Change the value of attribute 'ResultA'
      temp = this.ResultA + 30
      this.ResultA = temp
   endif

#-------------------------------------------------------------------------
# Test 8 - Event received in supertype object, but not passed onto subtype 
#          object, since the subtype object may not receive the event.
#-------------------------------------------------------------------------

   if Test = 8 then
      # Change the value of attribute 'ResultA'
      temp = this.ResultA + 40
      this.ResultA = temp
   endif

#-------------------------------------------------------------------------
   generate objD1:ST_Finished(Test_Number) to this
#-------------------------------------------------------------------------


enddefine

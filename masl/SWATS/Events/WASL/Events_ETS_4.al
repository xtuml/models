define action Events_ETS_4
input\
	Test:Base_Integer_Type,\
	Test_Number:Base_Integer_Type
output

#$DESCRIPTION
This state verifies the following:

[1] That an event to self was acted upon before
    any other events where handled.
#$END_DESCRIPTION

#-------------------------------------------------------------------#

#Verify tests

#-------------------------------------------------------------------#

#Initialise the fault flag
faultflag = FALSE

[] = RPT1:Start_Test[Test_Number, "Null Requid", "Events", "objETS", "Events to self"]

#-------------------------------------------------------------------#

#Test 1

if Test = 1 then

   #Check that the verifying event was handled after
   #generating events to self
   result = this.NewResult - this.OldResult
   if result != 10 then
      faultflag = TRUE
   endif

endif

#End Test 1

#-------------------------------------------------------------------#

#Tests complete
if faultflag = FALSE then

   #Indicate that the test was successful and complete
   temp = this.NewResult + 10
   this.OldResult = temp
   this.NewResult = temp

   [] = RPT2:Test_Passed["objETS", Test_Number, temp]
   generate ETS2:Finished() to this

else

   #Indicate that the test failed
   [] = RPT3:Test_Failed["objETS", Test_Number, temp]
   has_failed = TRUE
   generate ETS1:Fault() to this

endif

#-------------------------------------------------------------------#



enddefine

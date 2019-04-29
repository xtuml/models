define action Events_ETS_3
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
This state verifies the following:

[1] That an event to self is acted upon whilst
    other events to the same instance are in the
    event queue.
#$END_DESCRIPTION

#------------------------------------------------------------------------#

#Updated attribute 'ResultA' to indicate an event was received

#------------------------------------------------------------------------#

#Test 1

if Test = 1 then

   #Save the current value of attribute 'NewResult'
   temp = this.NewResult
   this.OldResult = temp

   #Update attribute 'NewResult'
   newtemp = temp + 10 
   this.NewResult = newtemp

   #Test complete
   generate ETS2:Finished() to this

endif

#------------------------------------------------------------------------#


enddefine

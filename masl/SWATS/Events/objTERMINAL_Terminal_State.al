//! This state shall delete it's own instance, but only 
//! after reporting itself as available for deletion.
terminal state Events::Terminal_Object.Terminal_State (Test        : in  integer,
                                                       Test_Number : in  integer) is
#-----------------------------------------------------------
# Terminal state
#-----------------------------------------------------------

[] = RPT1:Start_Test[Test_Number, "1241-0000-01-0206", "Events", "Terminal", "Terminal state test"]

this.ResultA  = 10

{tob} = find-all Terminal_Object

notob = countof{tob}

# Due to the vaguaries of the queueing system and the fact that
# the scenario runs to completion before events are de-queued, 
# for test 1 there will be two instances of Terminal_Object 
# loitering in the system waiting to be jumped on. 
# This state will delete one of them, leaving one to fend for itself.

# Then in test two, the final instance will exit stage left.

if Test = 1 and notob = 2 then

   # Report a success, there really isn't anything else it could be.
   [] = RPT2:Test_Passed["Terminal", Test_Number, this.ResultA]
else

   if Test = 2 and notob = 1 then
      [] = RPT2:Test_Passed["Terminal", Test_Number, this.ResultA]
   else
      # There is more than one of this object. There shouldn't be.
      [] = RPT3:Test_Failed["Terminal", Test_Number, notob]
   endif

endif
   
# Delete the instance.
delete this
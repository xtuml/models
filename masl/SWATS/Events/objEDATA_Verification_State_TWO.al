state Events::Event_Data.Verification_State_TWO (A           : in  integer,
                                                 B           : in  integer,
                                                 Test        : in  integer,
                                                 Test_Number : in  integer) is

[] = RPT1:Start_Test[Test_Number, "Null Requid", "Events", "Events Data", "State 2 reception"]

# Test 2
if Test = 2 then
has_failed = FALSE

   if (A != 1)|(B != 2) then
      generate objEDATA1:Fault() to this
      [] = RPT3:Test_Failed["Event verification state 2", Test_Number, -1]
      has_failed = TRUE

   else

      temp = this.ResultA + 10
      this.ResultA = temp

   endif

   # Check that the attribute 'ResultA' was manipulated correctly
   if this.ResultA != 10 then

      generate objEDATA1:Fault() to this
      [] = RPT3:Test_Failed["Event verification state 2", Test_Number, -2]
      has_failed = TRUE

   else

      temp = this.ResultA + 10
      this.ResultA = temp

   endif

endif

if !has_failed then

  [] = RPT2:Test_Passed["Event verification state 2", Test_Number, temp]
  generate objEDATA2:Finished() to this

endif

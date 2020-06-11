state TAGS::An_Active_Array_Of_Three_Objects.More_Tests () is

my_test = find-one Test_Data

Test = my_test.Number
This_Environment = my_test.Environment

if This_Environment = 'WACA' then 
   Supported = TRUE
else
   Supported = FALSE
endif

#--------------------------------------------------------------------------
# Test 1 - This will be a synchronous test.
#--------------------------------------------------------------------------

   [] = RPT1:Start_Test[Test, "Null Requid", "Tagging", "Multiple Array Active Object", "Inhibit fourth instance"]

   # This test shall prove that a fourth instance is not allowed. 
   # Fourth = create unique An_Active_Array_Of_Three_Objects with Result = 0 & Current_State = 'Idle'
   # {Set_Of_Multiple_Array} = find-all An_Active_Array_Of_Three_Objects
   # Number_Of_Multiple_Array = countof {Set_Of_Multiple_Array}
   # Should only be 3, but reporter widget expects a zero in the Failure field for a pass.
   # So if there are more than one instances found, this should be reported as an
   # error.
   # All three allowable instances have been created in the synch service BEFORE the event which
   # caused this operation was generated. 
   # So there should be three instances in existance when this bit is processed.
   # That's the theory anyway. If this is not so, then a failure will be logged.
   # Failure_Value = Number_Of_Multiple_Array - 3
   # [] = TAGS5::Report_Now[Test, "Inhibit fourth instance", Failure_Value, Supported]

   [] = RPT4:Test_Unsupported[Test]

   Test = Test + 1

# End Test 1

#--------------------------------------------------------------------------
# Test 2 - Prove that the instance handle for the fourth instance is 
#          UNDEFINED, or in ada's case, NULL.
#--------------------------------------------------------------------------

   [] = RPT1:Start_Test[Test, "Null Requid", "Tagging", "Multiple Array Active Object", "Fourth instance is null"]

   # if Fourth = UNDEFINED then
   #   Failure_Value = 0
   # else
   #   Failure_Value = 1
   #   # It isn't supposed to be here, so get rid of it.
   #   delete Fourth
   #endif

   #[] = TAGS5::Report_Now[Test, "Fourth instance is null", Failure_Value, Supported]

   [] = RPT4:Test_Unsupported[Test]

   Test = Test + 1

# End Test 2

#--------------------------------------------------------------------------

my_test.Number = Test

# Transition back into 'Idle' state, but don't report anything.
generate AAAOTO2:Finish(0,0,"null", FALSE) to this

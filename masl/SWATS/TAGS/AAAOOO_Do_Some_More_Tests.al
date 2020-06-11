state TAGS::An_Active_Array_Of_One_Object.Do_Some_More_Tests () is
# The array of 1 should be treated exactly the same way as an object tagged
# SINGLETON.

# Create first of the single active array objects.

my_test = find-one Test_Data

Test = my_test.Number
This_Environment = my_test.Environment

if This_Environment = 'WACA' then 
   Supported = TRUE
else
   Supported = FALSE
endif

#--------------------------------------------------------------------------
# Test 1- This will be a synchronous test.
#--------------------------------------------------------------------------

   [] = RPT1:Start_Test[Test, "Null Requid", "Tagging", "Single Array Active Object", "Inhibit second instance"]

   # This test shall prove that a second instance is not allowed. NB the first instance is actually
   # the instance we are currently in, ie. this state in 'this'

   # Second_Single = create unique An_Active_Array_Of_One_Object with Result = 0 & Current_State = 'Idle'

   # {Set_Of_Single_Array} = find-all An_Active_Array_Of_One_Object

   # Number_Of_Single_Array = countof {Set_Of_Single_Array}

   # Should only be 1, but reporter widget expects a zero in the Failure field for a pass.
   # So if there are more than one instances found, this should be reported as an
   # error.

   # Failure_Value = Number_Of_Single_Array - 1

   # [] = TAGS5::Report_Now[Test, "Inhibit second instance", Failure_Value, Supported]

   [] = RPT4:Test_Unsupported[Test]

   Test = Test + 1

# End Test 1

#--------------------------------------------------------------------------
# Test 2 - Prove that the instance handle for the second instance is 
#          UNDEFINED, or in ada's case, NULL.
#--------------------------------------------------------------------------

   [] = RPT1:Start_Test[Test, "Null Requid", "Tagging", "Single Array Active Object", "Second instance is null"]

   # if Second_Single = UNDEFINED then
   #   Failure_Value = 0
   # else
   #   Failure_Value = 1
   # It isn't supposed to be here, so get rid of it.
   #   delete Second_Single
   # endif

   # [] = TAGS5::Report_Now[Test, "Second instance is null", Failure_Value, Supported]

   [] = RPT4:Test_Unsupported[Test]

   Test = Test + 1

# End Test 2

#--------------------------------------------------------------------------
my_test.Number = Test

# Transistion back into 'Idle' state, but don't report anything.
generate AAAOOO2:Finish(0,0,"null", FALSE) to this

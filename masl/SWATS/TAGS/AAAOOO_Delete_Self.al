state TAGS::An_Active_Array_Of_One_Object.Delete_Self () is
my_test = find-one Test_Data

Test = my_test.Number

This_Environment = my_test.Environment

if This_Environment = 'WACA' then 
   Supported = TRUE
else
   Supported = FALSE
endif

#--------------------------------------------------------------------------
# Test 1 - This test shall prove that this instance can delete itself, and 
#          another created in it's place.

#--------------------------------------------------------------------------

   [] = RPT1:Start_Test [Test, "Null Requid", "Tagging", "Single Array Active Object", "Delete self"]

   # There should be no more events queued to this instance, so delete it.
   delete this

   if this = UNDEFINED then
      Failure_Value = 0
   else
      Failure_Value = 1
   endif

   [] = TAGS5::Report_Now[Test, "Delete self", Failure_Value, Supported]

   Test = Test + 1

# End Test 1

#--------------------------------------------------------------------------
# Test 2 - Create new instance This is an asynchronous test.
#--------------------------------------------------------------------------

   New_Single = create unique An_Active_Array_Of_One_Object with Result = 0 & Current_State = 'Idle'

   Value_To_Add = 20
   Expected_Result_Value = 20

   generate AAAOOO1:Start(Test, Value_To_Add, "Create new instance", Expected_Result_Value) to New_Single

# End Test 2

#--------------------------------------------------------------------------
# Perhaps this will generate an event onto the queue, which will be processed after
# the finish event is generated from Replacement_Instance
#--------------------------------------------------------------------------
generate TD1:Tests_Are_Over() to my_test

Test = Test + 1

#--------------------------------------------------------------------------

my_test.Number = Test
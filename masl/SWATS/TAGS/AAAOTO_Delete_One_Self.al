state TAGS::An_Active_Array_Of_Three_Objects.Delete_One_Self () is
my_test = find-one Test_Data

Test = my_test.Number

This_Environment = my_test.Environment

if This_Environment = 'WACA' then 
   Supported = TRUE
else
   Supported = FALSE
endif

#--------------------------------------------------------------------------
# Test 1 - This test shall prove that this instance can delete itself, and another
#          created in it's place.
#--------------------------------------------------------------------------

   [] = RPT1:Start_Test [Test, "Null Requid", "Tagging", "Multiple Array Active Object", "Delete self"]

   # There should be no more events queued to this instance, so delete it.
   delete this

   # You would think that since 'this' no longer exists, any further processing here is
   # at best irrelevant, or at worst illegal. However, further processing still takes place,
   # but any access to this.attributes or identifiers is prevented, and the generation of an event
   # to this is also prevented. This has been tested fully in the Events domain.

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

   [] = RPT1:Start_Test [Test, "Null Requid", "Tagging", "Multiple Array Active Object", "Recreate self"]

   Replacement_Instance = create unique An_Active_Array_Of_Three_Objects with Result = 0 & Current_State = 'Idle'

   if Replacement_Instance != UNDEFINED then
      Failure_Value = 0
   else
      Failure_Value = 1
   endif

   # Creation instances are not supported yet by WACA.
   if This_Environment = 'WACA' then 
      Supported = FALSE
   else
      Supported = TRUE
   endif

   [] = TAGS5::Report_Now[Test, "Recreate self", Failure_Value, Supported]

   Test = Test + 1

# End Test 2

#--------------------------------------------------------------------------

Value_To_Add = 20
Expected_Result_Value = 20

generate AAAOTO1:Start(Test, Value_To_Add, "Create new instance", Expected_Result_Value) to Replacement_Instance

#--------------------------------------------------------------------------

Test = Test + 1

my_test.Number = Test
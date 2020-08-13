//! This state verifies that the tests performed within the objects
//! 'Creation_Object' and 'Terminal_Object' provide the correct results.
//! 
//! The following tests produced the following results:
//! 
//!     Test      Object      Reference      ResultA
//!     1         Creation    1              10
//!     19        Deletion    2              20
//!     21        Deletion    3              30
//! 
//! 
//! Test:      Test case identity.
//! Object:    Indicates which object to which the test applies.
//! Reference: Indicates which instance of Object_Verify_Creation_Deletion
//!            was used to verify the tests performed in the above objects.
//! ResultA:   Indicates the value written into the attribute 'ResultA'
//!            if the test was successful.
state Events::Object_Verify_Creation_Terminal.Verify_State (Test        : in  integer,
                                                            Test_Number : in  integer) is
#-----------------------------------------------------------
# Verify state
#-----------------------------------------------------------

#-----------------------------------------------------------
# Test 1 - Verify an event to a creation state
#-----------------------------------------------------------

if Test = 1 then

   [] = RPT1:Start_Test[Test_Number, "Null Requid", "Events", "Verify", "Verify Creation state"]

   has_failed = FALSE
   an_inst_create = find-one Creation_Object where ReferenceCREATE = 1

   if an_inst_create = UNDEFINED then
      [] = RPT3:Test_Failed["Creation State", Test_Number, -1]
      has_failed = TRUE
   else
      this.ResultA = 10
      [] = RPT2:Test_Passed["Creation State", Test_Number, 10]
   endif

endif

#-----------------------------------------------------------
# Test 2 - Verify an event to a terminal state
#-----------------------------------------------------------

if Test = 2 then

   [] = RPT1:Start_Test[Test_Number, "1241-0000-01-0206", "Events", "Verify", "Verify Terminal state"]

   has_failed = FALSE
   {all_terminal_instance} = find-all Terminal_Object

   count_of_terminal_instances = countof {all_terminal_instance}

   if count_of_terminal_instances != 1 then
      [] = RPT3:Test_Failed["Terminal State", Test_Number, count_of_terminal_instances]
      has_failed = TRUE
   else
      this.ResultA = 20
      [] = RPT2:Test_Passed["Terminal State", Test_Number, 20]
   endif

endif

#-----------------------------------------------------------
# Test 3 - Verify an event to a terminal state
#-----------------------------------------------------------

if Test = 3 then

   [] = RPT1:Start_Test[Test_Number, "1241-0000-01-0206", "Events", "Verify", "Verify Terminal state"]

   has_failed = FALSE
   {all_terminal_instance} = find-all Terminal_Object

   count_of_terminal_instances = countof {all_terminal_instance}

   if count_of_terminal_instances != 0 then
      [] = RPT3:Test_Failed["Terminal State", Test_Number, count_of_terminal_instances]
      has_failed = TRUE
   else
      this.ResultA = 30
      [] = RPT2:Test_Passed["Terminal State", Test_Number, 30]
   endif

endif

#-----------------------------------------------------------

generate objVERCETL1:Finished() to this
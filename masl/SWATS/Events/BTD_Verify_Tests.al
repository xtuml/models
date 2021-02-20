//! This state verifies the following:
//! 
//! [1] That an instance no longer exists if it had
//!     a born-to-die life cycle.
state Events::BornToDie.Verify_Tests (Test        : in  integer,
                                      Test_Number : in  integer) is
#------------------------------------------------------------------------#

#Verify born-to-die lifecycle

#------------------------------------------------------------------------#

#Initialise the fault flag
faultflag = FALSE

#------------------------------------------------------------------------#

[] = RPT1:Start_Test[Test_Number, "Null Requid", "Events", "BornToDie", "verify born to die instance"]

#Test 1

if Test = 1 then

   #Find instancea if they exist
   Identity = 100 + Test
   {some_instances} = find BornToDie where idBTD >= 100
   
   #Check that non instances exists
   if countof {some_instances} != 0 then
      faultflag = TRUE
   endif

endif

#End Test 1

#------------------------------------------------------------------------#

#Tests complete
if faultflag = FALSE then

   #Indicate that the test was successful and complete
   temp = this.ResultA + 10
   this.ResultA = temp

   [] = RPT2:Test_Passed["objBTD", Test_Number, temp]

   generate BTD2:Finished() to this

else

   #Indicate that the test failed
   [] = RPT3:Test_Failed["objBTD", Test_Number, -1]

   has_failed = TRUE

   generate BTD1:Fault() to this

endif

#------------------------------------------------------------------------#

//! This state verifies a synchronous service in DomainA
//! can invoke a synchronous service in DomainB and
//! pass/receive parameters.
state DomainA::Object_A.Sync_service_invocation_to_sync_service (Test : in  integer) is
#------------------------------------------------------------------------#
# Synchronous service invocation to synchronous service
#------------------------------------------------------------------------#

[] = RPT1:Start_Test[Test, "1241-0000-01-1110", "Domain_A", "objA", "sync to sync invocation"]

#Initialise the fault flag
has_failed = FALSE

#------------------------------------------------------------------------#
# Invoke the DomainA synchronous service
#------------------------------------------------------------------------#

inputA = 1
inputB = 2

[outputA, outputB] = termA1:Sync1A[inputA, inputB, Test]

#Check that the results are correct
if (outputA != 3)|(outputB != 4) then
   has_failed = TRUE
endif

#------------------------------------------------------------------------#
# Test complete
#------------------------------------------------------------------------#

if has_failed = FALSE then

   #Indicate that the test was successful and complete
   this.ResultA = 10
   [] = RPT2:Test_Passed["objA", Test, this.ResultA]

   generate objA2:Finished() to this

else
   #Indicate that the test failed
   [] = RPT3:Test_Failed["objA", Test, -1]

   generate objA1:Fault() to this
endif

#------------------------------------------------------------------------#

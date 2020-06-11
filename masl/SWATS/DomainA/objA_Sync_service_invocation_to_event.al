//! This state verifies that a synchronous service in DomainA
//! can invoke an event in DomainB.
state DomainA::Object_A.Sync_service_invocation_to_event (Test : in  integer) is
#------------------------------------------------------------------------#
# Synchronous service invocation to an event
#------------------------------------------------------------------------#

[] = RPT1:Start_Test[Test, "1241-0000-01-1110", "Domain_A", "objA", "sync service to event"]

#Initialise the fault flag
has_failed = FALSE

#------------------------------------------------------------------------#
# Invoke the DomainA synchronous service
#------------------------------------------------------------------------#

inputA = 3
inputB = 4
[outputA, outputB] = termA2:Sync2A[inputA, inputB, Test]

#Check that the returned results are correct
if (outputA != 5)|(outputB != 6) then
   has_failed = TRUE
endif

#------------------------------------------------------------------------#
#Test complete
#------------------------------------------------------------------------#

if has_failed = FALSE then
   #Indicate that the test was successful and complete
   this.ResultA = 20

   [] = RPT2:Test_Passed["objA", Test, this.ResultA]

   generate objA2:Finished() to this
else
   #Indicate that the test failed

   [] = RPT3:Test_Failed["objA", Test, -1]

   generate objA1:Fault() to this
endif

#------------------------------------------------------------------------#

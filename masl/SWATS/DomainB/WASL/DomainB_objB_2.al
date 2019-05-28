define action DomainB_objB_2
input\
	paramA:Base_Integer_Type,\
	paramB:Base_Integer_Type,\
	Test:Base_Integer_Type
output

#$DESCRIPTION
This state verifies that it is possible for a synchronous
service in DomainA to invoke an event into DomainB.
#$END_DESCRIPTION

#------------------------------------------------------------------------#
# Synchronous service in DomainA invokes an event in DomainB
#------------------------------------------------------------------------#

   my_test = find-one Test_Data

   Local_Test = my_test.This_Test_Number

   # Initialise the fault flag
   has_failed = FALSE

   [] = RPT1:Start_Test[Local_Test, "1241-0000-01-1110", "DomainB", "objB", "Rx sync call from domainA"]

#------------------------------------------------------------------------#
# Check the event parameters
#------------------------------------------------------------------------#

   if (paramA != 3)|(paramB != 4) then
      has_failed = TRUE
   endif

#------------------------------------------------------------------------#
# Test complete 
#------------------------------------------------------------------------#

   if has_failed = FALSE then
      # Indicate that the test was successful and complete
      this.ResultB = 20
      [] = RPT2:Test_Passed["objB", Local_Test, this.ResultB]
      generate objB3:Finished() to this
   else
      # Indicate that the test failed
      [] = RPT3:Test_Failed["objB", Local_Test, paramA]
      generate objB2:Fault() to this
   endif

#------------------------------------------------------------------------#

   Local_Test = Local_Test + 1

   my_test.This_Test_Number = Local_Test

   # Bit of a hack, but this is the last test to be popped off the queue, so
   # tell the report domain that it's all over.

   [] = DomainB6::Delete_Report_Data[]


enddefine

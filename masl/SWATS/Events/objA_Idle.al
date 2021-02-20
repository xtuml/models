state Events::Object_A.Idle (Test_Number : in  integer) is
#-----------------------------------------------------------
# in this state check that all the events have been processed 
# and then verify the result
#-----------------------------------------------------------     

if this.ResultA != 0 then
   [] = objVERPOL1:verify_polymorphic[ "Object A", this.ReferenceA, Test_Number]
#   [] = objVERPOL1:verify_polymorphic[ "Object A", this.latest_test, Test_Number]
endif
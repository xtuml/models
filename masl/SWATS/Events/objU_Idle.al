state Events::Object_U.Idle (Test_Number : in  integer) is
#-----------------------------------------------------------
# in this state check that all the events have been processed 
# and then verify the result
#-----------------------------------------------------------

if this.Result_U != 0 then
   [] = objVERPOL1:verify_polymorphic[ "Object U", this.Reference_T, Test_Number ]
#   [] = objVERPOL1:verify_polymorphic[ "Object U", this.latest_test, Test_Number ]
endif
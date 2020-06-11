state Events::Object_X.Check_ASL_In_State (Test_No     : in  integer,
                                           Input_Param : in  integer) is

if Input_Param = 100 then
   Returning_No = Input_Param + 100
else
   Returning_No = -10
endif

generate objX2:Finished(Test_No, "Check_ASL_In_Instance", Returning_No) to this

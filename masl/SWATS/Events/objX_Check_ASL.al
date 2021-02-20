state Events::Object_X.Check_ASL (Test_No  : in  integer,
                                  ASL_Type : in  string) is
if ASL_Type = "State Action" then
   Returning_No = 2

else
 
   if ASL_Type = "Sync Service" then
      Returning_No = 3
   else
   
      if ASL_Type = "Bridge" then
         Returning_No = 4
      else

         if ASL_Type = "Scenario" then
            Returning_No = 5
         else
            Returning_No = -10
         endif

      endif

   endif

endif

generate objX2:Finished(Test_No, "Check_State_Generation", Returning_No) to this

define action Events_objX_2
input\
	Test_No:Base_Integer_Type,\
	ASL_Type:Base_Text_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

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



enddefine

state Events::Object_X.Idle (Test_No      : in  integer,
                             The_Test     : in  string,
                             Returning_No : in  integer) is
if The_Test = "Check_Attributes" then

   if Returning_No = 1 then
      [] = RPT2:Test_Passed["Check attributes", Test_No, Returning_No]
   else
      [] = RPT3:Test_Failed["Local attributes not read", Test_No, Returning_No]
   endif

endif

#---------------------------------------------------------------------------

if The_Test = "Check_New_Attributes" then

   if this.Integer_Att = 200 then

      if this.Real_Att = 199.9 then

         if this.Text_Att = "New_Data" then

            if not this.Boolean_Att then
               [] = RPT2:Test_Passed["Target attributes updated", Test_No, 0]
            else
               [] = RPT3:Test_Failed["Target attributes not updated", Test_No, -10]
            endif

         else
            [] = RPT3:Test_Failed["Target attributes not updated", Test_No, -20]
         endif

      else
         [] = RPT3:Test_Failed["Target attributes not updated", Test_No, -30]
      endif

   else
      [] = RPT3:Test_Failed["Target attributes not updated", Test_No, -40]
   endif

endif

#---------------------------------------------------------------------------

if The_Test = "Check_Inst_Attributes" then

   if Returning_No = 1 then
      [] = RPT2:Test_Passed["Check instance attributes", Test_No, Returning_No]
   else
      [] = RPT3:Test_Failed["Instance attributes not read", Test_No, Returning_No]
   endif

endif

#---------------------------------------------------------------------------

if The_Test = "Check_New_Inst_Attributes" then

   temp_Inst = find-one Object_X where The_Test_No = Test_No

   if temp_Inst.Integer_Att = 300 then

      if temp_Inst.Real_Att = 299.9 then

         if temp_Inst.Text_Att = "More_Data" then

            if not temp_Inst.Boolean_Att then
               [] = RPT2:Test_Passed["Other inst attributes updated", Test_No, 0]
            else
               [] = RPT3:Test_Failed["Other inst attributes not updated", Test_No, -10]
            endif

         else
            [] = RPT3:Test_Failed["Other inst attributes not updated", Test_No, -20]
         endif

      else
         [] = RPT3:Test_Failed["Other inst attributes not updated", Test_No, -30]
      endif

   else
      [] = RPT3:Test_Failed["Other inst attributes not updated", Test_No, -40]
   endif

endif

#---------------------------------------------------------------------------

if The_Test = "Check_Other_Object" then

   if Returning_No = 1 then
      [] = RPT2:Test_Passed["Check other attributes", Test_No, Returning_No]
   else
      [] = RPT3:Test_Failed["Other attributes not read", Test_No, Returning_No]
   endif

endif

#---------------------------------------------------------------------------

if The_Test = "Check_New_Other_Object" then

   instZ = find-one Object_Z where The_Test_No = Test_No

   if instZ.Int_Att = 2000 then

      if instZ.Real_Att = 2000.0 then

         if instZ.Text_Att = "New_Test_Data" then
            [] = RPT2:Test_Passed["Other object attributes updated", Test_No, 0]
         else
            [] = RPT3:Test_Failed["Other object attributes not updated", Test_No, -10]
         endif

      else
         [] = RPT3:Test_Failed["Other object attributes not updated", Test_No, -20]
      endif

   else
      [] = RPT3:Test_Failed["Other object attributes not updated", Test_No, -30]
   endif

endif

#---------------------------------------------------------------------------

if The_Test = "Check_State_Generation" then

   if Returning_No = 2 then
      [] = RPT2:Test_Passed["Generated from State Action", Test_No, Returning_No]
   else

      if Returning_No = 3 then
         [] = RPT2:Test_Passed["Generated from Sync Service", Test_No, Returning_No]
      else
 
         if Returning_No = 4 then
            [] = RPT2:Test_Passed["Generated from Bridge", Test_No, Returning_No]
         else

            if Returning_No = 5 then
               [] = RPT2:Test_Passed["Generated from Scenario", Test_No, Returning_No]
            else
               [] = RPT3:Test_Failed["Failed to generate", Test_No, Returning_No]
            endif

         endif

      endif

   endif

endif

#---------------------------------------------------------------------------

if The_Test = "Check_ASL_In_Instance" then

   if Returning_No = 200 then
      [] = RPT2:Test_Passed["ASL in instance", Test_No, Returning_No]
   else
      [] = RPT3:Test_Failed["ASL in instance", Test_No, Returning_No]
   endif

endif

#---------------------------------------------------------------------------

if The_Test = "Unknown_Test" then
   [] = RPT3:Test_Failed["Unknown_Test", Test_No, Returning_No]
endif

#---------------------------------------------------------------------------

if The_Test = "Lots_Of_Params" then

   # in this state check that all the events have been processed and then verify 
   # the result
   if this.ResultX = 67108863 then
      [] = RPT2:Test_Passed["Lots of Params", Test_No, this.ResultX]
   else
      [] = RPT3:Test_Failed["Lots of Params", Test_No, this.ResultX]
   endif

endif


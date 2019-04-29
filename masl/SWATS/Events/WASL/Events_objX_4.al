define action Events_objX_4
input\
	Test_No:Base_Integer_Type,\
	Which_Test:Base_Text_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

if Which_Test = "Read_Target_Instance" then

   if this.Integer_Att = 100 then

      if this.Real_Att = 99.9 then

         if this.Text_Att = "Test_Data" then

            if not this.Boolean_Att then
               Returning_No = -10
            else
               Returning_No = 1
            endif

         else
            Returning_No = -20
         endif

      else
         Returning_No = -30
      endif

   else
      Returning_No = -40
   endif

   generate objX2:Finished(Test_No, "Check_Attributes", Returning_No) to this

else

   if Which_Test = "Write_Target_Instance" then

      this.Integer_Att = 200
      this.Real_Att    = 199.9
      this.Text_Att    = "New_Data"
      this.Boolean_Att = FALSE

      generate objX2:Finished(Test_No, "Check_New_Attributes", Returning_No) to this

   else

      if Which_Test = "Read_Other_Instance" then

         temp_Inst = find-one Object_X where The_Test_No = Test_No

         if temp_Inst != UNDEFINED then

            if temp_Inst.Integer_Att = 1111 then
 
               if temp_Inst.Real_Att = 11.1 then

                  if temp_Inst.Text_Att = "Dummy_Data" then

                     if temp_Inst.Boolean_Att then
                        Returning_No = -10
                     else
                        Returning_No = 1
                     endif

                  else
                     Returning_No = -20
                  endif

               else
                  Returning_No = -30
               endif

            else
               Returning_No = -40
            endif

         else
            Returning_No = -50
         endif

         generate objX2:Finished(Test_No, "Check_Inst_Attributes", Returning_No) to this

      else

         if Which_Test = "Write_Other_Instance" then

            temp_Inst = find-one Object_X where The_Test_No = Test_No

            temp_Inst.Integer_Att = 300
            temp_Inst.Real_Att    = 299.9
            temp_Inst.Text_Att    = "More_Data"
            temp_Inst.Boolean_Att = FALSE

            generate objX2:Finished(Test_No, "Check_New_Inst_Attributes", Returning_No) to this

         else

            if Which_Test = "Read_Other_Object" then

               tempZ = find-one Object_Z where The_Test_No = Test_No
 
               if tempZ.Int_Att = 1000 then

                  if tempZ.Real_Att = 1000.0 then

                     if tempZ.Text_Att = "Test_Data" then
                        Returning_No = 1
                     else
                        Returning_No = -10
                     endif

                  else
                     Returning_No = -20
                  endif

               else
                  Returning_No = -30
               endif

               generate objX2:Finished(Test_No, "Check_Other_Object", Returning_No) to this

            else

               if Which_Test = "Write_Other_Object" then
 
                  tempZ = find-one Object_Z where The_Test_No = Test_No

                  tempZ.Int_Att = 2000
                  tempZ.Real_Att = 2000.0
                  tempZ.Text_Att = "New_Test_Data"

                  generate objX2:Finished(Test_No, "Check_New_Other_Object", Returning_No) to this 
               else
                  generate objX2:Finished(Test_No, "Unknown_Test", Returning_No) to this 

               endif

            endif

         endif

      endif

   endif

endif


enddefine

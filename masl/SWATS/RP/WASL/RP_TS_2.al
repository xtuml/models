define action RP_TS_2
input
output

#$DESCRIPTION
#$END_DESCRIPTION


# Open up a file in the ADA run time system to stash results into.


#$ADA_INLINE
   #with Test_Suite_Text_IO;
   #Test_Suite_Text_IO.Open_File_For_Writing(
      #    Name_Of_File             => "Requirements_Analysis",
      #    Unique_Domain_Identifier => 999);
#$END_ADAINLINE



# Navigate to all the reported requirements

{All_Requirements} = this -> R11.All_Requirements_In_Test_Suite

How_Many_Requirements = countof {All_Requirements}

Current_Reqid = " "
The_Domain = " "
The_Test   = 0
The_Result of Result_Type = 'Unknown'

if How_Many_Requirements > 0 then

   # Step through each reqirement, navigating across to the set of
   # test results that test that requirement.

   for A_Requirement in {All_Requirements} do

      Current_Reqid = A_Requirement.REQUID
      Local_Requid_Text   = A_Requirement.Requid_Text
      Requid_Status = A_Requirement.Requid_Test_Status

      $INLINE
         fprintf(stderr,"------------------------------------------------------------\n");
         fprintf(stderr,"Requirement  %s has ", Current_Reqid ); 
      $ENDINLINE




      if Requid_Status = 'Tested' then

         $INLINE
            fprintf(stderr,"been tested by the following \n" );
         $ENDINLINE



         #$ADA_INLINE
            # Test_Suite_Text_IO.Dump_String("Requirement " & Current_Reqid & "has been tested by the following ");
         #$END_ADAINLINE



         # Navigate to the set containing the domain and test details that met this requirement
         {Satisfying_Tests} = A_Requirement -> R12.Requirement_Met

         for A_Test in {Satisfying_Tests} do

            # Dump out the requirements and the tests that prove them

            The_Domain = A_Test.Domain_Name
            The_Test   = A_Test.Meeting_Test_Number
            The_Result = A_Test.Requid_Test_Result

            $INLINE
               fprintf(stderr,"Domain %s Test Number %d ", The_Domain, The_Test );
            $ENDINLINE


            if The_Result = 'Passed' then
               $INLINE
                  fprintf(stderr,"Passed\n");
               $ENDINLINE

               #$ADA_INLINE
                  # Test_Suite_Text_IO.Dump_String("Domain " & The_Domain & "Test Number " & Application_Types.Base_Integer_Type'image(The_Test) & ", Passed" );
               #$END_ADAINLINE


            else
               if The_Result = 'Failed' then
                  $INLINE
                     fprintf(stderr,"Failed\n");
                  $ENDINLINE

                  #$ADA_INLINE
                     # Test_Suite_Text_IO.Dump_String("Domain " & The_Domain & "Test Number " & Application_Types.Base_Integer_Type'image(The_Test) & ", Failed" );
                  #$END_ADAINLINE


               else
                  if The_Result = 'Unsupported' then
                     $INLINE
                        fprintf(stderr,"was Unsupported\n");
                     $ENDINLINE


                     #$ADA_INLINE
                        # Test_Suite_Text_IO.Dump_String("Domain " & The_Domain & "Test Number " & Application_Types.Base_Integer_Type'image(The_Test) & ", Unsupported" );
                     #$END_ADAINLINE

                  else
                     $INLINE
                        fprintf(stderr,"has an Unknown result reported\n");
                     $ENDINLINE

                     #$ADA_INLINE
                        # Test_Suite_Text_IO.Dump_String("Domain " & The_Domain & "Test Number " & Application_Types.Base_Integer_Type'image(The_Test) & ", Unknown" );
                     #$END_ADAINLINE


                     [] = RP7::Report_Run_Time_Error["Requirement has an UNKNOWN result"]
                  endif
 
               endif
            endif

         endfor

      else

         # Requirement has not been tested.

         $INLINE
            fprintf(stderr,"not been tested in this run\n" );
         $ENDINLINE


         #$ADA_INLINE
            # Test_Suite_Text_IO.Dump_String("Requirement " & Current_Reqid & "has been not been tested in this run");
         #$END_ADAINLINE

      endif

      $INLINE
         fprintf(stderr,"------------------------------------------------------------\n");
      $ENDINLINE

      #$ADA_INLINE
         # Test_Suite_Text_IO.Dump_String("------------------------------------------------------------");
      #$END_ADAINLINE

 
   endfor


else

   # No reported requirements found

   [] = RP7::Report_Run_Time_Error["No requirements found"];

   #$ADA_INLINE
      # Test_Suite_Text_IO.Dump_String("No requirements identifiers specified");
   #$END_ADAINLINE

endif

#$ADA_INLINE
   #Test_Suite_Text_IO.Close_File_For_Writing(
      #    Name_Of_File             => "Requirements_Analysis",
      #    Unique_Domain_Identifier => 999);
#$END_ADAINLINE


# Terminate and tidy up.
generate TS2:Terminate_Analysis() to this


enddefine

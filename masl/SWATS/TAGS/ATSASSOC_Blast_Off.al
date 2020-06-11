state TAGS::Active_Tagged_Single_Assoc.Blast_Off (ATS_ASSOC_Test_No : in  integer) is
[] = RPT1:Start_Test[ATS_ASSOC_Test_No, "1241-0000-01-0128", "Tagging", "Active Tagged Many", "generate to ATS_ASSOC"]

The_Left = this -> R5.Active_Tagged_Many_Left
The_Right = this -> R5.Active_Tagged_Many_Right

if The_Left != UNDEFINED then

   if The_Right != UNDEFINED then

      # If the left and right objects were ment to be linked with this
      if The_Right.Attribute_Two = The_Left.Attribute_One then

         if The_Right.Attribute_Two = this.Attribute_Three then
            [] = RPT2:Test_Passed["generate to ATS_ASSOC", ATS_ASSOC_Test_No, 0]
         else
            [] = RPT3:Test_Failed["generate to ATS_ASSOC", ATS_ASSOC_Test_No, -1]
         endif

         # Else the left and right objects are not the same, therefore
         # we can't expect the assoc object to share the attribute value.
         # At least it is linked to a left and a right instance.
      else
         [] = RPT2:Test_Passed["generate to ATS_ASSOC", ATS_ASSOC_Test_No, 1]
      endif

   else
      [] = RPT3:Test_Failed["generate to ATS_ASSOC", ATS_ASSOC_Test_No, -2]
   endif

else
   [] = RPT3:Test_Failed["generate to ATS_ASSOC", ATS_ASSOC_Test_No, -3]
endif

define action TAGS_ATML_2
input\
	ATML_Test_No:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

[] = RPT1:Start_Test[ATML_Test_No, "1241-0000-01-0128", "Tagging", "Active Tagged Many", "generate to ATML"]

# Navigate to the set of instances and the single associated instance.
{Set_Of_Right} = this -> R5.Active_Tagged_Many_Right
{Set_Of_Assoc} = this -> R5.Active_Tagged_Single_Assoc

Found_Assoc = FALSE

for individual_assoc in {Set_Of_Assoc} do

   if individual_assoc.Attribute_Three = this.Attribute_One then
      Found_Assoc = TRUE
      break
   endif

endfor

Found_Right = FALSE

for individual_right in {Set_Of_Right} do

   if individual_right.Attribute_Two = this.Attribute_One then
      Found_Right = TRUE
      break
   endif

endfor

how_many_in_right = countof {Set_Of_Right}
how_many_in_assoc = countof {Set_Of_Assoc}

if how_many_in_assoc > 0 then

   # There should always be one or more linked instances on the right side
   if how_many_in_right > 0 then

      if Found_Right then

         if Found_Assoc then
            [] = RPT2:Test_Passed["generate to ATML", ATML_Test_No, 0]
         else
            [] = RPT3:Test_Failed["generate to ATML", ATML_Test_No, -1]
         endif

      else
         [] = RPT3:Test_Failed["generate to ATML", ATML_Test_No, -2]
      endif

   else
      [] = RPT3:Test_Failed["generate to ATML", ATML_Test_No, -3]
   endif

else
   [] = RPT3:Test_Failed["generate to ATML", ATML_Test_No, -4]
endif


enddefine

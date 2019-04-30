define action TAGS_ATMR_2
input\
	ATMR_Test_No:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

[] = RPT1:Start_Test[ATMR_Test_No, "1241-0000-01-0128", "Tagging", "Active Tagged Many", "generate to ATMR"]

# Navigate to the set of instances and the single associated instance.
{Set_Of_Left} = this -> R5.Active_Tagged_Many_Left
{Set_Of_Assoc} = this -> R5.Active_Tagged_Single_Assoc

Found_Assoc = FALSE

for individual_assoc in {Set_Of_Assoc} do

   if individual_assoc.Attribute_Three = this.Attribute_Two then
      Found_Assoc = TRUE
      break
   endif

endfor

Found_Left = FALSE

for individual_left in {Set_Of_Left} do

   if individual_left.Attribute_One = this.Attribute_Two then
      Found_Left = TRUE
      break
   endif

endfor

how_many_in_left = countof {Set_Of_Left}
how_many_in_assoc = countof {Set_Of_Assoc}

if how_many_in_assoc > 0 then

   # There should always be one or more linked instances on the left side
   if how_many_in_left > 0 then

      if Found_Left then

         if Found_Assoc then
            [] = RPT2:Test_Passed["generate to ATMR", ATMR_Test_No, 0]
         else
            [] = RPT3:Test_Failed["generate to ATMR", ATMR_Test_No, -1]
         endif

      else
         [] = RPT3:Test_Failed["generate to ATMR", ATMR_Test_No, -2]
      endif

   else
      [] = RPT3:Test_Failed["generate to ATMR", ATMR_Test_No, -3]
   endif

else
   [] = RPT3:Test_Failed["generate to ATMR", ATMR_Test_No, -4]
endif



enddefine

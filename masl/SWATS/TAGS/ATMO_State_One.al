state TAGS::Active_Tagged_Many_Objects.State_One (ATMO_Test_No : in  integer) is
[] = RPT1:Start_Test[ATMO_Test_No, "Null Requid", "Tagging", "Active Many Tagged Object", "generate to Active Many"]

Single_End = this -> R2.Active_Tagged_Single_Object

if Single_End != UNDEFINED then

   if Single_End.Attribute_One = this.Attribute_Two then
      [] = RPT2:Test_Passed["generate ATMO", ATMO_Test_No, 0]
   else
      [] = RPT3:Test_Failed["generate ATMO", ATMO_Test_No, -2]
   endif

else
   [] = RPT3:Test_Failed["generate ATMO", ATMO_Test_No, -1]
endif
   
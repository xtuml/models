define action UDT_OIB_2
input\
	Where_To_Start:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

#--------------------------------------------------------------------------
# pass the 'this' IH to a bridge for dereferencing.
#--------------------------------------------------------------------------

[] = RPT1:Start_Test[Where_To_Start, "1103-0000-01-0311", "UDT", "Terminator typing", "Pass in this IH, decode types"]

[the_result, result_value] = BTF1:I_H_Type_Across[this]

if the_result = TRUE then

   if this.Some_Enumeration = 'Four' then
      [] = RPT2:Test_Passed["Decode this IH", Where_To_Start, result_value]
   else
      [] = RPT3:Test_Failed["Decode this IH", Where_To_Start, result_value]
   endif

else
   [] = RPT3:Test_Failed["Decode this IH", Where_To_Start, result_value]
endif



enddefine

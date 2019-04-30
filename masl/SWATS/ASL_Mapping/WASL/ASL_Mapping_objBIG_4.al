define action ASL_Mapping_objBIG_4
input\
	Big_IH:BIG_Object_IH,\
	Next_Test_Number:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION


# ###########################################################################

[] = RPT1:Start_Test[Next_Test_Number, "Null Requid", "ASL Mapping", "Big Object", "Compare control IH and this"]

# Compare the attributes of this to the control IH

if this.One !=  Big_IH.One and \
   this.Forty != Big_IH.Forty and \
   this.Eightyfour != Big_IH.Eightyfour then

   [] = RPT2:Test_Passed["this & control IH do not match", Next_Test_Number, 0]

else

   [] = RPT3:Test_Failed["this & control IH match", Next_Test_Number, this.Eightyfour]

endif

generate objBIG2:To_Complete() to this


enddefine

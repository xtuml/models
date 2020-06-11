state ASL_Mapping::BIG_Object.Next_Stage (Big_IH           : in  instance of BIG_Object,
                                          Next_Test_Number : in  integer) is

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
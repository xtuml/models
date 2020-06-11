state ASL_Mapping::BIG_Object.How_Big (Big_IH                 : in  instance of BIG_Object,
                                       Current_Test_Number    : in  integer,
                                       Expected_Result_Number : in  integer) is
[] = RPT1:Start_Test[Current_Test_Number, "Null Requid", "ASL Mapping", "Big Object", "generate to big object"]

Local_Test_Number = Current_Test_Number

# Compare the attributes of this to the control data

if this.One = Expected_Result_Number and \
   this.Forty = Expected_Result_Number and \
   this.Eightyfour = Expected_Result_Number then

   [] = RPT2:Test_Passed["this and control data match", Local_Test_Number, 0]

else

   [] = RPT3:Test_Failed["this and control data do not match", Local_Test_Number, 0]

endif

Local_Test_Number = Local_Test_Number + 1

# Update the test number so that the result of the next generation
# has it's own test number, and pass through the instance handle of the big object
# that has so far been woefully ignored.

generate objBIG4:To_Next_Stage (Big_IH, Local_Test_Number) to this

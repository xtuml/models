state Function_Calls::A_Tight_Object.Operations (Termination_Required : in  boolean) is
[] = RPT1:Start_Test[this.Start_Value, "Null Requid", "Function_Calls", "A Tight Object", "Generate to active object"]

if Termination_Required = TRUE then
   generate ATO2:Die() to this
else
   [] = RPT2:Test_Passed["A tight object none terminated", this.Start_Value, 0]
endif

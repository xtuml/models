define action Function_Calls_ATO_2
input\
	Termination_Required:Boolean
output

#$DESCRIPTION
#$END_DESCRIPTION

[] = RPT1:Start_Test[this.Start_Value, "Null Requid", "Function_Calls", "A Tight Object", "Generate to active object"]

if Termination_Required = TRUE then
   generate ATO2:Die() to this
else
   [] = RPT2:Test_Passed["A tight object none terminated", this.Start_Value, 0]
endif



enddefine

define action TAGS_AAAOOO_2
input\
	Test_Number:Base_Integer_Type,\
	Add:Base_Integer_Type,\
	Purpose:Base_Text_Type,\
	Expected_Result:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

[] = RPT1:Start_Test [Test_Number, "Null Requid", "Tagging", "Single Array Active Object", Purpose]

this.Result = Add

Test_Purpose = Purpose
Test_Expected_Result = Expected_Result
Number_Of_Test = Test_Number

generate AAAOOO2:Finish(Test_Expected_Result,Number_Of_Test,Test_Purpose, TRUE) to this






enddefine

define action TAGS_AAAOOO_1
input\
	Final_Value:Base_Integer_Type,\
	Test_Number:Base_Integer_Type,\
	Purpose:Base_Text_Type,\
	Tell_Tales:Boolean
output

#$DESCRIPTION
#$END_DESCRIPTION

my_test = find-one Test_Data

Test = my_test.Number
This_Environment = my_test.Environment

if This_Environment = 'WACA' then 
   Supported = TRUE
else
   Supported = FALSE
endif


if this.Result = Final_Value then
   Failure_Value = 0
else
   Failure_Value = 1
endif

if Tell_Tales then
   [] = TAGS5::Report_Now[Test_Number, Purpose, Failure_Value, Supported]
endif




enddefine

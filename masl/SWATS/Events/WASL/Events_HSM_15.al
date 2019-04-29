define action Events_HSM_15
input\
	Test_No:Base_Integer_Type,\
	Count:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

temp = Count
temp = temp + 1

generate HSM1:Increment(Test_No, temp) to this


enddefine

define action Events_objCD_2
input\
	Test_No:Base_Integer_Type,\
	Deleted:Boolean
output

#$DESCRIPTION
#$END_DESCRIPTION

newCD = find-one Check_Delete where idCD = 1

temp = newCD.CDTotal
temp = temp + 10
newCD.CDTotal = temp

generate objCD2:Finished(Test_No, Deleted) to this


enddefine

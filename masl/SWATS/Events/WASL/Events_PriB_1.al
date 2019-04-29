define action Events_PriB_1
input\
	Test_No:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

InstPA = find-one Priority_A where A_ID = 1

InstPA.Poly_B = TRUE

[] = Events5::Dump_Text["Finished Event In PriB Triggered"]




enddefine

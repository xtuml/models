define action Function_Calls_objB_8
input\
	Test_Case_ID:Base_Integer_Type
output

#$DESCRIPTION
Creation State.
#$END_DESCRIPTION


#an_instance_B = find-one Object_B where ReferenceB = Test_Case_ID
#generate objB3:Start(Test_Case_ID) to an_instance_B


new_object_B = create Object_B with ReferenceB = Test_Case_ID & ResultA = 0

generate objB6:Light_blue_touch_paper(Test_Case_ID) to new_object_B


#


enddefine

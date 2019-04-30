define action Creation_Deletion_objCS_1
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
This state verifies the following:

	[1] Instance creation in a creation state.
#$END_DESCRIPTION


#------------------------------------------------------------------------#

#Creation state

#------------------------------------------------------------------------#

#Creation of an instance in a creation state

[] = RPT1:Start_Test[Test, "null requid", "Creation Deletion", "objCS", "Creation State"]

#Create an instance of an object
newCS = create Creation_State with ReferenceCS = Test &\
                                   ResultCS = 0


generate objCS4:StartB(Test) to newCS


#End Test 1

#------------------------------------------------------------------------#


enddefine

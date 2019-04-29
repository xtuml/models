define action Events_BTD_2
input\
	Test:Base_Integer_Type,\
	Test_Number:Base_Integer_Type
output

#$DESCRIPTION
This state verifies the following:

	[1]	The deletion of self.
#$END_DESCRIPTION

#------------------------------------------------------------------------#

#Deletion state

#------------------------------------------------------------------------#

[] = RPT1:Start_Test[Test_Number, "Null Requid", "Events", "Deletion State", "born to die deletion"]


[] = RPT2:Test_Passed["BornToDie", Test_Number, 0]

#Delete self
delete this

#------------------------------------------------------------------------#


enddefine

define action Creation_Deletion_objTS_2
input
output

#$DESCRIPTION
This state verifies the following:

	[1] Deletion of own instance
	
#$END_DESCRIPTION

#------------------------------------------------------------------------#
# Deletion in a termination state
#------------------------------------------------------------------------#

   # The following ASL is valid for all tests
   Test = this.ReferenceTS

   [] = RPT1:Start_Test[Test, "1241-0000-01-0206", "Creation Deletion", "Termination State", "Deletion test"]

   # Delete the current instance
   delete this

   # verify the deletion was sucessful
   [] = objTS1:verify_deletion[Test]

#------------------------------------------------------------------------#


enddefine

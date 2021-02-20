//! This state verifies the following:
//! 
//! 	[1] Deletion of own instance
//! 	
terminal state Creation_Deletion::Termination_State.Deletion_in_a_terminal_state () is
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
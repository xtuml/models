//! This state verifies the following:
//! 
//! 	[1]	The deletion of self.
terminal state Events::BornToDie.Termination_state (Test        : in  integer,
                                                    Test_Number : in  integer) is
#------------------------------------------------------------------------#

#Deletion state

#------------------------------------------------------------------------#

[] = RPT1:Start_Test[Test_Number, "Null Requid", "Events", "Deletion State", "born to die deletion"]


[] = RPT2:Test_Passed["BornToDie", Test_Number, 0]

#Delete self
delete this

#------------------------------------------------------------------------#
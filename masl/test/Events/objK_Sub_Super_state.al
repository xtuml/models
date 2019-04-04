//
// UK Crown Copyright (c) 2019. All rights reserved.
//

//! This state receives an event from its related supertype
//! object, and also
//! passes the event onto its related subtype object.
state Events::Object_K.Sub_Super_state (Test_Number : in  integer) is
#-----------------------------------------------------------
# SUB/SUPERTYPE
#-----------------------------------------------------------

   [] = RPT1:Start_Test[this.ReferenceK, "1241-0000-01-0405", "Events", "ObjK", "Subtype K"]

   my_super = this -> R7.Object_J
   temp = my_super.action_count - 1
   my_super.action_count = temp

   temp = this.ResultK + 70
   this.ResultK = temp

#-----------------------------------------------------------

generate objK1:Finished(Test_Number) to this
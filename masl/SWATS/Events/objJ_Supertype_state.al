//! This state receives an external event that is passed onto its related
//! subtype object.
state Events::Object_J.Supertype_state (Test_Number : in  integer) is
#-----------------------------------------------------------
# SUPERTYPE
#-----------------------------------------------------------

   [] = RPT1:Start_Test[this.ReferenceJ, "Null Requid", "Events", "ObjJ", "Supertype J"]

   temp = this.action_count - 1

   this.action_count = temp

   temp = this.ResultJ + 70
   this.ResultJ = temp

#-----------------------------------------------------------

generate objJ2:ST_Finished(Test_Number) to this
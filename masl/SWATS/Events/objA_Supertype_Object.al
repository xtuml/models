//! State machine only in supertype object. 
//! Update result if called correctly.
state Events::Object_A.Supertype_Object (Test        : in  integer,
                                         Test_Number : in  integer) is
#-----------------------------------------------------------
# SUPERTYPE
#-----------------------------------------------------------

   [] = RPT1:Start_Test[Test_Number, "1241-0000-01-0304", "Events", "Object_A", "State machine in supertype only"]

   this.latest_test = Test_Number
   temp = this.ResultA + 50
   this.ResultA = temp

   generate objA2:Finished(Test_Number) to this

#-----------------------------------------------------------

//! 
//! # This state shall add the value specified to the ResultQ 
//! # attribute. 
//! 
//! # This state shall also add the value specified to the 
//! # supertype attribute Result_P.
//! 
//! # This shall only happen if the supertype has delivered the
//! # event to this subtype.
state Events::Object_Q.Subtype_State (Test : in  integer) is
#-----------------------------------------------------------
# SUBTYPE
#-----------------------------------------------------------

# Remember the latest test

my_super = this -> R4.Object_P
my_super.latest_test = Test

temp = my_super.number_of_received_events + 1
my_super.number_of_received_events = temp

#-----------------------------------------------------------
# Test 1 - Event received from supertype object
#-----------------------------------------------------------

# [] = RPT1:Start_Test[Test, "1241-0000-01-0405", "Events", "objQ", "subtype"]

# Change the value of attribute 'ResultQ'
temp = this.Result_Q + this.Value_To_Add
this.Result_Q = temp

temp = my_super.Result_P + this.Value_To_Add

my_super.Result_P = temp

#-----------------------------------------------------------

generate objQ1:FinishedQ() to this
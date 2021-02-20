define action Events_objR_2
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

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

# [] = RPT1:Start_Test[Test, "1241-0000-01-0405", "Events", "objR", "subtype"]

#Change the value of attribute 'ResultR'
temp = this.Result_R + this.Value_To_Add
this.Result_R = temp

temp = my_super.Result_P + this.Value_To_Add

my_super.Result_P = temp

#-----------------------------------------------------------

generate objR1:FinishedR() to this


enddefine

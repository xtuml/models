define action Events_objS_2
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

#-----------------------------------------------------------
# SUBTYPE
#-----------------------------------------------------------

#remember the latest test

my_super = this -> R4.Object_P
my_super.latest_test = Test

temp = my_super.number_of_received_events + 1
my_super.number_of_received_events = temp
#-----------------------------------------------------------
# Test 1 - Event received from supertype object
#-----------------------------------------------------------

# [] = RPT1:Start_Test[Test, "1241-0000-01-0405", "Events", "objQ", "subtype"]

#Change the value of attribute 'ResultS'
temp = this.Result_S + this.Value_To_Add
this.Result_S = temp

temp = my_super.Result_P + this.Value_To_Add

my_super.Result_P = temp

#-----------------------------------------------------------

generate objS1:FinishedS() to this


enddefine

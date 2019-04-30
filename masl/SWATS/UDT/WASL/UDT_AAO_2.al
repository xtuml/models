define action UDT_AAO_2
input\
	Enum_Parameter:Simple_Enumeration_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

This_Test = this.The_Test_Number

[] = RPT1:Start_Test[This_Test, "Null Requid", "UDT", "Active Object Enumeration", "Hard coded enumeration"]

if Enum_Parameter = 'One' then

   # It is worth noting at this point that the test number (base_integer_type) is
   # being stuffed into the parameter, which is defined as a subtype.
   # If the test number is greater than the range of the subtype, then
   # we will get a constraint error at run time.

   # Ensure that the range of the subtype is sufficient to handle the 
   # test number. This is a consequence of using subtypes in ada.
   # If we had used proper strong typing, this mish-mash wouldn't happen.

   generate AAO2:Go_Again('Two', this.The_Test_Number) to this

else

   this.Why = 'Enumeral'
   generate AAO3:Failed('Enumeral') to this

endif



enddefine

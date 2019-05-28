define action UDT_AAO_3
input\
	Enum_Parameter:Simple_Enumeration_Type,\
	Subset_Param:One_To_Maximum_Integer
output

#$DESCRIPTION
#$END_DESCRIPTION

if Enum_Parameter = 'Two' then

   if Subset_Param = this.The_Test_Number then
      this.Why = 'OK'
      generate AAO4:Passed('OK') to this
   else
      this.Why = 'Number'
      generate AAO3:Failed('Number') to this
   endif

else
   this.Why = 'Enumeral'
   generate AAO3:Failed('Enumeral') to this
endif



enddefine

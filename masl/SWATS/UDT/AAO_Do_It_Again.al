state UDT::An_Active_Object.Do_It_Again (Enum_Parameter : in  Simple_Enumeration_Type,
                                         Subset_Param   : in  One_To_Maximum_Integer) is
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

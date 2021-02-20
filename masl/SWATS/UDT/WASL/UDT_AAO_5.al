define action UDT_AAO_5
input\
	Reason:Active_Object_Status_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

this_test = this.The_Test_Number

if this.Why = Reason then 

   if this.Why = 'OK' then
      [] = RPT2:Test_Passed["Active UDT Object", this_test, 0]
   else
      [] = RPT3:Test_Failed["Active UDT Object", this_test,  -99]
   endif

else
      [] = RPT3:Test_Failed["Active UDT Object", this_test,  -999]
endif



enddefine

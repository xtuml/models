define action Events_objCD_1
input\
	Test_No:Base_Integer_Type,\
	Deleted:Boolean
output

#$DESCRIPTION
#$END_DESCRIPTION

if not Deleted then

   if this.CDTotal = 10 then
      [] = RPT2:Test_Passed["Event for deleted instance", Test_No, 0]
   else
      [] = RPT3:Test_Failed["Event for deleted instance", Test_No, -10]
   endif

endif


enddefine

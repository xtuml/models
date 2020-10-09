state Events::Check_Delete.Idle (Test_No : in  integer,
                                 Deleted : in  boolean) is
if not Deleted then

   if this.CDTotal = 10 then
      [] = RPT2:Test_Passed["Event for deleted instance", Test_No, 0]
   else
      [] = RPT3:Test_Failed["Event for deleted instance", Test_No, -10]
   endif

endif
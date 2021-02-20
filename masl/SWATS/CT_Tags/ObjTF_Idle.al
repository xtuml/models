state CT_Tags::TCA_F.Idle (Test : in  integer) is
if this.TFRef = 1 then
   [] = RPT2:Test_Passed["TCA Event", Test, 0]
else
   [] = RPT3:Test_Failed["TCA Event", Test, this.TFRef]
endif
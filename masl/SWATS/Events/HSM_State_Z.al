state Events::Huge_State_Machine.State_Z (Test_No : in  integer,
                                          Count   : in  integer) is
if Count = 25 then
   [] = RPT2:Test_Passed["Events", Test_No, 0]
else
   [] = RPT3:Test_Failed["Events", Test_No, Count]
endif
state Events::Test_Persistence.Test_Real (Test_No  : in  integer,
                                          Real_Val : in  real) is
if Real_Val = 99.9 then
  [] = RPT2:Test_Passed["Real Input", Test_No, 0]
else
  [] = RPT3:Test_Failed["Real Input", Test_No, -10]
endif

generate objTP3:Finished() to this
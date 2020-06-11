state Events::Test_Persistence.Stage_A (Test_No : in  integer,
                                        A_Val   : in  integer) is
temp = 1

[temp] = Events6::Add_One[A_Val]

if A_Val = 10 then
  [] = RPT2:Test_Passed["Persistence", Test_No, 0]
else
   [] = RPT3:Test_Failed["Persistence", Test_No, A_Val]
endif

generate objTP3:Finished() to this
state Events::Test_Persistence.Test_Text (Test_No    : in  integer,
                                          Text_Input : in  string) is
if Text_Input = "Text Passed" then
  [] = RPT2:Test_Passed["Text Input", Test_No, 0]
else
   [] = RPT3:Test_Failed["Text Input", Test_No, -10]
endif

generate objTP3:Finished() to this
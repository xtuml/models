state Events::Check_Parameters.StartA (Start_Val : in  integer) is
if Start_Val < 10 then
   temp = Start_Val
   temp = Start_Val + 1
   generate CP1:Start(temp) to this
else
   Its_Done = TRUE
   generate CP2:Finish(Start_Val, Its_Done) to this
endif
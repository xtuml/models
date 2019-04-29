define action Events_objZ_3
input
output

#$DESCRIPTION
#$END_DESCRIPTION

if this.Int_Att = 1000 then
   [] = RPT2:Test_Passed["Many queued events", this.The_Test_No, this.Int_Att]
else
   [] = RPT3:Test_Failed["Many queued events", this.The_Test_No, this.Int_Att]
endif

generate objZ2:Finish() to this


enddefine

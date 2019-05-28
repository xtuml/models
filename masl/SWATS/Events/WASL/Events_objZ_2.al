define action Events_objZ_2
input
output

#$DESCRIPTION
#$END_DESCRIPTION

temp = this.Int_Att
temp = temp + 1

this.Int_Att = temp

generate objZ2:Finish() to this


enddefine

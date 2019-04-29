define action Events_TL_1
input
output

#$DESCRIPTION
#$END_DESCRIPTION

[] = Events5::Dump_Text["Top Level"]

temp = this.Result
temp = temp + 1
this.Result = temp


enddefine

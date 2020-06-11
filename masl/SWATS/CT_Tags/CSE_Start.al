state CT_Tags::CCA_SubE.Start (Test : in  integer) is
temp = this.CSERef
temp = temp + 1
this.CSERef = temp

generate CSE2:Start(Test) to this
state CT_Tags::TCA_E.Start (Test : in  integer) is
temp = this.TERef
temp = temp + 1
this.TERef = temp

generate ObjTE3:Finished(Test) to this
state CT_Tags::TCA_D.Start (Test : in  integer) is
temp = this.TDRef
temp = temp + 1
this.TDRef = temp

generate ObjTD1:Fired(Test) to this
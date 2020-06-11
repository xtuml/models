state CT_Tags::TCA_F.Start (Test : in  integer) is
temp = this.TFRef
temp = temp + 1
this.TFRef = temp

generate ObjTF1:Fired(Test) to this
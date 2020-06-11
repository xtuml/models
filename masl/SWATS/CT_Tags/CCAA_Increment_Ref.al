state CT_Tags::CCA_A.Increment_Ref (Test : in  integer) is
temp = this.CARef
temp = temp + 1
this.CARef = temp

generate CCAA2:Fired(Test) to this
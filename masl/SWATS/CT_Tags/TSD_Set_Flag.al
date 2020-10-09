state CT_Tags::TCA_SubD.Set_Flag (Test : in  integer) is
instTS = this -> R6.TCA_Super
instTS.TCAFlag  = TRUE

temp = instTS.TSRef
temp = temp + 1
instTS.TSRef = temp

generate TSD1:Finished (Test) to this
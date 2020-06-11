state Events::Priority_B.Idle (Test_No : in  integer) is
InstPA = find-one Priority_A where A_ID = 1

InstPA.Poly_B = TRUE

[] = Events5::Dump_Text["Finished Event In PriB Triggered"]


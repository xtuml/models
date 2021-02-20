state Events::Priority_B.Check (Test_No : in  integer,
                                Index   : in  integer) is
InstPA = find-one Priority_A where A_ID = 1

[] = Events5::Dump_Text["Start Event In PriB Triggered"]

[] = Events5::Dump_Text["StartB Event In PriA Generated From PriB"]
generate PriA3:StartB(Test_No, 0) to InstPA

[] = Events5::Dump_Text["Finished Event In PriB Generated To Self"]
generate PriB1:Finished(Test_No) to this
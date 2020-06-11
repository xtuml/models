state Events::Huge_State_Machine.State_J (Test_No : in  integer,
                                          Count   : in  integer) is
temp = Count
temp = temp + 1

generate HSM1:Increment(Test_No, temp) to this
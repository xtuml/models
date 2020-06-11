state Events::Check_Delete.Check (Test_No : in  integer,
                                  Deleted : in  boolean) is
newCD = find-one Check_Delete where idCD = 1

temp = newCD.CDTotal
temp = temp + 10
newCD.CDTotal = temp

generate objCD2:Finished(Test_No, Deleted) to this
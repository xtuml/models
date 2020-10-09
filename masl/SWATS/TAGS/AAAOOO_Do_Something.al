state TAGS::An_Active_Array_Of_One_Object.Do_Something (Test_Number     : in  integer,
                                                        Add             : in  integer,
                                                        Purpose         : in  string,
                                                        Expected_Result : in  integer) is
[] = RPT1:Start_Test [Test_Number, "Null Requid", "Tagging", "Single Array Active Object", Purpose]

this.Result = Add

Test_Purpose = Purpose
Test_Expected_Result = Expected_Result
Number_Of_Test = Test_Number

generate AAAOOO2:Finish(Test_Expected_Result,Number_Of_Test,Test_Purpose, TRUE) to this




state TAGS::An_Active_Array_Of_One_Object.Idle (Final_Value : in  integer,
                                                Test_Number : in  integer,
                                                Purpose     : in  string,
                                                Tell_Tales  : in  boolean) is
my_test = find-one Test_Data

Test = my_test.Number
This_Environment = my_test.Environment

if This_Environment = 'WACA' then 
   Supported = TRUE
else
   Supported = FALSE
endif


if this.Result = Final_Value then
   Failure_Value = 0
else
   Failure_Value = 1
endif

if Tell_Tales then
   [] = TAGS5::Report_Now[Test_Number, Purpose, Failure_Value, Supported]
endif


define action Events_PriA_1
input\
	Test_No:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

[] = Events5::Dump_Text["Finish Event In PriA Triggered"]

temp = this.Event_Count
temp = temp + 1
this.Event_Count = temp

if this.Event_Count = 1 then
   this.Poly_A = TRUE
endif

if this.Event_Count = 2 then

   if this.RefA = 10 then
      this.RefA = 20
   endif

endif

if this.Event_Count = 3 then

   if this.RefA = 20 then
      this.RefA = 30
   endif

endif

if this.Event_Count = 3 then

   if this.RefA = 30 then
      [] = RPT2:Test_Passed["Event Priorities", Test_No, this.RefA]
   else
      [] = RPT3:Test_Failed["Event Priorities", Test_No, this.RefA]
   endif

   [] = RPT9:Perform_Req_Anal[]

   my_test = find-one Test_Data
   The_Test_Number = my_test.Current_Test_Number

   [] = Events2::Delete_Report_Data[]

   my_test = find-one Test_Data

   if my_test != UNDEFINED then
      delete my_test
   endif
endif


enddefine

define action Events_REFLECT_2
input\
	Test:Base_Integer_Type,\
	Counter:Base_Integer_Type,\
	Test_Number:Base_Integer_Type
output

#$DESCRIPTION
This state verifies that an instance of a reflexive object 
can send an event to its self and to other instances of 
the same object.

The following tests give the following results:

    Test      Reference      ResultA
    13        1              60
    14        2, 3, 4        20

Test:      Test case identity.
Reference: Indicates which instances of the 
           object 'Reflexive' was included in the test.
ResultA:   Indicates the final value written into 
           the attribute 'ResultA' at the end of 
           the test, the value of this attribute 
           may change during the test.
#$END_DESCRIPTION

#-----------------------------------------------------------
# Test state
#-----------------------------------------------------------

#-----------------------------------------------------------
# Test 1 - Send events to own instance handle
#-----------------------------------------------------------

   if Test = 1 then

      if Counter = 0 then
         # Only dump this string if this is the first time
         [] = RPT1:Start_Test[Test_Number, "Null Requid", "Events", "objREFLECT", "Reflexive navigation"]
         count = 0
      endif

      temp = this.ResultA + 10
      this.ResultA = temp

      # Set counter value
      count = Counter + 1

      # Generate event to one's self
      if count < 6 then
         generate REFLECT3:StartA(Test, count, Test_Number) to this
      endif

     if count = 6 then

        if this.ResultA != 60 then
           [] = RPT3:Test_Failed["Reflexive", Test_Number, this.ResultA]
           generate REFLECT2:Fault() to this
        else
           [] = RPT2:Test_Passed["Reflexive", Test_Number, this.ResultA]
           generate REFLECT1:Finished() to this
        endif

     endif

   endif

#-----------------------------------------------------------
# Test 2 - Send events to another instance of same object
#-----------------------------------------------------------

   fault_flag = FALSE
   fault_code = 0
   count      = 0

   if Test = 2 then

      if Counter = 0 then 
         [] = RPT1:Start_Test[Test_Number, "Null Requid", "Events", "objREFLECT", "Reflexive navigations"]
      endif

      temp = this.ResultA + 20
      this.ResultA = temp

      # Set counter value
      count = Counter + 1

      # Find an instance to send the event to
      an_instance = find-one Reflexive where ReferenceREFLECT = count

      if count < 5 then
         # Generate event to one's self

         if an_instance != UNDEFINED then
            generate REFLECT3:StartA(Test, count, Test_Number) to an_instance
         else
            fault_code = -3
            fault_flag = TRUE
         endif

      endif

      # Verify results
      if count = 5 then
         {all_instance} = find Reflexive where ReferenceREFLECT = 2

         for each_instance in {all_instance} do

            if each_instance = UNDEFINED then
               fault_flag = TRUE
               fault_code = -2
            else

               if each_instance.ResultA != 20 then
                  fault_flag = TRUE
                  fault_code = each_instance.ResultA
               endif

            endif

         endfor

         if fault_flag = FALSE then
            [] = RPT2:Test_Passed["objREFLECT", Test_Number, this.ResultA ]
            generate REFLECT1:Finished() to this
         else
            [] = RPT3:Test_Failed["objREFELCT", Test_Number, fault_code]
            generate REFLECT2:Fault() to this
         endif

         [] = Events2::Delete_Report_Data[]
      endif

   endif

#-----------------------------------------------------------



enddefine

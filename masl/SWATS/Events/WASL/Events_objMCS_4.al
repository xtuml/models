define action Events_objMCS_4
input\
	Test:Base_Integer_Type,\
	Test_Number:Base_Integer_Type
output

#$DESCRIPTION
This state verifies the following:

[1] That instances in both creation states where
    created correctly.
#$END_DESCRIPTION

#-------------------------------------------------------------------#

#Verify Tests

[] = RPT1:Start_Test[Test_Number, "Null Requid", "Events", "objMCS", "Multiple creation states"]

#-------------------------------------------------------------------#

#Initialise the fault flag
faultflag = FALSE

#-------------------------------------------------------------------#

#Test 1

if Test = 1 then
has_failed = FALSE

   #Find the newly created instances
   IdentityA = 100 + Test
   IdentityB = 200 + Test
   {some_instances} = find Multiple_Creation_States \
                    where idMCS = IdentityA | idMCS = IdentityB

   #Check the result of the find.
   if countof {some_instances} != 2 then
      faultflag = TRUE
      temp = -1
   else

      #Check the contents of the set
      countA = 0
      countB = 0
      for each_instanceMCS in {some_instances} do
         if each_instanceMCS.idMCS = IdentityA then
            countA = countA + 1
         else
            if each_instanceMCS.idMCS = IdentityB then
               countB = countB + 1
            else
               faultflag = TRUE
               temp = -2
            endif
         endif
      endfor

      #Check counters
      if countA != 1 | countB != 1 then
         faultflag = TRUE
         temp = -3
      endif

   endif

endif

#End Test 1

#-------------------------------------------------------------------#

#Tests complete
if faultflag = FALSE then

   #Indicate that the test was succesful and complete
   temp = this.ResultA + 10
   this.ResultA = temp
   [] = RPT2:Test_Passed["objMCS", Test_Number, temp]
   generate objMCS6:Finished(Test) to this

else

   #Indicate that the test failed
   [] = RPT3:Test_Failed["objMCS", Test_Number, temp]
   has_failed = TRUE
   generate objMCS5:Fault() to this

endif

#-------------------------------------------------------------------#



enddefine

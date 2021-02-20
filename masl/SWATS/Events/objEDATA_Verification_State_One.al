state Events::Event_Data.Verification_State_One (A           : in  integer,
                                                 B           : in  integer,
                                                 C           : in  integer,
                                                 E           : in  integer,
                                                 F           : in  integer,
                                                 Test        : in  integer,
                                                 Test_Number : in  integer) is
#------------------------------------------------------------------------
# Verify the ability of a compiler to handle event data
#------------------------------------------------------------------------

#------------------------------------------------------------------------
# Test 1 - Reception of multiple events
#
#          N.B.
#          This test has had to be changed due to a quirk with in the KC 
#          tool KC cannot cope with a parameter having the same name as 
#          that of a key letter of a domain or project. Becuase of this 
#          when a new project was created with a key letter of D the 
#          parameter D would no longer be accepted. However on removeing 
#          the project, remenence of the project still remain and so D 
#          would still not be accepted.
#          For this reason D has been renamed to E and E is now F. 
#          Unfortunatly this means that until the project with the key 
#          letter of D is fully removed frozen versions of the WACA will 
#          no longer work.
#------------------------------------------------------------------------

   [] = RPT1:Start_Test[Test_Number, "Null Requid", "Events", "Event Data", "State 1 reception"]

   has_failed = FALSE

   if Test = 1 then

      if (A != 1)|(B != 2)|(C != 3)|(E != 4)|(F != 5) then
         generate objEDATA1:Fault() to this
         [] = RPT3:Test_Failed ["Event verification state 1", Test_Number, -1]
         has_failed = TRUE
      else
         temp = this.ResultA + 10
         this.ResultA = temp
         [] = RPT2:Test_Passed["Event verification state 1", Test_Number, temp]
      endif

   endif

   if !has_failed then
      generate objEDATA2:Finished() to this
   endif
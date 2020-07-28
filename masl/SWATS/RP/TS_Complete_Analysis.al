terminal state RP::Test_Suite.Complete_Analysis () is
# 1 Close down analysis of requirements.
# 2 Unlink and delete from the requirements results
# 3 Delete self

# In the middle of a run. Allow to continue, but without the 
# requirements traceability.

#Remove all links

{Requirements} = this ->R11.All_Requirements_In_Test_Suite

for requirement in {Requirements} do


   # Go from the requirement to the test results that fulfill the requirement
   {Tests} = requirement -> R12.Requirement_Met

   for test in {Tests} do

      unlink requirement R12 test
      delete test

   endfor

   unlink this R11 requirement

   delete requirement

endfor

{Domains} = this -> R10.Domain_Details

# Only loop round if there are some domains still existing.
How_Many_Left = countof{Domains}

if How_Many_Left != 0 then

   for domain in {Domains} do

      unlink domain R10 this

   endfor

   [] = RP7::Report_Run_Time_Error["Domains still exist"]

endif

delete this

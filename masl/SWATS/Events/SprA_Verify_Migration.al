//! This state verifies the following:
//! 
//! [1] Creation events are possible. - UNSUPPORTED
//! [2] Polymorphic events to multiple 
//!     sub-type families are possible.
//! [3] Subtype Migration is possible.
state Events::SuperA.Verify_Migration (Test : in  integer) is
#-------------------------------------------------------------------#
# Verify tests
#-------------------------------------------------------------------#

# Initialise the fault flag

fault_flag  = FALSE
tested      = FALSE
fault_value = -5

#-------------------------------------------------------------------#

if this.Reference_ID = 1 then

   tested = TRUE

   #Find an instance of object SubB
#   an_instanceSubB = find-one SubB where idA = Test

an_instanceSubB = this -> R13.SubB

   #Check that the instance was created
   if an_instanceSubB = UNDEFINED then
      fault_flag = TRUE
      fault_value = -1
   else

      #Find an instance of object SubC
#      an_instanceSubC = find-one SubC where idA = Test

an_instanceSubC = this -> R14.SubC

      #Check that the instance was created
      if an_instanceSubC = UNDEFINED then
         fault_flag = TRUE
         fault_value = -2
      else

#         an_instanceSubE = find-one SubE where idA = Test

an_instanceSubE = this -> R6.SubE

         if an_instanceSubE = UNDEFINED then
            fault_flag = TRUE
            fault_value = -3

         else

            # Check that the polymorphic events got delivered
            if this.ResultA != 41 then
               fault_flag = TRUE
               fault_value = this.ResultA
            endif

         endif

      endif

   endif

endif

if this.Reference_ID = 2 then

   tested = TRUE

   #Find an instance of object SubA
#   an_instanceSubA = find-one SubA where idA = Test
an_instanceSubA = this -> R13.SubA


   #Check that the instance was created
   if an_instanceSubA = UNDEFINED then
      fault_flag = TRUE
      fault_value = -1
   else

      #Find an instance of object SubD
#      an_instanceSubD = find-one SubD where idA = Test
an_instanceSubD = this -> R14.SubD

      #Check that the instance was created
      if an_instanceSubD = UNDEFINED then
         fault_flag = TRUE
         fault_value = -2
      else

#         an_instanceSubE = find-one SubF where idA = Test
an_instanceSubE = this -> R6.SubE

         if an_instanceSubE = UNDEFINED then
            fault_flag = TRUE
            fault_value = -3

         else

            # Check that the polymorphic events got delivered
            if this.ResultA != 25 then
               fault_flag = TRUE
               fault_value = this.ResultA
            endif

         endif

      endif

   endif

endif


#-------------------------------------------------------------------#

#Tests complete
if fault_flag = FALSE and tested = TRUE then

   #Indicate that the test was successful and complete
   temp = this.ResultA + 10
   this.ResultA = temp
   [] = RPT2:Test_Passed["SuperA", Test, temp]

   generate SprA4:Finished(Test) to this

else

   #Indicate that the test failed
   [] = RPT3:Test_Failed["SuperA", Test, fault_value]
   has_failed = TRUE

   generate SprA3:Fault() to this

endif

#-------------------------------------------------------------------#

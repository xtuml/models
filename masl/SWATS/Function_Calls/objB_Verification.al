//! This object verifies the following:
//! 
//! [1] Function that is accessible by the whole domain
//! [2] Function that calls another function
//! [3] Passing no parameters/Receiving some parameters
//! [4] Passing some parameters/Receiving no parameters
//! [5] Passing no parameters/Receiving no parameters
//! [6] Recursive function calls
state Function_Calls::Object_B.Verification (Test_Case_ID : in  integer,
                                             Invocation   : in  integer) is
#------------------------------------------------------------------------#
# Function calls from ObjectB
#------------------------------------------------------------------------#

   has_failed=FALSE

#------------------------------------------------------------------------#
# Test 6 - Call to a function that is accessible for the whole domain
#------------------------------------------------------------------------#

   if Invocation = 1 then

      [] = RPT1:Start_Test[Test_Case_ID, "1241-0000-01-0803", "Function Calls", "objB", "domain based function calls"]
      [] = RPT8:Specify_Requid[Test_Case_ID, "1241-0000-01-0801"]
      has_failed = FALSE

      # Initialise parameters to be passed to the function.
      tempA = 1

      # Call the function.
      [IntegerA] = Function_Calls1::Domain_FunctionA[tempA]

      # Check that the value returned from the function is correct.
      if (IntegerA != 1) then
         [] = RPT3:Test_Failed["objB", Test_Case_ID,  -1]
         has_failed = TRUE
         generate objB1:Fault() to this
      else
         temp = this.ResultA + 10
         this.ResultA = temp
         [] = RPT2:Test_Passed["objB", Test_Case_ID,  temp]
         generate objB2:Finished(Test_Case_ID) to this
      endif

   endif

# End Test 6

#------------------------------------------------------------------------#
# Test 7 - Call to a function that calls another function.
#------------------------------------------------------------------------#

   if Invocation = 2 then
  
      [] = RPT1:Start_Test[Test_Case_ID, "1241-0000-01-0807", "Function Calls", "objB", "Call to function that calls another function"]
      [] = RPT8:Specify_Requid[Test_Case_ID, "1241-0000-01-0801"]
      [] = RPT8:Specify_Requid[Test_Case_ID, "1241-0000-01-0802"]
      has_failed = FALSE

      # Initialise parameters to be passed to the function.
      tempA = 1

      # Call the function.
      [IntegerA] = objB1:FunctionE[tempA]

      # Check that the value returned from the function is correct.
      if (IntegerA != 2) then
         [] = RPT3:Test_Failed["objB", Test_Case_ID,  -2]                              
         has_failed = TRUE
         generate objB1:Fault() to this
      else
         temp = this.ResultA + 10
         this.ResultA = temp
         [] = RPT2:Test_Passed["objB", Test_Case_ID, temp]
         generate objB2:Finished(Test_Case_ID) to this
      endif

   endif

# End Test 7

#------------------------------------------------------------------------#
# Test 8 - Call a function but not parameters are passed to the function.
#------------------------------------------------------------------------#

   if Invocation = 3 then

      [] = RPT1:Start_Test[Test_Case_ID, "1241-0000-01-0802", "Function Calls", "objB","No input parameters"]
      has_failed = FALSE

      # Initialise parameters to be passed to the function.
      tempA = 1

      # Call the function.
      [IntegerA] = objB2:FunctionF[]

      # Check that the value returned from the function is correct.
      if (IntegerA != 3) then
         [] = RPT3:Test_Failed["objB", Test_Case_ID, -3]
         has_failed = TRUE
         generate objB1:Fault() to this
      else
         temp = this.ResultA + 10
         this.ResultA = temp
         [] = RPT2:Test_Passed["objB", Test_Case_ID, temp]
         generate objB2:Finished(Test_Case_ID) to this
      endif

   endif

# End Test 8

#------------------------------------------------------------------------#
# Test 9 - Call a function but not parameters are returned from the 
#          function.
#------------------------------------------------------------------------#

   if Invocation = 4 then

      [] = RPT1:Start_Test[Test_Case_ID, "1241-0000-01-0802", "Function Calls", "objB" , "No output parameters"]

      has_failed = FALSE

      # Initialise parameters to be passed to the function.
      an_instance_B = find-one Object_B where ReferenceB = Invocation

      # Call the function.
      [] = objB3:FunctionG[an_instance_B, Test_Case_ID]

      # Check that the function performed its task correctly
      if (this.ResultA != 10) then
         [] = RPT3:Test_Failed["objB", Test_Case_ID, -4]
         has_failed = TRUE
         generate objB1:Fault() to this
      else
         temp = this.ResultA + 10
         this.ResultA = temp
         [] = RPT2:Test_Passed["objB", Test_Case_ID, temp]
         generate objB2:Finished(Test_Case_ID) to this
      endif

   endif

# End Test 9

#------------------------------------------------------------------------#
# Test 10 - Call a function but pass no parameters and receive no 
#           parameters from the function.
#------------------------------------------------------------------------#

   if Invocation = 5 then

      [] = RPT1:Start_Test[Test_Case_ID, "1241-0000-01-0802", "Function Calls" , "objB", "no input or output parameters"]

      has_failed = FALSE

      # Call the function.
      [] = objB4:FunctionH[]

      # Check that the function performed its task correctly
      if (this.ResultA != 10) then
        [] = RPT3:Test_Failed["objB", Test_Case_ID, -5]
        has_failed = TRUE
        generate objB1:Fault() to this
     else
        temp = this.ResultA + 10
        this.ResultA = temp
        [] = RPT2:Test_Passed["objB", Test_Case_ID, temp]
        generate objB2:Finished(Test_Case_ID) to this
     endif

     [] = Function_Calls3::Delete_Report_Data[]

   endif

# End Test 10

#------------------------------------------------------------------------#
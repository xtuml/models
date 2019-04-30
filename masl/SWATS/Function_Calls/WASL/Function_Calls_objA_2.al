define action Function_Calls_objA_2
input\
	Test_Case_ID:Base_Integer_Type,\
	Invocation:Base_Integer_Type
output

#$DESCRIPTION
This state verifies the following:

[1] Passing one parameter/Receiving one parameter
[2] Passing many parameters/Receiving one parameter
[3] Passing one parameter/Receiving many parameters
[4] Passing many parameters/Receiving many parameters
[5] Function that is accessible by the whole domain
#$END_DESCRIPTION


#------------------------------------------------------------------------#
# Function calls from ObjectA
#------------------------------------------------------------------------#

   has_failed = TRUE

#------------------------------------------------------------------------#
# Test 1 - Function call to a function passing one parameter and receiving 
#          one parameter.
#------------------------------------------------------------------------#

   if Invocation = 1 then

      IntegerB = 0

      [] = RPT1:Start_Test[Test_Case_ID, "1241-0000-01-0802", "Function Calls", "objA", "passing one and receiving one" ]

      has_failed = FALSE

      # Initialise a parameter to be passed to the function.
      tempA = 0

      # Call the function.
      [IntegerB] = objA1:FunctionA[tempA]

      # Check that the value returned from the function is correct.
      if IntegerB != 10 then
         [] = RPT3:Test_Failed["objA", Test_Case_ID, -1]
         has_failed = TRUE
      else
         temp = this.ResultA + 10
         this.ResultA = temp
         [] = RPT2:Test_Passed["objA", Test_Case_ID, temp]
      endif

   endif

# End Test 1

#------------------------------------------------------------------------#
# Test 2 - Function call to a function passing many parameters and 
#          receiving one parameter.
#------------------------------------------------------------------------#

   if Invocation = 2 then

      BooleanA = TRUE

      [] = RPT1:Start_Test[Test_Case_ID, "1241-0000-01-0802", "Function Calls", "objA", "many parameters and receiving one" ]

      has_failed = FALSE

      # Initialise parameters to be passed to the function.
      tempA = 10  
      tempB = 20
      tempC = 30

      # Call the function.
      [BooleanA] = objA2:FunctionB[tempA, tempB, tempC]

      # Check that the value returned from the function is correct.
      if BooleanA != TRUE then
         [] = RPT3:Test_Failed["objA", Test_Case_ID, -2]
         has_failed = TRUE
      else
         temp = this.ResultA + 10
         this.ResultA = temp
         [] = RPT2:Test_Passed["objA", Test_Case_ID, temp]
      endif

   endif

# End Test 2

#------------------------------------------------------------------------#
# Test 3 - Function call to a function passing one parameters and 
#          receiving many parameter.
#------------------------------------------------------------------------#

   if Invocation = 3 then

      [] = RPT1:Start_Test[Test_Case_ID, "1241-0000-01-0802", "Function Calls", "objA", "passing one and receiving many" ]

      has_failed = FALSE

      IntegerA = 0
      BooleanA = FALSE
      BooleanB = FALSE
      IntegerB = 0

      # Initialise a parameter to be passed to the function.
      tempA = 10

      # Call the function.
      [IntegerA,BooleanA,BooleanB,IntegerB] = objA3:FunctionC[tempA]

      # Check that the value returned from the function is correct.
      if ((IntegerA != 10)|(IntegerB != 30)|(BooleanA != TRUE)|(BooleanB != FALSE)) then
         [] = RPT3:Test_Failed["objA", Test_Case_ID, -3]
         has_failed = TRUE
      else
         temp = this.ResultA + 10
         this.ResultA = temp
         [] = RPT2:Test_Passed["objA", Test_Case_ID, temp]
      endif

   endif

# End Test 3

#------------------------------------------------------------------------#
# Test 4 - Function call to a function passing many parameters and 
#          receiving many parameter.
#------------------------------------------------------------------------#

   if Invocation = 4 then

      [] = RPT1:Start_Test[Test_Case_ID, "1241-0000-01-0802", "Function Calls", "objA", "passing many and receiving many"]
      has_failed = FALSE

      # Initialise parameters to be passed to the function.
      tempA = 1
      tempB = 2
      tempC = 3

      IntegerA = 0
      IntegerB = 0
      IntegerC = 0

      # Call the function.
      [IntegerA,IntegerB,IntegerC] = objA4:FunctionD[tempA, tempB, tempC]

      # Check that the value returned from the function is correct.
      if ((IntegerA != 1)|(IntegerB != 2)|(IntegerC != 3)) then
         [] = RPT3:Test_Failed["objA", Test_Case_ID, -4]
         has_failed = TRUE
      else
         temp = this.ResultA + 10
         this.ResultA = temp
         [] = RPT2:Test_Passed["objA", Test_Case_ID, temp]
      endif

   endif

# End Test 4

#------------------------------------------------------------------------#
# Test 5 - Call to a function that is accessible for the whole domain
#------------------------------------------------------------------------#

   if Invocation = 5 then

      Test=5
      [] = RPT1:Start_Test[Test_Case_ID, "1241-0000-01-0801", "Function Calls", "objA", "function accessible to whole domain"]

      has_failed = FALSE

      # Initialise parameters to be passed to the function.
      tempA = 1

      IntegerA = 0

      # Call the function.
      [IntegerA] = Function_Calls1::Domain_FunctionA[tempA]

      # Check that the value returned from the function is correct.
      if (IntegerA != 1) then
         [] = RPT3:Test_Failed["objA", Test_Case_ID, -5]
         has_failed = TRUE
      else
         temp = this.ResultA + 10
         this.ResultA = temp	         	    
         [] = RPT2:Test_Passed["objA", Test_Case_ID, temp]
      endif

   endif

# End Test 5

#------------------------------------------------------------------------#

if !has_failed then
   generate objA2:Finished() to this
else
   generate objA1:Fault() to this
endif

#------------------------------------------------------------------------#



enddefine

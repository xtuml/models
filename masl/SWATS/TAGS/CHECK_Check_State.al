state TAGS::Check_On_Active_Object.Check_State (Test_Number               : in  integer,
                                                Active_IH                 : in  instance of An_Active_Object,
                                                Testing_For               : in  string,
                                                Expected                  : in  integer,
                                                Your_Presence_Is_Required : in  boolean,
                                                Call_To_Reset             : in  boolean) is
[] = RPT1:Start_Test[Test_Number, "Null Requid", "Tagged", "Active Object", Testing_For]

# Known bug in I-SIM

local_IH = Active_IH

if local_IH = UNDEFINED then

   if Your_Presence_Is_Required = FALSE then
      [] = RPT2:Test_Passed[Testing_For, Test_Number, 0]
   else
      [] = RPT3:Test_Failed[Testing_For, Test_Number, -1]
   endif

else

   # Can't rely on the passed IH still being current (deep shallow copy etc)
   # The problem arises when the scenario generates the Crash_It event to 
   # the active object. This deletes the active object, but the instance handle
   # local to the scenario isn't updated, as it is only a shallow copy of the 
   # instance.

   # So try to find the instance indicated by the passed IH

   My_Active_Object = find-one An_Active_Object where Unique_Identifier = local_IH.Unique_Identifier
   My_Test_Data     = find-one Test_Data

   # If it still exists
   if My_Active_Object != UNDEFINED then

      # and we want it to still exist
      if Your_Presence_Is_Required then

         The_Result = My_Active_Object.Result

         # and it has the correct result
         if Expected = The_Result then
            [] = RPT2:Test_Passed[Testing_For, Test_Number, Expected]
         else
            [] = RPT3:Test_Failed[Testing_For, Test_Number, The_Result]
         endif

      # else it still exists, but we weren't expecting it to be
      else

         # Is this an I-SIM run
         if My_Test_Data.Environment = 'ISIM' then
            [] = RPT4:Test_Unsupported[Test_Number]
            # Must be a WACA run, therefore this is a problem
         else
            [] = RPT3:Test_Failed[Testing_For, Test_Number, -2]
         endif

      endif

   # else it doesn't exist
   else

      # but we expected it to
      if Your_Presence_Is_Required then
         # Active Object should have been found but wasn't
         [] = RPT3:Test_Failed[Testing_For, Test_Number, -3]
      else
         # Active Object should not have been found, and wasn't!
         [] = RPT2:Test_Passed[Testing_For, Test_Number, Expected]
      endif

   endif

endif


if Call_To_Reset then
   # Transition back into the idle state to check more Active object operations.
   generate CHECK3:Reset() to this
else
   # Final test in active test set. bTidy up and report
   generate CHECK2:Finish() to this
endif
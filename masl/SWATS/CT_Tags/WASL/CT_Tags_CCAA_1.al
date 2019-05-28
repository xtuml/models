define action CT_Tags_CCAA_1
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

if this.CARef = 1 then

   if !this.CAPassed then
      this.CAPassed = TRUE
      [] = RPT2:Test_Passed["Gen event to CCA object", Test, 0]
   else

      if this.CALinked then  
         [] = RPT2:Test_Passed["Global Super CCA Sub linked", Test, 0]
      else
         [] = RPT2:Test_Passed["Global Super CCA Sub unlinked", Test, -10]
      endif

   endif

else
   [] = RPT3:Test_Failed["Gen event to CCA object", Test, this.CARef]
endif




enddefine

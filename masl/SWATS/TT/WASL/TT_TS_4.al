define action TT_TS_4
input
output

#$DESCRIPTION
#$END_DESCRIPTION

the_current_test = this -> R1.Test
unlink this R1 the_current_test
loop
   the_next_test = the_current_test -> R4."is_followed_by".Test
   if (the_next_test != UNDEFINED) then
      unlink the_current_test R4."is_followed_by" the_next_test     
   endif
   generate T2:finish() to the_current_test
   the_current_test = the_next_test
   breakif the_current_test = UNDEFINED
endloop

[] = TT2::delete_report_data[]


enddefine

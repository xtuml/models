${ws}\
  .if ( uses_thismodule and instance_based )
${var_name}->\
  .end if
${operation_name}(\
  .if ( instance_based )
 ${var_name}\
    .if ( ( "" != parameters ) or ( uses_thismodule ) )
,\
    .end if
 \
  .end if
  .if ( uses_thismodule )
 thismodule\
    .if ( "" != parameters )
, \
    .end if
  .end if
  .if ( "" != parameters )
 ${parameters} \
  .end if
);

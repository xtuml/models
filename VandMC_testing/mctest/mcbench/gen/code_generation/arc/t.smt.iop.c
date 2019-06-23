${ws}${name}(\
.if ( "" != parameters )
 ${parameters} \
.end if
)\
.if ( is_statement )
;
.end if

.if ( ( "T" == te_brg.EEkeyletters ) and ( "include" == te_brg.Name ) )
#include ${parameters}
.else
${ws}${bridge_name}(\
  .if ( "" != parameters )
 ${parameters} \
  .end if
);
.end if

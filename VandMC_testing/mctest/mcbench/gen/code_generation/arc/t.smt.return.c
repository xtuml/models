.if ( "void" != te_aba.ReturnDataType )
  .// Assign the return value before the deallocation takes
  .// place.  This is especially important when returning
  .// expressions involving sets (like cardinality).
${ws}{${te_aba.ReturnDataType} xtumlOALrv = ${intCast1}${value}${intCast2};
.end if
.if ( "" != deallocation )
  .// Perform the deallocation (of set containers).
${ws}${deallocation}
.end if
.if ( "c_t *" == te_aba.ReturnDataType )
  .if ( te_sys.InstanceLoading )
${ws}return xtumlOALrv;\
  .else
${ws}return ${te_string.strcpy}( A0xtumlsret, xtumlOALrv );\
  .end if
.elif ( "void" == te_aba.ReturnDataType )
${ws}return;\
.else
${ws}return xtumlOALrv;\
.end if
.if ( "void" != te_aba.ReturnDataType )
}
.else

.end if

.//
  if ( 0 != ( ${te_mact.ComponentName}_status && ${te_mact.InterfaceName}_${te_mact.MessageName}_order ) ) {
.if ( "" != te_aba.ParameterInvocation )
    /* = ${te_mact.ComponentName}_${te_mact.PortName}_${te_mact.MessageName}_<parameter.here>_REG_OFFSET for parameter registers.  */
    ${te_aba.ParameterStructure}\
.end if
.if ( "void" != te_aba.ReturnDataType )
    ${te_aba.ReturnDataType} r = \
.else
    \
.end if
${te_aba.GeneratedName}(${te_aba.ParameterInvocation} );
    ${te_mact.ComponentName}_ack = ${te_mact.InterfaceName}_${te_mact.MessageName}_order; /* ACK/clear */
  }

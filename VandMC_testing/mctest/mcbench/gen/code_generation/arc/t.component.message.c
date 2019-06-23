
/*
 * Interface:  ${te_mact.InterfaceName}
.if ( te_mact.Provision )
 * Provided \
.else
 * Required \
.end if
Port:  ${te_mact.PortName}
.if ( 0 == te_mact.Direction )
 * To Provider \
.else
 * From Provider \
.end if
Message:  ${te_mact.MessageName}
 */
.if ( not_empty tm_msg )
  .if ( tm_msg.IsSafeForInterrupts )
/* deferred routine declaration for posting */
static ${te_aba.ReturnDataType} ${te_aba.scope}${te_aba.GeneratedName}_deferred( void );
    .if ( "" != te_aba.ParameterStructure )
/* package for packing, posting and unpacking arguments */
typedef struct {
${te_aba.ParameterStructure}\
} ${te_mact.GeneratedName}_arguments_t;
    .end if

/* stub for safe calls from ISRs, threads, signals, etc. */
${te_aba.ReturnDataType}
${te_aba.scope}${te_aba.GeneratedName}_safe(${te_aba.ParameterDefinition})
{
${deferring}
}

static ${te_aba.ReturnDataType}
${te_aba.scope}${te_aba.GeneratedName}_deferred()
{
  .// Get and unpack argument data.
${unpack_arguments}\
  .// Call the normal method from the deferred body.
  ${te_mact.GeneratedName}(${te_aba.ParameterInvocation} );
}

  .end if
.end if
${te_aba.ReturnDataType}
${te_aba.scope}${te_aba.GeneratedName}(${te_aba.ParameterDefinition})
{
  .if ( te_aba.NonSelfEventCount > 0 )
    .if ( event_prioritization_needed.result )
  /* Set up instance handle for priority event generation.  */
  static ${te_instance.handle} ${te_instance.self};
    .end if
  .end if
  .if ( te_mact.trace )
    .invoke r = GetDomainTypeIDFromString( te_c.Name )
    .assign dom_id = r.result
  /* <message compname="${te_c.Name}" compnum="${te_c.number}" portname="${te_po.Name}" portnum="${te_po.Order}" msgname="${te_mact.MessageName}" msgnum="${te_mact.Order}"/> */
  ${te_trace.component_msg_start}( "${te_aba.ParameterFormat}", ${dom_id}, ${te_po.Order}, ${te_mact.Order}${te_aba.ParameterTrace} );
  .end if
${action_body}\
}

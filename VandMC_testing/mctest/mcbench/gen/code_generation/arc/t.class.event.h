.if ( defined )
/*
 * ${flavor} event:  ${sm_evt.Drv_Lbl}:'${sm_evt.Mning}'
${polymorphic_comment}\
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  .if ( "" != event_parameters )
${event_parameters}\
  .else
  /* Note:  no supplemental data for this event */
  .end if
} ${te_evt.GeneratedName};
.else
/*
 * ${flavor} event:  ${sm_evt.Drv_Lbl}:'${sm_evt.Mning}'
 * warning:  Event is not used in application - no code generated.
 */
.end if
.//

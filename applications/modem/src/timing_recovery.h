/*----------------------------------------------------------------------------
 * File:  timing_recovery.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef TIMING_RECOVERY_H
#define TIMING_RECOVERY_H


class timing_recovery; // forward reference
#include "modem_sys_types.h"


#define timing_recovery_STATE_MODELS 0

#define timing_recovery_DOMAIN_ID 0

/* Define constants to map to class numbers.  */
#define timing_recovery_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define timing_recovery_TASK_NUMBERS 

#define timing_recovery_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define timing_recovery_CLASS_U \
  char timing_recovery_dummy;\



#include "timing_recovery.h"


/*
 * roll-up of all events (with their parameters) for domain timing_recovery
 */
typedef union {
} timing_recovery_DomainEvents_u;


class timing_recovery : public sc_module, public flow_requirement, public flow_provision, public sys_factory, public sys_events {
  public:
  sc_port< flow_provision > Port1;
  sc_port< flow_requirement > Port2;

  
  timing_recovery( sc_module_name name ) : sc_module( name ), sys_factory(SYS_MAX_CONTAINERS) 
 {

    for ( int cn=0; cn < timing_recovery_MAX_CLASS_NUMBERS; ++cn ) {
      Escher_ClassFactoryInit( 0, cn );
    }
  }
  void flow_sample( const i_t, const r_t );

  // state machine process entry points

  sc_event sc_xtuml_timer_event;
  TIM * tim;

  public:
#if timing_recovery_MAX_CLASS_NUMBERS > 0
    virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t cn ) { return timing_recovery_class_info[cn]; }
#endif

  private:
#if timing_recovery_MAX_CLASS_NUMBERS > 0
    static Escher_Extent_t * const timing_recovery_class_info[];
#endif
};


#endif  /* TIMING_RECOVERY_H */

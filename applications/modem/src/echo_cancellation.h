/*----------------------------------------------------------------------------
 * File:  echo_cancellation.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef ECHO_CANCELLATION_H
#define ECHO_CANCELLATION_H


class echo_cancellation; // forward reference
#include "modem_sys_types.h"


#define echo_cancellation_STATE_MODELS 0

#define echo_cancellation_DOMAIN_ID 0

/* Define constants to map to class numbers.  */
#define echo_cancellation_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define echo_cancellation_TASK_NUMBERS 

#define echo_cancellation_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define echo_cancellation_CLASS_U \
  char echo_cancellation_dummy;\



#include "echo_cancellation.h"


/*
 * roll-up of all events (with their parameters) for domain echo_cancellation
 */
typedef union {
} echo_cancellation_DomainEvents_u;


class echo_cancellation : public sc_module, public feedback_requirement, public flow_provision, public feedback_provision, public sys_factory, public sys_events {
  public:
  sc_port< feedback_provision > Port1;
  sc_port< flow_requirement > Port2;
  sc_port< feedback_requirement > Port3;

  
  echo_cancellation( sc_module_name name ) : sc_module( name ), sys_factory(SYS_MAX_CONTAINERS) 
 {

    for ( int cn=0; cn < echo_cancellation_MAX_CLASS_NUMBERS; ++cn ) {
      Escher_ClassFactoryInit( 0, cn );
    }
  }
  void flow_sample( const i_t, const r_t );
  void feedback_offset( void );

  // state machine process entry points

  sc_event sc_xtuml_timer_event;
  TIM * tim;

  public:
#if echo_cancellation_MAX_CLASS_NUMBERS > 0
    virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t cn ) { return echo_cancellation_class_info[cn]; }
#endif

  private:
#if echo_cancellation_MAX_CLASS_NUMBERS > 0
    static Escher_Extent_t * const echo_cancellation_class_info[];
#endif
};


#endif  /* ECHO_CANCELLATION_H */

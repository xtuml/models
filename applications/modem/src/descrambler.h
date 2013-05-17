/*----------------------------------------------------------------------------
 * File:  descrambler.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DESCRAMBLER_H
#define DESCRAMBLER_H


class descrambler; // forward reference
#include "modem_sys_types.h"


#define descrambler_STATE_MODELS 0

#define descrambler_DOMAIN_ID 0

/* Define constants to map to class numbers.  */
#define descrambler_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define descrambler_TASK_NUMBERS 

#define descrambler_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define descrambler_CLASS_U \
  char descrambler_dummy;\



#include "descrambler.h"


/*
 * roll-up of all events (with their parameters) for domain descrambler
 */
typedef union {
} descrambler_DomainEvents_u;


class descrambler : public sc_module, public output_requirement, public flow_provision, public sys_factory, public sys_events {
  public:
  sc_port< output_provision > Port1;
  sc_port< flow_requirement > Port2;

  
  descrambler( sc_module_name name ) : sc_module( name ), sys_factory(SYS_MAX_CONTAINERS) 
 {

    for ( int cn=0; cn < descrambler_MAX_CLASS_NUMBERS; ++cn ) {
      Escher_ClassFactoryInit( 0, cn );
    }
  }
  void flow_sample( const i_t, const r_t );

  // state machine process entry points

  sc_event sc_xtuml_timer_event;
  TIM * tim;

  public:
#if descrambler_MAX_CLASS_NUMBERS > 0
    virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t cn ) { return descrambler_class_info[cn]; }
#endif

  private:
#if descrambler_MAX_CLASS_NUMBERS > 0
    static Escher_Extent_t * const descrambler_class_info[];
#endif
};


#endif  /* DESCRAMBLER_H */

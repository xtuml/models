/*----------------------------------------------------------------------------
 * File:  rotator.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef ROTATOR_H
#define ROTATOR_H


class rotator; // forward reference
#include "modem_sys_types.h"


#define rotator_STATE_MODELS 0

#define rotator_DOMAIN_ID 0

/* Define constants to map to class numbers.  */
#define rotator_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define rotator_TASK_NUMBERS 

#define rotator_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define rotator_CLASS_U \
  char rotator_dummy;\



#include "rotator.h"


/*
 * roll-up of all events (with their parameters) for domain rotator
 */
typedef union {
} rotator_DomainEvents_u;


class rotator : public sc_module, public flow_provision, public flow_requirement, public sys_factory, public sys_events {
  public:
  sc_port< flow_requirement > Port1;
  sc_port< flow_requirement > Port2;
  sc_port< flow_provision > Port3;

  
  rotator( sc_module_name name ) : sc_module( name ), sys_factory(SYS_MAX_CONTAINERS) 
 {

    for ( int cn=0; cn < rotator_MAX_CLASS_NUMBERS; ++cn ) {
      Escher_ClassFactoryInit( 0, cn );
    }
  }
  void flow_sample( const i_t, const r_t );

  // state machine process entry points

  sc_event sc_xtuml_timer_event;
  TIM * tim;

  public:
#if rotator_MAX_CLASS_NUMBERS > 0
    virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t cn ) { return rotator_class_info[cn]; }
#endif

  private:
#if rotator_MAX_CLASS_NUMBERS > 0
    static Escher_Extent_t * const rotator_class_info[];
#endif
};


#endif  /* ROTATOR_H */

/*----------------------------------------------------------------------------
 * File:  decimation.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DECIMATION_H
#define DECIMATION_H


class decimation; // forward reference
#include "modem_sys_types.h"


#define decimation_STATE_MODELS 0

#define decimation_DOMAIN_ID 0

/* Define constants to map to class numbers.  */
#define decimation_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define decimation_TASK_NUMBERS 

#define decimation_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define decimation_CLASS_U \
  char decimation_dummy;\



#include "decimation.h"


/*
 * roll-up of all events (with their parameters) for domain decimation
 */
typedef union {
} decimation_DomainEvents_u;


class decimation : public sc_module, public flow_provision, public flow_requirement, public sys_factory, public sys_events {
  public:
  sc_port< flow_requirement > Port1;
  sc_port< flow_requirement > Port2;
  sc_port< flow_provision > Port3;

  
  decimation( sc_module_name name ) : sc_module( name ), sys_factory(SYS_MAX_CONTAINERS) 
 {

    for ( int cn=0; cn < decimation_MAX_CLASS_NUMBERS; ++cn ) {
      Escher_ClassFactoryInit( 0, cn );
    }
  }
  void flow_sample( const i_t, const r_t );

  // state machine process entry points

  sc_event sc_xtuml_timer_event;
  TIM * tim;

  public:
#if decimation_MAX_CLASS_NUMBERS > 0
    virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t cn ) { return decimation_class_info[cn]; }
#endif

  private:
#if decimation_MAX_CLASS_NUMBERS > 0
    static Escher_Extent_t * const decimation_class_info[];
#endif
};


#endif  /* DECIMATION_H */

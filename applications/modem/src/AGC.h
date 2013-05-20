/*----------------------------------------------------------------------------
 * File:  AGC.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef AGC_H
#define AGC_H


class AGC; // forward reference
#include "modem_sys_types.h"


#define AGC_STATE_MODELS 0

#define AGC_DOMAIN_ID 0

/* Define constants to map to class numbers.  */
#define AGC_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define AGC_TASK_NUMBERS 

#define AGC_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define AGC_CLASS_U \
  char AGC_dummy;\



#include "AGC.h"


/*
 * roll-up of all events (with their parameters) for domain AGC
 */
typedef union {
} AGC_DomainEvents_u;


class AGC : public sc_module, public flow_requirement, public flow_provision, public sys_factory, public sys_events {
  public:
  sc_port< flow_provision > Port1;
  sc_port< flow_requirement > Port2;

  
  AGC( sc_module_name name ) : sc_module( name ), sys_factory(SYS_MAX_CONTAINERS) 
 {

    for ( int cn=0; cn < AGC_MAX_CLASS_NUMBERS; ++cn ) {
      Escher_ClassFactoryInit( 0, cn );
    }
  }
  void flow_sample( const i_t, const r_t );

  // state machine process entry points

  sc_event sc_xtuml_timer_event;
  TIM * tim;

  public:
#if AGC_MAX_CLASS_NUMBERS > 0
    virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t cn ) { return AGC_class_info[cn]; }
#endif

  private:
#if AGC_MAX_CLASS_NUMBERS > 0
    static Escher_Extent_t * const AGC_class_info[];
#endif
};


#endif  /* AGC_H */

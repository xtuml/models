/*----------------------------------------------------------------------------
 * File:  demodulator.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DEMODULATOR_H
#define DEMODULATOR_H


class demodulator; // forward reference
#include "modem_sys_types.h"


#define demodulator_STATE_MODELS 0

#define demodulator_DOMAIN_ID 0

/* Define constants to map to class numbers.  */
#define demodulator_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define demodulator_TASK_NUMBERS 

#define demodulator_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define demodulator_CLASS_U \
  char demodulator_dummy;\



#include "demodulator.h"


/*
 * roll-up of all events (with their parameters) for domain demodulator
 */
typedef union {
} demodulator_DomainEvents_u;


class demodulator : public sc_module, public flow_provision, public flow_requirement, public feedback_provision, public sys_factory, public sys_events {
  public:
  sc_port< flow_requirement > Port1;
  sc_port< flow_provision > Port2;
  sc_port< feedback_requirement > Port3;

  
  demodulator( sc_module_name name ) : sc_module( name ), sys_factory(SYS_MAX_CONTAINERS) 
 {

    for ( int cn=0; cn < demodulator_MAX_CLASS_NUMBERS; ++cn ) {
      Escher_ClassFactoryInit( 0, cn );
    }
  }
  void flow_sample( const i_t, const r_t );
  void feedback_offset( void );

  // state machine process entry points

  sc_event sc_xtuml_timer_event;
  TIM * tim;

  public:
#if demodulator_MAX_CLASS_NUMBERS > 0
    virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t cn ) { return demodulator_class_info[cn]; }
#endif

  private:
#if demodulator_MAX_CLASS_NUMBERS > 0
    static Escher_Extent_t * const demodulator_class_info[];
#endif
};


#endif  /* DEMODULATOR_H */

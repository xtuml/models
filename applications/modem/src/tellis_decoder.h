/*----------------------------------------------------------------------------
 * File:  tellis_decoder.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef TELLIS_DECODER_H
#define TELLIS_DECODER_H


class tellis_decoder; // forward reference
#include "modem_sys_types.h"


#define tellis_decoder_STATE_MODELS 0

#define tellis_decoder_DOMAIN_ID 0

/* Define constants to map to class numbers.  */
#define tellis_decoder_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define tellis_decoder_TASK_NUMBERS 

#define tellis_decoder_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define tellis_decoder_CLASS_U \
  char tellis_decoder_dummy;\



#include "tellis_decoder.h"


/*
 * roll-up of all events (with their parameters) for domain tellis_decoder
 */
typedef union {
} tellis_decoder_DomainEvents_u;


class tellis_decoder : public sc_module, public flow_provision, public flow_requirement, public sys_factory, public sys_events {
  public:
  sc_port< flow_requirement > Port1;
  sc_port< flow_provision > Port2;

  
  tellis_decoder( sc_module_name name ) : sc_module( name ), sys_factory(SYS_MAX_CONTAINERS) 
 {

    for ( int cn=0; cn < tellis_decoder_MAX_CLASS_NUMBERS; ++cn ) {
      Escher_ClassFactoryInit( 0, cn );
    }
  }
  void flow_sample( const i_t, const r_t );

  // state machine process entry points

  sc_event sc_xtuml_timer_event;
  TIM * tim;

  public:
#if tellis_decoder_MAX_CLASS_NUMBERS > 0
    virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t cn ) { return tellis_decoder_class_info[cn]; }
#endif

  private:
#if tellis_decoder_MAX_CLASS_NUMBERS > 0
    static Escher_Extent_t * const tellis_decoder_class_info[];
#endif
};


#endif  /* TELLIS_DECODER_H */

/*----------------------------------------------------------------------------
 * File:  sender.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef SENDER_H
#define SENDER_H


class sender; // forward reference
#include "modem_sys_types.h"


#define sender_STATE_MODELS 0

#define sender_DOMAIN_ID 0

/* Define constants to map to class numbers.  */
#define sender_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define sender_TASK_NUMBERS 

#define sender_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define sender_CLASS_U \
  char sender_dummy;\



#include "sender.h"


/*
 * roll-up of all events (with their parameters) for domain sender
 */
typedef union {
} sender_DomainEvents_u;


class sender : public sc_module, public feedback_requirement, public flow_requirement, public sys_factory, public sys_events {
  public:
  sc_port< feedback_provision > Port1;
  sc_port< flow_provision > Port2;
  sc_port< flow_provision > Port3;

  
  sender( sc_module_name name ) : sc_module( name ), sys_factory(SYS_MAX_CONTAINERS) 
 {

    for ( int cn=0; cn < sender_MAX_CLASS_NUMBERS; ++cn ) {
      Escher_ClassFactoryInit( 0, cn );
    }
  }

  // state machine process entry points

  sc_event sc_xtuml_timer_event;
  TIM * tim;

  public:
#if sender_MAX_CLASS_NUMBERS > 0
    virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t cn ) { return sender_class_info[cn]; }
#endif

  private:
#if sender_MAX_CLASS_NUMBERS > 0
    static Escher_Extent_t * const sender_class_info[];
#endif
};


#endif  /* SENDER_H */

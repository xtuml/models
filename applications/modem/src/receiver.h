/*----------------------------------------------------------------------------
 * File:  receiver.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef RECEIVER_H
#define RECEIVER_H


class receiver; // forward reference
#include "modem_sys_types.h"


#define receiver_STATE_MODELS 0

#define receiver_DOMAIN_ID 0

/* Define constants to map to class numbers.  */
#define receiver_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define receiver_TASK_NUMBERS 

#define receiver_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define receiver_CLASS_U \
  char receiver_dummy;\



#include "receiver.h"


/*
 * roll-up of all events (with their parameters) for domain receiver
 */
typedef union {
} receiver_DomainEvents_u;


class receiver : public sc_module, public output_provision, public sys_factory, public sys_events {
  public:
  sc_port< output_requirement > Port1;

  
  receiver( sc_module_name name ) : sc_module( name ), sys_factory(SYS_MAX_CONTAINERS) 
 {

    for ( int cn=0; cn < receiver_MAX_CLASS_NUMBERS; ++cn ) {
      Escher_ClassFactoryInit( 0, cn );
    }
  }
  void output_process( void );

  // state machine process entry points

  sc_event sc_xtuml_timer_event;
  TIM * tim;

  public:
#if receiver_MAX_CLASS_NUMBERS > 0
    virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t cn ) { return receiver_class_info[cn]; }
#endif

  private:
#if receiver_MAX_CLASS_NUMBERS > 0
    static Escher_Extent_t * const receiver_class_info[];
#endif
};


#endif  /* RECEIVER_H */

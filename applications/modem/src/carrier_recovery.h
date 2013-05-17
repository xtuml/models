/*----------------------------------------------------------------------------
 * File:  carrier_recovery.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef CARRIER_RECOVERY_H
#define CARRIER_RECOVERY_H


class carrier_recovery; // forward reference
#include "modem_sys_types.h"


#define carrier_recovery_STATE_MODELS 0

#define carrier_recovery_DOMAIN_ID 0

/* Define constants to map to class numbers.  */
#define carrier_recovery_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define carrier_recovery_TASK_NUMBERS 

#define carrier_recovery_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define carrier_recovery_CLASS_U \
  char carrier_recovery_dummy;\



#include "carrier_recovery.h"


/*
 * roll-up of all events (with their parameters) for domain carrier_recovery
 */
typedef union {
} carrier_recovery_DomainEvents_u;


class carrier_recovery : public sc_module, public feedback_provision, public flow_requirement, public sys_factory, public sys_events {
  public:
  sc_port< feedback_requirement > Port1;
  sc_port< flow_provision > Port2;

  
  carrier_recovery( sc_module_name name ) : sc_module( name ), sys_factory(SYS_MAX_CONTAINERS) 
 {

    for ( int cn=0; cn < carrier_recovery_MAX_CLASS_NUMBERS; ++cn ) {
      Escher_ClassFactoryInit( 0, cn );
    }
  }
  void feedback_offset( void );

  // state machine process entry points

  sc_event sc_xtuml_timer_event;
  TIM * tim;

  public:
#if carrier_recovery_MAX_CLASS_NUMBERS > 0
    virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t cn ) { return carrier_recovery_class_info[cn]; }
#endif

  private:
#if carrier_recovery_MAX_CLASS_NUMBERS > 0
    static Escher_Extent_t * const carrier_recovery_class_info[];
#endif
};


#endif  /* CARRIER_RECOVERY_H */

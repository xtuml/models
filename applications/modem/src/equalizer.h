/*----------------------------------------------------------------------------
 * File:  equalizer.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef EQUALIZER_H
#define EQUALIZER_H


class equalizer; // forward reference
#include "modem_sys_types.h"


#define equalizer_STATE_MODELS 0

#define equalizer_DOMAIN_ID 0

/* Define constants to map to class numbers.  */
#define equalizer_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define equalizer_TASK_NUMBERS 

#define equalizer_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define equalizer_CLASS_U \
  char equalizer_dummy;\



#include "equalizer.h"


/*
 * roll-up of all events (with their parameters) for domain equalizer
 */
typedef union {
} equalizer_DomainEvents_u;


class equalizer : public sc_module, public flow_provision, public feedback_requirement, public flow_requirement, public sys_factory, public sys_events {
  public:
  sc_port< flow_requirement > Port1;
  sc_port< feedback_provision > Port2;
  sc_port< flow_provision > Port3;
  sc_port< flow_provision > Port4;

  
  equalizer( sc_module_name name ) : sc_module( name ), sys_factory(SYS_MAX_CONTAINERS) 
 {

    for ( int cn=0; cn < equalizer_MAX_CLASS_NUMBERS; ++cn ) {
      Escher_ClassFactoryInit( 0, cn );
    }
  }
  void flow_sample( const i_t, const r_t );

  // state machine process entry points

  sc_event sc_xtuml_timer_event;
  TIM * tim;

  public:
#if equalizer_MAX_CLASS_NUMBERS > 0
    virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t cn ) { return equalizer_class_info[cn]; }
#endif

  private:
#if equalizer_MAX_CLASS_NUMBERS > 0
    static Escher_Extent_t * const equalizer_class_info[];
#endif
};


#endif  /* EQUALIZER_H */

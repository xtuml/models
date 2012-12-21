/*----------------------------------------------------------------------------
 * File:  HeartRateMonitor.cpp
 *
 * UML Component as a SystemC Module
 * Component/Module Name:  HeartRateMonitor
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/
/*
 Simulates a pulse monitor hardware/firmware. This component is only behavioral and included for testing purposes.
 */

#include "HeartRateMonitor.h"

/*
 * Interface:  HeartRateProvider
 * Provided Port:  HR
 * To Provider Message:  registerListener
 */
void
HeartRateMonitor::HeartRateProvider_registerListener()
{
  HeartRateMonitor * thismodule = this;
  /* Provided Port:  HR */
  { Escher_xtUMLEvent_t * e = thismodule->Escher_NewxtUMLEvent( (void *) 0, &HeartRateMonitor_HeartRateMonitor_CBevent1c );
  e->sc_e = &(thismodule->sc_HeartRateMonitor_HeartRateMonitor_CBevent1);
    thismodule->Escher_SendEvent( e );
  }



}

/*
 * Interface:  HeartRateProvider
 * Provided Port:  HR
 * To Provider Message:  unregisterListener
 */
void
HeartRateMonitor::HeartRateProvider_unregisterListener()
{
  HeartRateMonitor * thismodule = this;
  /* Provided Port:  HR */
  { Escher_xtUMLEvent_t * e = thismodule->Escher_NewxtUMLEvent( (void *) 0, &HeartRateMonitor_HeartRateMonitor_CBevent2c );
  e->sc_e = &(thismodule->sc_HeartRateMonitor_HeartRateMonitor_CBevent2);
    thismodule->Escher_SendEvent( e );
  }



}

#if HeartRateMonitor_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
sys_sets::Escher_Extent_t * const HeartRateMonitor::HeartRateMonitor_class_info[ HeartRateMonitor_MAX_CLASS_NUMBERS ] = {
  HeartRateMonitor_CLASS_INFO_INIT
};
#endif


/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
EventTaker_t HeartRateMonitor::HeartRateMonitor_EventDispatcher[ HeartRateMonitor_STATE_MODELS ] = {
  HeartRateMonitor_class_dispatchers
};
/*
 * UML Domain Functions (Synchronous Services)
 */

// state machine dispatcher process for HeartRateMonitor
void HeartRateMonitor::HeartRateMonitor_HeartRateMonitor_sm()
{
  HeartRateMonitor * thismodule = this;
  while ( true ) {
    thismodule->ooa_loop( HeartRateMonitor_DOMAIN_ID, HeartRateMonitor_HeartRateMonitor_CLASS_NUMBER, (void *) this );
    wait();
  }
}


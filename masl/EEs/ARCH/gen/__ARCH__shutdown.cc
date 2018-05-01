//
// File: __ARCH__shutdown.cc
//
// UK Crown Copyright (c) 2018. All Rights Reserved
//
#include "ARCH_OOA/__ARCH_interface.hh"
#include "ARCH_OOA/__ARCH_services.hh"
#include "swa/Domain.hh"
#include "swa/Stack.hh"
#include <stdlib.h>

namespace masld_ARCH
{
  void masls_shutdown ( )
  {

    // begin ...
    // end;
    {
      ::SWA::Stack::EnteringDomainService enteringActionMarker(getDomain().getId(), serviceId_masls_shutdown);
      ::SWA::Stack::EnteredAction enteredActionMarker;
      ::SWA::Stack::ExecutingStatement statement(2);
      {
          exit( 0 );
      }
    }
  }

  const bool localServiceRegistration_masls_shutdown = interceptor_masls_shutdown::instance().registerLocal( &masls_shutdown );

}

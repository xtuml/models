//
// File: __UI__UI__setTime.cc
//
// UK Crown Copyright (c) 2018. All Rights Reserved
//
#include "UI_OOA/__UI.hh"
#include "UI_OOA/__UI_interface.hh"
#include "__UI__UI.hh"
#include <stdint.h>
#include "swa/Domain.hh"
#include "swa/Stack.hh"

extern "C" {
#include "UI_GuiBridge_bridge.h"
}

namespace masld_UI
{
  void maslo_UI::masls_setTime ( int32_t maslp_time )
  {

    // begin ...
    // end;
    {
      ::SWA::Stack::EnteringObjectService enteringActionMarker(getDomain().getId(), objectId_maslo_UI, serviceId_masls_setTime);
      ::SWA::Stack::DeclareThis thisVar(this);
      ::SWA::Stack::DeclareParameter pm_maslp_time(maslp_time);
      ::SWA::Stack::EnteredAction enteredActionMarker;
      ::SWA::Stack::ExecutingStatement statement(2);
      {

        {
          ::SWA::Stack::ExecutingStatement statement(4);
          UI_GuiBridge_setTime( maslp_time );
        }
      }
    }
  }

}

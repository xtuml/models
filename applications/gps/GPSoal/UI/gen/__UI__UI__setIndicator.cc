//
// File: __UI__UI__setIndicator.cc
//
// UK Crown Copyright (c) 2018. All Rights Reserved
//
#include "UI_OOA/__UI.hh"
#include "UI_OOA/__UI_interface.hh"
#include "__UI__UI.hh"
#include <stdint.h>
#include "swa/Domain.hh"
#include "swa/Stack.hh"
#include "UI_GuiBridge_bridge.h"

namespace masld_UI
{
  void maslo_UI::masls_setIndicator ( int32_t maslp_value )
  {

    // begin ...
    // end;
    {
      ::SWA::Stack::EnteringObjectService enteringActionMarker(getDomain().getId(), objectId_maslo_UI, serviceId_masls_setIndicator);
      ::SWA::Stack::DeclareThis thisVar(this);
      ::SWA::Stack::DeclareParameter pm_maslp_value(maslp_value);
      ::SWA::Stack::EnteredAction enteredActionMarker;
      ::SWA::Stack::ExecutingStatement statement(2);
      {

        {
          ::SWA::Stack::ExecutingStatement statement(4);
          UI_GuiBridge_setIndicator( maslp_value );
        }
      }
    }
  }

}

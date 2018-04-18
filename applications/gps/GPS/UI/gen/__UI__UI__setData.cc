//
// File: __UI__UI__setData.cc
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
  void maslo_UI::masls_setData ( double  maslp_value,
                                 int32_t maslp_unit )
  {

    // begin ...
    // end;
    {
      ::SWA::Stack::EnteringObjectService enteringActionMarker(getDomain().getId(), objectId_maslo_UI, serviceId_masls_setData);
      ::SWA::Stack::DeclareThis thisVar(this);
      ::SWA::Stack::DeclareParameter pm_maslp_value(maslp_value);
      ::SWA::Stack::DeclareParameter pm_maslp_unit(maslp_unit);
      ::SWA::Stack::EnteredAction enteredActionMarker;
      ::SWA::Stack::ExecutingStatement statement(3);
      {

        {
          ::SWA::Stack::ExecutingStatement statement(5);
          UI_GuiBridge_setData( maslp_unit, maslp_value );
        }
      }
    }
  }

}

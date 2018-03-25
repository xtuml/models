//
// File: __UI__UI__poll.cc
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
  int32_t maslo_UI::masls_poll ( )
  {

    // begin ...
    // end;
    {
      ::SWA::Stack::EnteringObjectService enteringActionMarker(getDomain().getId(), objectId_maslo_UI, serviceId_masls_poll);
      ::SWA::Stack::DeclareThis thisVar(this);
      ::SWA::Stack::EnteredAction enteredActionMarker;
      ::SWA::Stack::ExecutingStatement statement(2);
      {

        // return (- 1);
        {
          ::SWA::Stack::ExecutingStatement statement(4);
          return UI_GuiBridge_poll();
        }
      }
    }
  }

}

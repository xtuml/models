//
// File: __UI__UI__connect.cc
//
// UK Crown Copyright (c) 2018. All Rights Reserved
//
#include "UI_OOA/__UI.hh"
#include "UI_OOA/__UI_interface.hh"
#include "__UI__UI.hh"
#include "__UI__UIConstants.hh"
#include "boost/shared_ptr.hpp"
#include <stdint.h>
#include "swa/Domain.hh"
#include "swa/Duration.hh"
#include "swa/Event.hh"
#include "swa/EventTimers.hh"
#include "swa/ObjectPtr.hh"
#include "swa/Stack.hh"
#include "swa/Timestamp.hh"
#include "swa/types.hh"

extern "C" {
#include "UI_GuiBridge_bridge.h"
}

namespace masld_UI
{
  void maslo_UI::masls_connect ( )
  {

    // declare ...
    // begin ...
    // end;
    {
      ::SWA::Stack::EnteringObjectService enteringActionMarker(getDomain().getId(), objectId_maslo_UI, serviceId_masls_connect);
      ::SWA::Stack::EnteredAction enteredActionMarker;
      ::SWA::Stack::ExecutingStatement statement(4);
      {

        // uiconst : instance of UIConstants;
        ::SWA::ObjectPtr<maslo_UIConstants> maslv_uiconst;
        ::SWA::Stack::DeclareLocalVariable pm_maslv_uiconst(0, maslv_uiconst);

        // ui : instance of UI;
        ::SWA::ObjectPtr<maslo_UI> maslv_ui;
        ::SWA::Stack::DeclareLocalVariable pm_maslv_ui(1, maslv_ui);

        // UIConstants.initialize()
        {
          ::SWA::Stack::ExecutingStatement statement(6);
          maslo_UIConstants::masls_initialize();
        }

        // uiconst := find_one UIConstants ();
        {
          ::SWA::Stack::ExecutingStatement statement(7);
          maslv_uiconst = maslo_UIConstants::findOne();
        }

        // UI.initialize()
        {
          ::SWA::Stack::ExecutingStatement statement(8);
          masls_initialize();
        }

        // ui := find_one UI ();
        {
          ::SWA::Stack::ExecutingStatement statement(9);
          maslv_ui = findOne();
        }

        // ui.socket_id := (- 1);
        {
          ::SWA::Stack::ExecutingStatement statement(10);
          maslv_ui->set_masla_socket_id( UI_GuiBridge_connect() );
        }

        // if (uiconst.SOCKET_ERROR /= ui.socket_id) then ...
        {
          ::SWA::Stack::ExecutingStatement statement(11);
          if ( maslv_uiconst->get_masla_SOCKET_ERROR() != maslv_ui->get_masla_socket_id() )
          {

            // schedule ui.timer generate UI.tick () to ui delay (@PT0.000001S@ * uiconst.tick_period) delta (@PT0.000001S@ * uiconst.tick_period);
            {
              ::SWA::Stack::ExecutingStatement statement(12);
              ::SWA::EventTimers::getInstance().scheduleTimer( maslv_ui->get_masla_timer(), ::SWA::Duration::fromNanos( 1000ll ) * maslv_uiconst->get_masla_tick_period() + ::SWA::Timestamp::now(), ::SWA::Duration::fromNanos( 1000ll ) * maslv_uiconst->get_masla_tick_period(), maslv_ui->create_maslo_UI_maslev_tick() );
            }
          }
        }
      }
    }
  }

}

/*----------------------------------------------------------------------------
 * File:  system_sys.h
 *
 * UML Package (Top Module) Declaration
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef SYSTEM_SYS_H
#define SYSTEM_SYS_H


#include "AGC.h"
#include "descrambler.h"
#include "carrier_recovery.h"
#include "echo_cancellation.h"
#include "demodulator.h"
#include "decimation.h"
#include "equalizer.h"
#include "rotator.h"
#include "tellis_decoder.h"
#include "timing_recovery.h"
#include "AGC.h"
#include "sender.h"
#include "receiver.h"


class system_sys : public sc_module {
  public:
  AGC in;
  descrambler idescrambler;
  carrier_recovery icarrier_recovery;
  echo_cancellation iecho_cancellation;
  demodulator idemodulator;
  decimation idecimation;
  equalizer iequalizer;
  rotator irotator;
  tellis_decoder itellis_decoder;
  timing_recovery itiming_recovery;
  AGC eq;
  sender isender;
  receiver ireceiver;

  SC_HAS_PROCESS( system_sys );

  system_sys( sc_module_name name ) : sc_module( name ), in("AGC_module"), idescrambler("descrambler_module"), icarrier_recovery("carrier_recovery_module"), iecho_cancellation("echo_cancellation_module"), idemodulator("demodulator_module"), idecimation("decimation_module"), iequalizer("equalizer_module"), irotator("rotator_module"), itellis_decoder("tellis_decoder_module"), itiming_recovery("timing_recovery_module"), eq("AGC_module"), isender("sender_module"), ireceiver("receiver_module") {
    in.Port1(idemodulator);
    in.Port2(isender);
    idescrambler.Port1(ireceiver);
    idescrambler.Port2(itellis_decoder);
    icarrier_recovery.Port1(iequalizer);
    icarrier_recovery.Port2(irotator);
    iecho_cancellation.Port1(idemodulator);
    iecho_cancellation.Port2(isender);
    iecho_cancellation.Port3(isender);
    idemodulator.Port1(in);
    idemodulator.Port2(idecimation);
    idemodulator.Port3(iecho_cancellation);
    idecimation.Port1(itiming_recovery);
    idecimation.Port2(idemodulator);
    idecimation.Port3(eq);
    iequalizer.Port1(irotator);
    iequalizer.Port2(icarrier_recovery);
    iequalizer.Port3(itiming_recovery);
    iequalizer.Port4(itellis_decoder);
    irotator.Port1(eq);
    irotator.Port2(icarrier_recovery);
    irotator.Port3(iequalizer);
    itellis_decoder.Port1(iequalizer);
    itellis_decoder.Port2(idescrambler);
    itiming_recovery.Port1(idecimation);
    itiming_recovery.Port2(iequalizer);
    eq.Port1(irotator);
    eq.Port2(idecimation);
    isender.Port1(iecho_cancellation);
    isender.Port2(iecho_cancellation);
    isender.Port3(in);
    ireceiver.Port1(idescrambler);
  }
};


#endif  /* SYSTEM_SYS_H */

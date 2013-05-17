/*----------------------------------------------------------------------------
 * File:  sysc_interfaces.h"
 *
 * UML Port Messages (Interface Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef XTUMLSYSC_INTERFACES_H
#define XTUMLSYSC_INTERFACES_H


#include "modem_sys_types.h"

// messages for interface reference output (provision)
class output_provision : virtual public sc_interface {
  public:
  virtual void output_process( void ) = 0;
};

// messages for interface reference output (requirement)
class output_requirement : virtual public sc_interface {
  public:
};

// messages for interface reference feedback (provision)
class feedback_provision : virtual public sc_interface {
  public:
  virtual void feedback_offset( void ) = 0;
};

// messages for interface reference feedback (requirement)
class feedback_requirement : virtual public sc_interface {
  public:
};

// messages for interface reference flow (provision)
class flow_provision : virtual public sc_interface {
  public:
  virtual void flow_sample( const i_t, const r_t ) = 0;
};

// messages for interface reference flow (requirement)
class flow_requirement : virtual public sc_interface {
  public:
};


#endif

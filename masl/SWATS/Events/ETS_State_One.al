//! This state verifies the following:
//! 
//! 	
//! [1] That an event is placed onto the top of the
//!     event queue and acted upon before any other
//!     events to the same instance.
state Events::EventToSelf.State_One (Test : in  integer) is
#-------------------------------------------------------------------#

#Generate event to self

#-------------------------------------------------------------------#

#Test 1

if Test = 1 then

   #Generate event to self
   generate ETS4:EventToOwnInstance(Test) to this

endif

#-------------------------------------------------------------------#
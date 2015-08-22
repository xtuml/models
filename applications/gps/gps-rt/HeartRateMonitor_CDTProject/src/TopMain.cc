#include "umlrtmain.hh"

#include "TopControllers.hh"
#include "umlrtcapsuletocontrollermap.hh"
#include "umlrtmessagepool.hh"
#include "umlrtsignalelementpool.hh"
#include "umlrttimerpool.hh"
#include "umlrtuserconfig.hh"
#include <stdio.h>

static UMLRTSignalElement signalElementBuffer[USER_CONFIG_SIGNAL_ELEMENT_POOL_SIZE];
static UMLRTSignalElementPool signalElementPool( signalElementBuffer, USER_CONFIG_SIGNAL_ELEMENT_POOL_SIZE );

static UMLRTMessage messageBuffer[USER_CONFIG_MESSAGE_POOL_SIZE];
static UMLRTMessagePool messagePool( messageBuffer, USER_CONFIG_MESSAGE_POOL_SIZE );

static UMLRTTimer timers[USER_CONFIG_TIMER_POOL_SIZE];
static UMLRTTimerPool timerPool( timers, USER_CONFIG_TIMER_POOL_SIZE );

int main( int argc, char * argv[] )
{
    UMLRTController::initializePools( &signalElementPool, &messagePool, &timerPool );
    UMLRTMain::setArgs( argc, argv );
    UMLRTCapsuleToControllerMap::setDefaultSlotList( Top_slots, 3 );

    if( ! UMLRTMain::targetStartup() )
        return EXIT_FAILURE;

    DefaultController.spawn();

    if( ! UMLRTMain::mainLoop() )
        return UMLRTMain::targetShutdown( false );

    DefaultController.join();

    return UMLRTMain::targetShutdown( true );
}

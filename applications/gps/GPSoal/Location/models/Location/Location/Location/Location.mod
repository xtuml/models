//!Simulates a the GPS hardware/firmware. This component is only behavioral and included for testing purposes.
domain Location is
  object Distance;
  object GPS;
  object simulatedGPS;
    public service getLocation (
        latitude : out real,        longitude : out real    );
    public service getDistance (
        fromLat : in real,        fromLong : in real,        toLat : in real,        toLong : in real    ) return real;
    public service registerListener (
    );
    public service unregisterListener (
    );
    private service sqrt (
        x : in real    ) return real;
//!kmPerDegree is a rough conversion figure valid for most latitude figures (except where 
//!the irregular shape of the earth perturbs the value) and for longitude figures
//!away from the poles (where the distance between longitude lines decreases to zero).
//!
//!latitudeIncrement and longitudeIncrement specify the distance traveled by the simulated
//!GPS during each interval.
  object Distance is
    id : preferred  integer;
    kmPerDegree :   real;
    public  service initialize (
    );
  end object;
pragma key_letter ( "Distance" ); 
//!Simulates a GPS.
  object GPS is
//!Handle for underlying timer mechanism enabling the generation 
//!of delayed events that drive the GPS simulator.
    timer :   timer;
//!Current latitude, expressed in decimal degrees, of the simulated GPS.
    currentLatitude :   real;
//!Current longitude, expressed in decimal degrees, of the simulated GPS.
    currentLongitude :   real;
//!The number of motion segments simulated by the GPS.
    motionSegments :   integer;
    id : preferred  integer;
    public  service initialize (
    );
     state idle();
     state locating();
     state registeringListener();
     state unregistering();
     event tick();
     event registeringComplete();
     event registerListener();
     event unregisterListener();
     event unregisterComplete();
     transition is
      Non_Existent (
        tick => Cannot_Happen,
        registeringComplete => Cannot_Happen,
        registerListener => Cannot_Happen,
        unregisterListener => Cannot_Happen,
        unregisterComplete => Cannot_Happen      ); 
      idle (
        tick => Cannot_Happen,
        registeringComplete => Cannot_Happen,
        registerListener => registeringListener,
        unregisterListener => Cannot_Happen,
        unregisterComplete => Cannot_Happen      ); 
      locating (
        tick => locating,
        registeringComplete => Cannot_Happen,
        registerListener => Cannot_Happen,
        unregisterListener => unregistering,
        unregisterComplete => Cannot_Happen      ); 
      registeringListener (
        tick => Cannot_Happen,
        registeringComplete => locating,
        registerListener => Cannot_Happen,
        unregisterListener => Cannot_Happen,
        unregisterComplete => Cannot_Happen      ); 
      unregistering (
        tick => Cannot_Happen,
        registeringComplete => Cannot_Happen,
        registerListener => Cannot_Happen,
        unregisterListener => Cannot_Happen,
        unregisterComplete => idle      ); 
    end transition;
  end object;
pragma key_letter ( "GPS" ); 
//!Constants specifying the behavior of the simulated GPS.
//!
//!initialLatitude and initialLongitude specify, as decimal degrees,
//!the initial location of the simulated GPS.
//!
//!latitudeIncrement and longitudeIncrement specify, as decimal degrees,
//!the distance the simulated GPS moves during each update period.
//!
//!updatePeriod specifies, in microseconds, the update period for the
//!simulated GPS.  In other words, the simulated GPS updates its location
//!once per updatePeriod.
  object simulatedGPS is
    id : preferred  integer;
    initialLatitude :   real;
    initialLongitude :   real;
    latitudeIncrement :   real;
    longitudeIncrement :   real;
    updatePeriod :   integer;
    public  service initialize (
    );
  end object;
pragma key_letter ( "simulatedGPS" ); 
end domain;
pragma number ( 2 ); 

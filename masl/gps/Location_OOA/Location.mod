domain Location is
  object GPS;
  terminator Location is
    public service getLocation (
        longitude : in integer,        latitude : in integer    );
    public function getDistance (
        fromLong : in integer,        toLong : in integer,        fromLat : in integer,        toLat : in integer    ) return real;
    public service registerListener (
    );
    public service unregisterListener (
    );
  end terminator;
  object GPS is
    timer :   inst_ref<Timer>;
    currentLatitude :   real;
    currentLongitude :   real;
    motionSegments :   integer;
    public  service activate (
    );
    assigner start state idle();
    assigner state locating();
    assigner event tick();
    assigner event registerListener();
    assigner event unregisterListener();
    assigner transition is
      idle (
        tick => Ignore,
        registerListener => locating,
        unregisterListener => cannot_happen      ); 
      locating (
        tick => locating,
        registerListener => cannot_happen,
        unregisterListener => idle      ); 
    end transition;
  end object;
end domain;

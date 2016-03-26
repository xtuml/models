domain HeartRateMonitor is
  object HeartRateMonitor;
  terminator HeartRateMonitor is
    public service registerListener (
    );
    public service unregisterListener (
    );
  end terminator;
  terminator Unspecified is
    public service heartRateChanged (
        heartRate : in integer    );
  end terminator;
  object HeartRateMonitor is
    recentHeartRate :   integer;
    timer :   inst_ref<Timer>;
    assigner start state idle();
    assigner state monitoring();
    assigner event timeout();
    assigner event registerListener();
    assigner event unregisterListener();
    assigner transition is
      idle (
        timeout => Ignore,
        registerListener => monitoring,
        unregisterListener => cannot_happen      ); 
      monitoring (
        timeout => monitoring,
        registerListener => cannot_happen,
        unregisterListener => idle      ); 
    end transition;
  end object;
end domain;

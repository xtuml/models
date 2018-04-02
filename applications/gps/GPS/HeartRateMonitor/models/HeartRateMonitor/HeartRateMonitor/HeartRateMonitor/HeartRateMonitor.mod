//!Simulates a pulse monitor hardware/firmware. This component is only behavioral and included for testing purposes.
domain HeartRateMonitor is
  object HeartRateConstants;
  object HeartRateMonitor;
    public service registerListener (
    );
    public service unregisterListener (
    );
  terminator HRChange is
    public service heartRateChanged (
        heartRate : in integer    );
  end terminator;
//!SamplingPeriod is expressed in seconds and represents the period at which heart-rate samples are recorded.
//!AveragingWindow is expressed in samples and represents the number of samples used when calculating the current average.
  object HeartRateConstants is
    id : preferred  integer;
    HeartRateAveragingWindow :   integer;
    HeartRateSamplingPeriod :   integer;
    public  service initialize (
    );
  end object;
pragma key_letter ( "HeartRateConstants" ); 
//!Represents the heart-rate monitoring facility.
  object HeartRateMonitor is
//!Most recent heart-rate sample, expressed in beats per minute.
    recentHeartRate :   integer;
//!Handle for underlying timer mechanism enabling the 
//!generation of delayed events that drive the model
//!of the heart-rate monitor.
    timer :   timer;
    id : preferred  integer;
    public  service initialize (
    );
     state idle();
     state monitoring();
     state Registering();
     state Unregistering();
     event timeout();
     event registerComplete();
     event unregisterComplete();
     event registerListener();
     event unregisterListener();
     transition is
      Non_Existent (
        timeout => Cannot_Happen,
        registerComplete => Cannot_Happen,
        unregisterComplete => Cannot_Happen,
        registerListener => Cannot_Happen,
        unregisterListener => Cannot_Happen      ); 
      idle (
        timeout => Cannot_Happen,
        registerComplete => Cannot_Happen,
        unregisterComplete => Cannot_Happen,
        registerListener => Registering,
        unregisterListener => Cannot_Happen      ); 
      monitoring (
        timeout => monitoring,
        registerComplete => Cannot_Happen,
        unregisterComplete => Cannot_Happen,
        registerListener => Cannot_Happen,
        unregisterListener => Unregistering      ); 
      Registering (
        timeout => Cannot_Happen,
        registerComplete => monitoring,
        unregisterComplete => Cannot_Happen,
        registerListener => Cannot_Happen,
        unregisterListener => Cannot_Happen      ); 
      Unregistering (
        timeout => Cannot_Happen,
        registerComplete => Cannot_Happen,
        unregisterComplete => idle,
        registerListener => Cannot_Happen,
        unregisterListener => Cannot_Happen      ); 
    end transition;
  end object;
pragma key_letter ( "HeartRateMonitor" ); 
end domain;
pragma number ( 3 ); 

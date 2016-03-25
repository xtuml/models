domain Tracking is
  object Achievement;
  object Display;
  object HeartRateSample;
  object LapMarker;
  object TrackLog;
  object TrackPoint;
  object WorkoutSession;
  object WorkoutTimer;
  object Goal;
  object GoalSpec;
  public type GoalCriteria is The criteria type for a particular workout goal.  
  ;
  public type GoalDisposition is Disposition of a currently executing goal.
  ;
  public type GoalSpan is 
  ;
    private service GoalTest_1 (
    );
    private service Initialize (
    );
  terminator Location is
    public function getDistance (
        toLong : in real,        toLat : in real,        fromLong : in real,        fromLat : in real    ) return real;
    public service getLocation (
        longitude : in real,        latitude : in real    );
    public service registerListener (
    );
    public service unregisterListener (
    );
  end terminator;
  terminator UI is
    public service setData (
        unit : in Unit,        value : in real    );
    public service setIndicator (
        indicator : in Indicator    );
    public service setTime (
        time : in integer    );
    public service newGoalSpec (
        spanType : in GoalSpan,        criteriaType : in GoalCriteria,        span : in real,        maximum : in real,        minimum : in real,        sequenceNumber : in integer    );
  end terminator;
  terminator HeartRateMonitor is
    public service registerListener (
    );
    public service unregisterListener (
    );
  end terminator;
  terminator Tracking is
    public service heartRateChanged (
        heartRate : in integer    );
    public service lapResetPressed (
    );
    public service modePressed (
    );
    public service setTargetPressed (
    );
    public service startStopPressed (
    );
    public service newGoalSpec (
        spanType : in GoalSpan,        criteriaType : in GoalCriteria,        span : in real,        maximum : in real,        minimum : in real,        sequenceNumber : in integer    );
    public service lightPressed (
    );
  end terminator;
  relationship R1 is TrackPoint conditionally is start of one TrackLog,
    TrackLog conditionally has first one TrackPoint;
  relationship R2 is TrackPoint conditionally preceeds one TrackPoint,
    TrackPoint conditionally follows one TrackPoint;
  relationship R3 is TrackLog conditionally has last one TrackPoint,
    TrackPoint conditionally is last for one TrackLog;
  relationship R5 is TrackLog conditionally has laps defined by many LapMarker,
    LapMarker unconditionally marks end of lap in one TrackLog;
  relationship R7 is Display unconditionally indicates current status of one WorkoutSession,
    WorkoutSession unconditionally current status indicated on one Display;
  relationship R8 is WorkoutTimer unconditionally acts as the stopwatch for one WorkoutSession,
    WorkoutSession unconditionally is timed by one WorkoutTimer;
  relationship R4 is TrackLog unconditionally represents path for one WorkoutSession,
    WorkoutSession unconditionally captures path in one TrackLog;
  relationship R6 is WorkoutSession conditionally tracks heart rate over time as many HeartRateSample,
    HeartRateSample unconditionally was collected during one WorkoutSession;
  relationship R9 is Goal unconditionally specified by one GoalSpec,
    GoalSpec conditionally specifies many Goal;
  relationship R10 is GoalSpec unconditionally included in one WorkoutSession,
    WorkoutSession conditionally includes many GoalSpec;
  relationship R11 is Goal conditionally is currently executing within one WorkoutSession,
    WorkoutSession conditionally is currently executing one Goal;
  relationship R12 is Achievement unconditionally specifies achievement of one Goal,
    Goal conditionally has recorded many Achievement;
  relationship R13 is WorkoutSession conditionally has executed many Goal,
    Goal unconditionally was executed within one WorkoutSession;
  relationship R14 is Achievement conditionally is open for one Goal,
    Goal conditionally has open one Achievement;
  object Achievement is
    startTime :   integer;
    endTime :   integer;
    public instance service close (
    );
  end object;
  object Display is
    public  function goalDispositionIndicator (
    ) return Indicator;
     state displayDistance();
     state displaySpeed();
     state displayPace();
     state displayHeartRate();
     state displayLapCount();
     event modeChange();
     event refresh();
     transition is
      displayDistance (
        modeChange => displaySpeed,
        refresh => displayDistance      ); 
      displaySpeed (
        modeChange => displayPace,
        refresh => displaySpeed      ); 
      displayPace (
        modeChange => displayHeartRate,
        refresh => displayPace      ); 
      displayHeartRate (
        modeChange => displayLapCount,
        refresh => displayHeartRate      ); 
      displayLapCount (
        modeChange => displayDistance,
        refresh => displayLapCount      ); 
    end transition;
  end object;
  object HeartRateSample is
    heartRate :   integer;
    time :   integer;
  end object;
  object LapMarker is
    lapTime :   integer;
  end object;
  object TrackLog is
    public instance service addTrackPoint (
    );
    public instance service clearTrackPoints (
    );
    public instance service addLapMarker (
    );
    public instance service clearLapMarkers (
    );
    public instance service updateDisplay (
    );
  end object;
  object TrackPoint is
    time :   integer;
    longitude :   real;
    latitude :   real;
  end object;
  object WorkoutSession is
    startDate : preferred  date;
    startTime : preferred  timestamp;
    currentSpeed :   real;
    currentPace :   real;
    currentHeartRate :   integer;
    accumulatedDistance :   real;
    identifier is ( startDate, startTime );
    public instance service addHeartRateSample (
        heartRate : in integer    );
    public instance service clearHeartRateSamples (
    );
    public instance service initialize (
    );
    public  service sessioncreate (
    );
    public instance service reset (
    );
  end object;
  object WorkoutTimer is
    time :   integer;
    timer :   inst_ref<Timer>;
    public instance service activate (
    );
    public instance service deactivate (
    );
    public instance service initialize (
    );
     state stopped();
     state running();
     state paused();
     event startStopPressed();
     event lapResetPressed();
     event tick();
     transition is
      stopped (
        startStopPressed => running,
        lapResetPressed => Ignore,
        tick => Ignore      ); 
      running (
        startStopPressed => paused,
        lapResetPressed => running,
        tick => running      ); 
      paused (
        startStopPressed => running,
        lapResetPressed => stopped,
        tick => Ignore      ); 
    end transition;
  end object;
  object Goal is
    disposition :   GoalDisposition;
    goalstart :   real;
    ID :  unique unique_id;
    evaluationTimer :   inst_ref<Timer>;
    public  service goalcreate (
        sequenceNumber : in integer    );
    public instance service calculateStart (
    );
    public instance function evaluateAchievement (
    ) return GoalDisposition;
    public instance service evaluateCompletion (
    );
    public  service nextGoal (
    );
     state Executing();
     state Completed();
     state Paused();
     event Completed();
     event Evaluate();
     event Pause();
     transition is
      Executing (
        Completed => Completed,
        Evaluate => Executing,
        Pause => Paused      ); 
      Completed (
        Completed => Ignore,
        Evaluate => Ignore,
        Pause => cannot_happen      ); 
      Paused (
        Completed => Completed,
        Evaluate => Executing,
        Pause => cannot_happen      ); 
    end transition;
  end object;
  object GoalSpec is
    minimum :   real;
    maximum :   real;
    span :   real;
    criteriaType :   GoalCriteria;
    spanType :   GoalSpan;
    sequenceNumber : preferred  integer;
    identifier is ( sequenceNumber );
  end object;
end domain;

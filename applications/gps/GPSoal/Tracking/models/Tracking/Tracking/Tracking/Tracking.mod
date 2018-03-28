//!The Tracking component encapsulates the entire application software. This is the 
//!only component in the system from which code will be generated for the final 
//!product.
domain Tracking is
  object TrackPoint;
  object LapMarker;
  object HeartRateSample;
  object GoalSpec;
  object Achievement;
  object Display;
  object Goal;
  object WorkoutSession;
  object WorkoutTimer;
  object TrackLog;
  object GoalAchievement;
  object GoalSpecConstants;
  object HeartRateConstants;
  object Speed;
  object WorkoutTimerConstants;
//!The criteria type for a particular workout goal.  
  public type GoalCriteria is enum (HeartRate, Pace)
  ;
//!Disposition of a currently executing goal.
  public type GoalDisposition is enum (Achieving, Increase, Decrease)
  ;
  public type GoalSpan is enum (Distance, Time)
  ;
    public service heartRateChanged (
        heartRate : in integer    );
    public service setTargetPressed (
    );
    public service startStopPressed (
    );
    public service lapResetPressed (
    );
    public service lightPressed (
    );
    public service modePressed (
    );
    public service newGoalSpec (
        spanType : in GoalSpan,        criteriaType : in GoalCriteria,        span : in real,        maximum : in real,        minimum : in real,        sequenceNumber : in integer    );
    private service Initialize (
    );
    private service GoalTest_1 (
    );
  terminator HR is
    public service registerListener (
    );
    public service unregisterListener (
    );
  end terminator;
  terminator LOC is
    public service getDistance (
        result : out real,        toLong : in real,        toLat : in real,        fromLong : in real,        fromLat : in real    );
    public service getLocation (
        longitude : out real,        latitude : out real    );
    public service registerListener (
    );
    public service unregisterListener (
    );
  end terminator;
  terminator UI is
    public service setData (
        unit : in UI::Unit,        value : in real    );
    public service setIndicator (
        indicator : in UI::Indicator    );
    public service setTime (
        time : in integer    );
  end terminator;
//!Indicates the first track point for a track log.  In
//!other words, this is the first recorded location in 
//!a chronological series of track points that make up
//!a track log.
//!Established when the first track point is recorded and 
//!exists for the lifetime of the track log.
  relationship R1 is TrackLog conditionally has_first one TrackPoint,
    TrackPoint conditionally is_start_of one TrackLog;
//!Chronologically sequences the track points in a track log.
//!Established each time a new track point is recorded and 
//!exists for the lifetime of the track log.
  relationship R2 is TrackPoint conditionally follows one TrackPoint,
    TrackPoint conditionally preceeds one TrackPoint;
//!Represents the most recently recorded track point
//!in a track log.  
//!Established each time a new track point is recorded and
//!removed from the previously recorded track point at the same time.
  relationship R3 is TrackLog conditionally has_last one TrackPoint,
    TrackPoint conditionally is_last_for one TrackLog;
//!Established when a lap marker is created and exists
//!for the lifetime of the track log.
  relationship R5 is TrackLog conditionally has_laps_defined_by many LapMarker,
    LapMarker unconditionally marks_end_of_lap_in one TrackLog;
//!Established when a workout session is created and 
//!exists for the duration of the session.
  relationship R7 is WorkoutSession unconditionally current_status_indicated_on one Display,
    Display unconditionally indicates_current_status_of one WorkoutSession;
//!Established when a workout session is created and exists for the duration
//!of the session.
  relationship R8 is WorkoutSession unconditionally is_timed_by one WorkoutTimer,
    WorkoutTimer unconditionally acts_as_the_stopwatch_for one WorkoutSession;
//!Established when a workout session is created and
//!exists for the duration of the session.
  relationship R4 is WorkoutSession unconditionally captures_path_in one TrackLog,
    TrackLog unconditionally represents_path_for one WorkoutSession;
//!Established when a heart rate sample is created and exists for
//!the duration of the workout session.
  relationship R6 is WorkoutSession conditionally tracks_heart_rate_over_time_as many HeartRateSample,
    HeartRateSample unconditionally was_collected_during one WorkoutSession;
//!Established when goal execution begins and removed when it ends.
  relationship R9 is GoalSpec conditionally specifies many Goal,
    Goal unconditionally specified_by one GoalSpec;
//!Established when a goal specification is created and exists 
//!for the duration of a workout session.
  relationship R10 is WorkoutSession conditionally includes many GoalSpec,
    GoalSpec unconditionally included_in one WorkoutSession;
//!Established when a goal begins executing and removed when it ends.
  relationship R11 is WorkoutSession conditionally is_currently_executing one Goal,
    Goal conditionally is_currently_executing_within one WorkoutSession;
//!Established when an achievement period begins and exists for 
//!the duration of the associated workout session.
  relationship R12 is Goal conditionally has_recorded many Achievement,
    Achievement unconditionally specifies_achievement_of one Goal;
//!Established when a goal completes execution and exists for the 
//!duration of the associated workout session.
  relationship R13 is WorkoutSession conditionally has_executed many Goal,
    Goal unconditionally was_executed_within one WorkoutSession;
//!Represents an open achievement record, one for which a start time has been recorded
//!but no end time has yet been recorded.  In other words, this association exists only
//!while the currently executing goal is being achieved.
  relationship R14 is Goal conditionally has_open one Achievement,
    Achievement conditionally is_open_for one Goal;
//!Each instance represents a single location through which the device
//!passed during a workout session.
  object TrackPoint is
//!Number of seconds between start time for the associated workout and recording of this location.
    time : preferred  integer;
//!Longitude, expressed in decimal degrees where eastern figures are positve
//!and western ones are negative.
    longitude :   real;
//!Latitude, expressed in decimal degrees, where northern figures are positive
//!and southern ones are negative.
    latitude :   real;
    session_startTime : preferred  referential ( R1.is_start_of.TrackLog.session_startTime, R3.is_last_for.TrackLog.session_startTime, R2.preceeds.TrackPoint.session_startTime ) timestamp;
    next_time :   referential ( R2.preceeds.TrackPoint.time ) integer;
  end object;
pragma key_letter ( "TrackPoint" ); 
//!Each instance represents a single lap marker.
  object LapMarker is
//!Number of seconds between start time for the associated workout and this lap marker.
    lapTime : preferred  integer;
    session_startTime : preferred  referential ( R5.marks_end_of_lap_in.TrackLog.session_startTime ) timestamp;
  end object;
pragma key_letter ( "LapMarker" ); 
//!Each instance represents a single heart-rate sample.
  object HeartRateSample is
//!Heart rate expressed in beats per minute.
    heartRate :   integer;
//!Number of seconds between start time for the associated workout and recording of this heart rate sample.
    time : preferred  integer;
    session_startTime : preferred  referential ( R6.was_collected_during.WorkoutSession.startTime ) timestamp;
  end object;
pragma key_letter ( "HeartRateSample" ); 
//!Each instance specifies one particular workout goal.  The actual execution of the goal
//!along with evaluation of whether it is currently being achieved is handled by another
//!class, not this one.
//!
//!The criteria for the goal are merely numerical figures for comparison against the 
//!measured quantity.  Accordingly, the terms may create confusion with certain goal
//!types such as pace.  Since pace is the inverse of speed, a lower number represents
//!a faster speed.  Even so, when specifying a pace-related goal the value for 
//!minimum should be the lowest number (fastest pace) and the value for maximum should
//!be the higher number (slower pace).
  object GoalSpec is
//!The minimum value for the quantity associated with the goal.
//!For example, a minimum heart rate to be maintained.
//!The units (e.g., beats per minute or minutes per km) for this
//!attribute are determined by another attribute indicating the 
//!type of criteria for this goal.
    minimum :   real;
//!The maximum value for the quantity associated with the goal.
//!For example, a maximum pace to be maintained.
//!The units (e.g., beats per minute or minutes per km) for this
//!attribute are determined by another attribute indicating the 
//!type of criteria for this goal.
    maximum :   real;
//!The span of the goal.  For example, a time-based goal specifies a span
//!as a duration or length of time, while a distance-based goal uses specifies
//!a distance.  The units for this attribute (e.g., seconds or km) are specified 
//!by another attribute indicating the type of span.
    span :   real;
//!See data type description.
    criteriaType :   GoalCriteria;
//!See data type description.
    spanType :   GoalSpan;
//!Workout goals are sequenced according to a number specified by the user when the goal
//!is specified.  This attribute represents that user-specified number. 
    sequenceNumber : preferred  integer;
    session_startTime : preferred  referential ( R10.included_in.WorkoutSession.startTime ) timestamp;
    last_goal_ID :   integer;
  end object;
pragma key_letter ( "GoalSpec" ); 
//!Each instance represents one contiguous period of time during 
//!which a particular goal was being met (achieved).
  object Achievement is
//!Starting time for this achievement, expressed as the number of seconds
//!since the beginning of the associated workout session.
    startTime : preferred  integer;
//!Ending time for this achievement, expressed as the number of seconds
//!since the beginning of the associated workout session.
    endTime :   integer;
    session_startTime : preferred  referential ( R12.specifies_achievement_of.Goal.session_startTime, R14.is_open_for.Goal.session_startTime ) timestamp;
    goal_ID : preferred  referential ( R12.specifies_achievement_of.Goal.ID, R14.is_open_for.Goal.ID ) integer;
    spec_sequenceNumber : preferred  referential ( R12.specifies_achievement_of.Goal.spec_sequenceNumber, R14.is_open_for.Goal.spec_sequenceNumber ) integer;
    public instance service close (
    );
  end object;
pragma key_letter ( "Achievement" ); 
//!Represents the display for the device, managing the sequence of screens
//!and displaying the appropriate values based on the current mode of the 
//!display.  
//!This is a singleton instance.
  object Display is
    session_startTime : preferred  referential ( R7.indicates_current_status_of.WorkoutSession.startTime ) timestamp;
    public  service goalDispositionIndicator (
    ) return UI::Indicator;
     state displayDistance();
     state displaySpeed();
     state displayPace();
     state displayHeartRate();
     state displayLapCount();
     event modeChange();
     event refresh();
     transition is
      Non_Existent (
        modeChange => Cannot_Happen,
        refresh => Cannot_Happen      ); 
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
pragma key_letter ( "Display" ); 
//!Each instance represents a particular goal as it is executing.
//!This class knows how to evaluate whether the goal is being achieved 
//!and whether the goal has completed.
  object Goal is
    session_startTime : preferred  referential ( R13.was_executed_within.WorkoutSession.startTime, R9.specified_by.GoalSpec.session_startTime, R11.is_currently_executing_within.WorkoutSession.startTime ) timestamp;
//!An arbitrary identifier.
    ID : preferred  integer;
    spec_sequenceNumber : preferred  referential ( R9.specified_by.GoalSpec.sequenceNumber ) integer;
//!The disposition of this goal.  See data type descriptions for details.
//!This attribute represents the logical or semantic disposition of the goal.
//!For example, a disposition indicating the need to increase the value in question
//!for a heart-rate goal means that activity should be increased to drive up the 
//!heart rate.  Since pace is the inverse of speed, a disposition indicating 
//!the need to increase the value in question (pace) means that the user must
//!increase speed, causing a lower (faster) pace number.
    disposition :   GoalDisposition;
//!Captures the starting point of the span for this particular goal so 
//!that the end of the goal execution period can be determined.  In other
//!words, using the value of this attribute together with the span specified
//!by the associated goal specification, the goal knows when it is finished.
//!
//!For distance-based goals, it is expressed as the accumulated distance
//!in meters for the associated workout session at the time this goal
//!execution commenced.
//!
//!For time-based goals, it is expressed as the elapsed time in seconds
//!for the associated workout session at the time this goal execution
//!commenced.
    startingPoint :   real;
//!Handle for the timer used for periodic evaluation of goal achievement.
    evaluationTimer :   timer;
    public  service initialize (
        sequenceNumber : in integer    );
    public instance service calculateStart (
    );
    public instance service evaluateAchievement (
    ) return GoalDisposition;
    public instance service evaluateCompletion (
    );
    public  service nextGoal (
    );
     state Executing();
     state Completed();
     state Paused();
     state Evaluating();
//!Indicates that execution of this goal has been completed.  
     event Completed();
//!Indicates that this goal should be evaluated for completeness and achievement.
     event Evaluate();
     event Pause();
     event evaluationComplete();
     transition is
      Non_Existent (
        Completed => Cannot_Happen,
        Evaluate => Cannot_Happen,
        Pause => Cannot_Happen,
        evaluationComplete => Cannot_Happen      ); 
      Executing (
        Completed => Completed,
        Evaluate => Executing,
        Pause => Paused,
        evaluationComplete => Cannot_Happen      ); 
      Completed (
        Completed => Ignore,
        Evaluate => Ignore,
        Pause => Cannot_Happen,
        evaluationComplete => Cannot_Happen      ); 
      Paused (
        Completed => Completed,
        Evaluate => Evaluating,
        Pause => Cannot_Happen,
        evaluationComplete => Cannot_Happen      ); 
      Evaluating (
        Completed => Cannot_Happen,
        Evaluate => Cannot_Happen,
        Pause => Cannot_Happen,
        evaluationComplete => Executing      ); 
    end transition;
  end object;
pragma key_letter ( "Goal" ); 
//!Each instance represents a single workout session.  
//!
//!Presently, the device supports only a single session, 
//!but future releases may support multiple sessions.  
//!Even in that case, only a single session is executing 
//!at any given time.  Other sessions represent completed
//!or planned workout sessions.
  object WorkoutSession is
//!UTC time at which this session commenced.
    startTime : preferred  timestamp;
//!Accumulated distance, expressed in meters, for this workout session.
    accumulatedDistance :   real;
    public instance service addHeartRateSample (
        heartRate : in integer    );
    public instance service clearHeartRateSamples (
    );
    public  service initialize (
    );
    public instance service reset (
    );
    public instance service getCurrentSpeed (
    ) return real;
    public instance service getCurrentPace (
    ) return real;
    public instance service getCurrentHeartRate (
    ) return integer;
  end object;
pragma key_letter ( "WorkoutSession" ); 
//!Represents the stopwatch portion of the device.
//!This class also knows:
//!- Track points are stored only when the stopwatch is running.
//!- If a goal is executing, evaluation of it must be paused when
//!the timer pauses.
//!- How to handle the lap/reset signal based on whether the 
//!stopwatch is currently running.
//!
//!This is a singleton instance.
  object WorkoutTimer is
//!Number of seconds elapsed during the associated workout session.
//!Time elapses only when this timer is running.
    time :   integer;
//!Handle for underlying timer mechanism that produces the 
//!delayed events enabling the timer to track elapsed time.
    timer :   timer;
    session_startTime : preferred  referential ( R8.acts_as_the_stopwatch_for.WorkoutSession.startTime ) timestamp;
    public instance service activate (
    );
    public instance service deactivate (
    );
    public instance service initialize (
    );
     state stopped();
     state running();
     state paused();
     state processingStart();
     state resetLap();
     event startStopPressed();
     event lapResetPressed();
     event tick();
     event pause();
     event resume();
     event startTimer();
     event lapResetComplete();
     transition is
      Non_Existent (
        startStopPressed => Cannot_Happen,
        lapResetPressed => Cannot_Happen,
        tick => Cannot_Happen,
        pause => Cannot_Happen,
        resume => Cannot_Happen,
        startTimer => Cannot_Happen,
        lapResetComplete => Cannot_Happen      ); 
      stopped (
        startStopPressed => processingStart,
        lapResetPressed => Ignore,
        tick => Ignore,
        pause => Cannot_Happen,
        resume => Cannot_Happen,
        startTimer => Cannot_Happen,
        lapResetComplete => Cannot_Happen      ); 
      running (
        startStopPressed => paused,
        lapResetPressed => resetLap,
        tick => running,
        pause => Cannot_Happen,
        resume => Cannot_Happen,
        startTimer => Cannot_Happen,
        lapResetComplete => Cannot_Happen      ); 
      paused (
        startStopPressed => processingStart,
        lapResetPressed => stopped,
        tick => Ignore,
        pause => Cannot_Happen,
        resume => Cannot_Happen,
        startTimer => Cannot_Happen,
        lapResetComplete => Cannot_Happen      ); 
      processingStart (
        startStopPressed => Cannot_Happen,
        lapResetPressed => Cannot_Happen,
        tick => Cannot_Happen,
        pause => Cannot_Happen,
        resume => Cannot_Happen,
        startTimer => running,
        lapResetComplete => Cannot_Happen      ); 
      resetLap (
        startStopPressed => Cannot_Happen,
        lapResetPressed => Cannot_Happen,
        tick => Cannot_Happen,
        pause => Cannot_Happen,
        resume => Cannot_Happen,
        startTimer => Cannot_Happen,
        lapResetComplete => running      ); 
    end transition;
  end object;
pragma key_letter ( "WorkoutTimer" ); 
//!The collection of track points stored during a workout session.
//!
//!Presently the device supports only a single track log, and it 
//!is always the active one for the current workout session.
//!However, future releases may add a capability for storing
//!multiple track logs on the device.
  object TrackLog is
    session_startTime : preferred  referential ( R4.represents_path_for.WorkoutSession.startTime ) timestamp;
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
pragma key_letter ( "TrackLog" ); 
//!evaluationPeriod is the period, expressed in microseconds, at which goal achievement is evaluated.
  object GoalAchievement is
    id : preferred  integer;
    evaluationPeriod :   integer;
    public  service initialize (
    );
  end object;
pragma key_letter ( "GoalAchievement" ); 
//!GoalSpecOrigin indicates the sequence number of the first goal.
  object GoalSpecConstants is
    id : preferred  integer;
    GoalSpecOrigin :   integer;
    public  service initialize (
    );
  end object;
pragma key_letter ( "GoalSpecConstants" ); 
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
//!SpeedAveragingWindow is the number of track points used to calculate the current average speed.
//!SecondsPerHour is the number of seconds in one hour.
  object Speed is
    id : preferred  integer;
    SpeedAveragingWindow :   integer;
    SecondsPerHour :   integer;
    public  service initialize (
    );
  end object;
pragma key_letter ( "Speed" ); 
//!timerPeriod specifies, in seconds, the period for the workout timer.
  object WorkoutTimerConstants is
    id : preferred  integer;
    timerPeriod :   integer;
    public  service initialize (
    );
  end object;
pragma key_letter ( "WorkoutTimerConstants" ); 
end domain;
pragma number ( 4 ); 

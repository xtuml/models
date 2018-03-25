//!Simulates the user interface and has the ability to connect an external GUI
//!representing the physical watch.
//!
//!Uses the BridgePoint Java API to connect to an animated version of the watch
//!while the models are executing in Verifier.
//!
//!There is also hand-written C code that implments parts of this component to 
//!allow generated code to connect to the exact same animated watch.
domain UI is
  
  object TestCase;
  object UI;
  object UIConstants;
  
  //!Graphical indicator.
  public type Indicator is enum ( Blank, Down, Flat, Up );   
  public type Unit is enum ( km, meters, minPerKm, kmPerHour, miles, yards, feet, minPerMile, mph, bpm, laps );   
  
  private service sendLapResetPressed ();   
  private service sendLightPressed ();   
  private service sendModePressed ();   
  private service sendStartStopPressed ();   
  private service sendTargetPressed ();   
  public service setData ( value: in real,
                           unit: in Unit );   
  public service setIndicator ( indicator: in Indicator );   
  public service setTime ( time: in integer );   
  public service startTest ();   
  private service RunTestCase ();   
  private service createGoals_1 ();   
  private service init ();   
  
  
  terminator TRACK is
    public service setTargetPressed ();     
    public service startStopPressed ();     
    public service lapResetPressed ();     
    public service lightPressed ();     
    public service modePressed ();     
    public service newGoalSpec ( spanType: in Tracking::GoalSpan,
                                 criteriaType: in Tracking::GoalCriteria,
                                 span: in real,
                                 maximum: in real,
                                 minimum: in real,
                                 sequenceNumber: in integer );     
  end terminator;
  
  
  
  //!Represents a very simple automated test case.
  object TestCase is
    
    iterations: integer;     
    id: preferred integer;     
    
    public service execute ();     
    
    state pressStartStop ();     
    terminal state testCaseFinished ();     
    state initialize ( iterations: in integer );     
    state Idle ();     
    
    event doDelay ();     
    event finish ();     
    event initializationComplete ();     
    event initialize ( iterations: in integer );     
    
    transition is
      Non_Existent ( doDelay => Cannot_Happen,
                     finish => Cannot_Happen,
                     initializationComplete => Cannot_Happen,
                     initialize => Cannot_Happen );       
      pressStartStop ( doDelay => pressStartStop,
                       finish => testCaseFinished,
                       initializationComplete => Cannot_Happen,
                       initialize => Cannot_Happen );       
      testCaseFinished ( doDelay => Cannot_Happen,
                         finish => Cannot_Happen,
                         initializationComplete => Cannot_Happen,
                         initialize => Cannot_Happen );       
      initialize ( doDelay => Cannot_Happen,
                   finish => Cannot_Happen,
                   initializationComplete => pressStartStop,
                   initialize => Cannot_Happen );       
      Idle ( doDelay => Cannot_Happen,
             finish => Cannot_Happen,
             initializationComplete => Cannot_Happen,
             initialize => initialize );       
    end transition;
    
  end object;
  
  //!Provides an interface between Verifier and an external user interface representing 
  //!the watch, in this case an animated rendition of the watch containing virtual
  //!buttons that can be "pushed" by clicking on them with a mouse.
  //!
  //!The system is first primed by creating, within the Verifier execution engine, an 
  //!instance of each event that can be received by this class-based state machine.
  //!This priming is done through execution of the feed*() bridge operations within 
  //!the GuiBridge external entity.  Each of these operations is bound to a realized
  //!Java function that queues the appropriate event within the Verifier execution 
  //!engine.
  //!
  //!Whenever a button on the animated watch is pushed, it causes the associated
  //!event to be generated.  The activity on the transition then queues another instance
  //!of the same event within the Verifier execution engine before sending the 
  //!corresponding interface signal out through the UI port.  That interface signal 
  //!can then be received by an application, such as the Tracking component, that is 
  //!controlled by the animated watch.
  object UI is
    
    id: preferred integer;     
    socket_id: integer;     
    timer: timer;     
    
    public service connect ();     
    public instance service poll () return integer;     
    public instance service setData ( value: in real,
                                      unit: in integer );     
    public instance service setIndicator ( value: in integer );     
    public instance service setTime ( time: in integer );     
    public service initialize ();     
    
    state running ();     
    state setTargetPressed ();     
    state startStopPresssed ();     
    state lapResetPressed ();     
    state lightPressed ();     
    state modePressed ();     
    
    event setTargetPressed ();     
    event startStopPressed ();     
    event lapResetPressed ();     
    event lightPressed ();     
    event modePressed ();     
    event running ();     
    event tick ();     
    
    transition is
      Non_Existent ( setTargetPressed => Cannot_Happen,
                     startStopPressed => Cannot_Happen,
                     lapResetPressed => Cannot_Happen,
                     lightPressed => Cannot_Happen,
                     modePressed => Cannot_Happen,
                     running => Cannot_Happen,
                     tick => Cannot_Happen );       
      running ( setTargetPressed => setTargetPressed,
                startStopPressed => startStopPresssed,
                lapResetPressed => lapResetPressed,
                lightPressed => lightPressed,
                modePressed => modePressed,
                running => Cannot_Happen,
                tick => running );       
      setTargetPressed ( setTargetPressed => Cannot_Happen,
                         startStopPressed => Cannot_Happen,
                         lapResetPressed => Cannot_Happen,
                         lightPressed => Cannot_Happen,
                         modePressed => Cannot_Happen,
                         running => running,
                         tick => Ignore );       
      startStopPresssed ( setTargetPressed => Cannot_Happen,
                          startStopPressed => Cannot_Happen,
                          lapResetPressed => Cannot_Happen,
                          lightPressed => Cannot_Happen,
                          modePressed => Cannot_Happen,
                          running => running,
                          tick => Ignore );       
      lapResetPressed ( setTargetPressed => Cannot_Happen,
                        startStopPressed => Cannot_Happen,
                        lapResetPressed => Cannot_Happen,
                        lightPressed => Cannot_Happen,
                        modePressed => Cannot_Happen,
                        running => running,
                        tick => Ignore );       
      lightPressed ( setTargetPressed => Cannot_Happen,
                     startStopPressed => Cannot_Happen,
                     lapResetPressed => Cannot_Happen,
                     lightPressed => Cannot_Happen,
                     modePressed => Cannot_Happen,
                     running => running,
                     tick => Ignore );       
      modePressed ( setTargetPressed => Cannot_Happen,
                    startStopPressed => Cannot_Happen,
                    lapResetPressed => Cannot_Happen,
                    lightPressed => Cannot_Happen,
                    modePressed => Cannot_Happen,
                    running => running,
                    tick => Ignore );       
    end transition;
    
  end object;
  
  object UIConstants is
    
    id: preferred integer;     
    SIGNAL_NO_NULL_SIGNAL: integer;     
    SIGNAL_NO_START_STOP_PRESSED: integer;     
    SIGNAL_NO_TARGET_PRESSED: integer;     
    SIGNAL_NO_LAP_RESET_PRESSED: integer;     
    SIGNAL_NO_LIGHT_PRESSED: integer;     
    SIGNAL_NO_MODE_PRESSED: integer;     
    SOCKET_ERROR: integer;     
    tick_period: integer;     
    
    public service initialize ();     
    
  end object;
  
  
end domain;

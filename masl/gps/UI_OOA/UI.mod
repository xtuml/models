domain UI is
  object TestCase;
  object UI;
  public type Unit is 
  ;
  public type Indicator is 
  ;
    private service createGoals_1 (
    );
    private service init (
    );
    private service RunTestCase (
    );
    private service sendLapResetPressed (
    );
    private service sendLightPressed (
    );
    private service sendModePressed (
    );
    private service sendStartStopPressed (
    );
    private service sendTargetPressed (
    );
    private service setData (
        unit : in Unit,        value : in real    );
    private service setTime (
        time : in integer    );
    private service setIndicator (
        indicator : in Indicator    );
    private service newGoalSpec (
        spanType : in GoalSpan,        criteriaType : in GoalCriteria,        span : in real,        maximum : in real,        minimum : in real,        sequenceNumber : in integer    );
  terminator UI is
    public service setTime (
        time : in integer    );
    public service setData (
        unit : in Unit,        value : in real    );
    public service startTest (
    );
    public service setIndicator (
        indicator : in Indicator    );
    public service newGoalSpec (
        spanType : in GoalSpan,        criteriaType : in GoalCriteria,        span : in real,        maximum : in real,        minimum : in real,        sequenceNumber : in integer    );
  end terminator;
  terminator Tracking is
    public service setTargetPressed (
    );
    public service startStopPressed (
    );
    public service lapResetPressed (
    );
    public service modePressed (
    );
    public service newGoalSpec (
        spanType : in GoalSpan,        criteriaType : in GoalCriteria,        span : in real,        maximum : in real,        minimum : in real,        sequenceNumber : in integer    );
    public service lightPressed (
    );
  end terminator;
  object TestCase is
    iterations :   integer;
    public  service execute (
    );
     state pressStartStop();
     state testCaseFinished();
     event tcdelay();
     event tcstart(        iterations : in integer);
     event tcfinish();
     transition is
      pressStartStop (
        tcdelay => pressStartStop,
        tcstart => cannot_happen,
        tcfinish => testCaseFinished      ); 
      testCaseFinished (
        tcdelay => cannot_happen,
        tcstart => cannot_happen,
        tcfinish => cannot_happen      ); 
    end transition;
  end object;
  object UI is
    public  service connect (
    );
    assigner start state running();
    assigner event setTargetPressed();
    assigner event startStopPressed();
    assigner event lapResetPressed();
    assigner event lightPressed();
    assigner event modePressed();
    assigner transition is
      running (
        setTargetPressed => running,
        startStopPressed => running,
        lapResetPressed => running,
        lightPressed => running,
        modePressed => running      ); 
    end transition;
  end object;
end domain;

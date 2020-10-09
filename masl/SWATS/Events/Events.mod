//! Tests the various forms of event transmission, in particular polymorphic events and event data.
domain Events is
  object Object_L;
  object Object_A;
  object Object_B;
  object Object_C;
  object Object_F;
  object SubD;
  object SubA;
  object Object_M;
  object Object_D;
  object Object_E;
  object Object_N;
  object Object_Verify_Polymorphic;
  object SubE;
  object SubF;
  object Object_O;
  object Object_J;
  object Object_K;
  object Object_P;
  object Object_Q;
  object Object_R;
  object Object_S;
  object Object_T;
  object Object_U;
  object Reflexive;
  object Creation_Object;
  object Terminal_Object;
  object Object_Verify_Creation_Terminal;
  object Event_Data;
  object SuperA;
  object Test_Data;
  object SubB;
  object SubC;
  object Top_Level;
  object Sub_Level_1_A;
  object Multiple_Creation_States;
  object EventToSelf;
  object BornToDie;
  object Sub_Level_1_B;
  object Sub_Level_2_A;
  object Sub_Level_2_B;
  object Sub_Level_2_C;
  object Sub_Level_2_D;
  object Sub_Level_3_A;
  object Sub_Level_3_B;
  object Sub_Level_3_C;
  object Sub_Level_3_D;
  object Bottom_Level_A;
  object Bottom_Level_B;
  object Bottom_Level_I;
  object Bottom_Level_J;
  object Report_Data;
  object Bottom_Level_F;
  object Bottom_Level_G;
  object Bottom_Level_H;
  object Bottom_Level_E;
  object Bottom_Level_D;
  object Bottom_Level_C;
  object State_Check;
  object Object_X;
  object Object_Z;
  object Huge_State_Machine;
  object Check_Parameters;
  object Priority_A;
  object Priority_B;
  object Check_Delete;
  object Test_Persistence;
  object Test_Effects;
  object Check_Current_States;

  //! List of possible Specific Counterparts to Generic Class
  private type Specific_Classes_JTT is enum (Undef_Element);

  public service Create_Report_Data ();
  pragma domain_operation_number (1);

  public service Delete_Report_Data ();
  pragma domain_operation_number (2);

  public service Generate_From_Service (Test_No : in  integer,
                                        The_IH  : in  instance of Object_X);
  pragma domain_operation_number (3);

  public service Verify_Priority (Ref_No   : in  integer,
                                  Event_No : in  integer,
                                  Test_No  : in  integer);
  pragma domain_operation_number (4);

  public service Dump_Text (The_Text : in  string);
  pragma domain_operation_number (5);

  public service Add_One (Input_Value  : in  integer,
                          Output_Value : out integer);
  pragma domain_operation_number (6);

  terminator Report is
    public service Start_Test (Test_Number     : in  integer,
                               Requid          : in  string,
                               Invoking_Domain : in  string,
                               Invoking_Object : in  string,
                               Purpose         : in  string);
    pragma terminator_operation_number(1);

    public service Test_Passed (Test_Object_Domain : in  string,
                                Test_Number        : in  integer,
                                Test_Value         : in  integer);
    pragma terminator_operation_number(2);

    public service Test_Failed (Failed_Domain_Object : in  string,
                                Failed_Test_Number   : in  integer,
                                Failed_Test_Value    : in  integer);
    pragma terminator_operation_number(3);

    public service Test_Unsupported (Unsupported_Test_Number : in  integer);
    pragma terminator_operation_number(4);

    public service Test_Text (Test_Number : in  integer,
                              Free_Text   : in  string);
    pragma terminator_operation_number(5);

    public service Domain_Test_Start (This_Domain_Name : in  string);
    pragma terminator_operation_number(6);

    public service Domain_Test_Finished (This_Domain_Name : in  string);
    pragma terminator_operation_number(7);

    public service Specify_Requid (Requid_Test_Number : in  integer,
                                   The_Requid_Itself  : in  string);
    pragma terminator_operation_number(8);

    public service Perform_Req_Anal ();
    pragma terminator_operation_number(9);

  end terminator;
  pragma key_letter ("RPT");


  terminator Generate_From_Bridge is
    public service Generate_Event (Test_No : in  integer,
                                   The_IH  : in  instance of Object_X);
    pragma terminator_operation_number(1);

  end terminator;
  pragma key_letter ("GFB");


  terminator Where_Are_We is
    public service What_Env (Local_Env_Text : out string);
    pragma terminator_operation_number(1);

  end terminator;
  pragma key_letter ("WAW");


  //! Events Scenario
  private service Events_Scenario (); pragma scenario (1);

  //! Start Events Tests
  private service Start_Events_Tests (); pragma scenario (2);

  //! Polymorphism
  private service Polymorphism (); pragma scenario (3);

  //! Basic_Events
  private service Basic_Events (); pragma scenario (4);

  //! End Events Tests
  private service End_Events_Tests (); pragma scenario (5);

  //! Event Priorities
  private service Event_Priorities (); pragma scenario (6);

  relationship R1 is Object_A is_a (Object_C,
                                    Object_B);

  relationship R2 is Object_M is_a (Object_N);

  relationship R5 is Object_D is_a (Object_F,
                                    Object_E);

  relationship R3 is Object_N is_a (Object_O);

  relationship R7 is Object_J is_a (Object_K);

  relationship R4 is Object_P is_a (Object_S,
                                    Object_R,
                                    Object_Q);

  relationship R8 is Object_T is_a (Object_U);

  relationship R13 is SuperA is_a (SubA,
                                   SubB);

  relationship R14 is SuperA is_a (SubD,
                                   SubC);

  relationship R6 is SuperA is_a (SubF,
                                  SubE);

  relationship R9 is Top_Level is_a (Sub_Level_1_B,
                                     Sub_Level_1_A);

  relationship R10 is Sub_Level_1_A is_a (Sub_Level_2_B,
                                          Sub_Level_2_A);

  relationship R11 is Sub_Level_1_B is_a (Sub_Level_2_D,
                                          Sub_Level_2_C);

  relationship R12 is Sub_Level_2_A is_a (Sub_Level_3_B,
                                          Sub_Level_3_A);

  relationship R17 is Sub_Level_2_D is_a (Sub_Level_3_C,
                                          Sub_Level_3_D);

  relationship R15 is Sub_Level_3_A is_a (Bottom_Level_B,
                                          Bottom_Level_A);

  relationship R18 is Sub_Level_3_A is_a (Bottom_Level_C,
                                          Bottom_Level_D,
                                          Bottom_Level_E,
                                          Bottom_Level_F);

  relationship R19 is Sub_Level_3_A is_a (Bottom_Level_H,
                                          Bottom_Level_G);

  relationship R16 is Sub_Level_3_D is_a (Bottom_Level_J,
                                          Bottom_Level_I);

  relationship R20 is Priority_A is_a (Priority_B);

  //! Description for Class Object L
  object Object_L is

    //! Description for ObjL, ReferenceL
    ReferenceL : integer;

    //! Description for ObjL, ResultL
    ResultL    : integer;


    //! Description for ObjL, State 2 Idle
    state Idle ();
    pragma state_number (2);

    //! Description for ObjL, State 3 Sub_sub_state
    state Sub_sub_state ();
    pragma state_number (3);

    //! Description for ObjL, Signal objL1
    event Finished ();
    pragma event_number (1);

    transition is
      Non_Existent ( Finished => Cannot_Happen);
      Idle (         Finished => Ignore);
      Sub_sub_state (Finished => Idle);
    end transition;

  end object;
  pragma id (2);
  pragma key_letter ("objL");

  object Object_A is

    ReferenceA  : preferred integer;

    ResultA     : integer;

    latest_test : integer;


    state Idle (Test_Number : in  integer);
    pragma state_number (1);

    //! State machine only in supertype object. 
    //! Update result if called correctly.
    state Supertype_Object (Test        : in  integer,
                            Test_Number : in  integer);
    pragma state_number (2);

    event StartA (Test        : in  integer,
                  Test_Number : in  integer);
    pragma event_number (1);

    event Finished (Test_Number : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (    StartA   => Cannot_Happen,
                        Finished => Cannot_Happen);
      Idle (            StartA   => Supertype_Object,
                        Finished => Ignore);
      Supertype_Object (StartA   => Ignore,
                        Finished => Idle);
    end transition;

  end object;
  pragma id (3);
  pragma key_letter ("objA");

  object Object_B is

    ReferenceA : preferred referential (R1.ReferenceA) integer;

    ResultB    : integer;


  end object;
  pragma id (4);
  pragma key_letter ("objB");

  object Object_C is

    ReferenceA : preferred referential (R1.ReferenceA) integer;

    ResultC    : integer;


  end object;
  pragma id (5);
  pragma key_letter ("objC");

  object Object_M is

    Reference_M : preferred integer;

    Result_M    : integer;


  end object;
  pragma id (9);
  pragma key_letter ("objM");

  //! Supertype object.
  object Object_D is

    //! Referential attribute.
    ReferenceD            : preferred integer;

    //! This attribute is manipulated to indicated that the required operation was successful.
    ResultA               : integer;

    //! captures the number of events received by this super/subtype family
    no_of_received_events : integer;

    latest_test           : integer;


    //! Idle state.
    state Idle (Test_Number : in  integer);
    pragma state_number (1);

    //! This state receives the external event that, also sent to the subtype object.
    state Supertype_Object (Test        : in  integer,
                            Test_Number : in  integer);
    pragma state_number (3);

    event ST_Finished (Test_Number : in  integer);
    pragma event_number (1);

    event StartA (Test        : in  integer,
                  Test_Number : in  integer);
    pragma event_number (2);

    event StartC (Test        : in  integer,
                  Test_Number : in  integer);
    pragma event_number (3);

    event Fault ();
    pragma event_number (4);

    transition is
      Non_Existent (    ST_Finished => Cannot_Happen,
                        StartA      => Cannot_Happen,
                        Fault       => Cannot_Happen,
                        StartC      => Cannot_Happen);
      Idle (            ST_Finished => Cannot_Happen,
                        StartA      => Supertype_Object,
                        Fault       => Cannot_Happen,
                        StartC      => Supertype_Object);
      Supertype_Object (ST_Finished => Idle,
                        StartA      => Cannot_Happen,
                        Fault       => Cannot_Happen,
                        StartC      => Cannot_Happen);
    end transition;

  end object;
  pragma id (10);
  pragma key_letter ("objD");

  //! Subtype object.
  object Object_E is

    //! Referential attribute.
    ReferenceE     : integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA        : integer;

    ReferenceD     : preferred referential (R5.ReferenceD) integer;

    Report_Test_No : integer;


    //! Idle state.
    state Idle (Test_Number : in  integer);
    pragma state_number (1);

    //! This state receives the external event that is also sent to the supertype
    //! object.
    state Subtype_object (Test        : in  integer,
                          Test_Number : in  integer);
    pragma state_number (3);

    event Finished (Test_Number : in  integer);
    pragma event_number (1);

    event StartB (Test        : in  integer,
                  Test_Number : in  integer);
    pragma event_number (6);

    transition is
      Non_Existent (  Object_D.ST_Finished => Cannot_Happen,
                      Object_D.StartA      => Cannot_Happen,
                      Object_D.Fault       => Cannot_Happen,
                      Finished             => Cannot_Happen,
                      StartB               => Cannot_Happen,
                      Object_D.StartC      => Cannot_Happen);
      Idle (          Object_D.ST_Finished => Ignore,
                      Object_D.StartA      => Subtype_object,
                      Object_D.Fault       => Cannot_Happen,
                      Finished             => Cannot_Happen,
                      StartB               => Subtype_object,
                      Object_D.StartC      => Ignore);
      Subtype_object (Object_D.ST_Finished => Ignore,
                      Object_D.StartA      => Cannot_Happen,
                      Object_D.Fault       => Cannot_Happen,
                      Finished             => Idle,
                      StartB               => Cannot_Happen,
                      Object_D.StartC      => Ignore);
    end transition;

  end object;
  pragma id (11);
  pragma key_letter ("objE");

  object Object_N is

    Reference_N : integer;

    Reference_M : preferred referential (R2.Reference_M) integer;

    Result_N    : integer;


    //! This Service is automatically created for a Generic Class. It is invoked to create the counterpart Generic Class when a Specific Class is created. Only the action ASL is editable.
    public service GO_Creation_Service (Specific_Type          : in  Specific_Classes_JTT,
                                        Created_Generic_Object : out instance of Object_N);
    pragma operation_number (1);

    //! This Service is automatically created for a Generic Class. It is invoked to delete the counterpart Generic Class when a Specific Class is deleted. Only the action ASL is editable.
    public instance service GO_Deletion_Service ();
    pragma operation_number (2);

  end object;
  pragma id (12);
  pragma key_letter ("objN");

  //! This object verifies that both the subtype and supertype objects receiver the polymorphic event.
  object Object_Verify_Polymorphic is

    //! Referential attribute.
    ReferenceVER    : preferred integer;

    //! This attribute is manipulated to indicate that the event was received by the supertype object.
    ResultSUPERTYPE : integer;

    //! This attribute is manipulated to indicate that the event was received by the subtype object.
    ResultSUBTYPE   : integer;


    //! This function will verify the polymorphic event tests
    public service verify_polymorphic (Object         : in  string,
                                       Test_Reference : in  integer,
                                       Test_Number    : in  integer);
    pragma operation_number (1);

    //! Idle state.
    state Idle ();
    pragma state_number (1);

    //! This state verifies that the event was received or not received in the 
    //! subtype or the supertype object depending upon the test being performed.
    //! 
    //! The following test create the followng results:
    //! 
    //!     Test  File    Super  Sub  Super     Sub        Verify   Verify
    //!                   Obj    Obj  ResultA   ResultA    ResultA  ResultB
    //!     1     001     D      E    10        10         10       10
    //!           002
    //!     2     003     D      E    0         20         20       20
    //!           004
    //!     3     005     D      E    30        0          30       30
    //!           006
    //!     4     007     D      E    40        0          40       0
    //!           008
    //!     5     009     A      B    50        0          60       0
    //!           010
    //!     6     011     G      H    0         60         0        60
    //!           012
    //!     7     013     J/K    K/L  70        70         70       70
    //!           014
    //! 
    //! Test:           Test case identity.
    //! File:           Indicates the scenario file used within each test case.
    //! Super Obj:      Indicates the 'SUPERtype' object used within the test
    //!                 case.
    //! Sub Obj:        Indicates the 'SUBtype' object used within the test case.
    //! Super ResultA:  The attribute 'ResultA' is manipulated within the
    //!                 'SUPERtype' Object to indicate if required operation was
    //!                 successful.
    //! Sub ResultA:    The attribute 'ResultA' is manipulated within the
    //!                 'SUBtype' Object to indicate if required operation was
    //!                 successful.
    //! Verify ResultA: The attribute 'ResultA' is manipulated within the
    //!                 Verify_Object to indicate that the required operation was
    //!                 successful for the 'SUPERtype' object.
    //! Verify ResultB: The attribute 'ResultB' is manipulated within the
    //!                 Verify_Object to indicate that the required operation was
    //!                 success for the 'SUBtype' object.
    state Verify_Event_Received (Test : in  integer);
    pragma state_number (2);

    //! Fail state.
    state Fail ();
    pragma state_number (3);

    event Finished ();
    pragma event_number (1);

    event Fault ();
    pragma event_number (2);

    event Verify (Test : in  integer);
    pragma event_number (3);

    transition is
      Non_Existent (         Finished => Cannot_Happen,
                             Fault    => Cannot_Happen,
                             Verify   => Cannot_Happen);
      Idle (                 Finished => Cannot_Happen,
                             Fault    => Cannot_Happen,
                             Verify   => Verify_Event_Received);
      Verify_Event_Received (Finished => Idle,
                             Fault    => Fail,
                             Verify   => Cannot_Happen);
      Fail (                 Finished => Cannot_Happen,
                             Fault    => Cannot_Happen,
                             Verify   => Cannot_Happen);
    end transition;

  end object;
  pragma id (13);
  pragma key_letter ("objVERPOL");

  object Object_O is

    Reference_O : integer;

    Reference_M : preferred referential (R3.Reference_M) integer;

    Result_O    : integer;


  end object;
  pragma id (16);
  pragma key_letter ("objO");

  //! Supertype object.
  object Object_J is

    //! Referential attribute
    ReferenceJ   : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultJ      : integer;

    action_count : integer;

    latest_test  : integer;


    //! Idle state.
    state Idle (Test_Number : in  integer);
    pragma state_number (3);

    //! This state receives an external event that is passed onto its related
    //! subtype object.
    state Supertype_state (Test_Number : in  integer);
    pragma state_number (4);

    event StartA (Test_Number : in  integer);
    pragma event_number (1);

    event ST_Finished (Test_Number : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (   StartA      => Cannot_Happen,
                       ST_Finished => Cannot_Happen);
      Idle (           StartA      => Supertype_state,
                       ST_Finished => Ignore);
      Supertype_state (StartA      => Ignore,
                       ST_Finished => Idle);
    end transition;

  end object;
  pragma id (17);
  pragma key_letter ("objJ");

  //! Subtype and supertype object.
  object Object_K is

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultK    : integer;

    ReferenceK : integer;

    ReferenceJ : preferred referential (R7.ReferenceJ) integer;


    //! Idle state.
    state Idle (Test_Number : in  integer);
    pragma state_number (1);

    //! This state receives an event from its related supertype object, and also
    //! passes the event onto its related subtype object.
    state Sub_Super_state ();
    pragma state_number (2);

    event Finished (Test_Number : in  integer);
    pragma event_number (1);

    transition is
      Non_Existent (   Finished             => Cannot_Happen,
                       Object_J.StartA      => Cannot_Happen,
                       Object_J.ST_Finished => Cannot_Happen);
      Idle (           Finished             => Cannot_Happen,
                       Object_J.StartA      => Ignore,
                       Object_J.ST_Finished => Ignore);
      Sub_Super_state (Finished             => Idle,
                       Object_J.StartA      => Ignore,
                       Object_J.ST_Finished => Ignore);
    end transition;

  end object;
  pragma id (18);
  pragma key_letter ("objK");

  object Object_P is

    Reference_P               : preferred integer;

    Result_P                  : integer;

    number_of_received_events : integer;

    latest_test               : integer;

    Value_To_Add              : integer;


    state Idle (Test : in  integer);
    pragma state_number (2);

    state Supertype_State (Test : in  integer);
    pragma state_number (3);

    event StartP (Test : in  integer);
    pragma event_number (1);

    event Finished (Test : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (   StartP   => Cannot_Happen,
                       Finished => Cannot_Happen);
      Idle (           StartP   => Supertype_State,
                       Finished => Ignore);
      Supertype_State (StartP   => Ignore,
                       Finished => Idle);
    end transition;

  end object;
  pragma id (19);
  pragma key_letter ("objP");

  object Object_Q is

    Reference_P  : preferred referential (R4.Reference_P) integer;

    Value_To_Add : integer;

    latest_test  : integer;

    Result_Q     : integer;


    //! 
    //! # This state shall prove that an event is passed from the 
    //! # supertype to the subtype even when there is no state 
    //! # model in the supertype.
    state Idle ();
    pragma state_number (1);

    //! 
    //! # This state shall add the value specified to the ResultQ 
    //! # attribute. 
    //! 
    //! # This state shall also add the value specified to the 
    //! # supertype attribute Result_P.
    //! 
    //! # This shall only happen if the supertype has delivered the
    //! # event to this subtype.
    state Subtype_State (Test : in  integer);
    pragma state_number (2);

    event FinishedQ ();
    pragma event_number (1);

    transition is
      Non_Existent ( Object_P.StartP   => Cannot_Happen,
                     Object_P.Finished => Cannot_Happen,
                     FinishedQ         => Cannot_Happen);
      Idle (         Object_P.StartP   => Subtype_State,
                     Object_P.Finished => Ignore,
                     FinishedQ         => Ignore);
      Subtype_State (Object_P.StartP   => Cannot_Happen,
                     Object_P.Finished => Ignore,
                     FinishedQ         => Idle);
    end transition;

  end object;
  pragma id (20);
  pragma key_letter ("objQ");

  object Object_R is

    Reference_P  : preferred referential (R4.Reference_P) integer;

    Value_To_Add : integer;

    latest_test  : integer;

    Result_R     : integer;


    state Idle ();
    pragma state_number (1);

    state Subtype_State (Test : in  integer);
    pragma state_number (2);

    event FinishedR ();
    pragma event_number (1);

    transition is
      Non_Existent ( Object_P.StartP   => Cannot_Happen,
                     Object_P.Finished => Cannot_Happen,
                     FinishedR         => Cannot_Happen);
      Idle (         Object_P.StartP   => Subtype_State,
                     Object_P.Finished => Ignore,
                     FinishedR         => Ignore);
      Subtype_State (Object_P.StartP   => Ignore,
                     Object_P.Finished => Ignore,
                     FinishedR         => Idle);
    end transition;

  end object;
  pragma id (21);
  pragma key_letter ("objR");

  object Object_S is

    Reference_P  : preferred referential (R4.Reference_P) integer;

    Value_To_Add : integer;

    latest_test  : integer;

    Result_S     : integer;


    state Idle ();
    pragma state_number (1);

    state Subtype_State (Test : in  integer);
    pragma state_number (2);

    event FinishedS ();
    pragma event_number (1);

    transition is
      Non_Existent ( Object_P.StartP   => Cannot_Happen,
                     Object_P.Finished => Cannot_Happen,
                     FinishedS         => Cannot_Happen);
      Idle (         Object_P.StartP   => Subtype_State,
                     Object_P.Finished => Ignore,
                     FinishedS         => Cannot_Happen);
      Subtype_State (Object_P.StartP   => Ignore,
                     Object_P.Finished => Ignore,
                     FinishedS         => Idle);
    end transition;

  end object;
  pragma id (22);
  pragma key_letter ("objS");

  object Object_T is

    Reference_T : preferred integer;

    Result_T    : integer;


    event StartT (Test_Number : in  integer);
    pragma event_number (1);

  end object;
  pragma id (23);
  pragma key_letter ("objT");

  object Object_U is

    Reference_T : preferred referential (R8.Reference_T) integer;

    Result_U    : integer;

    latest_test : integer;


    state Idle (Test_Number : in  integer);
    pragma state_number (1);

    state Subtype_State (Test_Number : in  integer);
    pragma state_number (2);

    event StartU (Test_Number : in  integer);
    pragma event_number (1);

    event Finished (Test_Number : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent ( StartU          => Cannot_Happen,
                     Finished        => Cannot_Happen,
                     Object_T.StartT => Cannot_Happen);
      Idle (         StartU          => Subtype_State,
                     Finished        => Ignore,
                     Object_T.StartT => Subtype_State);
      Subtype_State (StartU          => Ignore,
                     Finished        => Idle,
                     Object_T.StartT => Ignore);
    end transition;

  end object;
  pragma id (24);
  pragma key_letter ("objU");

  object Reflexive is

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA          : integer;

    ReferenceREFLECT : preferred integer;


    state Idle ();
    pragma state_number (1);

    //! This state verifies that an instance of a reflexive object 
    //! can send an event to its self and to other instances of 
    //! the same object.
    //! 
    //! The following tests give the following results:
    //! 
    //!     Test      Reference      ResultA
    //!     13        1              60
    //!     14        2, 3, 4        20
    //! 
    //! Test:      Test case identity.
    //! Reference: Indicates which instances of the 
    //!            object 'Reflexive' was included in the test.
    //! ResultA:   Indicates the final value written into 
    //!            the attribute 'ResultA' at the end of 
    //!            the test, the value of this attribute 
    //!            may change during the test.
    state Test_state (Test        : in  integer,
                      Counter     : in  integer,
                      Test_Number : in  integer);
    pragma state_number (2);

    state Fail ();
    pragma state_number (3);

    event Finished ();
    pragma event_number (1);

    event Fault ();
    pragma event_number (2);

    event StartA (Test        : in  integer,
                  Counter     : in  integer,
                  Test_Number : in  integer);
    pragma event_number (3);

    transition is
      Non_Existent (Finished => Cannot_Happen,
                    Fault    => Cannot_Happen,
                    StartA   => Cannot_Happen);
      Idle (        Finished => Cannot_Happen,
                    Fault    => Cannot_Happen,
                    StartA   => Test_state);
      Test_state (  Finished => Idle,
                    Fault    => Fail,
                    StartA   => Test_state);
      Fail (        Finished => Cannot_Happen,
                    Fault    => Cannot_Happen,
                    StartA   => Cannot_Happen);
    end transition;

  end object;
  pragma id (25);
  pragma key_letter ("REFLECT");

  object Creation_Object is

    //! Referential attribute.
    ReferenceCREATE : preferred integer;


    creation state Creation_State (Test        : in  integer,
                                   Test_Number : in  integer);
    pragma state_number (1);

    creation event StartA (Test        : in  integer,
                           Test_Number : in  integer);
    pragma event_number (1);

    transition is
      Non_Existent (  StartA => Creation_State);
      Creation_State (StartA => Cannot_Happen);
    end transition;

  end object;
  pragma id (26);
  pragma key_letter ("objCREATE");

  object Terminal_Object is

    //! Referential attribute.
    ReferenceTERM : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA       : integer;


    state Idle ();
    pragma state_number (1);

    //! This state shall delete it's own instance, but only 
    //! after reporting itself as available for deletion.
    terminal state Terminal_State (Test        : in  integer,
                                   Test_Number : in  integer);
    pragma state_number (2);

    event StartA (Test        : in  integer,
                  Test_Number : in  integer);
    pragma event_number (1);

    transition is
      Non_Existent (  StartA => Cannot_Happen);
      Idle (          StartA => Terminal_State);
      Terminal_State (StartA => Cannot_Happen);
    end transition;

  end object;
  pragma id (27);
  pragma key_letter ("objTERMINAL");

  object Object_Verify_Creation_Terminal is

    //! Referential attribute.
    ReferenceCETL : preferred integer;

    ResultA       : integer;


    //! Idle state.
    state Idle ();
    pragma state_number (1);

    //! This state verifies that the tests performed within the objects
    //! 'Creation_Object' and 'Terminal_Object' provide the correct results.
    //! 
    //! The following tests produced the following results:
    //! 
    //!     Test      Object      Reference      ResultA
    //!     1         Creation    1              10
    //!     19        Deletion    2              20
    //!     21        Deletion    3              30
    //! 
    //! 
    //! Test:      Test case identity.
    //! Object:    Indicates which object to which the test applies.
    //! Reference: Indicates which instance of Object_Verify_Creation_Deletion
    //!            was used to verify the tests performed in the above objects.
    //! ResultA:   Indicates the value written into the attribute 'ResultA'
    //!            if the test was successful.
    state Verify_State (Test        : in  integer,
                        Test_Number : in  integer);
    pragma state_number (2);

    event Finished ();
    pragma event_number (1);

    event Verify (Test        : in  integer,
                  Test_Number : in  integer);
    pragma event_number (2);

    event Fault ();
    pragma event_number (3);

    transition is
      Non_Existent (Finished => Cannot_Happen,
                    Verify   => Cannot_Happen,
                    Fault    => Cannot_Happen);
      Idle (        Finished => Ignore,
                    Verify   => Verify_State,
                    Fault    => Ignore);
      Verify_State (Finished => Idle,
                    Verify   => Cannot_Happen,
                    Fault    => Ignore);
    end transition;

  end object;
  pragma id (28);
  pragma key_letter ("objVERCETL");

  //! This object verifies the sending of strange event data and a compilers ability to recognise that the event data contained within multiple events is the same (i.e. has a corresponding name and data type).
  object Event_Data is

    //! Referential attribute.
    ReferenceEDATA : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA        : integer;


    state Idle ();
    pragma state_number (1);

    state Verification_State_One (A           : in  integer,
                                  B           : in  integer,
                                  C           : in  integer,
                                  E           : in  integer,
                                  F           : in  integer,
                                  Test        : in  integer,
                                  Test_Number : in  integer);
    pragma state_number (2);

    state Fail ();
    pragma state_number (3);

    state Verification_State_TWO (A           : in  integer,
                                  B           : in  integer,
                                  Test        : in  integer,
                                  Test_Number : in  integer);
    pragma state_number (4);

    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event EventA (A           : in  integer,
                  B           : in  integer,
                  C           : in  integer,
                  E           : in  integer,
                  F           : in  integer,
                  Test        : in  integer,
                  Test_Number : in  integer);
    pragma event_number (3);

    event EventB (A           : in  integer,
                  B           : in  integer,
                  C           : in  integer,
                  E           : in  integer,
                  F           : in  integer,
                  Test        : in  integer,
                  Test_Number : in  integer);
    pragma event_number (4);

    event EventC (A           : in  integer,
                  B           : in  integer,
                  C           : in  integer,
                  E           : in  integer,
                  F           : in  integer,
                  Test        : in  integer,
                  Test_Number : in  integer);
    pragma event_number (5);

    event EventD (A           : in  integer,
                  B           : in  integer,
                  Test        : in  integer,
                  Test_Number : in  integer);
    pragma event_number (7);

    transition is
      Non_Existent (          Fault    => Cannot_Happen,
                              Finished => Cannot_Happen,
                              EventA   => Cannot_Happen,
                              EventB   => Cannot_Happen,
                              EventC   => Cannot_Happen,
                              EventD   => Cannot_Happen);
      Idle (                  Fault    => Ignore,
                              Finished => Ignore,
                              EventA   => Verification_State_One,
                              EventB   => Verification_State_One,
                              EventC   => Verification_State_One,
                              EventD   => Verification_State_TWO);
      Verification_State_One (Fault    => Fail,
                              Finished => Idle,
                              EventA   => Ignore,
                              EventB   => Ignore,
                              EventC   => Ignore,
                              EventD   => Ignore);
      Fail (                  Fault    => Cannot_Happen,
                              Finished => Cannot_Happen,
                              EventA   => Ignore,
                              EventB   => Ignore,
                              EventC   => Ignore,
                              EventD   => Ignore);
      Verification_State_TWO (Fault    => Fail,
                              Finished => Idle,
                              EventA   => Ignore,
                              EventB   => Ignore,
                              EventC   => Ignore,
                              EventD   => Ignore);
    end transition;

  end object;
  pragma id (29);
  pragma key_letter ("objEDATA");

  //! Supertype object.
  object SuperA is

    //! Preferred identifier.
    idA          : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA      : integer;

    Reference_ID : integer;


    //! Idle state.
    state Wait_Here (Test : in  integer);
    pragma state_number (1);

    //! An instance current state is changed to fail
    //! if the test failed.
    state Fail ();
    pragma state_number (2);

    //! This state verifies the following:
    //! 
    //! [1] Creation events are possible. - UNSUPPORTED
    //! [2] Polymorphic events to multiple 
    //!     sub-type families are possible.
    //! [3] Subtype Migration is possible.
    state Verify_Migration (Test : in  integer);
    pragma state_number (3);

    //! Migrate the sub types.
    state Migrate (Test : in  integer);
    pragma state_number (5);

    state Idle ();
    pragma state_number (7);

    event StartA (Test : in  integer);
    pragma event_number (1);

    event Verify_Test (Test : in  integer);
    pragma event_number (2);

    event Fault ();
    pragma event_number (3);

    event Finished (Test : in  integer);
    pragma event_number (4);

    event Creation_Event (Test : in  integer);
    pragma event_number (5);

    event Polymorphic (Test : in  integer);
    pragma event_number (6);

    transition is
      Non_Existent (    StartA         => Cannot_Happen,
                        Verify_Test    => Cannot_Happen,
                        Fault          => Cannot_Happen,
                        Finished       => Cannot_Happen,
                        Polymorphic    => Cannot_Happen,
                        Creation_Event => Cannot_Happen);
      Wait_Here (       StartA         => Ignore,
                        Verify_Test    => Verify_Migration,
                        Fault          => Cannot_Happen,
                        Finished       => Cannot_Happen,
                        Polymorphic    => Ignore,
                        Creation_Event => Ignore);
      Fail (            StartA         => Ignore,
                        Verify_Test    => Cannot_Happen,
                        Fault          => Cannot_Happen,
                        Finished       => Cannot_Happen,
                        Polymorphic    => Ignore,
                        Creation_Event => Ignore);
      Verify_Migration (StartA         => Ignore,
                        Verify_Test    => Cannot_Happen,
                        Fault          => Fail,
                        Finished       => Wait_Here,
                        Polymorphic    => Ignore,
                        Creation_Event => Ignore);
      Migrate (         StartA         => Wait_Here,
                        Verify_Test    => Ignore,
                        Fault          => Ignore,
                        Finished       => Ignore,
                        Polymorphic    => Ignore,
                        Creation_Event => Ignore);
      Idle (            StartA         => Ignore,
                        Verify_Test    => Ignore,
                        Fault          => Ignore,
                        Finished       => Ignore,
                        Creation_Event => Migrate,
                        Polymorphic    => Ignore);
    end transition;

  end object;
  pragma id (30);
  pragma key_letter ("SprA");

  object Test_Data is

    Current_Test_Number : integer;


  end object;
  pragma id (31);
  pragma key_letter ("TD");

  object SubB is

    idA          : preferred referential (R13.idA) integer;

    Value_To_Add : integer;


    //! The instance gets created in this state
    //! by the supertype.
    state Idle ();
    pragma state_number (1);

    //! Idle state.
    state Update (Test : in  integer);
    pragma state_number (2);

    transition is
      Non_Existent (SuperA.StartA         => Cannot_Happen,
                    SuperA.Verify_Test    => Cannot_Happen,
                    SuperA.Fault          => Cannot_Happen,
                    SuperA.Finished       => Cannot_Happen,
                    SuperA.Polymorphic    => Cannot_Happen,
                    SuperA.Creation_Event => Cannot_Happen);
      Idle (        SuperA.StartA         => Ignore,
                    SuperA.Verify_Test    => Ignore,
                    SuperA.Fault          => Ignore,
                    SuperA.Finished       => Ignore,
                    SuperA.Polymorphic    => Update,
                    SuperA.Creation_Event => Ignore);
      Update (      SuperA.StartA         => Ignore,
                    SuperA.Verify_Test    => Ignore,
                    SuperA.Fault          => Ignore,
                    SuperA.Finished       => Ignore,
                    SuperA.Polymorphic    => Ignore,
                    SuperA.Creation_Event => Ignore);
    end transition;

  end object;
  pragma id (32);
  pragma key_letter ("sbB");

  object SubC is

    idA          : preferred referential (R14.idA) integer;

    Value_To_Add : integer;


    //! The instance gets created in this state by the supertype.
    state Idle ();
    pragma state_number (1);

    //! Idle state.
    state Update (Test : in  integer);
    pragma state_number (2);

    transition is
      Non_Existent (SuperA.StartA         => Cannot_Happen,
                    SuperA.Verify_Test    => Cannot_Happen,
                    SuperA.Fault          => Cannot_Happen,
                    SuperA.Finished       => Cannot_Happen,
                    SuperA.Polymorphic    => Cannot_Happen,
                    SuperA.Creation_Event => Cannot_Happen);
      Idle (        SuperA.StartA         => Ignore,
                    SuperA.Verify_Test    => Ignore,
                    SuperA.Fault          => Ignore,
                    SuperA.Finished       => Ignore,
                    SuperA.Polymorphic    => Update,
                    SuperA.Creation_Event => Ignore);
      Update (      SuperA.StartA         => Ignore,
                    SuperA.Verify_Test    => Ignore,
                    SuperA.Fault          => Ignore,
                    SuperA.Finished       => Ignore,
                    SuperA.Polymorphic    => Ignore,
                    SuperA.Creation_Event => Ignore);
    end transition;

  end object;
  pragma id (33);
  pragma key_letter ("sbC");

  object Top_Level is

    TL_id  : integer;

    Result : integer;


    state Check ();
    pragma state_number (1);

    state Finish (Test_No : in  integer);
    pragma state_number (2);

    event Go ();
    pragma event_number (1);

    event Finish (Test_No : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (Go     => Cannot_Happen,
                    Finish => Cannot_Happen);
      Check (       Go     => Check,
                    Finish => Finish);
      Finish (      Go     => Check,
                    Finish => Ignore);
    end transition;

  end object;
  pragma id (34);
  pragma key_letter ("TL");

  object Sub_Level_1_A is

    SL1A_id : integer;


  end object;
  pragma id (35);
  pragma key_letter ("SL_ONE_A");

  //! This object verifies that an object may have more than one creation state.
  object Multiple_Creation_States is

    //! Preferred identifier.
    idMCS   : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA : integer;


    //! This state verifies the following:
    //! 
    //! [1] That it is possible to create an instance
    //!     of an object.
    state Creation_stateA ();
    pragma state_number (1);

    //! This state verifies the following:
    //! 
    //! [1] That it is possible to create an instance
    //!     of an object.
    state Creation_stateB ();
    pragma state_number (2);

    //! Idle state.
    //! No action taken.
    state Idle (Test : in  integer);
    pragma state_number (3);

    //! This state verifies the following:
    //! 
    //! [1] That instances in both creation states where
    //!     created correctly.
    state Verify_Tests (Test        : in  integer,
                        Test_Number : in  integer);
    pragma state_number (4);

    //! An instance current state is changed to fail
    //! if the test failed.
    state Fail ();
    pragma state_number (5);

    event CreateA (Test : in  integer);
    pragma event_number (1);

    event CreateB (Test : in  integer);
    pragma event_number (2);

    event Creation_Complete (Test : in  integer);
    pragma event_number (3);

    event Perform_Verification (Test        : in  integer,
                                Test_Number : in  integer);
    pragma event_number (4);

    event Fault ();
    pragma event_number (5);

    event Finished (Test : in  integer);
    pragma event_number (6);

    transition is
      Non_Existent (   CreateA              => Cannot_Happen,
                       CreateB              => Cannot_Happen,
                       Creation_Complete    => Cannot_Happen,
                       Perform_Verification => Cannot_Happen,
                       Fault                => Cannot_Happen,
                       Finished             => Cannot_Happen);
      Creation_stateA (CreateA              => Ignore,
                       CreateB              => Ignore,
                       Creation_Complete    => Idle,
                       Perform_Verification => Cannot_Happen,
                       Fault                => Cannot_Happen,
                       Finished             => Cannot_Happen);
      Creation_stateB (CreateA              => Ignore,
                       CreateB              => Ignore,
                       Creation_Complete    => Idle,
                       Perform_Verification => Cannot_Happen,
                       Fault                => Cannot_Happen,
                       Finished             => Cannot_Happen);
      Idle (           CreateA              => Ignore,
                       CreateB              => Ignore,
                       Creation_Complete    => Cannot_Happen,
                       Perform_Verification => Verify_Tests,
                       Fault                => Cannot_Happen,
                       Finished             => Cannot_Happen);
      Verify_Tests (   CreateA              => Ignore,
                       CreateB              => Ignore,
                       Creation_Complete    => Cannot_Happen,
                       Perform_Verification => Cannot_Happen,
                       Fault                => Fail,
                       Finished             => Idle);
      Fail (           CreateA              => Cannot_Happen,
                       CreateB              => Cannot_Happen,
                       Creation_Complete    => Cannot_Happen,
                       Perform_Verification => Cannot_Happen,
                       Fault                => Cannot_Happen,
                       Finished             => Cannot_Happen);
    end transition;

  end object;
  pragma id (36);
  pragma key_letter ("objMCS");

  //! This object verifies sending an event to one's self whilst others are in the event queue is acted upon first.
  object EventToSelf is

    //! Preferred identifier.
    idETS     : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    NewResult : integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    OldResult : integer;


    //! Idle state.
    //! No action taken.
    state Idle ();
    pragma state_number (1);

    //! This state verifies the following:
    //! 
    //! 	
    //! [1] That an event is placed onto the top of the
    //!     event queue and acted upon before any other
    //!     events to the same instance.
    state State_One (Test : in  integer);
    pragma state_number (2);

    //! This state verifies the following:
    //! 
    //! [1] That an event to self is acted upon whilst
    //!     other events to the same instance are in the
    //!     event queue.
    state State_Two (Test : in  integer);
    pragma state_number (3);

    //! This state verifies the following:
    //! 
    //! [1] That an event to self was acted upon before
    //!     any other events where handled.
    state Verify_event_to_self (Test        : in  integer,
                                Test_Number : in  integer);
    pragma state_number (4);

    //! An instance current state is changed to fail
    //! if the test failed.
    state Fail ();
    pragma state_number (5);

    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event StartA (Test : in  integer);
    pragma event_number (3);

    event EventToOwnInstance (Test : in  integer);
    pragma event_number (4);

    event VerifyEventToSelf (Test        : in  integer,
                             Test_Number : in  integer);
    pragma event_number (5);

    transition is
      Non_Existent (        Fault              => Cannot_Happen,
                            Finished           => Cannot_Happen,
                            StartA             => Cannot_Happen,
                            EventToOwnInstance => Cannot_Happen,
                            VerifyEventToSelf  => Cannot_Happen);
      Idle (                Fault              => Cannot_Happen,
                            Finished           => Cannot_Happen,
                            StartA             => State_One,
                            EventToOwnInstance => Cannot_Happen,
                            VerifyEventToSelf  => Verify_event_to_self);
      State_One (           Fault              => Cannot_Happen,
                            Finished           => Cannot_Happen,
                            StartA             => Cannot_Happen,
                            EventToOwnInstance => State_Two,
                            VerifyEventToSelf  => Cannot_Happen);
      State_Two (           Fault              => Cannot_Happen,
                            Finished           => Idle,
                            StartA             => Cannot_Happen,
                            EventToOwnInstance => Cannot_Happen,
                            VerifyEventToSelf  => Cannot_Happen);
      Verify_event_to_self (Fault              => Fail,
                            Finished           => Idle,
                            StartA             => Cannot_Happen,
                            EventToOwnInstance => Cannot_Happen,
                            VerifyEventToSelf  => Cannot_Happen);
      Fail (                Fault              => Cannot_Happen,
                            Finished           => Cannot_Happen,
                            StartA             => Cannot_Happen,
                            EventToOwnInstance => Cannot_Happen,
                            VerifyEventToSelf  => Cannot_Happen);
    end transition;

  end object;
  pragma id (37);
  pragma key_letter ("ETS");

  //! This object verifies Born-To-Die life cycle of an instance.
  object BornToDie is

    //! Preferred identifier.
    idBTD   : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA : integer;


    //! Cause transition into creation state, for subsequent deletion
    public service Into_Creation (Test        : in  integer,
                                  Test_Number : in  integer);
    pragma operation_number (1);

    //! This state verifies the following:
    //! 
    //! 
    //! [1] The creation of an instance.
    state Creation_state ();
    pragma state_number (1);

    //! This state verifies the following:
    //! 
    //! 	[1]	The deletion of self.
    terminal state Termination_state (Test        : in  integer,
                                      Test_Number : in  integer);
    pragma state_number (2);

    //! Idle state.
    //! No action taken.
    state Idle ();
    pragma state_number (3);

    //! This state verifies the following:
    //! 
    //! [1] That an instance no longer exists if it had
    //!     a born-to-die life cycle.
    state Verify_Tests (Test        : in  integer,
                        Test_Number : in  integer);
    pragma state_number (4);

    //! An instance current state is changed to fail
    //! if the test failed.
    state Fail ();
    pragma state_number (5);

    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event VerifyBornToDie (Test        : in  integer,
                           Test_Number : in  integer);
    pragma event_number (3);

    event DeleteInstance (Test        : in  integer,
                          Test_Number : in  integer);
    pragma event_number (5);

    transition is
      Non_Existent (     Fault           => Cannot_Happen,
                         Finished        => Cannot_Happen,
                         VerifyBornToDie => Cannot_Happen,
                         DeleteInstance  => Cannot_Happen);
      Creation_state (   Fault           => Cannot_Happen,
                         Finished        => Cannot_Happen,
                         VerifyBornToDie => Cannot_Happen,
                         DeleteInstance  => Termination_state);
      Termination_state (Fault           => Cannot_Happen,
                         Finished        => Cannot_Happen,
                         VerifyBornToDie => Cannot_Happen,
                         DeleteInstance  => Cannot_Happen);
      Idle (             Fault           => Cannot_Happen,
                         Finished        => Cannot_Happen,
                         VerifyBornToDie => Verify_Tests,
                         DeleteInstance  => Cannot_Happen);
      Verify_Tests (     Fault           => Fail,
                         Finished        => Idle,
                         VerifyBornToDie => Cannot_Happen,
                         DeleteInstance  => Cannot_Happen);
      Fail (             Fault           => Cannot_Happen,
                         Finished        => Cannot_Happen,
                         VerifyBornToDie => Cannot_Happen,
                         DeleteInstance  => Cannot_Happen);
    end transition;

  end object;
  pragma id (38);
  pragma key_letter ("BTD");

  object Sub_Level_1_B is

    SL1B_id : integer;


    event Wake_Up ();
    pragma event_number (1);

  end object;
  pragma id (39);
  pragma key_letter ("SL_ONE_B");

  object Sub_Level_2_A is

    SL2A_id : integer;


  end object;
  pragma id (40);
  pragma key_letter ("SL_TWO_A");

  object Sub_Level_2_B is

    SL2B_id : integer;


  end object;
  pragma id (41);
  pragma key_letter ("SL_TWO_B");

  object Sub_Level_2_C is

    SL2C_id : integer;


    event Go_Two ();
    pragma event_number (1);

  end object;
  pragma id (42);
  pragma key_letter ("SL_TWO_C");

  object Sub_Level_2_D is

    SL2D_id : integer;


  end object;
  pragma id (43);
  pragma key_letter ("SL_TWO_D");

  object Sub_Level_3_A is

    SL3A_id : integer;


    event Go_Three ();
    pragma event_number (1);

  end object;
  pragma id (44);
  pragma key_letter ("SL_THREE_A");

  object Sub_Level_3_B is

    SL3B_id : integer;


  end object;
  pragma id (45);
  pragma key_letter ("SL_THREE_B");

  object Sub_Level_3_C is

    //!    
    SL3C_id : integer;


  end object;
  pragma id (46);
  pragma key_letter ("SL_THREE_C");

  object Sub_Level_3_D is

    SL3D_id : integer;


    event Go_Three ();
    pragma event_number (1);

  end object;
  pragma id (47);
  pragma key_letter ("SL_THREE_D");

  object Bottom_Level_A is

    BLA_id : integer;


  end object;
  pragma id (48);
  pragma key_letter ("BLA");

  object Bottom_Level_B is

    BLB_id : integer;


  end object;
  pragma id (49);
  pragma key_letter ("BLB");

  object Bottom_Level_I is

    BLI_id : integer;


  end object;
  pragma id (50);
  pragma key_letter ("BLI");

  object Bottom_Level_J is

    BLJ_id : integer;


    event Go_Bottom ();
    pragma event_number (1);

  end object;
  pragma id (51);
  pragma key_letter ("BLJ");

  object Report_Data is

    Report_Data_Unique_id  : preferred integer;

    Reported_Domain_Number : integer;


  end object;
  pragma id (52);
  pragma key_letter ("RD");

  object Bottom_Level_F is

    BLF_Identifier : integer;

    Value_To_Add   : integer;


    event Go_Bottom ();
    pragma event_number (1);

  end object;
  pragma id (53);
  pragma key_letter ("BLF");

  object Bottom_Level_G is

    BLG_Identifier : integer;

    Value_To_Add   : integer;


    event Go_Bottom ();
    pragma event_number (1);

  end object;
  pragma id (54);
  pragma key_letter ("BLG");

  object Bottom_Level_H is

    BLH_Identifier : integer;

    Value_To_Add   : integer;


    event Go_Bottom ();
    pragma event_number (1);

  end object;
  pragma id (55);
  pragma key_letter ("BLH");

  object Bottom_Level_E is

    BLE_Identifier : integer;

    Value_To_Add   : integer;


    event Go_Bottom ();
    pragma event_number (1);

  end object;
  pragma id (56);
  pragma key_letter ("BLE");

  object Bottom_Level_D is

    BLD_Identifier : integer;

    Value_To_Add   : integer;


    event Go_Bottom ();
    pragma event_number (1);

  end object;
  pragma id (57);
  pragma key_letter ("BLD");

  object Bottom_Level_C is

    BLC_Identifier : integer;

    Value_To_Add   : integer;


    event Go_Bottom ();
    pragma event_number (1);

  end object;
  pragma id (58);
  pragma key_letter ("BLC");

  object State_Check is

    The_ID          : integer;

    The_Test_No     : integer;

    Whats_The_State : string;


    state Idle (Test_No : in  integer);
    pragma state_number (1);

    state Check_State (Test_No : in  integer);
    pragma state_number (2);

    event Check_The_State (Test_No : in  integer);
    pragma event_number (1);

    event Finished (Test_No : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (Check_The_State => Cannot_Happen,
                    Finished        => Cannot_Happen);
      Idle (        Check_The_State => Check_State,
                    Finished        => Ignore);
      Check_State ( Check_The_State => Ignore,
                    Finished        => Idle);
    end transition;

  end object;
  pragma id (59);
  pragma key_letter ("SC");

  object Object_X is

    ResultX     : integer;

    The_Test_No : integer;

    Integer_Att : integer;

    Real_Att    : real;

    Text_Att    : string;

    Boolean_Att : boolean;


    state Idle (Test_No      : in  integer,
                The_Test     : in  string,
                Returning_No : in  integer);
    pragma state_number (1);

    state Check_ASL (Test_No  : in  integer,
                     ASL_Type : in  string);
    pragma state_number (2);

    state Generate_From_State (Test_No : in  integer);
    pragma state_number (3);

    state Check_Attributes (Test_No    : in  integer,
                            Which_Test : in  string);
    pragma state_number (4);

    state Check_ASL_In_State (Test_No     : in  integer,
                              Input_Param : in  integer);
    pragma state_number (6);

    state Lots_Of_Parameters (Test_No : in  integer,
                              Param_A : in  integer,
                              Param_B : in  integer,
                              Param_C : in  integer,
                              Param_D : in  integer,
                              Param_E : in  integer,
                              Param_F : in  integer,
                              Param_G : in  integer,
                              Param_H : in  integer,
                              Param_I : in  integer,
                              Param_J : in  integer,
                              Param_K : in  integer,
                              Param_L : in  integer,
                              Param_M : in  integer,
                              Param_N : in  integer,
                              Param_O : in  integer,
                              Param_P : in  integer,
                              Param_Q : in  integer,
                              Param_R : in  integer,
                              Param_S : in  integer,
                              Param_T : in  integer,
                              Param_U : in  integer,
                              Param_V : in  integer,
                              Param_W : in  integer,
                              Param_X : in  integer,
                              Param_Y : in  integer,
                              Param_Z : in  integer);
    pragma state_number (7);

    event Check_ASL (Test_No  : in  integer,
                     ASL_Type : in  string);
    pragma event_number (1);

    event Finished (Test_No      : in  integer,
                    The_Test     : in  string,
                    Returning_No : in  integer);
    pragma event_number (2);

    event From_State (Test_No : in  integer);
    pragma event_number (3);

    event Check_Attributes (Test_No    : in  integer,
                            Which_Test : in  string);
    pragma event_number (4);

    event Check_ASL_In_State (Test_No     : in  integer,
                              Input_Param : in  integer);
    pragma event_number (5);

    event Check_Lots_Of_Params (Test_No : in  integer,
                                Param_A : in  integer,
                                Param_B : in  integer,
                                Param_C : in  integer,
                                Param_D : in  integer,
                                Param_E : in  integer,
                                Param_F : in  integer,
                                Param_G : in  integer,
                                Param_H : in  integer,
                                Param_I : in  integer,
                                Param_J : in  integer,
                                Param_K : in  integer,
                                Param_L : in  integer,
                                Param_M : in  integer,
                                Param_N : in  integer,
                                Param_O : in  integer,
                                Param_P : in  integer,
                                Param_Q : in  integer,
                                Param_R : in  integer,
                                Param_S : in  integer,
                                Param_T : in  integer,
                                Param_U : in  integer,
                                Param_V : in  integer,
                                Param_W : in  integer,
                                Param_X : in  integer,
                                Param_Y : in  integer,
                                Param_Z : in  integer);
    pragma event_number (6);

    transition is
      Non_Existent (       Check_ASL            => Cannot_Happen,
                           Finished             => Cannot_Happen,
                           From_State           => Cannot_Happen,
                           Check_Attributes     => Cannot_Happen,
                           Check_ASL_In_State   => Cannot_Happen,
                           Check_Lots_Of_Params => Cannot_Happen);
      Idle (               Check_ASL            => Check_ASL,
                           Finished             => Ignore,
                           From_State           => Generate_From_State,
                           Check_Attributes     => Check_Attributes,
                           Check_ASL_In_State   => Check_ASL_In_State,
                           Check_Lots_Of_Params => Lots_Of_Parameters);
      Check_ASL (          Check_ASL            => Ignore,
                           Finished             => Idle,
                           From_State           => Ignore,
                           Check_Attributes     => Ignore,
                           Check_ASL_In_State   => Ignore,
                           Check_Lots_Of_Params => Ignore);
      Generate_From_State (Check_ASL            => Check_ASL,
                           Finished             => Ignore,
                           From_State           => Ignore,
                           Check_Attributes     => Ignore,
                           Check_ASL_In_State   => Ignore,
                           Check_Lots_Of_Params => Ignore);
      Check_Attributes (   Check_ASL            => Ignore,
                           Finished             => Idle,
                           From_State           => Ignore,
                           Check_Attributes     => Ignore,
                           Check_ASL_In_State   => Ignore,
                           Check_Lots_Of_Params => Ignore);
      Check_ASL_In_State ( Check_ASL            => Ignore,
                           Finished             => Idle,
                           From_State           => Ignore,
                           Check_Attributes     => Ignore,
                           Check_ASL_In_State   => Ignore,
                           Check_Lots_Of_Params => Ignore);
      Lots_Of_Parameters ( Check_ASL            => Ignore,
                           Finished             => Idle,
                           From_State           => Ignore,
                           Check_Attributes     => Ignore,
                           Check_ASL_In_State   => Ignore,
                           Check_Lots_Of_Params => Ignore);
    end transition;

  end object;
  pragma id (60);
  pragma key_letter ("objX");

  object Object_Z is

    The_Test_No : integer;

    Int_Att     : integer;

    Real_Att    : real;

    Text_Att    : string;


    state Idle ();
    pragma state_number (1);

    state Add ();
    pragma state_number (2);

    state Check ();
    pragma state_number (3);

    event Start ();
    pragma event_number (1);

    event Finish ();
    pragma event_number (2);

    event Check_Total ();
    pragma event_number (3);

    event Part1 ();
    pragma event_number (4);

    transition is
      Non_Existent (Start       => Cannot_Happen,
                    Finish      => Cannot_Happen,
                    Check_Total => Cannot_Happen,
                    Part1       => Cannot_Happen);
      Idle (        Start       => Add,
                    Finish      => Ignore,
                    Check_Total => Check,
                    Part1       => Ignore);
      Add (         Start       => Ignore,
                    Finish      => Idle,
                    Check_Total => Ignore,
                    Part1       => Ignore);
      Check (       Start       => Ignore,
                    Finish      => Idle,
                    Check_Total => Ignore,
                    Part1       => Ignore);
    end transition;

  end object;
  pragma id (61);
  pragma key_letter ("objZ");

  object Huge_State_Machine is


    state Idle ();
    pragma state_number (1);

    state State_A (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (2);

    state State_B (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (3);

    state State_C (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (4);

    state State_D (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (5);

    state State_E (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (6);

    state State_F (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (7);

    state State_G (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (8);

    state State_H (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (9);

    state State_I (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (10);

    state State_J (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (11);

    state State_K (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (12);

    state State_L (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (13);

    state State_M (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (14);

    state State_N (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (15);

    state State_O (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (16);

    state State_P (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (17);

    state State_Q (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (18);

    state State_R (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (19);

    state StateS (Test_No : in  integer,
                  Count   : in  integer);
    pragma state_number (20);

    state State_T (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (21);

    state State_U (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (22);

    state State_V (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (23);

    state State_W (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (24);

    state State_X (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (25);

    state State_Y (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (26);

    state State_Z (Test_No : in  integer,
                   Count   : in  integer);
    pragma state_number (27);

    event Increment (Test_No : in  integer,
                     Count   : in  integer);
    pragma event_number (1);

    transition is
      Non_Existent (Increment => Cannot_Happen);
      Idle (        Increment => State_A);
      State_A (     Increment => State_B);
      State_B (     Increment => State_C);
      State_C (     Increment => State_D);
      State_D (     Increment => State_E);
      State_E (     Increment => State_F);
      State_F (     Increment => State_G);
      State_G (     Increment => State_H);
      State_H (     Increment => State_I);
      State_I (     Increment => State_J);
      State_J (     Increment => State_K);
      State_K (     Increment => State_L);
      State_L (     Increment => State_M);
      State_M (     Increment => State_N);
      State_N (     Increment => State_O);
      State_O (     Increment => State_P);
      State_P (     Increment => State_Q);
      State_Q (     Increment => State_R);
      State_R (     Increment => StateS);
      StateS (      Increment => State_T);
      State_T (     Increment => State_U);
      State_U (     Increment => State_V);
      State_V (     Increment => State_W);
      State_W (     Increment => State_X);
      State_X (     Increment => State_Y);
      State_Y (     Increment => State_Z);
      State_Z (     Increment => Ignore);
    end transition;

  end object;
  pragma id (62);
  pragma key_letter ("HSM");

  object Check_Parameters is

    CP_ID          : integer;

    Number_Of_Test : integer;


    state Idle (Start_Val  : in  integer,
                Got_To_End : in  boolean);
    pragma state_number (1);

    state StartA (Start_Val : in  integer);
    pragma state_number (2);

    event Start (Start_Val : in  integer);
    pragma event_number (1);

    event Finish (Start_Val  : in  integer,
                  Got_To_End : in  boolean);
    pragma event_number (2);

    transition is
      Non_Existent (Start  => Cannot_Happen,
                    Finish => Cannot_Happen);
      Idle (        Start  => StartA,
                    Finish => Ignore);
      StartA (      Start  => StartA,
                    Finish => Idle);
    end transition;

  end object;
  pragma id (63);
  pragma key_letter ("CP");

  object Priority_A is

    RefA        : integer;

    A_ID        : integer;

    Event_Count : integer;

    Done_It     : boolean;

    Poly_A      : boolean;

    Poly_B      : boolean;


    state Idle (Test_No : in  integer);
    pragma state_number (1);

    state Check_Priority (Test_No : in  integer,
                          Index   : in  integer);
    pragma state_number (2);

    event ST_Start (Test_No : in  integer,
                    Index   : in  integer);
    pragma event_number (1);

    event Finish (Test_No : in  integer);
    pragma event_number (2);

    event StartB (Test_No : in  integer,
                  Index   : in  integer);
    pragma event_number (3);

    transition is
      Non_Existent (  ST_Start => Cannot_Happen,
                      Finish   => Cannot_Happen,
                      StartB   => Cannot_Happen);
      Idle (          ST_Start => Check_Priority,
                      Finish   => Idle,
                      StartB   => Check_Priority);
      Check_Priority (ST_Start => Check_Priority,
                      Finish   => Idle,
                      StartB   => Check_Priority);
    end transition;

  end object;
  pragma id (64);
  pragma key_letter ("PriA");

  object Priority_B is

    B_ID : integer;


    state Idle (Test_No : in  integer);
    pragma state_number (1);

    state Check (Test_No : in  integer,
                 Index   : in  integer);
    pragma state_number (2);

    event Finished (Test_No : in  integer);
    pragma event_number (1);

    event Start (Test_No : in  integer,
                 Index   : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (Priority_A.ST_Start => Cannot_Happen,
                    Priority_A.Finish   => Cannot_Happen,
                    Finished            => Cannot_Happen,
                    Start               => Cannot_Happen,
                    Priority_A.StartB   => Cannot_Happen);
      Idle (        Priority_A.ST_Start => Check,
                    Priority_A.Finish   => Ignore,
                    Finished            => Idle,
                    Start               => Check,
                    Priority_A.StartB   => Ignore);
      Check (       Priority_A.ST_Start => Check,
                    Priority_A.Finish   => Idle,
                    Finished            => Idle,
                    Start               => Check,
                    Priority_A.StartB   => Ignore);
    end transition;

  end object;
  pragma id (65);
  pragma key_letter ("PriB");

  object Check_Delete is

    CDTotal : integer;

    idCD    : integer;


    state Idle (Test_No : in  integer,
                Deleted : in  boolean);
    pragma state_number (1);

    state Check (Test_No : in  integer,
                 Deleted : in  boolean);
    pragma state_number (2);

    event Check (Test_No : in  integer,
                 Deleted : in  boolean);
    pragma event_number (1);

    event Finished (Test_No : in  integer,
                    Deleted : in  boolean);
    pragma event_number (2);

    transition is
      Non_Existent (Check    => Cannot_Happen,
                    Finished => Cannot_Happen);
      Idle (        Check    => Check,
                    Finished => Ignore);
      Check (       Check    => Ignore,
                    Finished => Idle);
    end transition;

  end object;
  pragma id (66);
  pragma key_letter ("objCD");

  object Test_Persistence is

    TPID : integer;


    state Idle ();
    pragma state_number (1);

    state Stage_A (Test_No : in  integer,
                   A_Val   : in  integer);
    pragma state_number (2);

    state Test_Real (Test_No  : in  integer,
                     Real_Val : in  real);
    pragma state_number (4);

    state Test_Text (Test_No    : in  integer,
                     Text_Input : in  string);
    pragma state_number (5);

    event Start_A (Test_No : in  integer,
                   A_Val   : in  integer);
    pragma event_number (1);

    event Start_B (Test_No : in  integer);
    pragma event_number (2);

    event Finished ();
    pragma event_number (3);

    event Pass_Real (Test_No  : in  integer,
                     Real_Val : in  real);
    pragma event_number (4);

    event Pass_IH (Test_No    : in  integer,
                   Pass_Input : in  instance of Test_Persistence);
    pragma event_number (5);

    event Pass_Text (Test_No    : in  integer,
                     Text_Input : in  string);
    pragma event_number (6);

    transition is
      Non_Existent (Start_A   => Cannot_Happen,
                    Start_B   => Cannot_Happen,
                    Finished  => Cannot_Happen,
                    Pass_Real => Cannot_Happen,
                    Pass_IH   => Cannot_Happen,
                    Pass_Text => Cannot_Happen);
      Idle (        Start_A   => Stage_A,
                    Start_B   => Ignore,
                    Finished  => Ignore,
                    Pass_Real => Test_Real,
                    Pass_IH   => Ignore,
                    Pass_Text => Test_Text);
      Stage_A (     Start_A   => Ignore,
                    Start_B   => Ignore,
                    Finished  => Idle,
                    Pass_Real => Ignore,
                    Pass_IH   => Ignore,
                    Pass_Text => Ignore);
      Test_Real (   Start_A   => Ignore,
                    Start_B   => Ignore,
                    Finished  => Idle,
                    Pass_Real => Ignore,
                    Pass_IH   => Ignore,
                    Pass_Text => Ignore);
      Test_Text (   Start_A   => Ignore,
                    Start_B   => Ignore,
                    Finished  => Idle,
                    Pass_Real => Ignore,
                    Pass_IH   => Ignore,
                    Pass_Text => Ignore);
    end transition;

  end object;
  pragma id (67);
  pragma key_letter ("objTP");

  object Test_Effects is

    ID     : integer;

    Result : integer;


    state Idle (Test_No     : in  integer,
                Effect_Type : in  string);
    pragma state_number (1);

    state Gen_Ignore_Event (Test_No : in  integer);
    pragma state_number (2);

    state Update_Result (Test_No     : in  integer,
                         Effect_Type : in  string);
    pragma state_number (3);

    state Check_Ignore_State (Test_No : in  integer);
    pragma state_number (4);

    state Gen_Cannot_Happen_Event (Test_No : in  integer);
    pragma state_number (5);

    state Check_Cannot_Happen_State (Test_No : in  integer);
    pragma state_number (6);

    state Unsupported (Test_No     : in  integer,
                       The_Reqid   : in  string,
                       Effect_Type : in  string);
    pragma state_number (7);

    state Gen_Indefined_Event (Test_No : in  integer);
    pragma state_number (8);

    event Gen_Ignore (Test_No : in  integer);
    pragma event_number (1);

    event Check_Ignore_State (Test_No : in  integer);
    pragma event_number (2);

    event Finish (Test_No     : in  integer,
                  Effect_Type : in  string);
    pragma event_number (3);

    event Gen_Cannot_Happen (Test_No : in  integer);
    pragma event_number (4);

    event Check_CH_State (Test_No : in  integer);
    pragma event_number (5);

    event Gen_To_Unsupported (Test_No     : in  integer,
                              The_Reqid   : in  string,
                              Effect_Type : in  string);
    pragma event_number (6);

    event Gen_To_Undefined (Test_No : in  integer);
    pragma event_number (7);

    transition is
      Non_Existent (             Gen_Ignore         => Cannot_Happen,
                                 Finish             => Cannot_Happen,
                                 Check_Ignore_State => Cannot_Happen,
                                 Gen_Cannot_Happen  => Cannot_Happen,
                                 Check_CH_State     => Cannot_Happen,
                                 Gen_To_Unsupported => Cannot_Happen,
                                 Gen_To_Undefined   => Cannot_Happen);
      Idle (                     Gen_Ignore         => Gen_Ignore_Event,
                                 Finish             => Ignore,
                                 Check_Ignore_State => Check_Ignore_State,
                                 Gen_Cannot_Happen  => Gen_Cannot_Happen_Event,
                                 Check_CH_State     => Check_Cannot_Happen_State,
                                 Gen_To_Unsupported => Unsupported,
                                 Gen_To_Undefined   => Gen_Indefined_Event);
      Gen_Ignore_Event (         Gen_Ignore         => Ignore,
                                 Finish             => Update_Result,
                                 Check_Ignore_State => Cannot_Happen,
                                 Gen_Cannot_Happen  => Ignore,
                                 Check_CH_State     => Ignore,
                                 Gen_To_Unsupported => Ignore,
                                 Gen_To_Undefined   => Ignore);
      Update_Result (            Gen_Ignore         => Cannot_Happen,
                                 Finish             => Cannot_Happen,
                                 Check_Ignore_State => Cannot_Happen,
                                 Gen_Cannot_Happen  => Ignore,
                                 Check_CH_State     => Ignore,
                                 Gen_To_Unsupported => Ignore,
                                 Gen_To_Undefined   => Ignore);
      Check_Ignore_State (       Gen_Ignore         => Ignore,
                                 Finish             => Cannot_Happen,
                                 Check_Ignore_State => Cannot_Happen,
                                 Gen_Cannot_Happen  => Ignore,
                                 Check_CH_State     => Ignore,
                                 Gen_To_Unsupported => Ignore,
                                 Gen_To_Undefined   => Ignore);
      Gen_Cannot_Happen_Event (  Gen_Ignore         => Ignore,
                                 Check_Ignore_State => Ignore,
                                 Finish             => Update_Result,
                                 Gen_Cannot_Happen  => Cannot_Happen,
                                 Check_CH_State     => Ignore,
                                 Gen_To_Unsupported => Ignore,
                                 Gen_To_Undefined   => Ignore);
      Check_Cannot_Happen_State (Gen_Ignore         => Ignore,
                                 Check_Ignore_State => Ignore,
                                 Finish             => Ignore,
                                 Gen_Cannot_Happen  => Cannot_Happen,
                                 Check_CH_State     => Ignore,
                                 Gen_To_Unsupported => Ignore,
                                 Gen_To_Undefined   => Ignore);
      Unsupported (              Gen_Ignore         => Ignore,
                                 Check_Ignore_State => Ignore,
                                 Finish             => Idle,
                                 Gen_Cannot_Happen  => Ignore,
                                 Check_CH_State     => Ignore,
                                 Gen_To_Unsupported => Ignore,
                                 Gen_To_Undefined   => Ignore);
      Gen_Indefined_Event (      Gen_Ignore         => Ignore,
                                 Check_Ignore_State => Ignore,
                                 Finish             => Update_Result,
                                 Gen_Cannot_Happen  => Ignore,
                                 Check_CH_State     => Ignore,
                                 Gen_To_Unsupported => Ignore,
                                 Gen_To_Undefined   => Ignore);
    end transition;

  end object;
  pragma id (69);
  pragma key_letter ("TE");

  object Check_Current_States is


    state Check (Test_No    : in  integer,
                 Which_Test : in  string);
    pragma state_number (2);

    event Start (Test_No    : in  integer,
                 Which_Test : in  string);
    pragma event_number (1);

    transition is
      Non_Existent (Start => Cannot_Happen);
      Check (       Start => Check);
    end transition;

  end object;
  pragma id (70);
  pragma key_letter ("CCS");

  object Object_F is

    ReferenceD     : preferred referential (R5.ReferenceD) integer;

    ReferenceF     : integer;

    ResultA        : integer;

    Report_Test_No : integer;


    state Idle (Test_Number : in  integer);
    pragma state_number (1);

    //! 
    //! Proves that an event received by the supertype is polymorphically
    //! delivered to the second subtype.
    state Subtype_object (Test        : in  integer,
                          Test_Number : in  integer);
    pragma state_number (2);

    event Finished (Test_Number : in  integer);
    pragma event_number (1);

    event StartB (Test        : in  integer,
                  Test_Number : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (  Object_D.ST_Finished => Cannot_Happen,
                      Object_D.StartA      => Cannot_Happen,
                      Object_D.Fault       => Cannot_Happen,
                      Finished             => Cannot_Happen,
                      StartB               => Cannot_Happen,
                      Object_D.StartC      => Cannot_Happen);
      Idle (          Object_D.ST_Finished => Ignore,
                      Object_D.StartA      => Subtype_object,
                      Object_D.Fault       => Cannot_Happen,
                      Finished             => Cannot_Happen,
                      StartB               => Subtype_object,
                      Object_D.StartC      => Ignore);
      Subtype_object (Object_D.ST_Finished => Ignore,
                      Object_D.StartA      => Cannot_Happen,
                      Object_D.Fault       => Cannot_Happen,
                      Finished             => Idle,
                      StartB               => Cannot_Happen,
                      Object_D.StartC      => Ignore);
    end transition;

  end object;
  pragma id (6);
  pragma key_letter ("objF");

  object SubD is

    idA          : preferred referential (R14.idA) integer;

    Value_To_Add : integer;


    state Idle ();
    pragma state_number (1);

    //! Add the value specified in the attribute to the supertype
    //! ResultA attribute.
    state Update (Test : in  integer);
    pragma state_number (2);

    transition is
      Non_Existent (SuperA.StartA         => Cannot_Happen,
                    SuperA.Verify_Test    => Cannot_Happen,
                    SuperA.Fault          => Cannot_Happen,
                    SuperA.Finished       => Cannot_Happen,
                    SuperA.Creation_Event => Cannot_Happen,
                    SuperA.Polymorphic    => Cannot_Happen);
      Idle (        SuperA.StartA         => Ignore,
                    SuperA.Verify_Test    => Ignore,
                    SuperA.Fault          => Ignore,
                    SuperA.Finished       => Ignore,
                    SuperA.Creation_Event => Ignore,
                    SuperA.Polymorphic    => Update);
      Update (      SuperA.StartA         => Ignore,
                    SuperA.Verify_Test    => Ignore,
                    SuperA.Fault          => Ignore,
                    SuperA.Finished       => Ignore,
                    SuperA.Creation_Event => Ignore,
                    SuperA.Polymorphic    => Ignore);
    end transition;

  end object;
  pragma id (7);
  pragma key_letter ("sbD");

  object SubA is

    idA          : preferred referential (R13.idA) integer;

    Value_To_Add : integer;


    state Idle ();
    pragma state_number (1);

    //! Add the value specified in the attribute to the supertype
    //! attribute ResultA.
    state Update (Test : in  integer);
    pragma state_number (2);

    transition is
      Non_Existent (SuperA.StartA         => Cannot_Happen,
                    SuperA.Verify_Test    => Cannot_Happen,
                    SuperA.Fault          => Cannot_Happen,
                    SuperA.Finished       => Cannot_Happen,
                    SuperA.Creation_Event => Cannot_Happen,
                    SuperA.Polymorphic    => Cannot_Happen);
      Idle (        SuperA.StartA         => Ignore,
                    SuperA.Verify_Test    => Ignore,
                    SuperA.Fault          => Ignore,
                    SuperA.Finished       => Ignore,
                    SuperA.Creation_Event => Ignore,
                    SuperA.Polymorphic    => Update);
      Update (      SuperA.StartA         => Ignore,
                    SuperA.Verify_Test    => Ignore,
                    SuperA.Fault          => Ignore,
                    SuperA.Finished       => Ignore,
                    SuperA.Creation_Event => Ignore,
                    SuperA.Polymorphic    => Ignore);
    end transition;

  end object;
  pragma id (8);
  pragma key_letter ("sbA");

  object SubE is

    idA          : preferred referential (R6.idA) integer;

    Value_To_Add : integer;


    state Idle ();
    pragma state_number (1);

    state Update (Test : in  integer);
    pragma state_number (2);

    transition is
      Non_Existent (SuperA.StartA         => Cannot_Happen,
                    SuperA.Verify_Test    => Cannot_Happen,
                    SuperA.Fault          => Cannot_Happen,
                    SuperA.Finished       => Cannot_Happen,
                    SuperA.Creation_Event => Cannot_Happen,
                    SuperA.Polymorphic    => Cannot_Happen);
      Idle (        SuperA.StartA         => Ignore,
                    SuperA.Verify_Test    => Ignore,
                    SuperA.Fault          => Ignore,
                    SuperA.Finished       => Ignore,
                    SuperA.Creation_Event => Ignore,
                    SuperA.Polymorphic    => Update);
      Update (      SuperA.StartA         => Ignore,
                    SuperA.Verify_Test    => Ignore,
                    SuperA.Fault          => Ignore,
                    SuperA.Finished       => Ignore,
                    SuperA.Creation_Event => Ignore,
                    SuperA.Polymorphic    => Ignore);
    end transition;

  end object;
  pragma id (14);
  pragma key_letter ("sbE");

  object SubF is

    idA          : preferred referential (R6.idA) integer;

    Value_To_Add : integer;


    state Idle ();
    pragma state_number (1);

    state Update (Test : in  integer);
    pragma state_number (2);

    transition is
      Non_Existent (SuperA.StartA         => Cannot_Happen,
                    SuperA.Verify_Test    => Cannot_Happen,
                    SuperA.Fault          => Cannot_Happen,
                    SuperA.Finished       => Cannot_Happen,
                    SuperA.Creation_Event => Cannot_Happen,
                    SuperA.Polymorphic    => Cannot_Happen);
      Idle (        SuperA.StartA         => Ignore,
                    SuperA.Verify_Test    => Ignore,
                    SuperA.Fault          => Ignore,
                    SuperA.Finished       => Ignore,
                    SuperA.Creation_Event => Ignore,
                    SuperA.Polymorphic    => Update);
      Update (      SuperA.StartA         => Ignore,
                    SuperA.Verify_Test    => Ignore,
                    SuperA.Fault          => Ignore,
                    SuperA.Finished       => Ignore,
                    SuperA.Creation_Event => Ignore,
                    SuperA.Polymorphic    => Ignore);
    end transition;

  end object;
  pragma id (15);
  pragma key_letter ("sbF");

end domain;
pragma number (7);
pragma name ("Events");
pragma kl ("Events");
pragma version (23);

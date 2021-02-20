//! Bodges? We don need no stinkin bodges!
domain TAGS is
  object An_Active_Object;
  object A_Passive_Static_Object;
  object A_Passive_Array_Of_One_Object;
  object Report_Data;
  object Check_On_Active_Object;
  object Test_Data;
  object An_Active_Array_Of_One_Object;
  object An_Active_Array_Of_Three_Objects;
  object A_Passive_Array_Of_Three_Objects;
  object Single_Tagged_Object;
  object Many_Tagged_Objects;
  object Active_Tagged_Single_Object;
  object Active_Tagged_Many_Objects;
  object Tagged_Many_Left;
  object Tagged_Many_Right;
  object Tagged_Single_Assoc;
  object Tagged_Many_Supertype;
  object Subtype_1;
  object Subtype_2;
  object Singleton_Glitch_Recovery;
  object Multiplicity_Glitch_Recovery;
  object Active_Tagged_Many_Left;
  object Active_Tagged_Many_Right;
  object Active_Tagged_Single_Assoc;
  object Active_Tagged_Supertype;
  object Active_Tagged_Subtype_One;
  object Active_Tagged_Subtype_Two;
  object Active_Tagged_Subtype_Three;
  object Multiplicity_Single_Glitch_Recovery_Object;
  object A_Static_Object;
  object A_Single_Static_Object;
  object A_Multiple_Static_Object;
  object Just_Multiple;

  //! a tagged integer with range 1 to 100
  private type A_Tagged_Integer_Type is integer; pragma type_range(1,100);

  //! @@TAGS-01-0009
  private type Environment_Type is enum (WACA,
                                         ISIM);

  public service Perform_Unique_Passive_Singleton_Object_Tests (Test                 : in  integer,
                                                                Returned_Test_Number : out integer);
  pragma domain_operation_number (1);

  public service Create_Report_Data ();
  pragma domain_operation_number (2);

  public service Delete_Report_Domain ();
  pragma domain_operation_number (3);

  public service Perform_Passive_Singleton_Object_Tests (Test                 : in  integer,
                                                         Returned_Test_Number : out integer);
  pragma domain_operation_number (4);

  //! Test requirement Tag
  //! @@TAGS-01-0001
  public service Report_Now (Test_Number     : in  integer,
                             Testing_For     : in  string,
                             Failure         : in  integer,
                             It_Is_Supported : in  boolean);
  pragma domain_operation_number (5);

  //! C insert to set attribute for I-SIM
  //! operation
  public service Set_Environment (Input_Test_Data  : in  instance of Test_Data,
                                  Output_Test_Data : out instance of Test_Data);
  pragma domain_operation_number (6);

  public service Perform_Passive_Array_of_3_Objects_Tests (Start_Test_Number : in  integer,
                                                           Supported         : in  boolean,
                                                           Final_Test_Number : out integer);
  pragma domain_operation_number (7);

  public service Perform_Passive_Array_of_1_Object_Tests (Start_Test_Number : in  integer,
                                                          Supported         : in  boolean,
                                                          Final_Test_Number : out integer);
  pragma domain_operation_number (8);

  public service Perform_One_To_Many_Tests ();
  pragma domain_operation_number (9);

  public service Perform_Active_One_To_Many_Tests ();
  pragma domain_operation_number (10);

  public service Perform_Passive_Many_To_Many_Tests ();
  pragma domain_operation_number (11);

  public service Perform_Passive_Super_Sub_Tests ();
  pragma domain_operation_number (12);

  public service Perform_Active_Many_To_Many_Tests ();
  pragma domain_operation_number (13);

  public service Perform_Active_Super_Sub_Tests ();
  pragma domain_operation_number (14);

  public service Perform_Static_Tests ();
  pragma domain_operation_number (15);

  terminator Tagged_Terminator is
    //! This is a tagged terminitor in an untagged terminator group.
    public service A_Tagged_Local_Terminator (Incoming_Parameter_1 : in  integer,
                                              Outgoing_Parameter_1 : out integer); pragma hand_coded ("1");
    pragma terminator_operation_number(1);

    public service A_Tagged_Project_Terminator (Incoming_Parameter_3 : in  integer,
                                                Outgoing_Parameter_3 : out integer); pragma hand_coded ("1");
    pragma terminator_operation_number(3);

    //! Dummy tagged terminator with odd param names to get around possible I-SIM error
    public service A_Tagged_Dummy_Terminator_One (Mickey_Mouse_Input_One  : in  integer,
                                                  Minnie_Mouse_Output_One : out integer); pragma hand_coded ("");
    pragma terminator_operation_number(2);

    public service A_Tagged_Dummy_Terminator_Two (Input_Two  : in  integer,
                                                  Output_Two : out integer); pragma hand_coded ("");
    pragma terminator_operation_number(4);

  end terminator;
  pragma key_letter ("TT");
  pragma hand_coded ("");


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

    public service Domain_Test_Finished (This_Domain_Name   : in  string,
                                         This_Domain_Number : in  integer);
    pragma terminator_operation_number(7);

    public service Specify_Requid (Requid_Test_Number : in  integer,
                                   The_Requid_Itself  : in  string);
    pragma terminator_operation_number(8);

  end terminator;
  pragma key_letter ("RPT");


  terminator Env_Terminator is
    //! @@TAGS-01-0007
    public service Env_String (Env_Text : out string);
    pragma terminator_operation_number(1);

    public service Env_Number (Env_Integer : out integer);
    pragma terminator_operation_number(2);

  end terminator;
  pragma key_letter ("ET");


  terminator Untagged_Terminator is
    public service An_Untagged_Local_Terminator (Incoming_Parameter_2 : in  integer,
                                                 Outgoing_Parameter_2 : out integer);
    pragma terminator_operation_number(1);

    public service An_Untagged_Project_Terminator (Incoming_Parameter_4 : in  integer,
                                                   Outgoing_Parameter_4 : out integer);
    pragma terminator_operation_number(2);

    public service Untagged_Operational_Terminator ();
    pragma terminator_operation_number(3);

  end terminator;
  pragma key_letter ("UT");


  //! Start_TAGGED_Tests
  private service Start_TAGGED_Tests (); pragma scenario (1);

  //! Perform_Passive_Static_Tests
  private service Perform_Passive_Static_Tests (); pragma scenario (2);

  //! Perform_Active_Object_Tests
  private service Perform_Active_Object_Tests (); pragma scenario (3);

  //! Perform_Passive_Array_Tests
  private service Perform_Passive_Array_Tests (); pragma scenario (4);

  //! Finish_TAGGED_Tests
  private service Finish_TAGGED_Tests (); pragma scenario (5);

  //! Perform_Active_Array_Tests
  private service Perform_Active_Array_Tests (); pragma scenario (6);

  //! Perform_Single_To_Many_Navigations
  private service Perform_Single_To_Many_Navigations (); pragma scenario (7);

  //! Perform_Terminator_Tag_Tests
  private service Perform_Terminator_Tag_Tests (); pragma scenario (8);

  //! Perform_Glitch_Recovery_Tests
  private service Perform_Glitch_Recovery_Tests (); pragma scenario (9);

  //! Perform_Many_To_Many_Navigations
  private service Perform_Many_To_Many_Navigations (); pragma scenario (10);

  //! Perform_Super_Sub_Tests
  private service Perform_Super_Sub_Tests (); pragma scenario (11);

  //! Perform_Static_Tests
  private service Perform_Static_Tests (); pragma scenario (12);

  //! @@TAGS-01-0010
  relationship R1 is Single_Tagged_Object unconditionally has many Many_Tagged_Objects,
                     Many_Tagged_Objects unconditionally has one Single_Tagged_Object;
 pragma Class_A ("Single_Tagged_Object");
 pragma Class_B ("Many_Tagged_Objects");

  relationship R2 is Active_Tagged_Single_Object unconditionally has many Active_Tagged_Many_Objects,
                     Active_Tagged_Many_Objects unconditionally has one Active_Tagged_Single_Object;
 pragma Class_A ("Active_Tagged_Single_Object");
 pragma Class_B ("Active_Tagged_Many_Objects");

  //! @@TAGS-01-0011
  relationship R3 is Tagged_Many_Left unconditionally has many Tagged_Many_Right,
                     Tagged_Many_Right unconditionally has many Tagged_Many_Left
                     using Tagged_Single_Assoc;
 pragma Class_A ("Tagged_Many_Left");
 pragma Class_B ("Tagged_Many_Right");

  relationship R5 is Active_Tagged_Many_Left unconditionally has many Active_Tagged_Many_Right,
                     Active_Tagged_Many_Right unconditionally has many Active_Tagged_Many_Left
                     using Active_Tagged_Single_Assoc;
 pragma Class_A ("Active_Tagged_Many_Left");
 pragma Class_B ("Active_Tagged_Many_Right");

  relationship R4 is Tagged_Many_Supertype is_a (Subtype_2,
                                                 Subtype_1);

  relationship R6 is Active_Tagged_Supertype is_a (Active_Tagged_Subtype_Three,
                                                   Active_Tagged_Subtype_Two,
                                                   Active_Tagged_Subtype_One);

  object An_Active_Object is

    Unique_Identifier : preferred integer;

    Result            : integer;


    state Idle ();
    pragma state_number (1);

    state Act (Value_To_Add : in  integer);
    pragma state_number (2);

    //! This state shall show that a tagged active instance can 
    //! arrive at this state, and this should therefore prevent 
    //! another instance of this object being created until it 
    //! is deleted, or by being forced into the Expire state.
    state Exterminate ();
    pragma state_number (3);

    //! This state shall delete this instance on the active object.
    //! The purpose of this is to prove that a tagged active object
    //! can be deleted by itself, and so can then be recreated
    //! later.
    terminal state Expire ();
    pragma state_number (4);

    event Start_Your_Engines (Value_To_Add : in  integer);
    pragma event_number (1);

    event Switch_Off ();
    pragma event_number (2);

    event Floor_It ();
    pragma event_number (3);

    event Crash_It ();
    pragma event_number (4);

    transition is
      Non_Existent (Start_Your_Engines => Cannot_Happen,
                    Switch_Off         => Cannot_Happen,
                    Floor_It           => Cannot_Happen,
                    Crash_It           => Cannot_Happen);
      Idle (        Start_Your_Engines => Act,
                    Switch_Off         => Ignore,
                    Floor_It           => Ignore,
                    Crash_It           => Ignore);
      Act (         Start_Your_Engines => Ignore,
                    Switch_Off         => Idle,
                    Floor_It           => Exterminate,
                    Crash_It           => Expire);
      Exterminate ( Start_Your_Engines => Ignore,
                    Switch_Off         => Ignore,
                    Floor_It           => Ignore,
                    Crash_It           => Expire);
      Expire (      Start_Your_Engines => Cannot_Happen,
                    Switch_Off         => Cannot_Happen,
                    Floor_It           => Cannot_Happen,
                    Crash_It           => Cannot_Happen);
    end transition;

  end object;
  pragma id (2);
  pragma key_letter ("AAO");
  pragma singleton ("2");

  object A_Passive_Static_Object is

    Unique_Identifier : preferred integer;

    Size              : integer;


  end object;
  pragma id (3);
  pragma key_letter ("APSO");
  pragma singleton ("1");

  object A_Passive_Array_Of_One_Object is

    Unique_Identifier : preferred integer;


  end object;
  pragma id (4);
  pragma key_letter ("APAOOO");
  pragma multiple ("1");

  object Report_Data is

    Report_Data_Unique_id  : preferred integer;

    Reported_Domain_Number : integer;


  end object;
  pragma id (5);
  pragma key_letter ("RD");

  object Check_On_Active_Object is


    state Idle ();
    pragma state_number (1);

    state Check_State (Test_Number               : in  integer,
                       Active_IH                 : in  instance of An_Active_Object,
                       Testing_For               : in  string,
                       Expected                  : in  integer,
                       Your_Presence_Is_Required : in  boolean,
                       Call_To_Reset             : in  boolean);
    pragma state_number (2);

    state Self_Terminate ();
    pragma state_number (3);

    event Start (Test_Number               : in  integer,
                 Active_IH                 : in  instance of An_Active_Object,
                 Testing_For               : in  string,
                 Expected                  : in  integer,
                 Your_Presence_Is_Required : in  boolean,
                 Call_To_Reset             : in  boolean);
    pragma event_number (1);

    event Finish ();
    pragma event_number (2);

    event Reset ();
    pragma event_number (3);

    transition is
      Non_Existent (  Start  => Cannot_Happen,
                      Finish => Cannot_Happen,
                      Reset  => Cannot_Happen);
      Idle (          Start  => Check_State,
                      Finish => Ignore,
                      Reset  => Ignore);
      Check_State (   Start  => Ignore,
                      Finish => Self_Terminate,
                      Reset  => Idle);
      Self_Terminate (Start  => Ignore,
                      Finish => Ignore,
                      Reset  => Ignore);
    end transition;

  end object;
  pragma id (6);
  pragma key_letter ("CHECK");

  object Test_Data is

    Number      : integer;

    //! Defines the operational environment.
    Environment : Environment_Type;


    public service Call_Tagged_Terminators (Two_Tags_Result : out boolean);
    pragma operation_number (1);

    state Idle ();
    pragma state_number (1);

    terminal state Tests_Complete ();
    pragma state_number (2);

    event Tests_Are_Over ();
    pragma event_number (1);

    transition is
      Non_Existent (  Tests_Are_Over => Cannot_Happen);
      Idle (          Tests_Are_Over => Tests_Complete);
      Tests_Complete (Tests_Are_Over => Cannot_Happen);
    end transition;

  end object;
  pragma id (7);
  pragma key_letter ("TD");

  object An_Active_Array_Of_One_Object is

    Unique_Identifier : preferred integer;

    Result            : integer;


    //! @@TAGS-01-0004
    public service Do_Active_Single_Array_Tests ();
    pragma operation_number (1);

    state Idle (Final_Value : in  integer,
                Test_Number : in  integer,
                Purpose     : in  string,
                Tell_Tales  : in  boolean);
    pragma state_number (1);

    state Do_Something (Test_Number     : in  integer,
                        Add             : in  integer,
                        Purpose         : in  string,
                        Expected_Result : in  integer);
    pragma state_number (2);

    state Delete_Self ();
    pragma state_number (3);

    state Do_Some_More_Tests ();
    pragma state_number (4);

    event Start (Test_Number     : in  integer,
                 Add             : in  integer,
                 Purpose         : in  string,
                 Expected_Result : in  integer);
    pragma event_number (1);

    event Finish (Final_Value : in  integer,
                  Test_Number : in  integer,
                  Purpose     : in  string,
                  Tell_Tales  : in  boolean);
    pragma event_number (2);

    event Lets_Test ();
    pragma event_number (3);

    event Phoenix ();
    pragma event_number (4);

    transition is
      Non_Existent (      Start     => Cannot_Happen,
                          Finish    => Cannot_Happen,
                          Lets_Test => Cannot_Happen,
                          Phoenix   => Cannot_Happen);
      Idle (              Start     => Do_Something,
                          Finish    => Cannot_Happen,
                          Lets_Test => Do_Some_More_Tests,
                          Phoenix   => Delete_Self);
      Do_Something (      Start     => Cannot_Happen,
                          Finish    => Idle,
                          Lets_Test => Cannot_Happen,
                          Phoenix   => Cannot_Happen);
      Delete_Self (       Start     => Cannot_Happen,
                          Finish    => Cannot_Happen,
                          Lets_Test => Cannot_Happen,
                          Phoenix   => Cannot_Happen);
      Do_Some_More_Tests (Start     => Cannot_Happen,
                          Finish    => Idle,
                          Lets_Test => Cannot_Happen,
                          Phoenix   => Cannot_Happen);
    end transition;

  end object;
  pragma id (8);
  pragma key_letter ("AAAOOO");
  pragma multiple ("1");

  object An_Active_Array_Of_Three_Objects is

    Unique_Identifier : preferred integer;

    Result            : integer;


    public service Do_Active_Many_Array_Tests ();
    pragma operation_number (1);

    state Idle (Final_Value : in  integer,
                Test_Number : in  integer,
                Purpose     : in  string,
                Tell_Tales  : in  boolean);
    pragma state_number (1);

    state Do_Something (Test_Number     : in  integer,
                        Add             : in  integer,
                        Purpose         : in  string,
                        Expected_Result : in  integer);
    pragma state_number (2);

    state Delete_One_Self ();
    pragma state_number (3);

    state More_Tests ();
    pragma state_number (4);

    event Start (Test_Number     : in  integer,
                 Add             : in  integer,
                 Purpose         : in  string,
                 Expected_Result : in  integer);
    pragma event_number (1);

    //! @@TAGS-01-0006
    event Finish (Final_Value : in  integer,
                  Test_Number : in  integer,
                  Purpose     : in  string,
                  Tell_Tales  : in  boolean);
    pragma event_number (2);

    event Phoenix ();
    pragma event_number (3);

    event Do_More ();
    pragma event_number (4);

    transition is
      Non_Existent (   Start   => Cannot_Happen,
                       Finish  => Cannot_Happen,
                       Phoenix => Cannot_Happen,
                       Do_More => Cannot_Happen);
      Idle (           Start   => Do_Something,
                       Finish  => Cannot_Happen,
                       Phoenix => Delete_One_Self,
                       Do_More => More_Tests);
      Do_Something (   Start   => Cannot_Happen,
                       Finish  => Idle,
                       Phoenix => Cannot_Happen,
                       Do_More => Cannot_Happen);
      Delete_One_Self (Start   => Cannot_Happen,
                       Finish  => Cannot_Happen,
                       Phoenix => Cannot_Happen,
                       Do_More => Cannot_Happen);
      More_Tests (     Start   => Cannot_Happen,
                       Finish  => Idle,
                       Phoenix => Cannot_Happen,
                       Do_More => Cannot_Happen);
    end transition;

  end object;
  pragma id (9);
  pragma key_letter ("AAAOTO");
  pragma multiple ("3");

  object A_Passive_Array_Of_Three_Objects is

    Unique_Identifier : preferred integer;


  end object;
  pragma id (10);
  pragma key_letter ("APAOTO");
  pragma multiple ("3");

  object Single_Tagged_Object is

    Unique_Identifier : preferred integer;

    Attribute_One     : integer;


  end object;
  pragma id (11);
  pragma key_letter ("STO");
  pragma singleton ("1");

  object Many_Tagged_Objects is

    Other_Unique_Identifier : preferred integer;

    Unique_Identifier       : referential (R1.has.Single_Tagged_Object.Unique_Identifier) integer;

    Attribute_Two           : integer;


  end object;
  pragma id (12);
  pragma key_letter ("MTO");
  pragma multiple ("3");

  object Active_Tagged_Single_Object is

    Unique_Identifier : preferred integer;

    Attribute_One     : integer;


    state Idle ();
    pragma state_number (1);

    state State_1 (The_Test_No : in  integer);
    pragma state_number (2);

    event Run (The_Test_No : in  integer);
    pragma event_number (1);

    transition is
      Non_Existent (Run => Cannot_Happen);
      Idle (        Run => State_1);
      State_1 (     Run => Ignore);
    end transition;

  end object;
  pragma id (13);
  pragma key_letter ("ATSO");
  pragma singleton ("");

  object Active_Tagged_Many_Objects is

    Unique_Identifier       : referential (R2.has.Active_Tagged_Single_Object.Unique_Identifier) integer;

    Other_Unique_Identifier : preferred integer;

    Attribute_Two           : integer;


    state Idle ();
    pragma state_number (1);

    state State_One (ATMO_Test_No : in  integer);
    pragma state_number (2);

    event Go (ATMO_Test_No : in  integer);
    pragma event_number (1);

    transition is
      Non_Existent (Go => Cannot_Happen);
      Idle (        Go => State_One);
      State_One (   Go => Ignore);
    end transition;

  end object;
  pragma id (14);
  pragma key_letter ("ATMO");
  pragma multiple ("3");

  object Tagged_Many_Left is

    Unique_Identifier : preferred integer;

    Attribute_One     : integer;


  end object;
  pragma id (15);
  pragma key_letter ("TM_LEFT");
  pragma multiple ("3");

  object Tagged_Many_Right is

    Other_Unique_Identifier : preferred integer;

    Attribute_Two           : integer;


  end object;
  pragma id (16);
  pragma key_letter ("TM_RIGHT");
  pragma multiple ("3");

  object Tagged_Single_Assoc is

    Assoc_Unique_Identifier : integer;

    Unique_Identifier       : preferred referential (R3.has.Tagged_Many_Left.Unique_Identifier) integer;

    Other_Unique_Identifier : preferred referential (R3.has.Tagged_Many_Right.Other_Unique_Identifier) integer;

    Attribute_Three         : integer;


  end object;
  pragma id (17);
  pragma key_letter ("TS_ASSOC");
  pragma multiple ("9");

  object Tagged_Many_Supertype is

    Unique_Identifier : preferred integer;

    Supertype_Data    : integer;


  end object;
  pragma id (18);
  pragma key_letter ("TAG_SUPER");
  pragma multiple ("1");

  object Subtype_1 is

    Unique_Identifier : preferred referential (R4.Unique_Identifier) integer;

    Subtype_1_Data    : integer;


  end object;
  pragma id (19);
  pragma key_letter ("SUB_ONE");
  pragma multiple ("2");

  object Subtype_2 is

    Unique_Identifier : preferred referential (R4.Unique_Identifier) integer;

    Subtype_2_Data    : integer;


  end object;
  pragma id (20);
  pragma key_letter ("SUB_TWO");

  //! This object shall define several attributes, each to be stored in non-initialised memory for so called "glitch recovery". This is a singleton object.
  object Singleton_Glitch_Recovery is

    An_Integer  : integer;

    A_Boolean   : boolean;

    A_Real      : real;

    Environment : Environment_Type;


  end object;
  pragma id (21);
  pragma key_letter ("SGR");
  pragma non_initialised ("");
  pragma singleton ("");

  object Multiplicity_Glitch_Recovery is

    An_Integer : integer;


  end object;
  pragma id (22);
  pragma key_letter ("MGR");
  pragma multiple ("3");
  pragma non_initialised ("");

  object Active_Tagged_Many_Left is

    Unique_Identifier : preferred integer;

    Attribute_One     : integer;


    state Idle ();
    pragma state_number (1);

    state Active (ATML_Test_No : in  integer);
    pragma state_number (2);

    event Go (ATML_Test_No : in  integer);
    pragma event_number (1);

    transition is
      Non_Existent (Go => Cannot_Happen);
      Idle (        Go => Active);
      Active (      Go => Cannot_Happen);
    end transition;

  end object;
  pragma id (23);
  pragma key_letter ("ATML");
  pragma multiple ("3");

  object Active_Tagged_Many_Right is

    Other_Unique_Identifier : preferred integer;

    Attribute_Two           : integer;


    state Idle ();
    pragma state_number (1);

    state Under_Power (ATMR_Test_No : in  integer);
    pragma state_number (2);

    event Go (ATMR_Test_No : in  integer);
    pragma event_number (1);

    transition is
      Non_Existent (Go => Cannot_Happen);
      Idle (        Go => Under_Power);
      Under_Power ( Go => Cannot_Happen);
    end transition;

  end object;
  pragma id (24);
  pragma key_letter ("ATMR");
  pragma multiple ("3");

  object Active_Tagged_Single_Assoc is

    Assoc_Unique_Identifier : preferred referential (R5.has.Active_Tagged_Many_Right.Other_Unique_Identifier, R5.has.Active_Tagged_Many_Left.Unique_Identifier) integer;

    Attribute_Three         : integer;


    state Idle ();
    pragma state_number (1);

    state Blast_Off (ATS_ASSOC_Test_No : in  integer);
    pragma state_number (2);

    event Go (ATS_ASSOC_Test_No : in  integer);
    pragma event_number (1);

    transition is
      Non_Existent (Go => Cannot_Happen);
      Idle (        Go => Blast_Off);
      Blast_Off (   Go => Cannot_Happen);
    end transition;

  end object;
  pragma id (25);
  pragma key_letter ("ATSASSOC");
  pragma multiple ("9");

  object Active_Tagged_Supertype is

    Unique_Identifier : preferred integer;

    Supertype_Data    : integer;


    state Idle ();
    pragma state_number (1);

    state Not_Idle ();
    pragma state_number (2);

    event Get_Off_Your_Arse ();
    pragma event_number (1);

    transition is
      Non_Existent (Get_Off_Your_Arse => Cannot_Happen);
      Idle (        Get_Off_Your_Arse => Not_Idle);
      Not_Idle (    Get_Off_Your_Arse => Ignore);
    end transition;

  end object;
  pragma id (26);
  pragma key_letter ("ATSUPER");
  pragma singleton ("");

  object Active_Tagged_Subtype_One is

    Unique_Identifier : preferred referential (R6.Unique_Identifier) integer;

    Subtype_One_Data  : integer;

    Test_No           : integer;


    state Idle ();
    pragma state_number (1);

    state Sub_One_State ();
    pragma state_number (2);

    transition is
      Non_Existent ( Active_Tagged_Supertype.Get_Off_Your_Arse => Cannot_Happen);
      Idle (         Active_Tagged_Supertype.Get_Off_Your_Arse => Sub_One_State);
      Sub_One_State (Active_Tagged_Supertype.Get_Off_Your_Arse => Ignore);
    end transition;

  end object;
  pragma id (27);
  pragma key_letter ("ATSUBONE");
  pragma multiple ("2");

  object Active_Tagged_Subtype_Two is

    Unique_Identifier : preferred referential (R6.Unique_Identifier) integer;

    Subtype_Two_Data  : integer;

    Test_No           : integer;


    state Idle ();
    pragma state_number (1);

    state Sub_Two_State ();
    pragma state_number (2);

    transition is
      Non_Existent ( Active_Tagged_Supertype.Get_Off_Your_Arse => Cannot_Happen);
      Idle (         Active_Tagged_Supertype.Get_Off_Your_Arse => Sub_Two_State);
      Sub_Two_State (Active_Tagged_Supertype.Get_Off_Your_Arse => Ignore);
    end transition;

  end object;
  pragma id (28);
  pragma key_letter ("ATSUBTWO");
  pragma singleton ("");

  object Active_Tagged_Subtype_Three is

    Unique_Identifier  : preferred referential (R6.Unique_Identifier) integer;

    Subtype_Three_Data : integer;

    Test_No            : integer;


    state Idle ();
    pragma state_number (1);

    state Sub_Three_State ();
    pragma state_number (2);

    transition is
      Non_Existent (   Active_Tagged_Supertype.Get_Off_Your_Arse => Cannot_Happen);
      Idle (           Active_Tagged_Supertype.Get_Off_Your_Arse => Sub_Three_State);
      Sub_Three_State (Active_Tagged_Supertype.Get_Off_Your_Arse => Ignore);
    end transition;

  end object;
  pragma id (29);
  pragma key_letter ("ATSUBTHREE");
  pragma multiple ("1");

  object Multiplicity_Single_Glitch_Recovery_Object is

    Attribute_One : integer;

    Attribute_Two : integer;


  end object;
  pragma id (30);
  pragma key_letter ("MSGR");
  pragma multiple ("1");
  pragma non_initialised ("");

  object A_Static_Object is

    //! @@TAGS-V01-0003
    Unique_ID : integer;


  end object;
  pragma id (31);
  pragma key_letter ("ASO");
  pragma static ("");

  object A_Single_Static_Object is

    Unique_ID : integer;


  end object;
  pragma id (32);
  pragma key_letter ("ASSO");
  pragma static ("");
  pragma singleton ("");

  object A_Multiple_Static_Object is

    Unique_ID : integer;


  end object;
  pragma id (33);
  pragma key_letter ("AMSO");
  pragma static ("");
  pragma multiple ("2");

  object Just_Multiple is

    idJM : integer;


  end object;
  pragma id (34);
  pragma key_letter ("JM");
  pragma multiple ("2");

end domain;
pragma number (20);
pragma name ("Tagging");
pragma kl ("TAGS");
pragma version (7);

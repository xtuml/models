//! For use in multiple domain builds
domain DomainA is
  object Object_A;
  object One_To_One_Left_Side;
  object One_To_One_Right_Side;
  object One_To_Many_Left_Side;
  object One_To_Many_Right_Side;
  object Many_To_Many_Left_Side;
  object Many_To_Many_Right_Side;
  object Many_To_Many_Associative;
  object Domain_A_Object_Super;
  object Domain_A_Object_SubA;
  object Domain_A_Object_SubB;
  object Report_Data;
  object Test_Data;

  public type Test_Enum_Type is enum (Sly,
                                      Sandy,
                                      Wes);

  public service Create_Report_Object ();
  pragma domain_operation_number (1);

  public service Delete_Report_Object ();
  pragma domain_operation_number (2);

  public service Check_Enum (The_Input_Value  : in  Test_Enum_Type,
                             The_Return_Value : out integer);
  pragma domain_operation_number (3);

  public service Check_Service_Params (Int_Input         : in  integer,
                                       Real_Input        : in  real,
                                       Text_Input        : in  string,
                                       Bool_Input        : in  boolean,
                                       The_Returning_Val : out integer);
  pragma domain_operation_number (4);

  terminator TerminatorA is
    public service Sync1A (inputA  : in  integer,
                           inputB  : in  integer,
                           Test    : in  integer,
                           outputA : out integer,
                           outputB : out integer);
    pragma terminator_operation_number(1);

    public service Sync2A (inputA  : in  integer,
                           inputB  : in  integer,
                           Test    : in  integer,
                           outputA : out integer,
                           outputB : out integer);
    pragma terminator_operation_number(2);

    public service Sync3A (InputA  : in  integer,
                           InputB  : in  integer,
                           Test    : in  integer,
                           OutputA : out integer,
                           OutputB : out integer);
    pragma terminator_operation_number(3);

    public service Sync4A (InputA  : in  integer,
                           InputB  : in  integer,
                           Test    : in  integer,
                           OutputA : out integer,
                           OutputB : out integer);
    pragma terminator_operation_number(4);

    //! This terminator is project level defined and shall prove that two domains (A & B) can use a locally defined object within a $USE $ENDUSE section, where the local object has the same name in both domains.
    public service Common_Named_Object_Usage (Test_Number_Parameter   : in  integer,
                                              This_Test_Has_Failed    : out boolean,
                                              This_Test_Failure_Value : out integer);
    pragma terminator_operation_number(5);

  end terminator;
  pragma key_letter ("termA");


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

  end terminator;
  pragma key_letter ("RPT");


  //! Bridge that will allow navigation of a relationship in the target domain.
  terminator Navigate is
    public service Single_Bridge_Navigate (Test : in  integer);
    pragma terminator_operation_number(1);

    public service Shared_Bridge_Navigate (Test : in  integer);
    pragma terminator_operation_number(2);

    public service One_to_One_Navigate (Test : in  integer);
    pragma terminator_operation_number(3);

    public service One_to_Many_Navigate (Test : in  integer);
    pragma terminator_operation_number(4);

    public service Many_to_Many_Navigate (Test : in  integer);
    pragma terminator_operation_number(5);

    //! Use this bridge as a catch-all to
    //! hoover up tests that require
    //! a bridge in one form or another.
    public service Misc_Calls (Test : in  integer);
    pragma terminator_operation_number(6);

    public service Enum_Test (Test       : in  integer,
                              Enum_Input : in  Test_Enum_Type);
    pragma terminator_operation_number(7);

    //! Navigate from Domain to all other Domains
    public service Big_Bridge_Navigation (Test       : in  integer,
                                          Enum_Input : in  Test_Enum_Type);
    pragma terminator_operation_number(8);

    public service Pass_IH (Test   : in  integer,
                            The_IH : in  instance of Object_A);
    pragma terminator_operation_number(9);

    public service Pass_Parameters (The_Int_Input  : in  integer,
                                    The_Real_Input : in  real,
                                    The_Text_Input : in  string,
                                    The_Bool_Input : in  boolean,
                                    The_Result     : out integer);
    pragma terminator_operation_number(10);

  end terminator;
  pragma key_letter ("NAV");


  //! Domain A setup
  private service Domain_A_setup (); pragma scenario (1);

  //! Sync to event
  private service Sync_to_event (); pragma scenario (3);

  //! Sync to sync
  private service Sync_to_sync (); pragma scenario (2);

  //! single bridge test
  private service single_bridge_test (); pragma scenario (4);

  //! shared bridge test
  private service shared_bridge_test (); pragma scenario (5);

  //! one_to_one_navigation
  private service one_to_one_navigation (); pragma scenario (6);

  //! one_to_many_navigation
  private service one_to_many_navigation (); pragma scenario (7);

  //! many_to_many_navigation
  private service many_to_many_navigation (); pragma scenario (8);

  //! invoke misc calls
  private service invoke_misc_calls (); pragma scenario (9);

  //! Start DomainA Tests
  private service Start_DomainA_Tests (); pragma scenario (10);

  //! Finish DomainA Tests
  private service Finish_DomainA_Tests (); pragma scenario (11);

  //! Enumeration Across Bridge Check
  private service Enumeration_Across_Bridge_Check (); pragma scenario (12);

  //! Enumeration_Across_Lots_Of_Bridges
  private service Enumeration_Across_Lots_Of_Bridges (); pragma scenario (13);

  //! Passing IH
  private service Passing_IH (); pragma scenario (14);

  //! Pass_Params
  private service Pass_Params (); pragma scenario (15);

  relationship R1 is One_To_One_Left_Side conditionally has_one one One_To_One_Right_Side,
                     One_To_One_Right_Side conditionally is_one_of one One_To_One_Left_Side;
 pragma Class_A ("One_To_One_Left_Side");
 pragma Class_B ("One_To_One_Right_Side");

  relationship R2 is One_To_Many_Left_Side unconditionally has_many many One_To_Many_Right_Side,
                     One_To_Many_Right_Side unconditionally has_one one One_To_Many_Left_Side;
 pragma Class_A ("One_To_Many_Left_Side");
 pragma Class_B ("One_To_Many_Right_Side");

  relationship R3 is Many_To_Many_Left_Side unconditionally has_many many Many_To_Many_Right_Side,
                     Many_To_Many_Right_Side unconditionally has_many many Many_To_Many_Left_Side
                     using Many_To_Many_Associative;
 pragma Class_A ("Many_To_Many_Left_Side");
 pragma Class_B ("Many_To_Many_Right_Side");

  relationship R4 is Domain_A_Object_Super is_a (Domain_A_Object_SubB,
                                                 Domain_A_Object_SubA);

  //! Object_A is used to invoke the series of tests as specified in the domain mission statement.
  //! 
  //! The tests are invoked through a series of events.
  object Object_A is

    //! Preferred indentifier.
    idA     : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA : integer;


    //! This function invokes an open contract peer to peer bridge implementation.
    public service do_ptp_open ();
    pragma operation_number (1);

    public service do_ptp_closed_blocking ();
    pragma operation_number (2);

    //! Idle state.
    //! No action taken.
    state Idle ();
    pragma state_number (4);

    //! This state verifies a synchronous service in DomainA
    //! can invoke a synchronous service in DomainB and
    //! pass/receive parameters.
    state Sync_service_invocation_to_sync_service (Test : in  integer);
    pragma state_number (5);

    //! This state verifies that a synchronous service in DomainA
    //! can invoke an event in DomainB.
    state Sync_service_invocation_to_event (Test : in  integer);
    pragma state_number (6);

    //! An instance current state is changed to fail
    //! if the test failed.
    state Fail ();
    pragma state_number (9);

    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event StartA (Test : in  integer);
    pragma event_number (3);

    event StartB (Test : in  integer);
    pragma event_number (6);

    transition is
      Non_Existent (                           Fault    => Cannot_Happen,
                                               Finished => Cannot_Happen,
                                               StartA   => Cannot_Happen,
                                               StartB   => Cannot_Happen);
      Idle (                                   Fault    => Cannot_Happen,
                                               Finished => Cannot_Happen,
                                               StartA   => Sync_service_invocation_to_sync_service,
                                               StartB   => Sync_service_invocation_to_event);
      Sync_service_invocation_to_sync_service (Fault    => Fail,
                                               Finished => Idle,
                                               StartA   => Cannot_Happen,
                                               StartB   => Cannot_Happen);
      Sync_service_invocation_to_event (       Fault    => Fail,
                                               Finished => Idle,
                                               StartA   => Cannot_Happen,
                                               StartB   => Cannot_Happen);
      Fail (                                   Fault    => Cannot_Happen,
                                               Finished => Cannot_Happen,
                                               StartA   => Cannot_Happen,
                                               StartB   => Cannot_Happen);
    end transition;

  end object;
  pragma id (2);
  pragma key_letter ("objA");

  object One_To_One_Left_Side is

    otols_id : preferred integer;

    otors_id : referential (R1.has_one.One_To_One_Right_Side.otors_id) integer;


  end object;
  pragma id (3);
  pragma key_letter ("otols");

  object One_To_One_Right_Side is

    otors_id : preferred integer;


  end object;
  pragma id (4);
  pragma key_letter ("otors");

  object One_To_Many_Left_Side is

    otmls_id : preferred integer;


  end object;
  pragma id (5);
  pragma key_letter ("otmls");

  object One_To_Many_Right_Side is

    otmrs_id : preferred integer;

    otmls_id : referential (R2.has_one.One_To_Many_Left_Side.otmls_id) integer;


  end object;
  pragma id (6);
  pragma key_letter ("otmrs");

  object Many_To_Many_Left_Side is

    mtmls_id : preferred integer;


  end object;
  pragma id (7);
  pragma key_letter ("mtmls");

  object Many_To_Many_Right_Side is

    mtmrs_id : preferred integer;


  end object;
  pragma id (8);
  pragma key_letter ("mtmrs");

  object Many_To_Many_Associative is

    mtmls_id  : preferred referential (R3.has_many.Many_To_Many_Left_Side.mtmls_id) integer;

    mtmrs_id  : preferred referential (R3.has_many.Many_To_Many_Right_Side.mtmrs_id) integer;

    mtma_data : integer;


  end object;
  pragma id (9);
  pragma key_letter ("mtma");

  object Domain_A_Object_Super is

    idSUPER : preferred integer;


  end object;
  pragma id (10);
  pragma key_letter ("DOMAIN_A_SUPER");

  object Domain_A_Object_SubA is

    idSUPER        : preferred referential (R4.idSUPER) integer;

    SubA_Attribute : integer;

    A_Text         : string;


  end object;
  pragma id (11);
  pragma key_letter ("DOMAIN_A_SUBA");

  object Domain_A_Object_SubB is

    idSUPER        : preferred referential (R4.idSUPER) integer;

    SubB_Attribute : integer;

    B_Text         : string;


  end object;
  pragma id (12);
  pragma key_letter ("DOMAIN_A_SUBB");

  object Report_Data is

    Report_Data_Unique_id  : preferred integer;

    Reported_Domain_Number : integer;


  end object;
  pragma id (13);
  pragma key_letter ("RD");

  object Test_Data is

    This_Test_Number : integer;


  end object;
  pragma id (14);
  pragma key_letter ("TD");

end domain;
pragma number (4);
pragma name ("DomainA");
pragma kl ("DomainA");
pragma version (12);

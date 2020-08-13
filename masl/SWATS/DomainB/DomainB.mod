//! For use in multiple domain builds.
domain DomainB is
  object Object_C;
  object Object_D;
  object Object_B;
  object Object_CD;
  object Domain_B_Object_Super;
  object Domain_B_Object_SubA;
  object Domain_B_Object_SubB;
  object Report_Data;
  object Test_Data;

  public type Test_Enum_Type is enum (Sly,
                                      Sandy,
                                      Wes);

  //! This synchronous service is invoked by a synchronous service in DomainA.
  public service Sync1B (inputA  : in  integer,
                         inputB  : in  integer,
                         Test    : in  integer,
                         outputA : out integer,
                         outputB : out integer);
  pragma domain_operation_number (1);

  //! This synchronous service is invoked by an event being sent to a terminator in DomainA, thus an 'Event invokes a Sync service in another domain'.
  public service Sync2B (inputA  : in  integer,
                         inputB  : in  integer,
                         Test    : in  integer,
                         outputA : out integer,
                         outputB : out integer);
  pragma domain_operation_number (2);

  //! This synchronous service is invoked by an event from DomainA
  public service Sync3B (inputA  : in  integer,
                         inputB  : in  integer,
                         Test    : in  integer,
                         outputA : out integer,
                         outputB : out integer);
  pragma domain_operation_number (3);

  public service Perform_DomainA_Navigations ();
  pragma domain_operation_number (4);

  public service Create_Report_Data ();
  pragma domain_operation_number (5);

  public service Delete_Report_Data ();
  pragma domain_operation_number (6);

  public service Check_Enum (The_Input_Value  : in  Test_Enum_Type,
                             The_Return_Value : out integer);
  pragma domain_operation_number (7);

  public service Service_Params (Input_Int      : in  integer,
                                 Input_Real     : in  real,
                                 Input_Text     : in  string,
                                 Input_Bool     : in  boolean,
                                 The_Return_Val : out integer);
  pragma domain_operation_number (8);

  terminator TerminatorB is
  end terminator;
  pragma key_letter ("termB");


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


  //! Navigate relationships in domainA
  terminator Navigate is
    public service Navigate_One_to_One (Test : in  integer);
    pragma terminator_operation_number(1);

    public service Navigate_One_to_Many (Test : in  integer);
    pragma terminator_operation_number(2);

    public service Navigate_Many_to_Many (Test : in  integer);
    pragma terminator_operation_number(3);

    public service Misc_Calls (Test : in  integer);
    pragma terminator_operation_number(4);

    public service Enum_Test (Test       : in  integer,
                              Enum_Input : in  Test_Enum_Type);
    pragma terminator_operation_number(5);

  end terminator;
  pragma key_letter ("NAV");


  //! Domain B setup
  private service Domain_B_setup (); pragma scenario (1);

  //! Perform domain B nav tests
  private service Perform_domain_B_nav_tests (); pragma scenario (2);

  //! Start DomainB Tests
  private service Start_DomainB_Tests (); pragma scenario (3);

  //! Finish DomainB Tests
  private service Finish_DomainB_Tests (); pragma scenario (4);

  //! Check_Enumeration_Across_Domain_B
  private service Check_Enumeration_Across_Domain_B (); pragma scenario (5);

  relationship R1 is Object_C conditionally controls many Object_D,
                     Object_D conditionally is_controlled_by many Object_C
                     using Object_CD;
 pragma Class_A ("Object_C");
 pragma Class_B ("Object_D");

  relationship R4 is Domain_B_Object_Super is_a (Domain_B_Object_SubB,
                                                 Domain_B_Object_SubA);

  object Object_C is

    idC      : preferred integer;

    a_number : integer;


  end object;
  pragma id (2);
  pragma key_letter ("objC");

  object Object_D is

    idD      : preferred integer;

    D_Number : integer;


  end object;
  pragma id (3);
  pragma key_letter ("objD");

  object Object_B is

    idB     : preferred integer;

    ResultB : integer;


    //! Idle state.
    //! No action taken.
    state Idle ();
    pragma state_number (1);

    //! This state verifies that it is possible for a synchronous
    //! service in DomainA to invoke an event into DomainB.
    state Sync_service_DomainA_to_an_event_DomainB (paramA : in  integer,
                                                    paramB : in  integer,
                                                    Test   : in  integer);
    pragma state_number (2);

    //! An instance current state is changed to fail
    //! if the test failed and the attribute 'ResultB'
    //! is not updated.
    state Fail ();
    pragma state_number (3);

    event event1_from_DomainA (paramA : in  integer,
                               paramB : in  integer,
                               Test   : in  integer);
    pragma event_number (1);

    event Fault ();
    pragma event_number (2);

    event Finished ();
    pragma event_number (3);

    transition is
      Non_Existent (                            event1_from_DomainA => Cannot_Happen,
                                                Fault               => Cannot_Happen,
                                                Finished            => Cannot_Happen);
      Idle (                                    event1_from_DomainA => Sync_service_DomainA_to_an_event_DomainB,
                                                Fault               => Cannot_Happen,
                                                Finished            => Cannot_Happen);
      Sync_service_DomainA_to_an_event_DomainB (event1_from_DomainA => Cannot_Happen,
                                                Fault               => Fail,
                                                Finished            => Idle);
      Fail (                                    event1_from_DomainA => Cannot_Happen,
                                                Fault               => Cannot_Happen,
                                                Finished            => Cannot_Happen);
    end transition;

  end object;
  pragma id (4);
  pragma key_letter ("objB");

  //! Referential object for many to many relationships Object_C ObjectD
  object Object_CD is

    idC    : preferred referential (R1.is_controlled_by.Object_C.idC) integer;

    idD    : preferred referential (R1.controls.Object_D.idD) integer;

    a_name : string;


  end object;
  pragma id (5);
  pragma key_letter ("objCD");

  object Domain_B_Object_Super is

    idSUPER_B : preferred integer;


  end object;
  pragma id (6);
  pragma key_letter ("DOMAIN_B_SUPER");

  object Domain_B_Object_SubA is

    idSUPER_B      : preferred referential (R4.idSUPER_B) integer;

    SubA_Attribute : integer;

    A_Text         : string;


  end object;
  pragma id (7);
  pragma key_letter ("DOMAIN_B_SUBA");

  object Domain_B_Object_SubB is

    idSUPER_B      : preferred referential (R4.idSUPER_B) integer;

    SubB_Attribute : integer;

    //!           
    B_Text         : string;


  end object;
  pragma id (8);
  pragma key_letter ("DOMAIN_B_SUBB");

  object Report_Data is

    Report_Data_Unique_id  : preferred integer;

    Reported_Domain_Number : integer;


  end object;
  pragma id (9);
  pragma key_letter ("RD");

  object Test_Data is

    This_Test_Number : integer;


  end object;
  pragma id (10);
  pragma key_letter ("TD");

end domain;
pragma number (5);
pragma name ("DomainB");
pragma kl ("DomainB");
pragma version (12);

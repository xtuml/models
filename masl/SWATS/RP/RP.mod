//! Consistent reports of test results
domain RP is
  object A_Test_That_Passed;
  object A_Test_That_Failed;
  object Domain_Details;
  object A_Test_That_Is_Unsupported;
  object Duplicated_Result;
  object Results_Of_Tests;
  object Test_Details;
  object Requirement_Identifier_For_Test;
  object Supporting_Comments;
  object Test_Suite;
  object All_Requirements_In_Test_Suite;
  object Requirement_Met;

  public type Result_Type is enum (Passed,
                                   Failed,
                                   Unsupported,
                                   Unknown);

  //! Number of the test. Number must be greater than zero.
  private type Test_Number_Type is integer;

  //! Indication of the result, pass, fail or unsupported.
  private type Test_Result_Type is string;

  //! Enumeration defineing the name of the invoking domain for the reporter domain.
  private type Invoker_Domain_Type is string;

  //! Integer value indicating test result value
  private type Test_Result_Value_Type is integer;

  //! Contains a record of all the failed test numbers.
  private type Failed_Tests_Record_Type is structure
    Failed_Test_Number : integer;
  end structure;

  private type Duplicated_Tests_Record_Type is structure
    Duplicated_Test_Number : integer;
    Duplicated_Test_Count  : integer;
  end structure;

  private type Unsupported_Tests_Record_Type is structure
    Unsupported_By : integer;
    Testing_For    : string;
  end structure;

  private type Requid_Status_Type is enum (Not_Tested,
                                           Tested);

  //! Same function as domain based synch service.
  public service Test_Passed (Passed_Domain            : in  string,
                              Passed_Test_Number       : in  integer,
                              Passed_Test_Result_Value : in  integer,
                              Passed_Domain_Number     : in  integer);
  pragma domain_operation_number (1);

  public service Test_Failed (Failed_Domain        : in  string,
                              the_test_no          : in  integer,
                              the_test_value       : in  integer,
                              Failed_Domain_Number : in  integer);
  pragma domain_operation_number (2);

  public service Test_Unsupported (Unsupported_Test_Number   : in  integer,
                                   Unsupported_Domain_Number : in  integer);
  pragma domain_operation_number (3);

  public service Test_Description (Write_Test_Number           : in  integer,
                                   Write_Requid                : in  string,
                                   Write_Invoker_Domain_Name   : in  string,
                                   Write_Object                : in  string,
                                   Write_Test_Purpose          : in  string,
                                   Write_Invoker_Domain_Number : in  integer);
  pragma domain_operation_number (4);

  //! Free form description for a test
  public service Test_Text (Domain_No        : in  integer,
                            Text_Test_Number : in  integer,
                            Free_Text        : in  string);
  pragma domain_operation_number (5);

  //! This service shall create a unique object for reporting a test pass or fail.
  //! It shall report its' own unique identifer to the invoking domain, returned via the bridge. This is so that the reporting domain can specify which object to report into. There can be more than one object in existance at any one time. THis is due to the way the event queue is asynchronous, and service invocations are sysnchronous.
  //! 
  public service Create_New_Domain_Test (Invoker_Domain_Name      : in  string,
                                         Domain_Unique_Identifier : out integer);
  pragma domain_operation_number (6);

  public service Report_Run_Time_Error (Detail : in  string);
  pragma domain_operation_number (7);

  public service Domain_Tests_Have_Finished (Completed_Domain_Name : in  string,
                                             Domain_Identifer      : in  integer);
  pragma domain_operation_number (8);

  public service Test_Anomalous_Behaviour (Anomalous_Test_Number : in  integer,
                                           Anomalous_Detail      : in  string);
  pragma domain_operation_number (9);

  //! This service shall allow the calling domain specify a requirement identifier for a given domain and test.
  public service Specify_Requid (Requid_Domain_Number : in  integer,
                                 Requid_Test_Number   : in  integer,
                                 Requid_Identifier    : in  string);
  pragma domain_operation_number (10);

  public service Add_All_Requids (New_Requid : in  string);
  pragma domain_operation_number (12);

  public service Requirement_Tracker (Updated_Domain_ID   : in  integer,
                                      Updated_Test_Number : in  integer,
                                      Updated_Result      : in  Result_Type);
  pragma domain_operation_number (13);

  public service Perform_Req_Analysis ();
  pragma domain_operation_number (11);

  //! Start Requirements Capture
  private service Start_Requirements_Capture (); pragma scenario (1);

  //! Enable_Screen_Display
  private service Enable_Screen_Display (); pragma scenario (2);

  //! Disable_Screen_Display
  private service Disable_Screen_Display (); pragma scenario (3);

  //! Perform Captured Requirements Analysis
  private service Perform_Captured_Requirements_Analysis (); pragma scenario (4);

  //! Add 1241 Requirements
  private service Add_1241_Requirements (); pragma scenario (5);

  //! Relationship Requirements
  private service Relationship_Requirements (); pragma scenario (6);

  //! Add 1103 Requirements
  private service Add_1103_Requirements (); pragma scenario (7);

  //! Events_Requirements
  private service Events_Requirements (); pragma scenario (8);

  //! Find_And_Sets_Requirements
  private service Find_And_Sets_Requirements (); pragma scenario (9);

  //! ASL Mapping Requirements
  private service ASL_Mapping_Requirements (); pragma scenario (10);

  //! Function Calls Requirements
  private service Function_Calls_Requirements (); pragma scenario (11);

  //! Multi Domain Bridges Requirements
  private service Multi_Domain_Bridges_Requirements (); pragma scenario (12);

  //! Creation Deletion Requirements
  private service Creation_Deletion_Requirements (); pragma scenario (13);

  //! Timer Requirements
  private service Timer_Requirements (); pragma scenario (14);

  //! All Requirements
  private service All_Requirements (); pragma scenario (15);

  //! UDT Requirements
  private service UDT_Requirements (); pragma scenario (16);

  //! Tagging Requirements
  private service Tagging_Requirements (); pragma scenario (17);

  //! Structure Requirements
  private service Structure_Requirements (); pragma scenario (18);

  //! Counterpart Requirements
  private service Counterpart_Requirements (); pragma scenario (19);

  relationship R1 is Domain_Details unconditionally has one A_Test_That_Passed,
                     A_Test_That_Passed unconditionally has one Domain_Details;
 pragma Class_A ("Domain_Details");
 pragma Class_B ("A_Test_That_Passed");

  relationship R2 is Domain_Details unconditionally has one A_Test_That_Failed,
                     A_Test_That_Failed unconditionally has one Domain_Details;
 pragma Class_A ("Domain_Details");
 pragma Class_B ("A_Test_That_Failed");

  relationship R3 is Domain_Details unconditionally has one A_Test_That_Is_Unsupported,
                     A_Test_That_Is_Unsupported unconditionally has one Domain_Details;
 pragma Class_A ("Domain_Details");
 pragma Class_B ("A_Test_That_Is_Unsupported");

  relationship R4 is Domain_Details conditionally May_Have_Some many Duplicated_Result,
                     Duplicated_Result unconditionally must_have_one one Domain_Details;
 pragma Class_A ("Domain_Details");
 pragma Class_B ("Duplicated_Result");

  relationship R5 is Duplicated_Result conditionally Has_one one Duplicated_Result,
                     Duplicated_Result conditionally Has_some many Duplicated_Result;
 pragma Class_A ("Duplicated_Result");
 pragma Class_B ("Duplicated_Result");

  relationship R8 is Domain_Details unconditionally has many Test_Details,
                     Test_Details unconditionally has one Domain_Details;
 pragma Class_A ("Domain_Details");
 pragma Class_B ("Test_Details");

  relationship R6 is Test_Details unconditionally has one Results_Of_Tests,
                     Results_Of_Tests unconditionally has one Test_Details;
 pragma Class_A ("Test_Details");
 pragma Class_B ("Results_Of_Tests");

  relationship R7 is Test_Details conditionally May_have_one_or_more many Requirement_Identifier_For_Test,
                     Requirement_Identifier_For_Test conditionally defines_test_requirement one Test_Details;
 pragma Class_A ("Test_Details");
 pragma Class_B ("Requirement_Identifier_For_Test");

  relationship R10 is Test_Suite unconditionally Contains_Many many Domain_Details,
                      Domain_Details unconditionally Is_Contained_By one Test_Suite;
 pragma Class_A ("Test_Suite");
 pragma Class_B ("Domain_Details");

  relationship R11 is All_Requirements_In_Test_Suite unconditionally has one Test_Suite,
                      Test_Suite unconditionally has many All_Requirements_In_Test_Suite;
 pragma Class_A ("All_Requirements_In_Test_Suite");
 pragma Class_B ("Test_Suite");

  relationship R12 is All_Requirements_In_Test_Suite conditionally May_have many Requirement_Met,
                      Requirement_Met unconditionally must_have one All_Requirements_In_Test_Suite;
 pragma Class_A ("All_Requirements_In_Test_Suite");
 pragma Class_B ("Requirement_Met");

  relationship R9 is Domain_Details unconditionally has many Supporting_Comments,
                     Supporting_Comments unconditionally has one Domain_Details;
 pragma Class_A ("Domain_Details");
 pragma Class_B ("Supporting_Comments");

  object A_Test_That_Passed is

    Domain_Number  : referential (R1.has.Domain_Details.Domain_Number) integer;

    Passed_Counter : integer;


    //! A test has passed, update the attribute accordingly.
    public service Got_One (Invoker_Domain_IH : in  instance of Domain_Details);
    pragma operation_number (1);

  end object;
  pragma id (2);
  pragma key_letter ("PASS");

  object A_Test_That_Failed is

    Domain_Number  : referential (R2.has.Domain_Details.Domain_Number) integer;

    Failed_Counter : integer;


    public service You_Goofed_Boy (Invoker_Domain_IH : in  instance of Domain_Details);
    pragma operation_number (1);

  end object;
  pragma id (3);
  pragma key_letter ("FAIL");

  object Domain_Details is

    Domain_Number             : preferred integer;

    Domain_Name               : string;

    //! Use this for the last test that was reported.
    Last_Reported_Test_Number : integer;

    Unique_TS_Identifier      : referential (R10.Is_Contained_By.Test_Suite.Unique_TS_Identifier) integer;


    public service A_Test_Has_Passed (New_Test_Number       : in  integer,
                                      Invoking_Domain       : in  integer,
                                      New_Test_Result_Value : in  integer,
                                      Details_Of_Test       : in  string);
    pragma operation_number (1);

    public service A_Test_Has_Failed (New_Test_Number       : in  integer,
                                      Invoking_Domain       : in  integer,
                                      New_Test_Result_Value : in  integer,
                                      Details_Of_Test       : in  string);
    pragma operation_number (2);

    public service A_Test_Is_Unsupported (New_Test_Number : in  integer,
                                          Invoking_Domain : in  integer);
    pragma operation_number (3);

    public service End_Of_Test (The_Domain : in  instance of Domain_Details);
    pragma operation_number (4);

    state Idle ();
    pragma state_number (1);

    state Report_Your_Findings ();
    pragma state_number (2);

    terminal state Kill_Yourself ();
    pragma state_number (3);

    event Tests_Have_Finished ();
    pragma event_number (1);

    event Commit_Hari_Kiri ();
    pragma event_number (2);

    transition is
      Non_Existent (        Tests_Have_Finished => Cannot_Happen,
                            Commit_Hari_Kiri    => Cannot_Happen);
      Idle (                Tests_Have_Finished => Report_Your_Findings,
                            Commit_Hari_Kiri    => Cannot_Happen);
      Report_Your_Findings (Tests_Have_Finished => Cannot_Happen,
                            Commit_Hari_Kiri    => Kill_Yourself);
      Kill_Yourself (       Tests_Have_Finished => Cannot_Happen,
                            Commit_Hari_Kiri    => Cannot_Happen);
    end transition;

  end object;
  pragma id (4);
  pragma key_letter ("DD");

  object A_Test_That_Is_Unsupported is

    Domain_Number       : referential (R3.has.Domain_Details.Domain_Number) integer;

    Unsupported_Counter : integer;


    public service Not_Done_It_Yet (Invoker_Domain_IH : in  instance of Domain_Details);
    pragma operation_number (1);

  end object;
  pragma id (5);
  pragma key_letter ("UNSUPPORTED");

  object Duplicated_Result is

    Domain_Number                      : referential (R4.must_have_one.Domain_Details.Domain_Number) integer;

    Who_Reported_The_Duplicated_Result : Result_Type;

    Duplicated_Test_Count              : integer;

    Duplicated_Test_Number             : integer;

    Which_Test_Number                  : integer;


    public service Duplicated_Result_Found (Invoker_Domain_IH : in  instance of Duplicated_Result);
    pragma operation_number (1);

  end object;
  pragma id (6);
  pragma key_letter ("DUPLICATED");

  //! Stores all of the results from the test made so that they may then be displayed once all the tests have been completed.
  object Results_Of_Tests is

    //! The number of the test  
    The_Number_Of_Test           : integer;

    //! The name of the domain tested
    The_Name_Of_The_Domain       : string;

    //! The result of the test perfomed. i.e. PASSED, FAILED, UNSUPPORTED
    The_Result_Of_Test           : Result_Type;

    The_Value_Of_The_Result      : integer;

    The_Purpose_Of_Test          : string;

    //! Number of duplicated results in the test
    The_No_Of_Duplicated_Results : integer;

    The_Result_Of_Object         : string;

    Domain_Number                : referential (R6.has.Test_Details.Domain_Number) integer;

    Domain_Test_Details          : string;


  end object;
  pragma id (7);
  pragma key_letter ("RESULTS");

  object Test_Details is

    Domain_Number : preferred referential (R8.has.Domain_Details.Domain_Number) integer;

    Test_Purpose  : string;

    Tested_Object : string;

    The_Test_No   : integer;

    Result_Found  : boolean;


  end object;
  pragma id (8);
  pragma key_letter ("TD");

  //! This object shall store all the requirement identifiers associated with a specific test.
  object Requirement_Identifier_For_Test is

    requid        : string;

    Domain_Number : referential (R7.defines_test_requirement.Test_Details.Domain_Number) integer;


  end object;
  pragma id (9);
  pragma key_letter ("RI");

  object Supporting_Comments is

    Domain_Number : referential (R9.has.Domain_Details.Domain_Number) integer;

    The_Comment   : string;

    The_Test_No   : integer;

    Comment_ID    : integer;


  end object;
  pragma id (10);
  pragma key_letter ("SC");

  object Test_Suite is

    Unique_TS_Identifier : preferred integer;


    public service Add_Requirement (New_Requid      : in  string,
                                    New_Requid_Text : in  string);
    pragma operation_number (1);

    state Waiting ();
    pragma state_number (1);

    state Trace_Requirements ();
    pragma state_number (2);

    terminal state Complete_Analysis ();
    pragma state_number (3);

    state Idle ();
    pragma state_number (4);

    event Perform_Analysis ();
    pragma event_number (1);

    event Terminate_Analysis ();
    pragma event_number (2);

    event Go ();
    pragma event_number (3);

    transition is
      Non_Existent (      Perform_Analysis   => Cannot_Happen,
                          Terminate_Analysis => Cannot_Happen,
                          Go                 => Cannot_Happen);
      Waiting (           Perform_Analysis   => Trace_Requirements,
                          Terminate_Analysis => Cannot_Happen,
                          Go                 => Ignore);
      Trace_Requirements (Perform_Analysis   => Ignore,
                          Terminate_Analysis => Complete_Analysis,
                          Go                 => Ignore);
      Complete_Analysis ( Perform_Analysis   => Cannot_Happen,
                          Terminate_Analysis => Cannot_Happen,
                          Go                 => Cannot_Happen);
      Idle (              Perform_Analysis   => Ignore,
                          Terminate_Analysis => Cannot_Happen,
                          Go                 => Waiting);
    end transition;

  end object;
  pragma id (11);
  pragma key_letter ("TS");

  //! THis object shall store all the requirements identifiers that must be met in this test suite domain.
  object All_Requirements_In_Test_Suite is

    Unique_REQS_ID       : preferred integer;

    REQUID               : string;

    Unique_TS_Identifier : referential (R11.has.Test_Suite.Unique_TS_Identifier) integer;

    Requid_Test_Status   : Requid_Status_Type;

    Requid_Text          : string;


  end object;
  pragma id (12);
  pragma key_letter ("REQS");

  object Requirement_Met is

    Unique_Req_Met_ID   : preferred integer;

    Unique_REQS_ID      : referential (R12.must_have.All_Requirements_In_Test_Suite.Unique_REQS_ID) integer;

    //! Unique domain number of the test that met the requirement.
    Domain_Name         : string;

    //! Number of the test that met the requirement.
    Meeting_Test_Number : integer;

    Requid_Test_Result  : Result_Type;

    Domain_Number       : integer;


  end object;
  pragma id (13);
  pragma key_letter ("RM");

end domain;
pragma number (6);
pragma name ("Report");
pragma kl ("RP");
pragma version (9);

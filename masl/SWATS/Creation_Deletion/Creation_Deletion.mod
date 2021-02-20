//! This domain deals with instance creation and deletion. It check both synchronous and asynchronous creation and deletion.
domain Creation_Deletion is
  object Object_A;
  object Object_B;
  object Object_C;
  object Coloured_Object;
  object Object_D;
  object Flavoured_Object;
  object Creation_State;
  object Flavour_and_Colour;
  object Doctor;
  object Termination_State;
  object Enemy;
  object Doctors_Enemy;
  object Report_Data;

  public type Test_Enum_Type is enum (Sly,
                                      Sandy,
                                      Wes);

  //! This attribute is used to verify that an object instance can be created, when the data type uses enumeration.
  private type Base_Colour is enum (Red,
                                    Green,
                                    Blue,
                                    Black);

  private type Coloured_Type is enum (red,
                                      blue,
                                      green);

  private type Flavoured_Type is enum (chicken,
                                       fish,
                                       coffee);

  private type actors_who_have_played_the_doctor is enum (Tom_Baker,
                                                          Jon_Pertwee,
                                                          Patrick_Troughton);

  private type battlefield_arena_type is enum (Earth,
                                               Gallifrey,
                                               Skarros,
                                               Wheelchair,
                                               Underwater,
                                               Venus);

  public service Create_Report_Object ();
  pragma domain_operation_number (1);

  public service Delete_Report_Object ();
  pragma domain_operation_number (2);

  public service Check_Enum (The_Input_Value  : in  Test_Enum_Type,
                             The_Return_Value : out integer);
  pragma domain_operation_number (3);

  terminator Report_Terminator is
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


  terminator Enumeration_Terminator is
    public service Big_Bridge_Test (Test : in  integer);
    pragma terminator_operation_number(1);

  end terminator;
  pragma key_letter ("ENUM");


  //! Perform Creation Deletion Tests
  private service Perform_Creation_Deletion_Tests (); pragma scenario (1);

  //! Start Creation Deletion Tests
  private service Start_Creation_Deletion_Tests (); pragma scenario (2);

  //! Finish Creation Deletion Tests
  private service Finish_Creation_Deletion_Tests (); pragma scenario (3);

  relationship R1 is Coloured_Object conditionally has many Flavoured_Object,
                     Flavoured_Object conditionally has many Coloured_Object
                     using Flavour_and_Colour;
 pragma Class_A ("Coloured_Object");
 pragma Class_B ("Flavoured_Object");

  relationship R2 is Doctor unconditionally is_afraid_of many Enemy,
                     Enemy unconditionally wants_to_kill one Doctor
                     using Doctors_Enemy;
 pragma Class_A ("Doctor");
 pragma Class_B ("Enemy");

  //! Object_A is manipulated by object 'Instance_Creation'.
  object Object_A is

    //! Preferred identifier.
    ReferenceA : preferred integer;

    //! An integer
    IntegerA   : integer;

    //! Some text.
    TextA      : string;

    //! Boolean
    BooleanA   : boolean;

    //! User defined type
    ColourA    : Base_Colour;


    //! Perform object service to test synchronous create operation.
    public service do_sync_create (Test_Number          : in  integer,
                                   Returned_Test_Number : out integer);
    pragma operation_number (1);

  end object;
  pragma id (2);
  pragma key_letter ("objA");

  //! Object_B is manipulated by object 'Instance Creation'.
  object Object_B is

    //! Preferred identifier.
    ReferenceB : preferred integer;

    //! An integer.
    IntegerA   : integer;


    public service do_sync_create_unique (Test_Number          : in  integer,
                                          Returned_Test_Number : out integer);
    pragma operation_number (1);

  end object;
  pragma id (3);
  pragma key_letter ("objB");

  //! Object_C is manipulated by object 'Instance_Creation'.
  object Object_C is

    //! Preferred identifier.
    Reference1C : preferred integer;

    //! Referential attribute.
    Reference2C : preferred integer;


    public service do_create_unique_mult (Test_Number          : in  integer,
                                          Returned_Test_Number : out integer);
    pragma operation_number (1);

  end object;
  pragma id (4);
  pragma key_letter ("objC");

  object Coloured_Object is

    Coloured  : preferred Coloured_Type;

    Intensity : integer;


    public service Colourize_It (Test_Number     : in  integer,
                                 Returned_Number : out integer);
    pragma operation_number (1);

    //! There is a problem in version 2.0.2 of WACA. This service will attempt to clarify what is going wrong.
    public service Regression_Tests (Test_Number          : in  integer,
                                     Returned_Test_Number : out integer);
    pragma operation_number (2);

  end object;
  pragma id (5);
  pragma key_letter ("coloured");

  //! Object_D is manipulated by object 'Instance_Deletion'.
  object Object_D is

    //! Preferred identifier.
    ReferenceD : preferred integer;

    //! An integer.
    IntegerA   : integer;


    public service do_deletion_tests (Test_Number          : in  integer,
                                      Returned_Test_Number : out integer);
    pragma operation_number (1);

    //! This service shall prove that deletion of multiple instances from a
    //! set is correct.
    public service do_multiple_deletion_tests (Test_Number          : in  integer,
                                               Returned_Test_Number : out integer);
    pragma operation_number (2);

  end object;
  pragma id (6);
  pragma key_letter ("objD");

  object Flavoured_Object is

    Flavoured : preferred Flavoured_Type;

    How_Spicy : integer;


  end object;
  pragma id (7);
  pragma key_letter ("flavoured");

  //! This object verifies the creation of object instances.
  object Creation_State is

    //! Preferred identifier.
    ReferenceCS : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultCS    : integer;


    //! This state verifies the following:
    //! 
    //! 	[1] Instance creation in a creation state.
    creation state Instance_creation (Test : in  integer);
    pragma state_number (1);

    //! This state verifies that instance creation within
    //! a creation state is successful.
    state Verify_instance_creation (Test : in  integer);
    pragma state_number (3);

    //! An instance current state is changed to fail
    //! if the test failed.
    state Fail ();
    pragma state_number (4);

    state Passed ();
    pragma state_number (5);

    creation event StartA (Test : in  integer);
    pragma event_number (1);

    event Creation_Complete ();
    pragma event_number (2);

    event Fault ();
    pragma event_number (3);

    event StartB (Test : in  integer);
    pragma event_number (4);

    event It_passed ();
    pragma event_number (5);

    transition is
      Non_Existent (            StartA            => Instance_creation,
                                Creation_Complete => Cannot_Happen,
                                Fault             => Cannot_Happen,
                                StartB            => Cannot_Happen,
                                It_passed         => Cannot_Happen);
      Instance_creation (       StartA            => Cannot_Happen,
                                Creation_Complete => Cannot_Happen,
                                Fault             => Cannot_Happen,
                                StartB            => Verify_instance_creation,
                                It_passed         => Cannot_Happen);
      Verify_instance_creation (StartA            => Cannot_Happen,
                                Creation_Complete => Cannot_Happen,
                                Fault             => Fail,
                                StartB            => Cannot_Happen,
                                It_passed         => Passed);
      Fail (                    StartA            => Cannot_Happen,
                                Creation_Complete => Cannot_Happen,
                                Fault             => Cannot_Happen,
                                StartB            => Cannot_Happen,
                                It_passed         => Cannot_Happen);
      Passed (                  StartA            => Cannot_Happen,
                                Creation_Complete => Cannot_Happen,
                                Fault             => Ignore,
                                StartB            => Ignore,
                                It_passed         => Ignore);
    end transition;

  end object;
  pragma id (8);
  pragma key_letter ("objCS");

  object Flavour_and_Colour is

    Coloured    : preferred referential (R1.has.Coloured_Object.Coloured) Coloured_Type;

    Flavoured   : preferred referential (R1.has.Flavoured_Object.Flavoured) Flavoured_Type;

    Dish_Number : integer;


  end object;
  pragma id (9);
  pragma key_letter ("fandc");

  object Doctor is

    Actor           : preferred actors_who_have_played_the_doctor;

    length_of_scarf : integer;


    public service Test_the_Doctors_Mettle (Test_Number          : in  integer,
                                            Returned_Test_Number : out integer);
    pragma operation_number (1);

  end object;
  pragma id (10);
  pragma key_letter ("dr");

  //! This object verifies the deletion of object instances.
  object Termination_State is

    //! Preferred identifier.
    ReferenceTS : preferred integer;


    public service verify_deletion (Test : in  integer);
    pragma operation_number (1);

    //! Idle state.
    //! No action taken.
    state Idle ();
    pragma state_number (1);

    //! This state verifies the following:
    //! 
    //! 	[1] Deletion of own instance
    //! 	
    terminal state Deletion_in_a_terminal_state ();
    pragma state_number (2);

    event StartA ();
    pragma event_number (3);

    transition is
      Non_Existent (                StartA => Cannot_Happen);
      Idle (                        StartA => Deletion_in_a_terminal_state);
      Deletion_in_a_terminal_state (StartA => Cannot_Happen);
    end transition;

  end object;
  pragma id (11);
  pragma key_letter ("objTS");

  object Enemy is

    Humanoid         : preferred boolean;

    can_climb_stairs : boolean;


  end object;
  pragma id (12);
  pragma key_letter ("enemy");

  object Doctors_Enemy is

    Humanoid          : preferred referential (R2.is_afraid_of.Enemy.Humanoid) boolean;

    Actor             : referential (R2.wants_to_kill.Doctor.Actor) actors_who_have_played_the_doctor;

    battlefield_arena : battlefield_arena_type;


  end object;
  pragma id (13);
  pragma key_letter ("drenemy");

  //! This object shall be replicated in all domains existing within the Software Architecture Test Suite that use the Reporter Domain.
  object Report_Data is

    Report_Data_Unique_id  : preferred integer;

    //! Unique identifer for this domain as foar as the Reporter domain is concerned.
    Reported_Domain_Number : integer;


  end object;
  pragma id (14);
  pragma key_letter ("RD");

end domain;
pragma number (3);
pragma name ("Creation_Deletion");
pragma kl ("Creation_Deletion");
pragma version (15);

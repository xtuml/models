//! Mission statement? 
//! You're having a laugh!
domain Struct is
  object Structured_Object;
  object Report_Data;
  object Test_Data;

  public type Simple_Structure_Type is structure
    S_Integer : integer;
    S_Real    : real;
    S_Text    : string;
    S_Boolean : boolean;
    S_Colour  : Colour_Type;
  end structure;

  public type Type_Linked_Simple_Structure_Type is structure
    TLS_Integer : integer;
    TLS_Real    : real;
    TLS_Text    : string;
    TLS_Boolean : boolean;
  end structure;

  public type Name_and_Type_Linked_Simple_Structure_Type is structure
    An_Integer : integer;
    A_Real     : real;
    Some_Text  : string;
    A_Boolean  : boolean;
  end structure;

  public type First_Nested_Structure_Type is structure
    Second_Nested_Structure : sequence of Second_Nested_Structure_Type;
    First_Nested_Integer    : integer;
  end structure;

  public type Second_Nested_Structure_Type is structure
    Third_Nested_Structure : sequence of Third_Nested_Structure_Type;
    Third_Nested_Integer   : integer;
  end structure;

  public type Third_Nested_Structure_Type is structure
    Third_Nested_Integer : integer;
    The_Holy_Grail       : Colour_Type;
  end structure;

  public type Colour_Type is enum (Red,
                                   Green,
                                   Blue);

  public type Structure_and_IH_Type is structure
    A_Defined_IH : instance of Structured_Object;
  end structure;

  public type My_Simple_Structure is structure
    Int_Value    : integer;
    Colour_Value : Colour_Type;
  end structure;

  public type My_Second_Structure is structure
    Int_Val    : integer;
    Real_Val   : real;
    String_Val : string;
    Col_Val    : Colour_Type;
  end structure;

  //! This structure shall contain user defined types.
  private type UDT_Structure_Type is structure
    An_Integer : UDT_Integer_Type;
    A_Real     : UDT_Real_Type;
  end structure;

  private type UDT_Integer_Type is integer; pragma type_range(0,100);

  private type UDT_Real_Type is real; pragma type_range(0.0,100.0);

  //! This structure shall contain a structure, a couple of user 
  //! defined types and a simple integer base type.
  //! The UDT data shall have the same name and type as those 
  //! defined in the contained structure.
  private type Complex_UDT_Structure_Type is structure
    A_Top_Integer   : UDT_Integer_Type;
    A_Top_Real      : UDT_Real_Type;
    A_UDT_Structure : sequence of UDT_Structure_Type;
    Basic_Integer   : integer;
    A_Colour        : Colour_Type;
  end structure;

  private type Different_Structure_Type is structure
    Alternative_Colour : Alternative_Colour_Type;
    Extra_Member       : integer;
  end structure;

  private type Alternative_Colour_Type is enum (Red,
                                                Pink,
                                                Puce);

  private type Multiple_Structures_Type is structure
    Initial_Structure     : sequence of First_Nested_Structure_Type;
    Secondary_Structure   : sequence of Second_Nested_Structure_Type;
    Penultimate_Structure : sequence of Third_Nested_Structure_Type;
    Buried_Integer        : integer;
  end structure;

  private type Two_Structures_Type is structure
    First_Structure  : sequence of Simple_Structure_Type;
    Second_Structure : sequence of Third_Nested_Structure_Type;
  end structure;

  private type Very_Simple_Structure_Type is structure
    Basic_Integer : integer;
  end structure;

  private type Second_Simple_Structure_Type is structure
    SS_Integer : integer;
    SS_Real    : real;
    SS_Text    : string;
    SS_Boolean : boolean;
    SS_Colour  : Colour_Type;
  end structure;

  public service Decode_Simple_Structure (Test                   : in  integer,
                                          Simple_Structure       : in  sequence of Simple_Structure_Type,
                                          Object_Instance_Handle : in  instance of Structured_Object);
  pragma domain_operation_number (2);

  public service Decode_Simple_TL_Structure (Test                   : in  integer,
                                             Simple_Structure       : in  sequence of Type_Linked_Simple_Structure_Type,
                                             Object_Instance_Handle : in  instance of Structured_Object);
  pragma domain_operation_number (4);

  public service Decode_Simple_NTL_Structure (Test                   : in  integer,
                                              Simple_Structure       : in  sequence of Name_and_Type_Linked_Simple_Structure_Type,
                                              Object_Instance_Handle : in  instance of Structured_Object);
  pragma domain_operation_number (6);

  public service Decode_Three_Level_Nested_Structure (Test                      : in  integer,
                                                      Three_Level_Nest          : in  sequence of First_Nested_Structure_Type,
                                                      Two_Level_Nest            : in  sequence of Second_Nested_Structure_Type,
                                                      One_Level_Nest            : in  sequence of Third_Nested_Structure_Type,
                                                      Given_First_Level_Number  : in  integer,
                                                      How_Many_In_First         : in  integer,
                                                      Given_Second_Level_Number : in  integer,
                                                      How_Many_In_Second        : in  integer,
                                                      Given_Third_Level_Number  : in  integer,
                                                      How_Many_In_Third         : in  integer,
                                                      Given_Third_Level_Colour  : in  Colour_Type);
  pragma domain_operation_number (7);

  public service Create_Report_Data ();
  pragma domain_operation_number (8);

  public service Delete_Report_Data ();
  pragma domain_operation_number (9);

  //! Receive a structure containing and IH as a component of that structure.
  public service Receive_Structure_IH (This_Test_Number        : in  integer,
                                       Input_Structure         : in  sequence of Structure_and_IH_Type,
                                       Number_Of_Elements      : in  integer,
                                       Unique_Identifier_Of_IH : in  integer,
                                       Testing_For             : in  string);
  pragma domain_operation_number (1);

  public service Receive_Empty_Structure_IH (Test_Number      : in  integer,
                                             Empty_Structure  : in  sequence of Structure_and_IH_Type,
                                             Inserted_IH      : in  instance of Structured_Object,
                                             Testing_For      : in  string,
                                             Filled_Structure : out sequence of Structure_and_IH_Type);
  pragma domain_operation_number (3);

  public service Test_The_Structure (Test                 : in  integer,
                                     Structure_Input      : in  sequence of My_Simple_Structure,
                                     The_Return_Structure : out sequence of My_Simple_Structure);
  pragma domain_operation_number (5);

  public service Check_Returning_Structure (Integer_Input       : in  integer,
                                            Real_Input          : in  real,
                                            String_Input        : in  string,
                                            UDT_Input           : in  Colour_Type,
                                            Returning_Structure : out sequence of My_Second_Structure);
  pragma domain_operation_number (10);

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


  terminator Env_Terminator is
    public service Env_String (Env_Text : out string);
    pragma terminator_operation_number(1);

    public service Env_Number (Env_Integer : out integer);
    pragma terminator_operation_number(2);

  end terminator;
  pragma key_letter ("ET");


  //! Simple Structure Scenario
  private service Simple_Structure_Scenario (); pragma scenario (1);

  //! Complex Structure Scenario
  private service Complex_Structure_Scenario (); pragma scenario (2);

  //! Simple Type Linked Structure Scenario
  private service Simple_Type_Linked_Structure_Scenario (); pragma scenario (3);

  //! Simple Name and Type Linked Scenario
  private service Simple_Name_and_Type_Linked_Scenario (); pragma scenario (4);

  //! Nested Structure Scenario
  private service Nested_Structure_Scenario (); pragma scenario (5);

  //! Start_Structures_Tests
  private service Start_Structures_Tests (); pragma scenario (6);

  //! Finish_Structures_Tests
  private service Finish_Structures_Tests (); pragma scenario (7);

  //! Multiple_Structures_In_A_Structure_Scenario
  private service Multiple_Structures_In_A_Structure_Scenario (); pragma scenario (8);

  //! Empty_Structures_Test
  private service Empty_Structures_Test (); pragma scenario (9);

  //! Test_IH_In_Structures
  private service Test_IH_In_Structures (); pragma scenario (10);

  //! Structures_are_Cleared
  private service Structures_are_Cleared (); pragma scenario (11);

  //! Test_the_Structure
  private service Test_the_Structure (); pragma scenario (12);

  object Structured_Object is

    Reference_SO : preferred integer;

    An_Integer   : integer;

    A_Real       : real;

    Some_Text    : string;

    A_Boolean    : boolean;

    A_Colour     : Colour_Type;


    public service Create_Simple_Structure (Test                      : in  integer,
                                            Object_Instance_Handle    : in  instance of Structured_Object,
                                            Returned_Simple_Structure : out sequence of Simple_Structure_Type);
    pragma operation_number (1);

    public service Decode_Simple_Structure (Test             : in  integer,
                                            A_Structure      : in  sequence of Simple_Structure_Type,
                                            Instance_Handle  : in  instance of Structured_Object,
                                            Final_Entry_Only : in  boolean);
    pragma operation_number (2);

    public service Create_Complex_Structure ();
    pragma operation_number (3);

    public service Decode_Complex_Structure ();
    pragma operation_number (4);

    public service Create_Simple_TL_Structure (Test                      : in  integer,
                                               Object_Instance_Handle    : in  instance of Structured_Object,
                                               Returned_Simple_Structure : out sequence of Type_Linked_Simple_Structure_Type);
    pragma operation_number (5);

    public service Decode_Simple_TL_Structure (Test             : in  integer,
                                               A_Structure      : in  sequence of Type_Linked_Simple_Structure_Type,
                                               Instance_Handle  : in  instance of Structured_Object,
                                               Final_Entry_Only : in  boolean);
    pragma operation_number (6);

    public service Create_Simple_NTL_Structure (Test                      : in  integer,
                                                Object_Instance_Handle    : in  instance of Structured_Object,
                                                Returned_Simple_Structure : out sequence of Name_and_Type_Linked_Simple_Structure_Type);
    pragma operation_number (7);

    public service Decode_Simple_NTL_Structure (Test             : in  integer,
                                                A_Structure      : in  sequence of Name_and_Type_Linked_Simple_Structure_Type,
                                                Instance_Handle  : in  instance of Structured_Object,
                                                Final_Entry_Only : in  boolean);
    pragma operation_number (8);

    state Idle ();
    pragma state_number (1);

    state Decode_Simple (Test               : in  integer,
                         A_Simple_Structure : in  sequence of Simple_Structure_Type);
    pragma state_number (2);

    state Decode_Complex ();
    pragma state_number (3);

    state Failed ();
    pragma state_number (4);

    state Decode_Simple_TL (Test           : in  integer,
                            A_TL_Structure : in  sequence of Type_Linked_Simple_Structure_Type);
    pragma state_number (5);

    state Decode_Simple_NTL (Test            : in  integer,
                             A_NTL_Structure : in  sequence of Name_and_Type_Linked_Simple_Structure_Type);
    pragma state_number (6);

    state Finished ();
    pragma state_number (8);

    event Start_Simple (Test               : in  integer,
                        A_Simple_Structure : in  sequence of Simple_Structure_Type);
    pragma event_number (1);

    event Start_Complex ();
    pragma event_number (2);

    event Finished ();
    pragma event_number (3);

    event Fault ();
    pragma event_number (4);

    event Start_TL_Simple (Test           : in  integer,
                           A_TL_Structure : in  sequence of Type_Linked_Simple_Structure_Type);
    pragma event_number (5);

    event Start_NTL_Simple (Test            : in  integer,
                            A_NTL_Structure : in  sequence of Name_and_Type_Linked_Simple_Structure_Type);
    pragma event_number (6);

    transition is
      Non_Existent (     Start_Simple     => Cannot_Happen,
                         Start_Complex    => Cannot_Happen,
                         Finished         => Cannot_Happen,
                         Fault            => Cannot_Happen,
                         Start_TL_Simple  => Cannot_Happen,
                         Start_NTL_Simple => Cannot_Happen);
      Idle (             Start_Simple     => Decode_Simple,
                         Start_Complex    => Decode_Complex,
                         Finished         => Ignore,
                         Fault            => Ignore,
                         Start_TL_Simple  => Decode_Simple_TL,
                         Start_NTL_Simple => Decode_Simple_NTL);
      Decode_Simple (    Start_Simple     => Ignore,
                         Start_Complex    => Ignore,
                         Finished         => Finished,
                         Fault            => Failed,
                         Start_TL_Simple  => Ignore,
                         Start_NTL_Simple => Ignore);
      Decode_Complex (   Start_Simple     => Ignore,
                         Start_Complex    => Ignore,
                         Finished         => Finished,
                         Fault            => Failed,
                         Start_TL_Simple  => Ignore,
                         Start_NTL_Simple => Ignore);
      Failed (           Start_Simple     => Ignore,
                         Start_Complex    => Ignore,
                         Finished         => Ignore,
                         Fault            => Ignore,
                         Start_TL_Simple  => Ignore,
                         Start_NTL_Simple => Ignore);
      Decode_Simple_TL ( Start_Simple     => Ignore,
                         Start_Complex    => Ignore,
                         Finished         => Finished,
                         Fault            => Failed,
                         Start_TL_Simple  => Ignore,
                         Start_NTL_Simple => Ignore);
      Decode_Simple_NTL (Start_Simple     => Ignore,
                         Start_Complex    => Ignore,
                         Finished         => Finished,
                         Fault            => Failed,
                         Start_TL_Simple  => Ignore,
                         Start_NTL_Simple => Ignore);
      Finished (         Start_Simple     => Ignore,
                         Start_Complex    => Ignore,
                         Finished         => Ignore,
                         Fault            => Ignore,
                         Start_TL_Simple  => Ignore,
                         Start_NTL_Simple => Ignore);
    end transition;

  end object;
  pragma id (2);
  pragma key_letter ("SO");

  object Report_Data is

    Report_Data_Unique_id  : preferred integer;

    Reported_Domain_Number : integer;


  end object;
  pragma id (3);
  pragma key_letter ("RD");

  object Test_Data is

    The_Test_Number : integer;


  end object;
  pragma id (4);
  pragma key_letter ("TD");

end domain;
pragma number (13);
pragma name ("Structures");
pragma kl ("Struct");
pragma version (6);

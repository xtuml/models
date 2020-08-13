//! This domain deals with the basic ASL process modelling. It does not require the creation of instances, relationships or event mechanisms. It does require and use domain & object based functions.
domain ASL_Mapping is
  object Object_IF;
  object Object_FOR;
  object Object_LOOP;
  object Object_NESTED;
  object Object_SWITCH;
  object Object_LOGIC;
  object Nested_IF;
  object Nested_FOR;
  object Nested_LOOP;
  object Report_Data;
  object BIG_Object;
  object Processor;
  object Default_Vals;
  object ObjectA;
  object ObjectB;
  object Left;
  object Right;
  object LeftRight;
  object Another_Right;

  public type Processor_Id_Type is enum (TCA,
                                         CCA);

  //! Enumerated attribute containing person's names.
  private type Enum is enum (Richard,
                             John,
                             Mark,
                             Frank,
                             Goran);

  private type Simple_Structure_Type is structure
    Simple_Int     : integer;
    Simple_Real    : real;
    Simple_String  : string;
    Simple_Boolean : boolean;
    Simple_Enum    : Enum;
  end structure;

  //! This function test basic ASL operations on base types and enumerated types.
  public service basic_asl_enumeration (Test_Start : in  integer,
                                        Final_Test : out integer);
  pragma domain_operation_number (1);

  public service basic_asl_divide_by_zero (Test_Start : in  integer,
                                           Final_Test : out integer);
  pragma domain_operation_number (2);

  public service Create_Report_Data ();
  pragma domain_operation_number (3);

  public service Delete_Report_Data ();
  pragma domain_operation_number (4);

  public service Test_Unfeasibly_Large_Object (Start_Test_Number  : in  integer,
                                               Finish_Test_Number : out integer);
  pragma domain_operation_number (5);

  public service Test_Large_Numbers (Start_Test_Number  : in  integer,
                                     Finish_Test_Number : out integer);
  pragma domain_operation_number (6);

  public service Perform_Attribute_Assignment (Test_Start : in  integer,
                                               Final_Test : out integer);
  pragma domain_operation_number (7);

  public service Create_Processor (Test_Start         : in  integer,
                                   Processor_Id_Local : in  Processor_Id_Type,
                                   Final_Test         : out integer);
  pragma domain_operation_number (8);

  public service Check_Parameters (Test               : in  integer,
                                   The_Subtract_Param : in  integer,
                                   Returning_No       : out integer);
  pragma domain_operation_number (9);

  public service Check_Base_Types (Test         : in  integer,
                                   Returning_No : out integer);
  pragma domain_operation_number (10);

  public service Check_Defaults (Test         : in  integer,
                                 Returning_No : out integer);
  pragma domain_operation_number (11);

  public service And_Or_Checks (Test_No      : in  integer,
                                Returning_No : out integer);
  pragma domain_operation_number (12);

  public service Comment_Checks (Test_No      : in  integer,
                                 Returning_No : out integer);
  pragma domain_operation_number (13);

  public service Check_Continuation (Test_No      : in  integer,
                                     Returning_No : out integer);
  pragma domain_operation_number (14);

  public service Check_Identifiers (Test_No      : in  integer,
                                    Returning_No : out integer);
  pragma domain_operation_number (15);

  //! Terminator stub for report domain
  terminator Report_Result is
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


  terminator Where_Are_We is
    public service What_Env (Env_Text : out string);
    pragma terminator_operation_number(1);

  end terminator;
  pragma key_letter ("WAW");


  //! Perform ASL Mapping Tests
  private service Perform_ASL_Mapping_Tests (); pragma scenario (1);

  //! Start ASL Mapping Tests
  private service Start_ASL_Mapping_Tests (); pragma scenario (2);

  //! Finish ASL Mapping Tests
  private service Finish_ASL_Mapping_Tests (); pragma scenario (3);

  relationship R1 is Left unconditionally is_next_to many Right,
                     Right unconditionally is_next_to one Left
                     using LeftRight;
 pragma Class_A ("Left");
 pragma Class_B ("Right");

  relationship R2 is LeftRight unconditionally is_next_to one Another_Right,
                     Another_Right unconditionally is_next_to one LeftRight;
 pragma Class_A ("LeftRight");
 pragma Class_B ("Another_Right");

  //! This object verifies the 'IF' statement.
  object Object_IF is

    //! Preferred identifier.
    ReferenceIF : preferred integer;

    //! This attribute is manipulated to indicated that the required operation was successful.
    ResultA     : integer;


    //! Object based function for performing 'if' tests. Tests simple logical expressions on Integer local variables and requires instance creation, attribute assignment.
    public service do_if_test (Test_Start : in  integer,
                               Final_Test : out integer);
    pragma operation_number (1);

  end object;
  pragma id (2);
  pragma key_letter ("objIF");

  //! This object verifies the FOR statement.
  object Object_FOR is

    //! Preferred identifier.
    ReferenceFOR : preferred integer;

    //! This attribute is manipulated to indicated that the required operation was successful.
    ResultA      : integer;


    //! Function to do the FOR tests.
    public service do_for_test (Test_Start : in  integer,
                                Final_Test : out integer);
    pragma operation_number (1);

  end object;
  pragma id (3);
  pragma key_letter ("objFOR");

  //! This object verifies the 'LOOP' statement.
  object Object_LOOP is

    //! Preferred identifier.
    ReferenceLOOP : preferred integer;

    //! This attribute is manipulated to indicated that the required operation was successful.
    ResultA       : integer;


    public service do_loop_tests (an_instanceLOOP : in  instance of Object_LOOP,
                                  Test_Start      : in  integer,
                                  Final_Test      : out integer);
    pragma operation_number (1);

    event Start ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event Fault ();
    pragma event_number (3);

  end object;
  pragma id (4);
  pragma key_letter ("objLOOP");

  //! This object verifies various nested statements.
  object Object_NESTED is

    //! Preferred identifier.
    ReferenceNESTED : preferred integer;

    //! This attribute is manipulated to inducate that the required operation was successful.
    ResultA         : integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultB         : integer;


    public service do_nested_tests (Test_Start : in  integer,
                                    Final_Test : out integer);
    pragma operation_number (1);

    event StartA ();
    pragma event_number (1);

    event Finsihed ();
    pragma event_number (2);

    event Fault ();
    pragma event_number (3);

    event StartB ();
    pragma event_number (4);

    event StartC ();
    pragma event_number (5);

  end object;
  pragma id (5);
  pragma key_letter ("objNESTED");

  //! This object verifies the 'SWITCH' statement.
  object Object_SWITCH is

    //! Preferred identifier.
    ReferenceSWITCH : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA         : integer;

    //! Determines which case statement to execute.
    IntegerAttr     : integer;


    public service do_switch (Test_Start : in  integer,
                              Final_Test : out integer);
    pragma operation_number (1);

    event StartA ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event StartB ();
    pragma event_number (3);

    event Fault ();
    pragma event_number (4);

  end object;
  pragma id (6);
  pragma key_letter ("objSWITCH");

  //! This object verifies arithemetical and logical operations.
  object Object_LOGIC is

    //! An integer
    IntegerAttr     : integer;

    TextAttr        : string;

    EnumerationAttr : Enum;

    BooleanAttr     : boolean;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA         : integer;

    //! Preferred identifier.
    ReferenceLOGIC  : preferred integer;

    RealAttr        : real;


    public service do_arithmetic_and_logic (an_instanceLOGIC : in  instance of Object_LOGIC,
                                            Test_Start       : in  integer,
                                            Final_Test       : out integer);
    pragma operation_number (1);

    public service Perform_Attribute_Assignment (Test_Start : in  integer,
                                                 Final_Test : out integer);
    pragma operation_number (2);

    event StartA ();
    pragma event_number (1);

    event StartB ();
    pragma event_number (2);

    event Finished ();
    pragma event_number (3);

    event Fault ();
    pragma event_number (4);

    event StartC ();
    pragma event_number (5);

    event StartD ();
    pragma event_number (6);

  end object;
  pragma id (7);
  pragma key_letter ("objLOGIC");

  //! This object verifies nested 'IF' statements and multiple conditions that the statement must verify.
  object Nested_IF is

    //! Preferred identifier.
    ReferenceNstIF : preferred integer;

    //! This attribute if manipulated to indicated that the required operation was successful.
    ResultA        : integer;


    public service do_nested_if (an_instanceNESTED_IF : in  instance of Nested_IF,
                                 Test_Start           : in  integer,
                                 Final_Test           : out integer);
    pragma operation_number (1);

    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event StartA ();
    pragma event_number (3);

    event StartB ();
    pragma event_number (4);

  end object;
  pragma id (8);
  pragma key_letter ("NstIF");

  //! This object verifies nested 'FOR' statements.
  object Nested_FOR is

    //! Preferred identifier.
    ReferenceNstFOR : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA         : integer;


    public service do_nested_for (Test_Start : in  integer,
                                  Final_Test : out integer);
    pragma operation_number (1);

    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event StartA ();
    pragma event_number (3);

  end object;
  pragma id (9);
  pragma key_letter ("NstFOR");

  //! This object verifies nested 'LOOP' statements.
  object Nested_LOOP is

    //! Preferred identifier.
    ReferenceNstLOOP : preferred integer;

    //! This attribute is manipulated to indicate that th required operation was successful.
    ResultA          : integer;


    public service do_nested_loops (an_instanceNESTED_LOOP : in  instance of Nested_LOOP,
                                    Test_Start             : in  integer,
                                    Final_Test             : out integer);
    pragma operation_number (1);

    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event StartA ();
    pragma event_number (3);

  end object;
  pragma id (10);
  pragma key_letter ("NstLOOP");

  object Report_Data is

    Report_Data_Unique_id  : preferred integer;

    Reported_Domain_Number : integer;


  end object;
  pragma id (11);
  pragma key_letter ("RD");

  //! This object shall contain 80+  attributes, just to see what happens.
  //! This as a result of DEFECT 718.
  object BIG_Object is

    One          : integer;

    Two          : integer;

    Three        : integer;

    Four         : integer;

    Five         : integer;

    Six          : integer;

    Seven        : integer;

    Eight        : integer;

    Nine         : integer;

    Ten          : integer;

    Eleven       : integer;

    Twelve       : integer;

    Thirteen     : integer;

    Fourteen     : integer;

    Fifteen      : integer;

    Sixteen      : integer;

    Eighteen     : integer;

    Nineteen     : integer;

    Twenty       : integer;

    Twentyone    : integer;

    Twentytwo    : integer;

    Twentythree  : integer;

    Twentyfour   : integer;

    Twentyfive   : integer;

    Twentysix    : integer;

    Twentyseven  : integer;

    Twentyeight  : integer;

    Twentynine   : integer;

    Thirty       : integer;

    Thirtyone    : integer;

    Thirtytwo    : integer;

    Thirtythree  : integer;

    Thirtyfour   : integer;

    Thirtyfive   : integer;

    Thirtysix    : integer;

    Thirtyseven  : integer;

    Thirtyeight  : integer;

    Thirtynine   : integer;

    Forty        : integer;

    Fortyone     : integer;

    Fortytwo     : integer;

    Fortythree   : integer;

    Fortyfour    : integer;

    Fortyfive    : integer;

    Fortysix     : integer;

    Fortyseven   : integer;

    Fortyeight   : integer;

    Fortynine    : integer;

    Fifty        : integer;

    Fiftyone     : integer;

    Fiftytwo     : integer;

    Fiftythree   : integer;

    Fiftyfour    : integer;

    Fiftyfive    : integer;

    Fiftysix     : integer;

    Fiftyseven   : integer;

    Fiftyeight   : integer;

    Fiftynine    : integer;

    Sixty        : integer;

    Sixtyone     : integer;

    Sixtytwo     : integer;

    Sixtythree   : integer;

    Sixtyfour    : integer;

    Sixtyfive    : integer;

    Sixtysix     : integer;

    Sixtyseven   : integer;

    Sixtyeight   : integer;

    Sixtynine    : integer;

    Seventy      : integer;

    Seventyone   : integer;

    Seventytwo   : integer;

    Seventythree : integer;

    Seventyfour  : integer;

    Seventyfive  : integer;

    Seventysix   : integer;

    Seventyseven : integer;

    Seventyeight : integer;

    Seventynine  : integer;

    Eighty       : integer;

    Eightyone    : integer;

    Eightytwo    : integer;

    Eightythree  : integer;

    Eightyfour   : integer;


    public service Receive_Unfeasonableness (A_Big_Object       : in  instance of BIG_Object,
                                             Current_Test       : in  integer,
                                             Expected_Attribute : in  integer);
    pragma operation_number (1);

    state Idle_State ();
    pragma state_number (1);

    state How_Big (Big_IH                 : in  instance of BIG_Object,
                   Current_Test_Number    : in  integer,
                   Expected_Result_Number : in  integer);
    pragma state_number (2);

    state Complete ();
    pragma state_number (3);

    state Next_Stage (Big_IH           : in  instance of BIG_Object,
                      Next_Test_Number : in  integer);
    pragma state_number (4);

    event Have_A_Biggie (Big_IH                 : in  instance of BIG_Object,
                         Current_Test_Number    : in  integer,
                         Expected_Result_Number : in  integer);
    pragma event_number (1);

    event To_Complete ();
    pragma event_number (2);

    event This_Wont_Happen ();
    pragma event_number (3);

    event To_Next_Stage (Big_IH           : in  instance of BIG_Object,
                         Next_Test_Number : in  integer);
    pragma event_number (4);

    transition is
      Non_Existent (Have_A_Biggie    => Cannot_Happen,
                    To_Complete      => Cannot_Happen,
                    This_Wont_Happen => Cannot_Happen,
                    To_Next_Stage    => Cannot_Happen);
      Idle_State (  Have_A_Biggie    => How_Big,
                    To_Complete      => Ignore,
                    This_Wont_Happen => Cannot_Happen,
                    To_Next_Stage    => Ignore);
      How_Big (     Have_A_Biggie    => Ignore,
                    To_Complete      => Cannot_Happen,
                    This_Wont_Happen => Idle_State,
                    To_Next_Stage    => Next_Stage);
      Complete (    Have_A_Biggie    => Cannot_Happen,
                    To_Complete      => Cannot_Happen,
                    This_Wont_Happen => Cannot_Happen,
                    To_Next_Stage    => Cannot_Happen);
      Next_Stage (  Have_A_Biggie    => Ignore,
                    To_Complete      => Complete,
                    This_Wont_Happen => Cannot_Happen,
                    To_Next_Stage    => Ignore);
    end transition;

  end object;
  pragma id (12);
  pragma key_letter ("objBIG");

  object Processor is

    Processor_Id                   : preferred Processor_Id_Type;

    Background_Processing_Timer_Id : integer;

    Communications_Enabled         : boolean;


    public service Create_Processor (Test_Start         : in  integer,
                                     Processor_Id_Local : in  Processor_Id_Type,
                                     Final_Test         : out integer);
    pragma operation_number (1);

  end object;
  pragma id (13);
  pragma key_letter ("PROC");

  object Default_Vals is

    The_Integer : integer;

    The_Real    : real;

    The_Text    : string;

    The_Boolean : boolean;


    public service Default_Vals_In_Object (Test         : in  integer,
                                           Returning_No : out integer);
    pragma operation_number (1);

  end object;
  pragma id (14);
  pragma key_letter ("DV");

  object ObjectA is

    The_Int1 : integer;

    The_Int2 : integer;


  end object;
  pragma id (15);
  pragma key_letter ("objA");

  object ObjectB is

    The_IntB1 : integer;

    The_IntB2 : integer;


  end object;
  pragma id (16);
  pragma key_letter ("objB");

  object Left is

    idL   : preferred integer;

    attrL : integer;


  end object;
  pragma id (17);
  pragma key_letter ("objLeft");

  object Right is

    idR : preferred integer;


  end object;
  pragma id (18);
  pragma key_letter ("objRight");

  object LeftRight is

    idL  : referential (R1.is_next_to.Left.idL) integer;

    idR  : preferred referential (R1.is_next_to.Right.idR) integer;

    idAR : referential (R2.is_next_to.Another_Right.idAR) integer;



    identifier is (idL);

  end object;
  pragma id (19);
  pragma key_letter ("objLR");

  object Another_Right is

    idAR : preferred integer;


  end object;
  pragma id (20);
  pragma key_letter ("objAR");

end domain;
pragma number (2);
pragma name ("ASL_Mapping");
pragma kl ("ASL_Mapping");
pragma version (19);

//! Tests Domain, object and instance based functions.
domain Function_Calls is
  object Object_A;
  object Object_B;
  object Report_Data;
  object Object_One;
  object Object_Two;
  object Object_Three;
  object Test_Data;
  object Object_Four;
  object Object_Five;
  object Object_Six;
  object Object_Seven;
  object Object_Eight;
  object Big_Object;
  object A_Tight_Object;
  object Object_Nine;
  object Object_Ten;
  object Object_C;

  //! This is unsupported at version 4.0.0.
  //! The type should be typed IH for Object_A
  public type Structure_For_IH is structure
    An_Instance_Handle : instance of Object_A;
  end structure;

  public type Colour_Type is enum (Green,
                                   Blue,
                                   Red);

  public type New_Enum_Type is enum (Sly,
                                     Sandy,
                                     Wes);

  public type Return_Enum_Type is enum (Slys_Mum,
                                        Sandys_Mum,
                                        Wes_Mum,
                                        Nobodys_Mum);

  private type ross_type is integer;

  //! This function is accessible for the whole domain.
  public service Domain_FunctionA (InputA  : in  integer,
                                   OutputA : out integer);
  pragma domain_operation_number (1);

  public service Create_Report_Data ();
  pragma domain_operation_number (2);

  public service Delete_Report_Data ();
  pragma domain_operation_number (3);

  public service Perform_Service_In_Tight_Loop (A_Tight_Input_Parameter  : in  instance of A_Tight_Object,
                                                This_Test_Number         : in  integer,
                                                Testing_For_What         : in  string,
                                                A_Tight_Return_Parameter : out integer);
  pragma domain_operation_number (4);

  public service Test_Set_Of_IH (Set_Of_IH        : in  sequence of Structure_For_IH,
                                 Single           : in  boolean,
                                 Testing_For_What : in  string);
  pragma domain_operation_number (5);

  public service Receive_Enumeration (Test_Number : in  integer,
                                      The_Colour  : in  Colour_Type,
                                      Testing_For : in  string);
  pragma domain_operation_number (6);

  public service Nav_Enum_Over_Bridge (The_Input_Value  : in  New_Enum_Type,
                                       The_Return_Value : out Return_Enum_Type);
  pragma domain_operation_number (7);

  public service Call_To_Self (The_Input_Value  : in  integer,
                               The_Output_Value : out integer);
  pragma domain_operation_number (8);

  public service Add_Values_From_Bridge (Test   : in  integer,
                                         Input1 : in  integer,
                                         Input2 : in  integer,
                                         Input3 : in  integer);
  pragma domain_operation_number (9);

  public service Call_A (Input_Value  : in  integer,
                         Output_Value : out integer);
  pragma domain_operation_number (10);

  public service Call_B (Input_Value  : in  integer,
                         Output_Value : out integer);
  pragma domain_operation_number (11);

  public service Test_IH_Params (Input_IH  : in  instance of Object_C,
                                 Return_IH : out instance of Object_C);
  pragma domain_operation_number (12);

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


  terminator Nav_To_Bridge is
    public service Big_Bridge_Navigation (Test : in  integer);
    pragma terminator_operation_number(1);

    public service Call_Domain_Sync_Service (Test        : in  integer,
                                             InputValue1 : in  integer,
                                             InputValue2 : in  integer,
                                             InputValue3 : in  integer);
    pragma terminator_operation_number(2);

    public service Call_Object_Sync_Service (Test        : in  integer,
                                             Text_Input  : in  string,
                                             The_Integer : in  integer,
                                             The_Real    : in  real);
    pragma terminator_operation_number(3);

  end terminator;
  pragma key_letter ("NTB");


  terminator Where_Are_We is
    public service What_Env (Env_Text : out string);
    pragma terminator_operation_number(1);

  end terminator;
  pragma key_letter ("WAW");


  //! Perform Function Calls Tests
  private service Perform_Function_Calls_Tests (); pragma scenario (1);

  //! Start Function Calls Tests
  private service Start_Function_Calls_Tests (); pragma scenario (2);

  //! Finish Function Calls Tests
  private service Finish_Function_Calls_Tests (); pragma scenario (3);

  //! Multiple_IH_Parameters_Scenario
  private service Multiple_IH_Parameters_Scenario (); pragma scenario (4);

  //! Test
  private service Test (); pragma scenario (5);

  //! This object verifies complex function calls.
  object Object_A is

    //! Preferred identifier.
    ReferenceA : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA    : integer;


    public service FunctionA (InputA  : in  integer,
                              OutputA : out integer);
    pragma operation_number (1);

    public service FunctionB (InputA  : in  integer,
                              InputB  : in  integer,
                              InputC  : in  integer,
                              OutputA : out boolean);
    pragma operation_number (2);

    public service FunctionC (InputA  : in  integer,
                              OutputA : out integer,
                              OutputB : out boolean,
                              OutputC : out boolean,
                              OutputD : out integer);
    pragma operation_number (3);

    public service FunctionD (InputA  : in  integer,
                              InputB  : in  integer,
                              InputC  : in  integer,
                              OutputA : out integer,
                              OutputB : out integer,
                              OutputC : out integer);
    pragma operation_number (4);

    public service Call_To_Self (The_Input_Value  : in  integer,
                                 The_Output_Value : out integer);
    pragma operation_number (5);

    //! Idle state.
    //! No action taken.
    state Idle ();
    pragma state_number (1);

    //! This state verifies the following:
    //! 
    //! [1] Passing one parameter/Receiving one parameter
    //! [2] Passing many parameters/Receiving one parameter
    //! [3] Passing one parameter/Receiving many parameters
    //! [4] Passing many parameters/Receiving many parameters
    //! [5] Function that is accessible by the whole domain
    state Verification (Test_Case_ID : in  integer,
                        Invocation   : in  integer);
    pragma state_number (2);

    //! An instance current state is changed to fail
    //! if the test failed.
    state Fail ();
    pragma state_number (3);

    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event Start (Test_Case_ID : in  integer,
                 Invocation   : in  integer);
    pragma event_number (3);

    transition is
      Non_Existent (Fault    => Cannot_Happen,
                    Finished => Cannot_Happen,
                    Start    => Cannot_Happen);
      Idle (        Fault    => Cannot_Happen,
                    Finished => Cannot_Happen,
                    Start    => Verification);
      Verification (Fault    => Fail,
                    Finished => Idle,
                    Start    => Cannot_Happen);
      Fail (        Fault    => Cannot_Happen,
                    Finished => Cannot_Happen,
                    Start    => Cannot_Happen);
    end transition;

  end object;
  pragma id (2);
  pragma key_letter ("objA");

  //! This object verifies the complex function calls.
  object Object_B is

    //! Preferred identifier.
    ReferenceB : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA    : integer;


    //! This function is used to call another function.
    public service FunctionE (InputA  : in  integer,
                              OutputA : out integer);
    pragma operation_number (1);

    //! This function does not receive any input parameters.
    public service FunctionF (OutputA : out integer);
    pragma operation_number (2);

    //! This function receives an input parameter but does not return a parameter to the calling function.
    public service FunctionG (InputA : in  instance of Object_B,
                              InputB : in  integer);
    pragma operation_number (3);

    //! This function receives no parameters and returns no parameters.
    public service FunctionH ();
    pragma operation_number (4);

    //! Idle state.
    //! No action taken.
    state Idle (Test_Case_ID : in  integer);
    pragma state_number (1);

    //! This object verifies the following:
    //! 
    //! [1] Function that is accessible by the whole domain
    //! [2] Function that calls another function
    //! [3] Passing no parameters/Receiving some parameters
    //! [4] Passing some parameters/Receiving no parameters
    //! [5] Passing no parameters/Receiving no parameters
    //! [6] Recursive function calls
    state Verification (Test_Case_ID : in  integer,
                        Invocation   : in  integer);
    pragma state_number (2);

    //! An instance current state is changed to fail
    //! if the test failed.
    state Fail ();
    pragma state_number (3);

    //! Creation State.
    creation state Initial (Test_Case_ID : in  integer);
    pragma state_number (8);

    event Fault ();
    pragma event_number (1);

    event Finished (Test_Case_ID : in  integer);
    pragma event_number (2);

    creation event Start (Test_Case_ID : in  integer);
    pragma event_number (3);

    event Verify (Test_Case_ID : in  integer,
                  Invocation   : in  integer);
    pragma event_number (4);

    event Light_blue_touch_paper (Test_Case_ID : in  integer);
    pragma event_number (6);

    transition is
      Non_Existent (Fault                  => Cannot_Happen,
                    Finished               => Cannot_Happen,
                    Start                  => Initial,
                    Verify                 => Cannot_Happen,
                    Light_blue_touch_paper => Cannot_Happen);
      Idle (        Fault                  => Ignore,
                    Finished               => Cannot_Happen,
                    Start                  => Cannot_Happen,
                    Verify                 => Verification,
                    Light_blue_touch_paper => Cannot_Happen);
      Verification (Fault                  => Fail,
                    Finished               => Idle,
                    Start                  => Cannot_Happen,
                    Verify                 => Cannot_Happen,
                    Light_blue_touch_paper => Cannot_Happen);
      Fail (        Fault                  => Ignore,
                    Finished               => Cannot_Happen,
                    Start                  => Cannot_Happen,
                    Verify                 => Cannot_Happen,
                    Light_blue_touch_paper => Cannot_Happen);
      Initial (     Fault                  => Ignore,
                    Finished               => Cannot_Happen,
                    Start                  => Cannot_Happen,
                    Verify                 => Cannot_Happen,
                    Light_blue_touch_paper => Idle);
    end transition;

  end object;
  pragma id (3);
  pragma key_letter ("objB");

  object Report_Data is

    Report_Data_Unique_id  : preferred integer;

    Reported_Domain_Number : integer;


  end object;
  pragma id (4);
  pragma key_letter ("RD");

  object Object_One is

    Attribute_One : integer;


    public service Get_From_Bridge (Test          : in  integer,
                                    Text_Input    : in  string,
                                    Integer_Input : in  integer,
                                    Real_Input    : in  real);
    pragma operation_number (1);

  end object;
  pragma id (5);
  pragma key_letter ("OBJONE");

  object Object_Two is

    Attribute_Two : integer;


  end object;
  pragma id (6);
  pragma key_letter ("OBJTWO");

  object Object_Three is

    Attribute_Three : integer;


  end object;
  pragma id (7);
  pragma key_letter ("OBJTHREE");

  object Test_Data is

    The_Test_Number : integer;


  end object;
  pragma id (8);
  pragma key_letter ("TD");

  object Object_Four is

    Attribute_Four : integer;


  end object;
  pragma id (9);
  pragma key_letter ("OBJFOUR");

  object Object_Five is

    Attribute_Five : integer;


  end object;
  pragma id (10);
  pragma key_letter ("OBJFIVE");

  object Object_Six is

    Attribute_Six : integer;


  end object;
  pragma id (11);
  pragma key_letter ("OBJSIX");

  object Object_Seven is

    Attribute_Seven : integer;


  end object;
  pragma id (12);
  pragma key_letter ("OBJSEVEN");

  object Object_Eight is

    Attribute_Eight : integer;


  end object;
  pragma id (13);
  pragma key_letter ("OBJEIGHT");

  object Big_Object is

    Big_Attribute : integer;


    public service Have_Two_IH_Parameters (Param1        : in  instance of Object_One,
                                           Param2        : in  instance of Object_Two,
                                           Has_It_Passed : out boolean,
                                           What_With     : out integer);
    pragma operation_number (1);

    public service Have_Three_IH_Parameters (Param1        : in  instance of Object_One,
                                             Param2        : in  instance of Object_Two,
                                             Param3        : in  instance of Object_Three,
                                             Has_It_Passed : out boolean,
                                             What_With     : out integer);
    pragma operation_number (2);

    public service Have_Four_IH_Parameters (Param1        : in  instance of Object_One,
                                            Param2        : in  instance of Object_Two,
                                            Param3        : in  instance of Object_Three,
                                            Param4        : in  instance of Object_Four,
                                            Has_It_Passed : out boolean,
                                            What_With     : out integer);
    pragma operation_number (3);

    public service Have_Five_IH_Parameters (Param1        : in  instance of Object_One,
                                            Param2        : in  instance of Object_Two,
                                            Param3        : in  instance of Object_Three,
                                            Param4        : in  instance of Object_Four,
                                            Param5        : in  instance of Object_Five,
                                            Has_It_Passed : out boolean,
                                            What_With     : out integer);
    pragma operation_number (4);

    public service Have_Six_IH_Parameters (Param1        : in  instance of Object_One,
                                           Param2        : in  instance of Object_Two,
                                           Param3        : in  instance of Object_Three,
                                           Param4        : in  instance of Object_Four,
                                           Param5        : in  instance of Object_Five,
                                           Param6        : in  instance of Object_Six,
                                           Has_It_Passed : out boolean,
                                           What_With     : out integer);
    pragma operation_number (5);

    public service Have_SIX_Same_IH_Parameters (Param1        : in  instance of Object_One,
                                                Param2        : in  instance of Object_One,
                                                Param3        : in  instance of Object_One,
                                                Param4        : in  instance of Object_One,
                                                Param5        : in  instance of Object_One,
                                                Param6        : in  instance of Object_One,
                                                Has_It_Passed : out boolean,
                                                What_With     : out integer);
    pragma operation_number (8);

    public service Have_Seven_IH_Parameters (Param1        : in  instance of Object_One,
                                             Param2        : in  instance of Object_Two,
                                             Param3        : in  instance of Object_Three,
                                             Param4        : in  instance of Object_Four,
                                             Param5        : in  instance of Object_Five,
                                             Param6        : in  instance of Object_Six,
                                             Param7        : in  instance of Object_Seven,
                                             Has_It_Passed : out boolean,
                                             What_With     : out integer);
    pragma operation_number (6);

    public service Have_Eight_IH_Parameters (Param1        : in  instance of Object_One,
                                             Param2        : in  instance of Object_Two,
                                             Param3        : in  instance of Object_Three,
                                             Param4        : in  instance of Object_Four,
                                             Param5        : in  instance of Object_Five,
                                             Param6        : in  instance of Object_Six,
                                             Param7        : in  instance of Object_Seven,
                                             Param8        : in  instance of Object_Eight,
                                             Has_It_Passed : out boolean,
                                             What_With     : out integer);
    pragma operation_number (7);

    public service Have_Ten_IH_Parameters (Param1        : in  instance of Object_One,
                                           Param2        : in  instance of Object_Two,
                                           Param3        : in  instance of Object_Three,
                                           Param4        : in  instance of Object_Four,
                                           Param5        : in  instance of Object_Five,
                                           Param6        : in  instance of Object_Six,
                                           Param7        : in  instance of Object_Seven,
                                           Param8        : in  instance of Object_Eight,
                                           Param9        : in  instance of Object_Nine,
                                           Param10       : in  instance of Object_Ten,
                                           Has_It_Passed : out boolean,
                                           What_With     : out integer);
    pragma operation_number (9);

    public service Have_Twenty_IH_Parameters (Param1        : in  instance of Object_One,
                                              Param2        : in  instance of Object_Two,
                                              Param3        : in  instance of Object_Three,
                                              Param4        : in  instance of Object_Four,
                                              Param5        : in  instance of Object_Five,
                                              Param6        : in  instance of Object_Six,
                                              Param7        : in  instance of Object_Seven,
                                              Param8        : in  instance of Object_Eight,
                                              Param9        : in  instance of Object_Nine,
                                              Param10       : in  instance of Object_Ten,
                                              Param11       : in  instance of Object_One,
                                              Param12       : in  instance of Object_Two,
                                              Param13       : in  instance of Object_Three,
                                              Param14       : in  instance of Object_Four,
                                              Param15       : in  instance of Object_Five,
                                              Param16       : in  instance of Object_Six,
                                              Param17       : in  instance of Object_Seven,
                                              Param18       : in  instance of Object_Eight,
                                              Param19       : in  instance of Object_Nine,
                                              Param20       : in  instance of Object_Ten,
                                              Has_It_Passed : out boolean,
                                              What_With     : out integer);
    pragma operation_number (10);

    public service Have_SEVEN_Same_IH_Parameters (Param1        : in  instance of Object_One,
                                                  Param2        : in  instance of Object_One,
                                                  Param3        : in  instance of Object_One,
                                                  Param4        : in  instance of Object_One,
                                                  Param5        : in  instance of Object_One,
                                                  Param6        : in  instance of Object_One,
                                                  Param7        : in  instance of Object_One,
                                                  Has_It_Passed : out boolean,
                                                  What_With     : out integer);
    pragma operation_number (11);

    public service Have_EIGHT_Same_IH_Parameters (Param1        : in  instance of Object_One,
                                                  Param2        : in  instance of Object_One,
                                                  Param3        : in  instance of Object_One,
                                                  Param4        : in  instance of Object_One,
                                                  Param5        : in  instance of Object_One,
                                                  Param6        : in  instance of Object_One,
                                                  Param7        : in  instance of Object_One,
                                                  Param8        : in  instance of Object_One,
                                                  Has_It_Passed : out boolean,
                                                  What_With     : out integer);
    pragma operation_number (12);

  end object;
  pragma id (14);
  pragma key_letter ("BO");

  //! Object used for proving that passive objects created and passed into services in a tight loop are dealt with.
  object A_Tight_Object is

    Start_Value     : integer;

    Increment_Value : integer;


    state Idle ();
    pragma state_number (1);

    state Operations (Termination_Required : in  boolean);
    pragma state_number (2);

    terminal state Dead ();
    pragma state_number (3);

    event Get_Going (Termination_Required : in  boolean);
    pragma event_number (1);

    event Die ();
    pragma event_number (2);

    transition is
      Non_Existent (Get_Going => Cannot_Happen,
                    Die       => Cannot_Happen);
      Idle (        Get_Going => Operations,
                    Die       => Ignore);
      Operations (  Get_Going => Ignore,
                    Die       => Dead);
      Dead (        Get_Going => Cannot_Happen,
                    Die       => Cannot_Happen);
    end transition;

  end object;
  pragma id (15);
  pragma key_letter ("ATO");

  object Object_Nine is

    Attribute_Nine : integer;


  end object;
  pragma id (16);
  pragma key_letter ("OBJNINE");

  object Object_Ten is

    Attribute_Ten : integer;


  end object;
  pragma id (17);
  pragma key_letter ("OBJTEN");

  object Object_C is

    idC   : integer;

    IntC  : integer;

    RealC : real;


  end object;
  pragma id (18);
  pragma key_letter ("objC");

end domain;
pragma number (9);
pragma name ("Function_Calls");
pragma kl ("Function_Calls");
pragma version (15);

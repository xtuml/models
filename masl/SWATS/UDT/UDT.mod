domain UDT is
  object Object_With_Integers;
  object Object_Into_Bridge;
  object Report_Data;
  object Test_Data;
  object Object_With_Reals;
  object Final_Test_Data;
  object An_Active_Object;
  object Object_With_Enumerators;

  //! Used to define the granularity of Time
  public type Time_Unit is enum (MICROSECOND = 1,
                                 MILLISECOND = 2,
                                 SECOND      = 3,
                                 MINUTE      = 4,
                                 HOUR        = 5,
                                 DAY         = 6);

  public type Simple_Enumeration_Type is enum (One,
                                               Two,
                                               Three,
                                               Four,
                                               Five);

  public type Colour_Type is enum (Red,
                                   Green,
                                   Blue,
                                   Yellow,
                                   Cyan,
                                   Magenta);

  public type Temp_Type is enum (Freezing,
                                 Cold,
                                 Mild,
                                 Warm,
                                 Hot,
                                 Boiling);

  public type Subset_Zero_Of_Integer is integer; pragma type_range(-10,10);

  //! Insert system defined integer'last
  public type One_To_Maximum_Integer is integer; pragma type_range(1,32767);

  public type Timer_ID is integer;

  private type Subset_1_Of_Integer is integer; pragma type_range(1,10);

  private type Subset_Minus_1_Of_Integer is integer; pragma type_range(-10,-1);

  private type Minimum_To_Minus_One_Integer is integer; pragma type_range(-32768,-1);

  private type Minimum_To_Maximum_Integer is integer; pragma type_range(-32768,32767);

  private type Subset_1_Of_Real is real; pragma type_range(1.0,10.0);

  private type Subset_Minus_1_Of_Real is real; pragma type_range(-10.0,-1.0);

  private type Subset_Zero_Of_Real is real; pragma type_range(-10.0,10.0);

  private type One_To_Maximum_Of_Real is real; pragma type_range(1.0,32767.0);

  private type Minimum_To_Minus_One_Of_Real is real; pragma type_range(-32768.0,-1.0);

  private type Mminimum_To_Maximum_Of_Real is real; pragma type_range(-32768.0,32767.0);

  private type Active_Object_Status_Type is enum (Enumeral,
                                                  Number,
                                                  OK,
                                                  Not_Tested);

  public service Check_The_Integers (Test        : in  integer,
                                     Testing_For : in  string,
                                     The_Requid  : in  string);
  pragma domain_operation_number (1);

  public service Create_Report_Data ();
  pragma domain_operation_number (3);

  public service Delete_Report_Data ();
  pragma domain_operation_number (4);

  public service Create_New_Test_Data_Object_And_Link_It (New_Set              : in  boolean,
                                                          Previous_IH          : in  instance of Test_Data,
                                                          This_Test_Number     : in  integer,
                                                          Testing_For          : in  string,
                                                          Final_Entry          : in  boolean,
                                                          Returned_IH          : out instance of Test_Data,
                                                          Returned_Test_Number : out integer);
  pragma domain_operation_number (6);

  //! Remove a set of reflexive objects.
  public service Tidy_Up_Test_Data ();
  pragma domain_operation_number (7);

  //! As service 1, but predeclaring the local
  //! variables rather than allowing first use to defined type.
  public service Check_The_Predeclared_Integers (Test        : in  integer,
                                                 Testing_For : in  string);
  pragma domain_operation_number (2);

  //! Returns the number of user defined types used and confims that the reported number is actually the number used.
  public service Report_No_UDT_Used (Test        : in  integer,
                                     Testing_For : in  string);
  pragma domain_operation_number (5);

  public service Create_An_Active_Object (This_Test   : in  integer,
                                          Returned_IH : out instance of An_Active_Object);
  pragma domain_operation_number (8);

  public service Create_A_Timer_Enumeration (The_Timer_Enum   : in  Time_Unit,
                                             The_Return_Value : out integer);
  pragma domain_operation_number (9);

  public service Check_The_Enumerators (Test              : in  integer,
                                        First_Enum_Input  : in  Simple_Enumeration_Type,
                                        Second_Enum_Input : in  Colour_Type,
                                        Third_Enum_Input  : in  Temp_Type);
  pragma domain_operation_number (10);

  public service Check_Constraint (Test : in  integer);
  pragma domain_operation_number (11);

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

    public service Test_Real_Passed (Passed_Domain      : in  string,
                                     Passed_Test_Number : in  integer,
                                     Test_Result        : in  real);
    pragma terminator_operation_number(8);

    public service Specify_A_Requid (Requid_Test_Number : in  integer,
                                     The_Requid_Itself  : in  string);
    pragma terminator_operation_number(9);

  end terminator;
  pragma key_letter ("RPT");


  terminator Bridge_Too_Far is
    public service I_H_Type_Across (Param1_IH     : in  instance of Object_Into_Bridge,
                                    Success       : out boolean,
                                    Success_Value : out integer);
    pragma terminator_operation_number(1);

    public service User_Defined_Types_Across (Param1         : in  Subset_Zero_Of_Integer,
                                              Param2         : in  Simple_Enumeration_Type,
                                              Success        : out boolean,
                                              Success_Value  : out integer,
                                              A_Return_Param : out One_To_Maximum_Integer);
    pragma terminator_operation_number(2);

    public service Get_Environment_Type (Type_Of_Environment : out integer);
    pragma terminator_operation_number(3);

    public service Local_Bridge (This_Test : in  integer);
    pragma terminator_operation_number(4);

    public service Timer_Enum_Across_Bridge (Test : in  integer);
    pragma terminator_operation_number(5);

  end terminator;
  pragma key_letter ("BTF");


  terminator Timer is
    public service Set_Timer (Timer_ID       : in  Timer_ID,
                              Time_Remaining : in  integer,
                              Granularity    : in  Time_Unit,
                              Event_ID       : in  event,
                              Instance_ID    : in  instance);

    public service Reset_Timer (Timer_ID : in  Timer_ID);

    public service Set_Absolute_Timer (Timer_ID    : in  Timer_ID,
                                       Actual_Date : in  timestamp,
                                       Actual_Time : in  duration,
                                       Event_ID    : in  event,
                                       Instance_ID : in  instance);

  end terminator;
  pragma key_letter ("TIM");


  //! Integer_Number_Scenarios
  private service Integer_Number_Scenarios (); pragma scenario (1);

  //! Start_UDT_Tests
  private service Start_UDT_Tests (); pragma scenario (2);

  //! Finish_UDT_Tests
  private service Finish_UDT_Tests (); pragma scenario (3);

  //! Real_Numbers_Scenario
  private service Real_Numbers_Scenario (); pragma scenario (4);

  //! Predeclared_Integer_Scenario
  private service Predeclared_Integer_Scenario (); pragma scenario (5);

  //! Terminator_Type_Scenario
  private service Terminator_Type_Scenario (); pragma scenario (6);

  //! Events_UDT_Scenario
  private service Events_UDT_Scenario (); pragma scenario (7);

  //! Timer_Enum_Scenario
  private service Timer_Enum_Scenario (); pragma scenario (8);

  //! Enum_Scenario
  private service Enum_Scenario (); pragma scenario (9);

  //! Check_Constraint
  private service Check_Constraint (); pragma scenario (10);

  relationship R1 is Test_Data unconditionally Has_a one Test_Data,
                     Test_Data conditionally Has_one one Test_Data;
 pragma Class_A ("Test_Data");
 pragma Class_B ("Test_Data");

  object Object_With_Integers is

    First_Integer     : Subset_1_Of_Integer;

    Second_Integer    : Subset_Minus_1_Of_Integer;

    Third_Integer     : Subset_Zero_Of_Integer;

    Fourth_Integer    : One_To_Maximum_Integer;

    Fifth_Integer     : Minimum_To_Minus_One_Integer;

    Sixth_Integer     : Minimum_To_Maximum_Integer;

    Unique_Identifier : preferred integer;


  end object;
  pragma id (2);
  pragma key_letter ("INT");

  //! Pass the instance handle of this object into a bridge
  object Object_Into_Bridge is

    Unique_Identifier : preferred integer;

    A_Number          : Subset_1_Of_Integer;

    Some_Enumeration  : Simple_Enumeration_Type;


    state Idle ();
    pragma state_number (1);

    state Testing (Where_To_Start : in  integer);
    pragma state_number (2);

    event Start_To_Test (Where_To_Start : in  integer);
    pragma event_number (1);

    transition is
      Non_Existent (Start_To_Test => Cannot_Happen);
      Idle (        Start_To_Test => Testing);
      Testing (     Start_To_Test => Ignore);
    end transition;

  end object;
  pragma id (3);
  pragma key_letter ("OIB");

  object Report_Data is

    Report_Data_Unique_id  : preferred integer;

    Reported_Domain_Number : integer;


  end object;
  pragma id (4);
  pragma key_letter ("RD");

  //! Object containg the test data.
  object Test_Data is

    Testing_For_What : string;

    The_Test_Number  : integer;


  end object;
  pragma id (5);
  pragma key_letter ("TD");

  object Object_With_Reals is

    Unique_Identifier : preferred integer;

    First_Real        : Subset_1_Of_Real;

    Second_Real       : Subset_Minus_1_Of_Real;

    Third_Real        : Subset_Zero_Of_Real;

    Fourth_Real       : One_To_Maximum_Of_Real;

    Fifth_Real        : Minimum_To_Minus_One_Of_Real;

    Sixth_Real        : Mminimum_To_Maximum_Of_Real;


    public service Check_The_Reals (Test        : in  integer,
                                    Testing_For : in  string,
                                    The_Requid  : in  string);
    pragma operation_number (1);

  end object;
  pragma id (6);
  pragma key_letter ("RL");

  object Final_Test_Data is

    Final_Test_Number : integer;


  end object;
  pragma id (7);
  pragma key_letter ("FTD");

  object An_Active_Object is

    The_Test_Number : integer;

    Why             : Active_Object_Status_Type;


    state Idle ();
    pragma state_number (1);

    state Do_It (Enum_Parameter : in  Simple_Enumeration_Type);
    pragma state_number (2);

    state Do_It_Again (Enum_Parameter : in  Simple_Enumeration_Type,
                       Subset_Param   : in  One_To_Maximum_Integer);
    pragma state_number (3);

    state It_Failed (Reason : in  Active_Object_Status_Type);
    pragma state_number (4);

    state It_Passed (Reason : in  Active_Object_Status_Type);
    pragma state_number (5);

    event Go (Enum_Parameter : in  Simple_Enumeration_Type);
    pragma event_number (1);

    event Go_Again (Enum_Parameter : in  Simple_Enumeration_Type,
                    Subset_Param   : in  One_To_Maximum_Integer);
    pragma event_number (2);

    event Failed (Reason : in  Active_Object_Status_Type);
    pragma event_number (3);

    event Passed (Reason : in  Active_Object_Status_Type);
    pragma event_number (4);

    transition is
      Non_Existent (Go       => Cannot_Happen,
                    Go_Again => Cannot_Happen,
                    Failed   => Cannot_Happen,
                    Passed   => Cannot_Happen);
      Idle (        Go       => Do_It,
                    Go_Again => Cannot_Happen,
                    Failed   => Cannot_Happen,
                    Passed   => Cannot_Happen);
      Do_It (       Go       => Cannot_Happen,
                    Go_Again => Do_It_Again,
                    Failed   => It_Failed,
                    Passed   => Cannot_Happen);
      Do_It_Again ( Go       => Cannot_Happen,
                    Go_Again => Cannot_Happen,
                    Failed   => It_Failed,
                    Passed   => It_Passed);
      It_Failed (   Go       => Cannot_Happen,
                    Go_Again => Cannot_Happen,
                    Failed   => Cannot_Happen,
                    Passed   => Cannot_Happen);
      It_Passed (   Go       => Cannot_Happen,
                    Go_Again => Cannot_Happen,
                    Failed   => Cannot_Happen,
                    Passed   => Cannot_Happen);
    end transition;

  end object;
  pragma id (8);
  pragma key_letter ("AAO");

  object Object_With_Enumerators is

    First_Enum  : Simple_Enumeration_Type;

    Second_Enum : preferred Colour_Type;

    Third_Enum  : preferred Temp_Type;

    theID       : integer;


  end object;
  pragma id (9);
  pragma key_letter ("ENUM");

end domain;
pragma number (19);
pragma name ("User_Defined_Types");
pragma kl ("UDT");
pragma version (6);
